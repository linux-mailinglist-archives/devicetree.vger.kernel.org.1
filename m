Return-Path: <devicetree+bounces-210036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A11AB39F50
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:48:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B58DB1B2231C
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6317520469E;
	Thu, 28 Aug 2025 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="GnGolf8j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E40F1E376C
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756388896; cv=none; b=aLAvKCPfu+V9ZybVMxDTR95jqpaL3rpA5CiX/pgxkxIjhvRBoIkM3S+/G12/BI0OwW+C3hZH9IxZJ7mEbbS7aSq9U/xVZzRIiIKdHjULqczMC6/nn9FhaBvXkTX6oceScv46Eh4GmdDXvxqTfdqNolgYbAatg3f7udn5zlWEdgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756388896; c=relaxed/simple;
	bh=CyBzeTKKQTYkP5v9fH3Sisy9Cw4GsHTyaTY2ml6XFmQ=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PEBfLQS9d5/PrQNd6bWNh4Q7N3LDIKiX1GiuoB5dyxw4nTaVqR6DYS3nJCAc3G3sC5xiJ+6pigPogFoCzMOUV9j2krytZXoDKenkilAXVuGyPdTs++eVu+prKMosXYdoPjUcSFkYIryQSNWmbpfQIvpG1Hmxw/NG5u75GEb2y8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=GnGolf8j; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-afcb72d5409so156789466b.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 06:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756388893; x=1756993693; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QSWkjItMEsVNotyoDAMPLMvhhraXQe3wDj+bg0giOKA=;
        b=GnGolf8jvRXkubxI2aWdntXyCWSmraX1wy1FG3jAgOPjN0jgC313bk4r8Pw8mHPLXB
         eus4xdwX5087qLMfIgFg0BHhyUfFhDeDFT3/xmhHf7B6nBclzzkTh9YstizL5L6Bezmg
         ppq0qouBksSq3l44P1l1Qh4pP2MSEIh1tz3neg7B4IqEbWmNMF2u9ofUR81KExxYGx4v
         N3rbKLqe4f4lNOBqkweNBkn2glTUY4r7d2ZXj4pwz56RqY94x7/Wqq1cFVKTiPF4SRE8
         n2KYcq358U+pAttaG3uRlXlfFu7p/h4/c+c/e5mI+RNLVd0W5aNohWJPsiDAySuYOcW+
         U/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756388893; x=1756993693;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QSWkjItMEsVNotyoDAMPLMvhhraXQe3wDj+bg0giOKA=;
        b=KkTzaebODRYk0vLnTX2ls6LbwpgmCNxSA7a1IdAteMhfh1Mr3uBk3T8A/kyoetqvwn
         uzS0Z4ns5lke2D9AVCeWy7VuQCP7+l2DlVmDyRXyAg6RCeBipH38wouEyPtejtMJ3CvE
         gbe2kG3S4Lu54SnwMOIyMP1aXcTf/R48uv86e9c1+Xzc+5xGkuqmM6RlSohyg5wRe3xx
         R2qa0n8jjybeah78IeF4O63Av4Bta0qP4G1Zatbui1yG+4HVwkilfMRWfD8psJ+mqj3a
         LjgvNMc1GoDAp4OHoJxi/mlfN4ovnQjjWXebPfwBN7pY1HIo6RTeNmyEW59OZwnXMA6F
         4DCg==
X-Forwarded-Encrypted: i=1; AJvYcCWLIiOZUaCcw9MixfoKaH5N+Pw5CGMy+aSxi5ykqz9ZypzOeuSMq2SMQilPJ8u1SspWxUwgYoy3SLgu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7VFtaSTBXRC/7b+XDPlOqXxE4vmIgotLSUTTWfDPZNZBvzWYa
	p604Py5q8j99w6CCBEP3uingtYbW/H6rXJCvyH4km83toO1XImIQ5cnDjXUWjUZ/Wy4=
X-Gm-Gg: ASbGncudJJVQBF5N1vL0A35JcnGvhHBf4cI4CxqKYxJ6308QGJn+jVmZA8g8SKl4nwF
	2qLB6s6yrAO/3iKVLWQMgej3Zob6WuddSEBciXgih1khCfSBbVNFhD7BTaCQxDSsmyZ8zwWeuLK
	8fspRXcC6ipaOaR+RKtWScDvEl+wRracYixCMkRTZsSZ3JPYELlr2tfCu03Dxq/IQsC4CsQnlxX
	yHykGL7q1tpD0uoz8xwO+JL1vlSFUI7pDqtheiZC+fOQkpHg/y2uXqHKzUN0uXLv3nsCt3HkrYN
	koBTisVgxek8LaEV33qV3Lr3LAzLrbDRLHUw2uTh2rcJzZx01mVbkEuJj4+8xecuYXS0UNx9wZ/
	rVjUKxke2JxVvNzdbvbg6r+hYLq5OGkW+atpEnp3JskzHBBqJFibL2WrMJKYJg2Ltlt2PgdAfmk
	RYizIL1RwHMfjJWhS4/0pYWYMAbTE=
X-Google-Smtp-Source: AGHT+IE0mnnz/V1bhpFxlBdsAbBHx4QqqEGn96nhy+Mvodra/CXXwAofr1j9KUPTZWvQ5QP+0+sP0A==
X-Received: by 2002:a17:907:86aa:b0:af9:8438:de48 with SMTP id a640c23a62f3a-afe29605c0dmr2169147366b.48.1756388892528;
        Thu, 28 Aug 2025 06:48:12 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe7c93b86dsm515729266b.21.2025.08.28.06.48.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 06:48:12 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH 2/2] arm64: dts: broadcom: Enable USB devicetree entries for Rpi5
Date: Thu, 28 Aug 2025 15:50:04 +0200
Message-ID: <9926b25f2932668abdf99d30182ddca4f7d18d9a.1756387905.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <4e026a66001da7b4924d75bd7bee158cbb978eed.1756387905.git.andrea.porta@suse.com>
References: <4e026a66001da7b4924d75bd7bee158cbb978eed.1756387905.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

RaspberryPi 5 presents two USB 2.0 and two USB 3.0 ports.

Configure and enable the USB nodes in the devicetree.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index 865f092608a6..95ab67c7aa47 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -21,3 +21,20 @@
 &pcie2 {
 	#include "rp1-nexus.dtsi"
 };
+
+&rp1_gpio {
+	usb_vbus_default_state: usb-vbus-default-state {
+		function = "vbus1";
+		groups = "vbus1";
+	};
+};
+
+&rp1_usb0 {
+	pinctrl-0 = <&usb_vbus_default_state>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&rp1_usb1 {
+	status = "okay";
+};
-- 
2.35.3



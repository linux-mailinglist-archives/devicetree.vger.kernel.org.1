Return-Path: <devicetree+bounces-213362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BD5B4538E
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 11:41:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10C391C26DE6
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 09:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00046283FE1;
	Fri,  5 Sep 2025 09:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="KWCHyawG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC152701CF
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 09:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757065253; cv=none; b=PpO5ebf4YgW/69i7wALBhuOB0Llq624+2sNEGVMJ9r3nWb4iUkDZrwMC4OGDVRhLxCz5J/5i05hZdVyv7JEhY4cnkMSqG7D8qEIUQNpeoveCrWzus8Q4y9an1Fd/Y2DQ1sfRlCJjzif6G5+s8/GcEbVAddsDI6QlGg/B2oYo53g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757065253; c=relaxed/simple;
	bh=CyBzeTKKQTYkP5v9fH3Sisy9Cw4GsHTyaTY2ml6XFmQ=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c82l9jkXJtvdOUvxuOQqqGvLjBgaaJ3URjqo1zO573p8POb5GFsOXHTUxWzeGm7qWF2Kg/Qp2uR6OcCGYDQpZU6VKYk1olyejuOjxDPCRVC2IK7pyQXPKrSpD/pUiJ0aZaKl+0IT6amf8xAXwKEQ+6Kk7wjyESfJ2bRcgSz6MqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=KWCHyawG; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b0472bd218bso342329066b.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 02:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1757065250; x=1757670050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QSWkjItMEsVNotyoDAMPLMvhhraXQe3wDj+bg0giOKA=;
        b=KWCHyawGwlz6VLFwgXTXe3EQpyfkpCqcLy5pn3VK1LAV3p0CjTU55nNtQ8r4kYjOOd
         qKs6+/TD3e6wMdGqzDL5UPwmfoaQGH+eUDYbIYVqEkyWOhRBvm+n6RBzvDMtNx+S6OCs
         6D6C7aRZtt68v5m1IgvK6wpt3xICpC9IDpA8HmOeljx0ty82vzqlVNnu1UtT0FYxdcGi
         mEmb4WAHQO62HImMpRRpyMKjyW0+ImlibEh4TqTYUOzDOq0tkQdc4X9krMikoiCQ5BV4
         k2BiSpnmjBV3rq4VHG2HBMa56b/IwhjGjhhIx0gKkTW+ZHiCCjHB6cFTfaHGCemLdVQz
         Hvjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757065250; x=1757670050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QSWkjItMEsVNotyoDAMPLMvhhraXQe3wDj+bg0giOKA=;
        b=VUGc4dxLdQwoGOTE4OUHrTl8r+JUEAHd1D9V0ZjzbmQPEdD5Kh5HqTsD8ggTiRAx+j
         czBnHL8hLiAliTKYDwAxnBz+nV45yWnn8v4W0Gu198Lfm74mWIfiky5JujwiTsq4L2Pa
         iEtUcFyERq32xGKsKoUE/dbGzIn6KjXq1qPRMSeYacjEY0ciCAUzNzL3c9L8Ko+Hl0/0
         bSM9sSbrAFqXz0Ab38Cb3mSXv1OdA1NlrVfcVGcAN4aMY9a0GD35kNHx+7pad2E+M1bI
         E1K6iSEmqe5CBMulQMOAfFcri+fkq5ymHcP1cospyn819lkHdplYiGpgobFYSwQ7I1ct
         0eVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmzIVmNOfu1k8QB4sQwFlJ1Y/B2kM4F1P2/34y/EVTl7aSh4bhVyMseZBNs/WMiGmK7gaXO/DacZi6@vger.kernel.org
X-Gm-Message-State: AOJu0YyaN9xO/GR0BQ2xYzG4EYiOpi+R2MOz/s1bc1tgUAROmFNNsGL+
	K2QdY0YTe4BkOGtu6F6op11ShmqmhecwwpyPIdKDNprLyBG2YHjK+hJEYyeZrErDrTc=
X-Gm-Gg: ASbGncscBSZ2QsdnpKR9Z1OA1IHMXtrq9YNbiKEuMWZjBw6J8KMJQxVOtuoSLgmOqAG
	3u02AREuTHInvqJFuKRKONl99fXuu9Ku6yrKVHs+Tt14DC5j5vjsGi9PtGLIvyS+TIbDEEoiNyj
	9iECmlbSWSYu9LyZESlvHfoG0JpsFBFfCtgyAxNRTnwf+rnWmlhfrW1d8JnWnGIN6oBW5dNaN+n
	d2YqyBOYfHC/fOJLv+UyjbR7tHBz8FONpLrfiRh0boIlmtZR10n7nsMOqzIJ9Wxo7X5E/XOjq00
	FaS+gfgCUopwR83MPXjPYS9NZ6+2a3U6MiTxcgcJw+LpCKUbm06pp8qstWLJH9nJhre8R83xhmE
	kehy+XuTAcV+nTp7Af4DXgy556FUi5TtsJ+NLRY8NovcnyQyTJiH2wGcspezpyMXmz5GRz4AWuG
	vrryghe3MItuoof3g4dVZhRkkwp3/OiV5o
X-Google-Smtp-Source: AGHT+IH146YCd5rLDFXJuCKGLfeNOz6gYO2M5rsXVh68MQw9WmhS/YuaAcFuV11qUOxFVCZjfM7jgg==
X-Received: by 2002:a17:907:7fab:b0:b04:48c5:36c with SMTP id a640c23a62f3a-b0448c50704mr1338741866b.3.1757065250127;
        Fri, 05 Sep 2025 02:40:50 -0700 (PDT)
Received: from localhost (host-79-31-194-29.retail.telecomitalia.it. [79.31.194.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04190700a4sm1362967966b.63.2025.09.05.02.40.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 02:40:49 -0700 (PDT)
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
Subject: [PATCH v2 2/2] arm64: dts: broadcom: Enable USB devicetree entries for Rpi5
Date: Fri,  5 Sep 2025 11:42:40 +0200
Message-ID: <c6b17f0f896b5cdd790fc10aeb2b76b71df9b58d.1757065053.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <16d753cb4bf37beb5e9c6f0e03576cf13708f27d.1757065053.git.andrea.porta@suse.com>
References: <16d753cb4bf37beb5e9c6f0e03576cf13708f27d.1757065053.git.andrea.porta@suse.com>
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



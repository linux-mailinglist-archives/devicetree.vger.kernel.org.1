Return-Path: <devicetree+bounces-88791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B53793EF55
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 10:02:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0A27283254
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 08:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43CB913C908;
	Mon, 29 Jul 2024 08:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Iafi4PM0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C93313B59F
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 08:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722240082; cv=none; b=Fi3Cdysn+vRl30qhtXTEth43Qa7V5QG68rjtSDAcL8L0ZZrSIejuRcD0tIwUxpofTNNjlVkLbJfpp4usyTn9zzj9fo3qGOQDf7C1ivsYJaExJhwrcafsEDH77raTuIyOBJLo4ibcEJP6KXxH2FrcNVtnn/nMuG982Ar/a4U4aV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722240082; c=relaxed/simple;
	bh=Q7YB0WcALJsVDb7yxJK+rUTZPqhc/eLdyZInh9H7z+4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f4I6tAVTlyIdeFIFJZWd1qrl9zJ9CFZ4tptPmS1r0IUG7TjepCRJiLtgGHqXQZ/UOqWRlbqA7tTo1MIhZGqcqxfP7TUMZp2MpSAwlQAxdppDtKnVeVDttMru8MrWn1TOnr1e/50sTdg6PjZbT4lMee5x7Z8k2KHP049/0chYHMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Iafi4PM0; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4280bca3960so14263635e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 01:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722240078; x=1722844878; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=29uxXeDOeLQP1GMl3yPmsnZHtmazUFEQgig3ecXgCqg=;
        b=Iafi4PM0Sk5dzHc++jYxn3oKOSC2hjB80VvNdUcq8lVySR5vZbQbGNHZme2oeWz3oU
         GSXNdwXa/7B6/3U99sCoHAo+fzEq3XyFklHSdiLg4sPLTCHTlZn/2dY2zComLSSTkluU
         57Elrh0BJx79tQIAGfUmcYHSrYOJCImuJqEhJuHPGDrv6UeowAEjscbSDXEdEVOWDDL8
         WXzV2Q/aaT0z50FZ4Z0uN4z2cIP2Qka69SWBOnwRO9DYy7KG1j4ahZ5ZnirRuVHF5br9
         6FQVW0fwbx8fIzA2FFI0nr7jWnuHGrxv6bW/zJD31zSmKPi1bX9rDEazah1prBrFOnlq
         roPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722240078; x=1722844878;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=29uxXeDOeLQP1GMl3yPmsnZHtmazUFEQgig3ecXgCqg=;
        b=QsVmdbC6I3ZEel1uY/BpzRKKTS70CJRZlRyYEX5xT0sXcywHkGMZwVAi4bFOEqQz2r
         f8Pn4czR2NL9zhmZp6u22SmjWt+TYfd7vkUff+fIHEx8Ll+MyBCL0/dyviTtWz9TA25i
         I+OjrSFORuqnn0cCOoJIjPC5RthelKWCaI5W5+bGxfyvdPIuXfkgSO96Z2wzH5GF2TmN
         Q1dZ1JBLcoxMHGM5PhXQ5wz4zwcbQ+cMp07iHkpAky1wMvjx3YsfAPBO+tlh+FEkuLAJ
         q2Dm04mpzmWo52RJIKsrrxXtNJLISvaScxxYC5d0HRLQAVpoB3Spu925OsIhwiON47II
         ra6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUOkyOYRzmMe0DEyXL1Pv8Vhoe5I3Ebo4SUWvLaCXMZ6yLcJjTtZzzY1FzVB8Yn8OCVXCLSfzZE6CHhpKf7+5BBAzSI+7m9V0WnSg==
X-Gm-Message-State: AOJu0Yw5dz3yWT+fj6WXFWIVjR3zcM4EQNi+JPfHEuOv4OjxdE8ZhUfs
	lAQy1fpo6ijy81ZOWRm3r2r0gSf0Ko4WawA0BjVP/1MKqOrHtEfTWV++dZsPp7cmLS/KKeoDXfL
	Q
X-Google-Smtp-Source: AGHT+IE8Yiz/LWA3dIxdU0iaNYEV0D8RMGb+YexRP1/S+Yunh4kjB0gxOiHKJnPBRA9BZEvGWGKF4Q==
X-Received: by 2002:a05:600c:4447:b0:426:5c34:b19b with SMTP id 5b1f17b1804b1-42811d9af49mr44304765e9.20.1722240078644;
        Mon, 29 Jul 2024 01:01:18 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42819d9a007sm45452635e9.1.2024.07.29.01.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 01:01:18 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v2 6/6] arm64: dts: ti: k3-am62p: Add partial-io wakeup sources
Date: Mon, 29 Jul 2024 10:01:01 +0200
Message-ID: <20240729080101.3859701-7-msp@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240729080101.3859701-1-msp@baylibre.com>
References: <20240729080101.3859701-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vibhore Vardhan <vibhore@ti.com>

In Partial-IO mode there are a number of possible wakeup sources. Add
the list of phandles to these wakeup sources. Based on the patch for
AM62a.

Signed-off-by: Vibhore Vardhan <vibhore@ti.com>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62p.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p.dtsi b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
index 75a15c368c11..cd81f6d173f4 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p.dtsi
@@ -126,3 +126,7 @@ cbass_wakeup: bus@b00000 {
 
 /* Include AM62P specific peripherals */
 #include "k3-am62p-main.dtsi"
+
+&dmsc {
+	ti,partial-io-wakeup-sources = <&mcu_mcan0>, <&mcu_mcan1>, <&mcu_uart0>, <&wkup_uart0>;
+};
-- 
2.45.2



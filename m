Return-Path: <devicetree+bounces-233738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFF8C2513A
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8338A401041
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F19034B662;
	Fri, 31 Oct 2025 12:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ap30yFQH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B8E1E834B
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761914727; cv=none; b=teCzaFYTL/2CZm+mbuiV2pVNKMnPDeSqAfOMCBuDciMJeHwkrq7+a35p6mSsqRX5u8SKxWMvnnCy6ihlm20mS/Iq2eBeAFkRthqPzvJjQ61BDuxBZmgARei1LXtiE/sSEKutKu346UwdAtXH9RmOtoQ0dcQQbQqBR/gYYUTu+Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761914727; c=relaxed/simple;
	bh=I1G4HrvyfbVAsbzmJD99V+Jtc43Xn5CLNWorLqJlsfM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FxVURu1MYyvgqjAeltcsZ9oyFY9CIAas6MD2NEoiA63fBU1QqWD8/z9GO/HgsQZBlieIpYmYb/2YhHCgwGvgH6RDc/ri4Jfjv8XNfwC9M2ou7L5yVxFgvZ/qArTAtYSW49wK5p1PZl9/YS+7toanPrSD5v7siNABBstK98k0VCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ap30yFQH; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4770c34ca8eso19259965e9.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761914720; x=1762519520; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d1zdAt8alxKXu7+wwqOHFCprCPLCy2H4M8hpdej4l3c=;
        b=Ap30yFQH9xg23O8FH+RVs33bUtYP8s+BSNNZ0SzIZOfGB/0+SeJWLUGmHm8H8O9ByA
         vupbycdwJAJ1UXPbW9B9jLgzdUeIyWgI7qqbCiqCaBRiCCREdEV7+92pnPtGsjAeR9Nt
         bV5iASsienyGyP3MX58THmaNmgUJwWiylzXEIZlcesytmX/zmxCORpteshJU2bRVAg9l
         s3l7j8mhQeldt0GWh309GIuT7M9TErb+B5GSRtTyeZMUlDuTIVsygrbUkOd+Y3XvrfZJ
         NG4+OJX7CLVhe47eYBY2MIb9pY9y7PGxIEPQKRIuKBPHTAer8S0lg0rH6rJWU4KQt5x7
         GGBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761914720; x=1762519520;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d1zdAt8alxKXu7+wwqOHFCprCPLCy2H4M8hpdej4l3c=;
        b=iwMzL6pq+AakD55DzRT7HdgDO2dA9kp+etZfNhmu0sZ7E2eSbcVk8fkUjRf74XENNB
         /fMC/y4YdfF2DvSPLoF/Ejrjh7J9iz1gahcUf4l0nKIsi4MskdXfLWBqpelBTmV5eyIw
         2JqZNCqoSijWlrYN3iKshGo2X4pahQs3aNHrA7d0WPyO0pHov5ASt98JcVSIb29J7kx4
         EZpsOHfZmPXiTvaW4ZGtp49YILk9g1s2GT2M8+NjMpDS1FOTUob7RiiDEXnWrmwpWQjw
         C0wCz+EZtr9ZenwVsaIoQ4oiDgiRXM1MdgAE6LaLR6KaNpM2jbdnKbaqNZvh/BzkaIcP
         8MUw==
X-Forwarded-Encrypted: i=1; AJvYcCXO6zb2OqukBP4LGO0bofBrHD7QldRan5T/YlUsFERvlrN/hE48yQmq6+YxOhNPtByjgQjYFt9odSfS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0zNmbOIXgNYJnXUUCaa40LAhQhsY+uUU+pjfhYl6cXPFYgext
	ofVlR4cAN+wmK7WJJ6ymBmPH0GXElEof19UPd/LtCSvhnqN0D0Fb2Ory/GVqjyV0GVc=
X-Gm-Gg: ASbGnctA5VJ2+d6nYPBBrdMHrH1vwwj7bX7A989Qox/T1v/emQq+YIMjTlqe6nqClVu
	kXUnqqxW2cIglqKeyf9E6hXH91NHHm4ggZt6ZKUNkZvkxdbFab4vi6O+jjB2GYVDq5D7mCxO7Yg
	L3PsShb5PUNHXaUzRmGeNozSTBBRnV5zrGGj1yRzwACjo+Y4JxpKhYvi02qYfvWX/TkLffharUQ
	IbI8D1KC80Tox8WDar1Rwxomkm8DxHYnx7L9AOms6W4ACH3WbhRCxM2w2p0qVy9LFz5gfZCfvD6
	Wn0MSmXxaa6MiYpdNdtVQp1Rk65ulbqb/ryO2qv4hiyM4yzxRdjJnos+bsa1VxzFURdEegSFlo9
	ja79gAf7MCmcirpJSY6t3sEz7aqVcXb4uLUxXbB4/a4TW/OHDpmW9OH5gwMzxaQ4VHe6mdnbTTO
	qWZNjwnq7u8xWDxHspJ8cZfpFeiN8fK2GLVE+F7KJv+S3YpNWvVNsWPTAcn3ypJGM=
X-Google-Smtp-Source: AGHT+IEK/W4yVhoAW7D+P9TnpwW9uaMPeYy0pNTapbce+kkipDxqWnUCZ98HqD9CqA55/PAeTmV/UA==
X-Received: by 2002:a05:600c:19d4:b0:475:dd59:d8da with SMTP id 5b1f17b1804b1-477308c8e97mr30921705e9.40.1761914720095;
        Fri, 31 Oct 2025 05:45:20 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732ff7fdbsm31077535e9.16.2025.10.31.05.45.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:45:19 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 31 Oct 2025 12:45:11 +0000
Subject: [PATCH 3/5] arm64: dts: exynos: gs101: add OTP node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-gs101-otp-v1-3-2a54f6c4e7b6@linaro.org>
References: <20251031-gs101-otp-v1-0-2a54f6c4e7b6@linaro.org>
In-Reply-To: <20251031-gs101-otp-v1-0-2a54f6c4e7b6@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761914716; l=1131;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=I1G4HrvyfbVAsbzmJD99V+Jtc43Xn5CLNWorLqJlsfM=;
 b=yAkO8ftyoCV/NHjE/cZ5n3J89+y1CpBH9oKdPf2i/Iw3cYgeO5ytN16n4FzJPlPsQthtA6RjQ
 br/xIVSj+kID7nVyxZXCRkDQ5qz5DOZQdITvF1tNxmulCKbE7QhYorD
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the OTP controller node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d06d1d05f36408137a8acd98e43d48ea7d4f4292..3cd5675c094c0774b0efba1b5f76f8916cff3fc4 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -571,6 +571,23 @@ soc: soc@0 {
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x0 0x40000000>;
 
+		otp: efuse@10000000 {
+			compatible = "google,gs101-otp";
+			reg = <0x10000000 0xf084>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			clocks = <&cmu_misc CLK_GOUT_MISC_OTP_CON_TOP_PCLK>;
+			clock-names = "pclk";
+
+			product_id: product-id@0 {
+				reg = <0x0 0x4>;
+			};
+
+			chip_id: chip-id@4 {
+				reg = <0x4 0x10>;
+			};
+		};
+
 		cmu_misc: clock-controller@10010000 {
 			compatible = "google,gs101-cmu-misc";
 			reg = <0x10010000 0x10000>;

-- 
2.51.1.930.gacf6e81ea2-goog



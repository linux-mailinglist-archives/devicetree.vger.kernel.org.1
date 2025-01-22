Return-Path: <devicetree+bounces-140226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B1DA18EE1
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BA253A3A44
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:55:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF98B210F5A;
	Wed, 22 Jan 2025 09:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XqqZdT3I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED7D20FAB2
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 09:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737539726; cv=none; b=peeZn76fUIwnNPCNvFPadS5/S5iR7G4i7JsIsGOQc2IRQ3r9UISJmvZmcFTgvYFUv3PExtALAbQPHtplh4VGey4CZ4fdszwkz0FMbKDwXwAqf7r8/zzHe5/m5VK55XdmGJ46Rohl6CeR7pSrZ+S84syQ5YMtQOgoagQcprnlbAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737539726; c=relaxed/simple;
	bh=4lbgavZsydQCQC3ftLFQIVuXaot+GlmQOz/MdBfvMME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yl98Ych3tS2zXQjutsVkaeJq237xdPvYIYaP7sYf5U8fdJLrt8Yg20kt5AUCMpQuYLqlfxb/UadjGm8hVP0b3LoNP0/G8lVa3W7O6UQcnYUe8bgpIXtAlb3gZvzwPojTj4brZZzsnlywX96IqJ8GYTdEJQx+2KI9ZGZQhRAObQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XqqZdT3I; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38a88ba968aso6179776f8f.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 01:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737539723; x=1738144523; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Aj4nRpIwchXIrjexvYOL05y/b5PvSBzLyScjI+iXpvc=;
        b=XqqZdT3Ifbje/7acw2xyO4hoLoDV33cX/Z8JzRUnkdOogOrbMF+rIh0uI95LmGVzyz
         JjMloSsZU1KDLIA1c4Q5L2vdkVjtFzvwl2TiOWxIB1pZN38d/gb1cOd6lh3sOr/Vxu2U
         WaAQlj0UTgOgxpVYLsK6YeqkzQDVKsx+lVCdM3XJFrEMY45lilyPX76kPQlSuyDFTbn0
         61VnMMmAVaMJgUXzWoSzX8ij4Afb8bIUjL8BfDR1PggHAtsWFpFZVAUhwJbh7mDZuwmc
         1YzLTrIMzxlmEGC6EPvkTL+pVv5pXN9sVMP/AiY0lUYs4tCJ7Ev94cQQq9reXsAyNnMR
         hRxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737539723; x=1738144523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aj4nRpIwchXIrjexvYOL05y/b5PvSBzLyScjI+iXpvc=;
        b=StzNMX51lnsxpQWoVjmoAVexSGCRlqNvO7xSZ0GN17wkub060tWyBnVNPFv3NJo/8f
         3wgPPLr+X/5NUexCRC9BcuRgQZyexyuP+acUiWVqHIt3kqS6DSAXK/uaD48+ZbvOBc2W
         xwRiJcR/k4rSUDB/1HC7s5h49+2AyhBhdW6yLtlDQlPljJtCPA4RQ4Yj5untH5hj22fd
         ioOB2tpu9QMWlCGu4Prc9XXUO5hUUEmK43wPMcbSvBJZyllqgO2HemnVmJEnVQuRqeZT
         kKGQyat+kGyANNrQj2oqGKCynB4vZBzcz6vh0U/8sVoQhz7ZI5itnXPyTBsAVyY3KcBO
         YzVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkTz2FItaFLXJRKwfNjoPn7mjvq1tnZzczvvqHiBB7XBn/QnPnRWCpQ8CRyyX5ohO05XITRhNXs3+O@vger.kernel.org
X-Gm-Message-State: AOJu0YzRkSBs/6NTwuObKsfxMhQbTvtpRcLjGV8km9JPZ19+k5azmtwG
	MfQsP5VoCbtejJ2p9zwDyeVzBca7QYabfFGm8yoxACSk1Q+IQQyV3kmY/135yfM=
X-Gm-Gg: ASbGncvC4ntDCFppgqN8Ad+sgECt9otrxc/gq/leKAlrmt85heATvjq4XKqSmqw4TJm
	9DH2LHmGFIJa9d5HLh84mPWExW2vnGvuGDXGHoMUUBUilU9UoAhH9xTxSYSaY5xb9wb/HVRh09z
	d7CsVFjpx0X9BFmsSOtPceRBDID4tKz3DiBLA1wPULLKTmVAsEvY0GRJD/0/latyxV50ALa8oMn
	tuJNCtai5UqfXVCJPKOC/cnq3Zu1P8KM/wuQiGvQn/1UeJVo7pdiCMi+vZb5JhCRjU=
X-Google-Smtp-Source: AGHT+IGOsMe0dJV9o7lF57/4pcu4vQWVPlAoCIketp1VfdTXI6zME1oniG3rGWHLTkoIM4AiRRbSrQ==
X-Received: by 2002:a05:6000:4011:b0:38a:4184:152a with SMTP id ffacd0b85a97d-38bf5669eb5mr21886502f8f.28.1737539723122;
        Wed, 22 Jan 2025 01:55:23 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b31c7cc6sm17631285e9.36.2025.01.22.01.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 01:55:22 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Wed, 22 Jan 2025 10:54:49 +0100
Subject: [PATCH 1/3] arm64: dts: ti: k3-am62a-wakeup: Add r5fss
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-1-f74835b91da9@baylibre.com>
References: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-0-f74835b91da9@baylibre.com>
In-Reply-To: <20250122-topic-dt-updates-am62-wkup-v6-13-v1-0-f74835b91da9@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1468; i=msp@baylibre.com;
 h=from:subject:message-id; bh=4lbgavZsydQCQC3ftLFQIVuXaot+GlmQOz/MdBfvMME=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNInHKhyWbZwlZ+QrczRj/8jz/mbLp/Yt4uv4093/JQyk
 e8/9ItyO0pZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJHJzEyHA49Zd91qu5nj8O
 8HAsf/zGy+tDwaaX0t0biwVS9yWYJ01h+J8aFuQWYyd16MgJ/fCttqFHm6dxuwcH+J5t7tLqPbG
 zjh0A
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add r5fss and core0 nodes to the devicetree. This is the same as present
on am62p.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
index 0b1dd5390cd3f42b0ec56bab042388722b4c22a1..3555d8d8ad3c1999e772376758047f6f3500fb7a 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi
@@ -88,4 +88,29 @@ wkup_vtm0: temperature-sensor@b00000 {
 		power-domains = <&k3_pds 95 TI_SCI_PD_EXCLUSIVE>;
 		#thermal-sensor-cells = <1>;
 	};
+
+	wkup_r5fss0: r5fss@78000000 {
+		compatible = "ti,am62-r5fss";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x78000000 0x00 0x78000000 0x8000>,
+			 <0x78100000 0x00 0x78100000 0x8000>;
+		power-domains = <&k3_pds 119 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+
+		wkup_r5fss0_core0: r5f@78000000 {
+			compatible = "ti,am62-r5f";
+			reg = <0x78000000 0x00008000>,
+			      <0x78100000 0x00008000>;
+			reg-names = "atcm", "btcm";
+			ti,sci = <&dmsc>;
+			ti,sci-dev-id = <121>;
+			ti,sci-proc-ids = <0x01 0xff>;
+			resets = <&k3_reset 121 1>;
+			firmware-name = "am62-wkup-r5f0_0-fw";
+			ti,atcm-enable = <1>;
+			ti,btcm-enable = <1>;
+			ti,loczrama = <1>;
+		};
+	};
 };

-- 
2.47.1



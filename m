Return-Path: <devicetree+bounces-140246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B1350A18FA5
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:25:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8518118880FA
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84118211711;
	Wed, 22 Jan 2025 10:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JNHfkvHk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87313211476
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737541513; cv=none; b=fqVcDhZpVWq2mIL4O70ot2B87guz9U7Dup4Y7uOSaxX42gHgJwal1wbo+LS4MNhaMyeNe0W+CtFeMX74Jsl9kke1bbpQG01DDASbP0i32uL3oXIyNWOcW9WRmXSMguhnd2bpseN+ndJAuS42vkv093VGrhzp/NJKErr0jQHdduo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737541513; c=relaxed/simple;
	bh=jzZocIdMSmBtlTunl36QH2EI2fT53+8QSFYYUBUXkgE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k84zviS3lrmfNHjrxGEbc1gefY8pH55J4GH0KNtTo23JiZBE9sPFxdxsvFd8Inb2PWPViYaUslq5XAC7v2f/uuj2y+K7XSII9015h9SyeqDeyYJaWHub4UPPoMOB3rrKwEVOROkcp4gEUIz6B4vr5ZUX8i4NKAc602Pzp3zTIqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JNHfkvHk; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43618283dedso68918435e9.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 02:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1737541508; x=1738146308; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Md673f0gPc1Cs0CUTHmJ8oomJneh2yNJzotFkHi/Wpg=;
        b=JNHfkvHkCugaOJ/qDf0q+DBRXQh89IOCKSz6s4z2p1avGp5DZ3xl+ZEXPe6GGPMetC
         pX1keVsfe87d1MMtWKPlBIJy+tvl02BWlZJiAfCITKqA/LBlVVj+VmwL+9Dnf6KNAWgn
         5d0Z+4e0TpRMGMQR11d3IXEI37uO1ymGvUdAWF/CQ5KAjEEhmpB+UXhKsMVEZ8Pbr5+L
         F3sCfhqnWsSbl0kpTgHcd+aihIo+djBQe6rnquYMYSwIJfIJvZkShAZFsr46/Uxu2LW9
         cqV5txrHSvO9k5GMMSAFk0CG4SRWjVmeukQoL8MDf5hkWm7+720ecP2TXvHaq3hJB7+s
         HpQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737541508; x=1738146308;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Md673f0gPc1Cs0CUTHmJ8oomJneh2yNJzotFkHi/Wpg=;
        b=boeg0ev75m3kx4ysLlZQSaNH1N0CmLkZyMeLuuYPWMCn+0xYxav1AVnR0whwWpyEAr
         ENeP8D2bLLP5vUqIOpCT0yFXQvRHLCBdEIJ8fPMujcaw4YasmgRXAe2c5dBJHYcGuGFh
         NbIqauma6dWpLqvgn1CN4TxQTAtZnd9or9hbFBgqLEl2oA2XI+2+WE/qvzC8+2gs/9Cm
         dQiuHxNDPGeTRSsIepN1UXo54BAldODhIpu2kCnDJvGXaQbY+xeC/G/7AUa2J96w9uYV
         EgA3wiJ5/F+ikYnur3QeC24H6QenMbdMKrupkokRgbDrge+Igtw2mSZl+/0Yxq3bzfbG
         gHDA==
X-Forwarded-Encrypted: i=1; AJvYcCVOoPfH9LwxgsO1pwaRZBs7l3jTcxVSVdZERaew9DchDb6f/m76vJh5M380zKDaECOEea0OZGVt0PX8@vger.kernel.org
X-Gm-Message-State: AOJu0YzgVRi8JMcnbezntPP45IhyPtioLrsFKkZ8SpDmDmrfpgGkBAP9
	2nbmA9jTXBSiKOUflzIXeehpnfM0h1y2PM0WL/IGoh8Poa24P9LrXMZQwdhTVrGTz3fv7+vQlUz
	m
X-Gm-Gg: ASbGncsxv4DsUci2kIAM8H5E2Q1cglemkEJSxbs4ltQeVkPfiYi16/bp6dumX//CAJo
	XXTq6ChSloXq5Vos3zX3L3U29tGKQx7+I9LqcKLbd3uAmf+gX+LKTfEsnbX/y/YjfdN6DOijwA6
	XjYNg54ODFwZz14SDHZiuXjc9BmRDx9Of5IoVFZeOGWA/6K16dO77HT4vDlVtCNHCfre/DBDA6r
	PE7Ajv1hrOpW2nNUEmpLD7E+/JgYtTfPdv545hDKXOs5ivZ3R9xEyJfkGkI08oGdKA=
X-Google-Smtp-Source: AGHT+IFCbq+3UCdDmSN++N9c1Y4Yc7X5v4bvVncSYB1zWDSxEbjpyTxVVprsAIhduuhAWkyIDaeOHA==
X-Received: by 2002:a05:600c:1da1:b0:434:a815:2b57 with SMTP id 5b1f17b1804b1-4389141c4ebmr162686955e9.20.1737541507801;
        Wed, 22 Jan 2025 02:25:07 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:f705:a3ac:14fe:4e1b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b31df407sm19307215e9.37.2025.01.22.02.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 02:25:07 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Wed, 22 Jan 2025 11:24:33 +0100
Subject: [PATCH 2/5] dt-bindings: mfd: syscon: Add ti,am62-ddr-pmctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250122-topic-am62-dt-syscon-v6-13-v1-2-515d56edc35e@baylibre.com>
References: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
In-Reply-To: <20250122-topic-am62-dt-syscon-v6-13-v1-0-515d56edc35e@baylibre.com>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1255; i=msp@baylibre.com;
 h=from:subject:message-id; bh=jzZocIdMSmBtlTunl36QH2EI2fT53+8QSFYYUBUXkgE=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNInHM/dFPgxZds2p2exl4piucTSH2TvSEy68cy+xWYx/
 5w3oi4XOkpZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJ3LZkZJiwJvnj/GN+/961
 ppTqLKuotz5QWagWMqXgSNYb5m8xyzkYGTbOnl512vajrK7n+0hV199SH+dHX7HYu2kql+SLLYJ
 WC3kB
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add compatible for ti,am62-ddr-pmctrl to the list. There is a DDR pmctrl
register in the wkup-conf register space of am62a and am62p. This
register controls DDR power management.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 0e68c69e7bc9ef8c2c96f0e7d1b5d88eeab2bfba..fa2e904b52ea0baecbdbdc14a4fb636eb87abe59 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -110,6 +110,7 @@ select:
           - st,spear1340-misc
           - stericsson,nomadik-pmu
           - starfive,jh7100-sysmain
+          - ti,am62-ddr-pmctrl
           - ti,am62-opp-efuse-table
           - ti,am62-usb-phy-ctrl
           - ti,am625-dss-oldi-io-ctrl
@@ -208,6 +209,7 @@ properties:
           - st,spear1340-misc
           - stericsson,nomadik-pmu
           - starfive,jh7100-sysmain
+          - ti,am62-ddr-pmctrl
           - ti,am62-opp-efuse-table
           - ti,am62-usb-phy-ctrl
           - ti,am625-dss-oldi-io-ctrl

-- 
2.47.1



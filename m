Return-Path: <devicetree+bounces-208148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4D5B319FE
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:44:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CC65AC4F21
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF3D3128D6;
	Fri, 22 Aug 2025 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t6o/pnxi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6822E303C83
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869673; cv=none; b=LZqnsqqLfOjkLyEOaq5IIkbTk7S+hAAo/p5KrlyhKHumoZTfs7xd5G7ESEA7XhozdJ88FtGQNzNbDy7WLF19Wfeb3rvugc2I5E6u03DRvAuBX4PzL200ZMUebVq/a9510touQu4RnCWAdIxVoV3Voz40lX2PL3oWOsokkTd63UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869673; c=relaxed/simple;
	bh=v1bJFiG/bpHsP4g5W6ttFLd4QJEoxXuP2+XZUgVkyQQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SlFxdndOBb1TC4KDkCDGm95ctFr7X9eIzEULpL43fImIWdCVpKawIwhqcPqI5MG1ri7vrIqfFariHIy0wPTg1x7Hr7YGKZePsEW7Koyfr9OBD11PlF+1ZIiIGvz8gHOMnFwf9uMAXe/vw4GOPuMU/dzSXBj2f4K7HYAc3g61VlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t6o/pnxi; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-afcb7aecf92so33753766b.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869670; x=1756474470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjR01mpTA/FgRQAryH3FQjQHwAPO0VaBjRlehQsaKyc=;
        b=t6o/pnxit4l/lP/g+yzIO5OEvu2AwNrMVix4TYL6nwZOJKjIponIFJfD/QTGwX6s1A
         vMiICXliEXtzSEJh7ipacYf2Mi4Rc9sNpOFZUO0JDflkpnl5yrh7csSdJn2+XngPO5uF
         c92HAwTcqAqdPI0UzbBeaKb4HGuZC+XvwFLtLPEQ2lah1UwtG6i37dWApMFS4zZmVL25
         rfHmw0u1wQ5fQVJ/13mMfCNqPNG0QVPSmy+QTj0nhSn1wOdkzXvgpGVe368M6/xp/Ree
         sxz8B2GeBbMZeEmrJz451VME1LqIrKbub32bBb0gEN53tyYHuRohAM7rmJ+rIib1/Xu0
         54xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869670; x=1756474470;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bjR01mpTA/FgRQAryH3FQjQHwAPO0VaBjRlehQsaKyc=;
        b=AVOYjmNsBa6hSdad/iiEw5ZF2BLst9cZ54FGOnMBSkiNolyFblCJCxEKLsFECyZtYk
         7U6I4T/Lugt6nCpCg/NrMMXcssHbecOfeoHVWKwf2mYXK8uJKx6ca04LoKWtyZghtRay
         zEZtY+xwuLMlSErOchhH2me0hXMf8LR4mb+cRZBv6uKYtuXcHd69d3nzQusQAyROkFhv
         8D5VNKir8BPZMv+irJn8YPNwBsQgFziqnsqcme4MPADdKtgET8GWYjTDp4XXmjmXRGp1
         BLbXarOeakD8vl62W2rdTYO+vLmPyYQr2CYOU/1VP6x+Lhwy5DKKbK9aqDzQjH7a0w8/
         ny3w==
X-Forwarded-Encrypted: i=1; AJvYcCVIQgFdXQplDPLqNVvudMVzNAGKRrrw3Vsr9tBXJ3gKwYSocMC8yhbElEeZ3B0JntbaXCrlGHpHqGvh@vger.kernel.org
X-Gm-Message-State: AOJu0YwNls+UvmntQFBi5pPFXo9i7aY/YlSTXe65LFwcequfdhxBB2x8
	w8CrWnvhCmvI8Rwo4sk+JKNuAffuGYtBwsK3RcnzpJnulto8hmvl0087EdyLtsLKf1E=
X-Gm-Gg: ASbGncs/dEkn1LToQVNaLMlvV/L7xZcwK9Y9N13/EvPYqLM31q7eWqJPCpzbJpPa6bT
	121ONcIvJes+gNlsiar8ChYsFOIEMNP+2DD/v4Rh4RiDYx8eXYL/jVRCRo9yKMM/qnWxHZXCGyZ
	CQw/wXKUQ9ObKbpFo7zhRdOFX6D64kVyqGLyf9saOkjecIBcMDynKZ6hTgDZ7eWCjR1cVj81jUt
	LmQWnWbZv0SX2r8JT0KVINun3WT4g7tR/r5BFWWFCEZNNILDSJAroBHr24ceDrgvNlVW13Pn3/w
	+z6ToUyxPiowQ5hZCW8w7M54m+/iH3hqr1jvhAe5mwuvib5AfDObVvqf9vICIXUxBPcYcBMW/ax
	7odi0To3AUTThCP0RGEn+ZteCVgdgSV2U+g==
X-Google-Smtp-Source: AGHT+IG0djM5vkVjKtqATY40fY9Wb5Wze8zQ3BsMcnoG3CML2bPTf6Fv8g4ybdgbJ1uJrtAz/o2ZYw==
X-Received: by 2002:a17:907:1c93:b0:ad8:a2b3:66fb with SMTP id a640c23a62f3a-afe28f161f2mr132736766b.3.1755869669676;
        Fri, 22 Aug 2025 06:34:29 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded3020cbsm610986766b.31.2025.08.22.06.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:34:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Antoine Tenart <atenart@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: amazon: alpine-v3: Add default GIC address cells
Date: Fri, 22 Aug 2025 15:34:25 +0200
Message-ID: <20250822133423.312621-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250822133423.312621-3-krzysztof.kozlowski@linaro.org>
References: <20250822133423.312621-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1253; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=v1bJFiG/bpHsP4g5W6ttFLd4QJEoxXuP2+XZUgVkyQQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHHgGKZ+Ix5QJ6gJkTziu8RPr7oyQVWB2E64z
 wW5UavOMQeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhx4AAKCRDBN2bmhouD
 16ZJD/4/WN+jrviLsHrxWXubONriHMkPn+HTcOFuFRtswg+4eqZNV2aHR93NOJD8iMFMn1gbcQK
 duJmeipd4VOA/F6M24dmH/M9dBl0GUV3z/A1PbU0Ygwl7ovS16Zwt6F4ZPXWZyMB+iV3bKv2fxN
 meNpcpfd09yImgz+UV9u21zMbjz4SwlIaiTMjD3uELWFIImm76yC0xRhDNzs0LgTsY6L72Hv3e3
 HDeLCOsUm0qsfwbH8QgQlql+nreApeUufEswqCta67GjthzEFTUAip/EvwlIp29gHBXkdtNFw/B
 C4ivodonyUp1Fg7/Hry3ZKZ0tIk3QbkEgz7YD7DkojTmt3RrKdHZDiSSfQ9OyK2K+5MbZcfcXnG
 hrLBOKBFyWXj2dU40DTEa/e6EassyjnelvxaHgoAy2wDuHtwwEYEPc0xIHJUs50DykPCfcG5q1k
 od1yntMuKO5ysccRijUW8l6txazNX8+ZkSdZdlCYdJnjl191TSYRGWc6kuGMSUEqrytcVpIGx5C
 EURZYxb5JxZ59f+0pu6PAhp7qJi5qS8NHl+02bSou/SuRS7kmhrnQ+grHor95h3JW22Ga2YAeIF
 qsoHzePOJauHfI36gW7r/rMhCmDgoXxWXT2Q43wDs+IdEdpZIKw7//ij4wJ9PO/uvL9OL9OS086 CnYoQ3bI1vQLsYg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  alpine-v3.dtsi:342.4-349.33: Warning (interrupt_map): /soc/pcie@fbd00000:interrupt-map:
    Missing property '#address-cells' in node /soc/interrupt-controller@f0800000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/amazon/alpine-v3.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amazon/alpine-v3.dtsi b/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
index dea60d136c2e..bd35e0e9d0ab 100644
--- a/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
+++ b/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
@@ -320,6 +320,7 @@ soc {
 
 		gic: interrupt-controller@f0800000 {
 			compatible = "arm,gic-v3";
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			reg = <0x0 0xf0800000 0 0x10000>,	/* GICD */
-- 
2.48.1



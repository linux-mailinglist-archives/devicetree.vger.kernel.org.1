Return-Path: <devicetree+bounces-67641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B14C18C9228
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 22:07:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36B3E1F216C6
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 20:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F6116A353;
	Sat, 18 May 2024 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WCvza+h8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59C660DCF
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 20:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716062854; cv=none; b=G0K3tZghHFkDisbHHgRvCMkoA1tu5atkXeIjeOWVhqYMk9gfTFiYRiTUkSDru9nvL5Ul8cTeHyU2FACTmyKhRVt1thbC0H8Ssp28gL84CgHyS6q7m4N6hDEWT/RnvR+ZkEO4vvMhBWGOarH9qJmpf7bnIz5UV+fjc4qb7wXRLJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716062854; c=relaxed/simple;
	bh=27I3h4MgKYXtSFZBFu936iQ8SV3TK74BchMEwHkKkHs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sB3Ab8Lt5PtDHn8shjpCxmtY+fUxDivDwigP++c9HOoS9mUBTtb5jOmTpKepC8Rl5VrVyDMeeGAIrBYPTxY7tFM+ickYpHdPZxK6OT+GbQlpp/QpNzlI3Sm9hW2IbHxRSJP+aYQzaJoqVYsMypShnB4EB5OUjInBELTwlZVZzlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WCvza+h8; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-572d83e3c7eso6645125a12.3
        for <devicetree@vger.kernel.org>; Sat, 18 May 2024 13:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716062851; x=1716667651; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2sdvVZWnaE4EnDhA5lZ2CAO3oX+RY86dqjFRArO7Kb8=;
        b=WCvza+h8JvFdt0ptItCl5/GWb9d9uZHKbT/Zxu6ABXe9ze55w8nczjXFhUIU8t02f4
         O0w8eH2vPpDhyNtKMPLU2Zn991RrGemmUFfQDbrWT3rq7KA5Pc05IknkIJSP/blXU54r
         hGSF4bUSuxfB+urBJcY9O7TaCvnlrjz7fS9PvkZvCMzP1G7jXRp+hblvHX6/9+1S8dQ9
         gUQ1IzVooOHP/ZS/JYBt9qdR2AIvP8ao/Ip5H7kjon4r43ZuHgL1vTVYjAA7KG1pXM32
         NaF3cIV4L4KpOJQvMTG08xEtQ7KVOIYkRvILgeu4eBr9koINgVTlHuUu1pdXSNOH3VXM
         rU2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716062851; x=1716667651;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2sdvVZWnaE4EnDhA5lZ2CAO3oX+RY86dqjFRArO7Kb8=;
        b=Y++3nV7o3Ylh9Bn0ySgUEk+9mBavGhjQzlhOLE9PCsgE3ZJ0IepWUYxzrZBgZly9QZ
         0S/Je+1IGkye5HDRBmn35rTc6qwWQv8SOgN7nLV69h3t3RtSsmzHPjfELoNCeyKHL7Ul
         fA3G+xMS/25PJDDTYQNIWDlSmuK4Fl7PPB2yqAuRmj2s1Zp7v1SrO2tw3XyaIAEbRGeK
         YqIV/3lCNdiM35g34sZ1Rdx3akN95dqYm2+pCfWZIWLd3yOQwhADVRY+xW6zI+0LFUau
         u/sdJZpyGsrDeR7iinXOJAf5iXea63yj/AZZzNA6Xrj0x4IB7oi4wx78sZn2X5tf4z+W
         iHhA==
X-Gm-Message-State: AOJu0YzrXSdua8qA7nV3NzQa5q1NWb85aTxmK0XM4sGtzEsV3CN+LQD0
	yPy1A/FaJaAkDFjFjURttVERUDZVSLUXBxcCZKe4Fwl+dHxD3mAZKvX+YOVMYpQ=
X-Google-Smtp-Source: AGHT+IECcF3e3kLMyD7s8duwHyzvTWogdA7URiHy0RnfEai9yZDFVYW0G2SgWWerPGW7J06L/uDwLQ==
X-Received: by 2002:a17:906:fcab:b0:a5f:ae29:6a53 with SMTP id a640c23a62f3a-a5fae296afemr32081066b.66.1716062851249;
        Sat, 18 May 2024 13:07:31 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17b177desm1248364566b.207.2024.05.18.13.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 May 2024 13:07:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 18 May 2024 22:07:18 +0200
Subject: [PATCH 3/5] arm64: dts: ti: k3-am62: add dedicated wakeup
 controller compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240518-dt-bindings-ti-soc-mfd-v1-3-b3952f104c9a@linaro.org>
References: <20240518-dt-bindings-ti-soc-mfd-v1-0-b3952f104c9a@linaro.org>
In-Reply-To: <20240518-dt-bindings-ti-soc-mfd-v1-0-b3952f104c9a@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Roger Quadros <rogerq@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=975;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=27I3h4MgKYXtSFZBFu936iQ8SV3TK74BchMEwHkKkHs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmSQp7aJ9uAPdifvTFCfvdPT/QaGH3rM9k2/Pk4
 cJ7MJFhpmeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZkkKewAKCRDBN2bmhouD
 1ysiD/wJW7iK9mB2cpGVGjksncgvB+K+Flh/r3PTtrjFx+trwGzQ1nnh7FWnF+NABSKTXl5ih/t
 zYjJTjG8DNgLaj+F2FK3oZlnY1Wj+90+tvV55TuvzkmvLVJhSlnMHcnZrRrZ1ibgA4uDy7ktN/f
 DkNh2omOUKyIa89KePxV1qu54AI1uigtyWNxKGw4Ar2KR0+j+KyDxdFuPrtaJrtz96aNQrcifD5
 RxRM8C+N+RgEGOkQRXLH5ma5jEde/QfTii2zkBXpaxo/FltKsPIk9jonhdKyFuYikxgfirQd1bk
 n6duhw2aK2KJgsjlQ/RasYY58hNjyxhjmp8iFL7rmTPX/PoHbdGQlHhTBcOSYaUInssDErCeyP3
 EclEogd2d2bPVetkK867X9WOzKNlFMDMtrSfEyrQbWhJxei6FvfALQ3kAvfDk+gov873zemroXT
 wx8W/WPfE3W0cevwhsstOqsGBKyLcgW1xHGc2Iu7JQkBaRntIO9W7iAVq2hwLNj8TFld2TMcN4o
 c17SHGL2Yrs0e41xkNIpzWQHK7asZIa9RNg0Q/MmnA5dYZzZ4tTqSEV4nXT72+4W+Ls0W7suFSs
 ZIQkYuetDJ1mkWHFz0CKHY8ZVo0MhOtlxRqFAeRWOT5gvImdeDH9mE1wtNn4efDd21H3tEyx3qt
 /IsnVmdQss0rY6Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Each syscon node must come with a dedicated/specific compatible, which
is also reported by dtbs_check:

  k3-am62-lp-sk.dtb: syscon@43000000: compatible: ['syscon', 'simple-mfd'] is too short

Add one for the TI K3 AM62 wakeup system controller.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
index 66ddf2dc51af..3c1023108642 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
@@ -10,7 +10,7 @@
 &cbass_wakeup {
 	wkup_conf: syscon@43000000 {
 		bootph-all;
-		compatible = "syscon", "simple-mfd";
+		compatible = "ti,am62-system-controller", "syscon", "simple-mfd";
 		reg = <0x00 0x43000000 0x00 0x20000>;
 		#address-cells = <1>;
 		#size-cells = <1>;

-- 
2.43.0



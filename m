Return-Path: <devicetree+bounces-50348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EAC87B19E
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 20:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4F7D28E300
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 19:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC5495FF0C;
	Wed, 13 Mar 2024 19:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QwS524bA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B281A38D4
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 19:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710357120; cv=none; b=A/fjaHvnsAhF4FQjRfoCTIvBSh73/2/cZqCtftaiWX13vh159k0helqgoxT/16Lco8+9+I5OZD7hpccMFlzakNO55bsBs44tee0lBHPUQnRYq+cbBsn380h/vbgGT0qLCbRDIYhxs47bW6KRSnXD/lUPMXGUsK+XCrIdDqniOAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710357120; c=relaxed/simple;
	bh=xlZAvT3oSRLffXzzTPVHTuzaeuzyCQhhip1y6+yT3T0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KZ1DYd4ZgbGrLg7GHM9IyPkBnxDazLSbKja++bsK6p4BD6kvIL987oXnHn7Q9LsIIrBwwE+JGAXGlWbLFkwWnHjxOhiLnLdWPpxAatKzQ6PgfpfHHWf5DqdoymY0ZONneIsmvKJP348UTS7RACqZsXzP4pS8OGe2EoZl1CDPBCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QwS524bA; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-33e1d327595so69412f8f.2
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 12:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710357117; x=1710961917; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Gq8f56qQF7inQ6M+LC43N65QB908sIMe3u6SShL4CU=;
        b=QwS524bAn+gLdfDpPAMUZBiMgEipEfEj33+DRrLWRBjtL/iFB3DagMVCJ4gQvdpm/w
         OERhE8PiujjpQfs6StypXpUR7lAddiLuSarfy5MEaf3fM0cJ4T+ZalBUVZ8eadfbyJ3S
         e5tzZn/V6kYRBXzw0vULsT/wd8hvwbd2XuX+HyDYAGtR898TqJYYYDOH6tkFqrtsOzqG
         sLliPel/Z0D7WzRwfPVLUEiJOQA+uj76rVMQLYF2tZA/uPkfr6Ji+EsWDrLwVscuyJUx
         0+1JBPGK+vwBsKuLPXG0EWSvK+IfwGeTy51S7crYcyCyhf3YJjqIcBUgFkJ5kcDR037m
         ppFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710357117; x=1710961917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Gq8f56qQF7inQ6M+LC43N65QB908sIMe3u6SShL4CU=;
        b=tP/DhaETCI8fiy+hAG/r8923AMNZqS2oigslHYc6P+f4+JSMXuHC0IFBufB/NJ/9I9
         x+fxeFbCfQ7wGaBse3svRSSkJNCFc3oc991JPHHoeAQh9JbI85bEYoD/8D0+L4yjWFux
         IDlFqCxX4W+ZSmhZP7jV0mO/9dTrV818+RgXDqzQji7WCZQdzw5JdxysS4NpWm7TBBiO
         Co32DmyYxWASo8RjVvA9urW3jmhlWyKarB4ku2LMs3PVYkb4DOprdmnBcUR6wYPT8FwS
         rEGPqt5/yv2gwxW1BGjrVISTwBOF/a86BGUUEQNL4/2X1ImLuqzXjs2OgnYcBABRlp8K
         V+4g==
X-Forwarded-Encrypted: i=1; AJvYcCVgHK4HFJxRtp+IfPMdwfOF/h4aufud0pEkGs/ek9ROKBNU6o9u9GoJBLaw/Gy3+r9V8GwF8vJ+w6rcCDzPis8zGl6AlDO9tykjsQ==
X-Gm-Message-State: AOJu0YxEqCTbLqN2RyCAQtXEPxatYPptg2hig7JwOksHMHALdnqoaeD4
	sXpC9uSRBdaHkX5rL4TAtbfBpNPbLk1oQBjCeVxbqwpkbF80uU7YaqVS4+dz0t0=
X-Google-Smtp-Source: AGHT+IHMllLxdRaZBf/lrlOMSjorl7Hp1BMgsl5yp7HaJo8pP+fvHbPMD7UndN35jKTHjIPr1a+Egw==
X-Received: by 2002:adf:f305:0:b0:33e:7f5c:7a9c with SMTP id i5-20020adff305000000b0033e7f5c7a9cmr2456370wro.35.1710357117486;
        Wed, 13 Mar 2024 12:11:57 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id a2-20020a05600c348200b00413ee7993f3sm990512wmq.40.2024.03.13.12.11.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 12:11:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: samsung: s5pv210: correct onenand size-cells
Date: Wed, 13 Mar 2024 20:11:48 +0100
Message-Id: <20240313191148.21792-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240313191148.21792-1-krzysztof.kozlowski@linaro.org>
References: <20240313191148.21792-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Children of NAND controllers have only chip select, so address without
the size.  Correct size-cells as reported by dtbs_check:

  s5pv210-galaxys.dtb: onenand@b0600000: #size-cells:0:0: 0 was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/s5pv210.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/samsung/s5pv210.dtsi b/arch/arm/boot/dts/samsung/s5pv210.dtsi
index 23459430410f..9720573d84dc 100644
--- a/arch/arm/boot/dts/samsung/s5pv210.dtsi
+++ b/arch/arm/boot/dts/samsung/s5pv210.dtsi
@@ -82,7 +82,7 @@ onenand: nand-controller@b0600000 {
 			clocks = <&clocks CLK_NANDXL>, <&clocks DOUT_FLASH>;
 			clock-names = "bus", "onenand";
 			#address-cells = <1>;
-			#size-cells = <1>;
+			#size-cells = <0>;
 			status = "disabled";
 		};
 
-- 
2.34.1



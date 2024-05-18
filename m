Return-Path: <devicetree+bounces-67652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8D98C9260
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 23:12:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8D7BB21873
	for <lists+devicetree@lfdr.de>; Sat, 18 May 2024 21:12:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDB366CDC1;
	Sat, 18 May 2024 21:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KK2aApF8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD06BFA9
	for <devicetree@vger.kernel.org>; Sat, 18 May 2024 21:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716066730; cv=none; b=Rm7E3mriVCY1lUm5GyzKM/rNA2ln4+RRhlLYTQUX/x7X847m/70O5BMVGopWQMHpvqXC1u3fivIovIcNRehRNQWtzGU1lU4HR7wK7POcMAHcmX+yJ+CZYOzfYpcnR9t/lCeWRioLn1ePiomOIdawyUgqwgwAOX/Mf1E0HvInv7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716066730; c=relaxed/simple;
	bh=Qzrtm7n0R1tfaGi5UH4bwUVUHEDyakKRZgNQX30wc78=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XtldjEVcIAnnJ0SYBMvG8OZvVVw0WaKIETnxadw50lEi41d+LnFzsereDEIz+QaOY/AGUsOjaRVlDB0XNdGJkDRsBlAzh0L6dDI2uCxWY233WUSGg3eRZQEwI5HcBYgRnt2vXwRk6MpP6yemU2e7aISIosg/cGT7tthQ+7/72y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KK2aApF8; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-572669fd9f9so6333623a12.0
        for <devicetree@vger.kernel.org>; Sat, 18 May 2024 14:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716066727; x=1716671527; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mStJOZyJxaV4Sf+0e36HuH21WV0+MF5MEQ/HmeAZn+w=;
        b=KK2aApF82LbMQGPeuqXhqukvpcXJG64Zc2DD9xJcjSMlScJ7nvli1LrAd4j8lFbjHL
         reOMHWjaoXHq7wjuuKAn+kbJC59gzOtBkcu8Nwn1v/uIBvDmH9rCAJg8suEJuSyWDtCn
         RNbLGgWsVIDPNIarvpas968S4wuI+REMk6Nr0Jm8v+ULPY0EtdvbfSDpccbfZOJxwLpc
         HU4KY82NCcXpJiLRw3anszUmr87ylsUPu3UkzNL4HBPX9h54Jxhw3S2CHDy8+WlrCHFt
         V3gLVMXLuOmpm9yfvhWaRSe0O0mCVEfa+CPXV6m7HVbTrxeVG9CyD+LKhj7WK3cuKPw+
         7+hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716066727; x=1716671527;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mStJOZyJxaV4Sf+0e36HuH21WV0+MF5MEQ/HmeAZn+w=;
        b=C+cZ1bWfXUU34TC956/pLpj8PrWYmJ6hJOBW1jVyIPV84w+n9YEeNRIgQgm2kUekgG
         uDZxxl4AbH3znMQX6/lybUZTX9+BmfKRtja5xufb1gKWDwTHh/sWxfgAl5KLdnk9GtxN
         o0D+rM9y396zHV789aLl6ObpmPRfFTMD+7y5GkilUGd37H9aVX/rmzfqdz4Zxff1sJGD
         50Oc/zysaaL9ElzWHM+XY6Wwkym22Bm7lw6CdlCnypRw40EKhUXmHgr8wil+PrPNfEUZ
         z6T1x1Mmb2/sz6tlQMg7ayWubVPOJ2rsNPsq1AOv185Z8GLQFdcmW/2SFh5vA/iQmVY/
         BURQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgY2lLhVkPEJM/SYVMugN0wyhDcG6u2rn2FxWOhDAEgcsbIjPm4l8quL4+n3soMgIzvtgP3CmFePa1/6RIfMHF9BfsW814QV+r9A==
X-Gm-Message-State: AOJu0YxdeeYl/Xj/PF4WFEm2f8uw5MAn4TG72WBk8PT05g0BL7iFkCkA
	4/PUg6sOInhRYyi+sAsJTimi5+Qm0WyDD/mBz18XyLNkHxbLilrQNaKKodvHKcY=
X-Google-Smtp-Source: AGHT+IFyPVsATNUTmbolTM+aWrNiRvkqe73Bxw0huQJz0whqeZnLtrpr55PPw1QGKoL2hVm90QrNwg==
X-Received: by 2002:a50:d7c2:0:b0:572:68a6:97c with SMTP id 4fb4d7f45d1cf-5734d5ccb06mr16307954a12.11.1716066727539;
        Sat, 18 May 2024 14:12:07 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733c323d3asm13151340a12.90.2024.05.18.14.12.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 May 2024 14:12:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	MandyJH Liu <mandyjh.liu@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] arm64: dts: mediatek: mt8173-elm: correct PMIC's syscon reg entry
Date: Sat, 18 May 2024 23:11:59 +0200
Message-ID: <20240518211159.142920-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
References: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MT6297 PMIC has address/size cells == 1, thus its syscon child node
has incorrect number of entries in "reg" property.  Fix dtbs_check
warning:

  mt8173-elm.dtb: syscon@c000: reg: [[0, 49152], [0, 264]] is too long

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 6d962d437e02..0e2439860223 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -1138,7 +1138,7 @@ rtc: mt6397rtc {
 		syscfg_pctl_pmic: syscon@c000 {
 			compatible = "mediatek,mt6397-pctl-pmic-syscfg",
 				     "syscon";
-			reg = <0 0x0000c000 0 0x0108>;
+			reg = <0x0000c000 0x0108>;
 		};
 	};
 };
-- 
2.43.0



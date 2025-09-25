Return-Path: <devicetree+bounces-221594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18929BA139A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:39:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7F8A17439F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 19:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A105F31D754;
	Thu, 25 Sep 2025 19:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MtTqC3ZG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AEE31CA46
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758829127; cv=none; b=duA5nfm0qOkq47Q0ktauCCvh3SvpcYNov+0StdPjX5OzwV/RL2GvegaJrmabUSKBgN7W8JZhiqV9hrZUTW7fvKCzQ2MFsdSrvdC4krAONtpS7E/z3P6gAe4/wXFllsllfl/Q+tJ89DNv7GEyyCLIz7GoOxYNKT0JP+TCxtT5ids=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758829127; c=relaxed/simple;
	bh=KXa+AFXDw/y6DHlre9QjMfUSHSGKMD/6rd68rkDHdP0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A/gFCobgO4ez0rwF2+4VnZ4XIP1bzDMCjn0BrO5ZenRPBXhd5SHSdvmhQrC/YHUScv8S3QM6xD3C0yy5wEsUBYF0w4/78I4jRumTkQB7sbbRCJWY3p+L+kam4IGGwwhiCLdvD6AMIgo7P/gnRBZ/5dk7kxuwUhQuH1buujs2j+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MtTqC3ZG; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b33d785db6fso267815166b.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758829124; x=1759433924; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Jlwkvw2hHQ0c6jPA0PLEUgMv6NDdNMIusq982ZHDNM=;
        b=MtTqC3ZGe47h+ES8f4kxv9pkHZbvCYmqrNUyyUc6ahThPv0/Fth9xmBQkTx1DmcmyH
         QaDJZe3EkJa/n6SHyQF/zACgaJsJHA0+XDbHIwNhn70p1ksYLIvyouWOuH0iap/cLJwI
         UrIT9yTs3qpgi5lNrcDZmMebUwXZLElrpqR0dz7sdTKOxG41HobCsToiehMTkvsBPCb5
         4k6ncL9QRl59fukBGLvvLGvV7wziM5E13jdhRCxKJyDPVGQ9P1odIbBJtb/v/zHyJmv6
         mO9szkdVbx5uXgwpF+kYqh6/O+4NPiyaG2+3bAwoHHO/m1m0ULFFyPoSxCe6NpzoOLwj
         MA/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758829124; x=1759433924;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Jlwkvw2hHQ0c6jPA0PLEUgMv6NDdNMIusq982ZHDNM=;
        b=TC9iDwNASTJn3xjGhCufUDl8lxPqdgP7tI+fbJZv0EfxLiO1qMI43MJcGTucfsgK2k
         dC1TA9LmrtZAWfduD+0etWrObBFa03kAo7i6TRgi2caLbSOSMGbwXOiUO0q6Jzet3ps4
         TtSaSKvOAyQ1PJlcqo9fH34CtQgcm9uhQCoigcsazunokdCCO2X6LaKFl0Aj0FXMVV6R
         g9IJcvOVBlakSGyHhYSuHWODRf7BVAO1CF7lRTM02ZzvEIOjiyyoFxrEPr17DG9AanPH
         VrD/+okkO4uHP2OLILyzuH1cRqYkPZbixUs9PZOy9JigsYE2WYyWYqDCa6+QzxZkmp2/
         gs1w==
X-Forwarded-Encrypted: i=1; AJvYcCXHev9aJ4IoTD9sHM5y1kzsrDAlZqJ3gp+3nWSF3x+tic23GSZRnF2AU6LkV8x9ZzCjgJHYpoaCNytv@vger.kernel.org
X-Gm-Message-State: AOJu0YypYU7E/wotd5KXj7BZlzvlguOUDQAF/ibS4mXR2ORCXH7izrYr
	VtigbFA9v/fKq4xYEu/7PCojNfxSr6HY9yc07Yrh9g6lthQ5FR8SLxF2
X-Gm-Gg: ASbGncuxNODjRVQZLv3y1DFJ7J7PfDVv/4VeFpYU1avR3+RyPL3Mp1BJYkHiF9c1wjl
	lSmSiUMdKtMXYb9LGZv2PEa7XFCGnBXAX5PSlb0M37AmqApc9Lz9icxKwMEAoLXVzA73sx43dyC
	8XQuQWi/SvjRkh5ukemfOJwU+A7hY3vyMn7mV52Nae38Q4fRGgMBdVsVuZUUl6GDqG18pOkkiSq
	iWuRcm9FSha8q/rKeOlu5amJxzta/UM+XGmYKlna6Wlwn0kBjC311kr3x1zLJYNZUARXfExbF/M
	KwHMo/qnu+5yGQDxuf958ljcCaX73UoKtW8LbeRjhWlLs70FnXV0xenYJfwSGAroO84z09ALq06
	PoTqGkY8czRi/DgRTFQZr
X-Google-Smtp-Source: AGHT+IE/AaRt1vZleBpFFE3medxviv+3SYFioXoNmY8V7mFPoWlo3WX6Ptu1q7ZNQcHZ67UMce6drA==
X-Received: by 2002:a17:907:3fa0:b0:b04:9ad9:5b29 with SMTP id a640c23a62f3a-b34bbbda59cmr574770666b.54.1758829123783;
        Thu, 25 Sep 2025 12:38:43 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b353efa4c35sm222820766b.26.2025.09.25.12.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 12:38:43 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Thu, 25 Sep 2025 22:38:37 +0300
Subject: [PATCH v4 1/3] arm64: dts: qcom: sdm845-starqltechn: remove
 (address|size)-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-starqltechn-correct_max77705_nodes-v4-1-93b706bdda58@gmail.com>
References: <20250925-starqltechn-correct_max77705_nodes-v4-0-93b706bdda58@gmail.com>
In-Reply-To: <20250925-starqltechn-correct_max77705_nodes-v4-0-93b706bdda58@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dzmitry Sankouski <dsankouski@gmail.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758829121; l=1117;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=KXa+AFXDw/y6DHlre9QjMfUSHSGKMD/6rd68rkDHdP0=;
 b=bpUKBonuQTiw6W5tHeMIp7Q+/7Horigpbdl0sRLCD9vNiky4QvgMaUU/9bvUwsjju3IVXsSPH
 GWtwRWc27zADRDje7xMZ2G+JM0MGt2fQZVXXr0ujoEA/CYhEJCDA/Vz
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

Drop the unused address/size-cells properties to silence the DT
checker warning:

pmic@66 (maxim,max77705): '#address-cells', '#size-cells' do not
match any of the regexes: '^pinctrl-[0-9]+$'

Fixes: 7a88a931d095 ("arm64: dts: qcom: sdm845-starqltechn: add max77705 PMIC")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
Changes in v3:
- fix commit message to be more clear
---
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index 75a53f0bbebd..45c7aa0f602d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -606,8 +606,6 @@ pmic@66 {
 		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-0 = <&pmic_int_default>;
 		pinctrl-names = "default";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		leds {
 			compatible = "maxim,max77705-rgb";

-- 
2.39.5



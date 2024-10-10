Return-Path: <devicetree+bounces-110116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 842C49994E7
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 00:07:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F7C61F24049
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 22:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161D01E47A3;
	Thu, 10 Oct 2024 22:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BWSMIYsB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9441E284E
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 22:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598031; cv=none; b=KrtaW2EXykfpgHKWHrdYhewzl/A+cuhkSnFDWpDcAeCChSBnZBzB6CcLa5zaeY0HkinhcttgFUeNfJJJ843R1ZghUIJJDeT5fPCd1bZHDbDz3kvwbHZUo6LsW+k5DGKgWRkXKOkOvoRucGmcXfolf1AidY08wVR7JFIEwm+B11M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598031; c=relaxed/simple;
	bh=9K9a4QIz1B5YVSw7e27MEucGEZOgvDhuMc+5N0l9LQg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XeQxvzlfsp/5ShhIppi8HQCOnoYsBuDqYebtVQkXb9nM1dntWySViTxx7W2vNz7N4yLXQVQbNog0jp+s2ybhscE5pphainK9PntApa2EESZIYWujYczLsZJYI+uqLpPVnS72uRUita9IURSAtj04bZ7eHvxAb9l/mKgdFUkr2Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BWSMIYsB; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5c935d99dc5so1339058a12.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728598027; x=1729202827; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ABcl2k12XkGvQqanmbkubNkqbMdMAgbSekCuOoaauM=;
        b=BWSMIYsBe3aRn4qiezGwjcP+TJQ9dBLhH3LeGS+Ugcemh2lcn92drbLvd173qhOAKS
         wy8OOpIbX5nRX5rCkHpKvGcHfY9DrvZznO/SA/g27LOXo0fc83hmLx8Kua0hPCOOf/Zz
         fLNYs7c9WjbvFnE2qlvxHB7sqtyxYRXN4HrMCLgLsaj/9YpM6LeM+SGt4UslikpHVEfO
         JX4wt5KMeohAU3qJZHsbFprbNtGYPpPgPuljWuksxdKvFyTW7PMHsHazaSJxGpvTa1Bu
         sni7LMnCfkgZ5tA48uABZhw3+tncEu3clZczygX7zonUuzcNOKVa63zHlX2f8tuGV6wR
         U4hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728598027; x=1729202827;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ABcl2k12XkGvQqanmbkubNkqbMdMAgbSekCuOoaauM=;
        b=C3AKOOZ6y5LRNR0zfAe+BGyX8N343mc8c7HK8vAuuhuRROIDdKcIjODrXRf242IGGt
         1FxjZnd3dRdgykPObS7XHwmbooQksgerPl5PjC30ztyb9vIGLFihFSOXEXo+NbiOUnGC
         hQVscMzxiiH8+JCg+STzkAY+36jSDlotVhxwm5yz2iJ0Aq+F3pZVS4IuoGDyE55mtLUN
         9ohGNjpelx2orFNmDP08bXlyI0hrhmqKvtzpzZfdMr6/7rwwR090kyxUURLwwD/hG0vU
         6jdEtr02So9a6NSBz6h3BbQY2MRLoXmwIAqtJWIud1uv9jlSME4xpit3duJJ0Z+gJ04e
         5rcA==
X-Gm-Message-State: AOJu0YwQrlV3jTl5rbQioEPJDS1wpvS4v8NKa8SPRIm5E3wslVd1cH1N
	WkOiHnbJ8GL9LBo7i7KLpJXt9LZYMajRfJyKcKSvS/iUj/24pGjpf4FGZQRPBGI=
X-Google-Smtp-Source: AGHT+IElKOm421M6Zlz9mpnjR9IKUSlOWVRXYIaXMQflRmBMPlxEEOhjEG6uvQdty2WhgmtFxmdS0A==
X-Received: by 2002:a17:906:f590:b0:a99:4780:1af with SMTP id a640c23a62f3a-a99b93c8dc4mr29364366b.31.1728598027485;
        Thu, 10 Oct 2024 15:07:07 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7f27e5esm140825466b.80.2024.10.10.15.07.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 15:07:06 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2024 00:07:02 +0200
Subject: [PATCH 4/8] ARM: dts: bcm6846: Add MDIO control block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-genexis-xg6846b-base-v1-4-f04d6f6f93ce@linaro.org>
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
In-Reply-To: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This adds the MDIO block found in the BCM6846. The vendor tree
calls it "mdio5" so we assume the right compatible for this
particular version is "brcm,genet-mdio-v5".

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index dc0c87c79569..2d1c74ce79ac 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -223,5 +223,14 @@ nandcs: nand@0 {
 				reg = <0>;
 			};
 		};
+
+		mdio: mdio@2060 {
+			compatible = "brcm,genet-mdio-v5";
+			reg = <0x02060 0x10>, <0x5a068 0x4>;
+			reg-names = "mdio", "mdio_indir_rw";
+			#size-cells = <1>;
+			#address-cells = <0>;
+			status = "disabled";
+		};
 	};
 };

-- 
2.46.2



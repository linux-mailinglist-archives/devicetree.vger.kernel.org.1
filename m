Return-Path: <devicetree+bounces-149522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A210A3FB64
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:34:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06B578825CD
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38B71F37B8;
	Fri, 21 Feb 2025 16:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BmPgyQ3u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1EE1E9905
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740155041; cv=none; b=PPz3s/qqJepmbedU61cnZN6dTdXo41r8BxV5mk2Fx06fPv1bwXFUPCR2JfPBXkEp4Lhqpg1Hmf3Q4aNoHQIkD93oWswIlznEHNABnnqCarJBpJY6t49loiFj46Po6Nq48EhNVrdJAPvdF1g0cLJQJgjJS4J4ioTi/dAQpTuAeBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740155041; c=relaxed/simple;
	bh=lR6PjoPFKVsHG2J5Mucpa/CnvA+OdHPQdfRh6cSHZ2Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eZ90HCGErCPmJJCZpX/dpaqF+zvr0ylxVfF+rE0hfQXOBYGGoIjvohCeo+thp9BdjCdev1IOxbl4cPyoIWJwywTxUSu7YdRVGZZiCobny1swNX/ncOZS0hF9iM8idX/YZGnDK6ZQWmvxjTBhveddIjl3W4LwPpVauAx55OSkQb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BmPgyQ3u; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5ded7cb613eso398823a12.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740155037; x=1740759837; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XK+UGaMVwf9jHj43qw1MVxGsWYAAC0YY/TWDG0GH+T0=;
        b=BmPgyQ3u3dOvGygxtmHi+uh7Qko1g/MNJ6IbpfbjveYleSUV7ssq7ruWY7xnaeAp+a
         XgpVL5885S3MWik2c9kxAm9B1irAxxsBNVyS+99CjepZZ1gKqlM4tISYfmyykVEVapzw
         iN+QrTlPsRiMxk+VKNpzckaJkm5kPrq0pdKTtIcbHHqkGDsFGArs5mIH5kM2BKQ2+RT2
         9+pDXHUuC6b1lC/7ZI1s1fvmJqhtaR0tKbqpJzzRHn2C2cdeOR3Rbq78fEW4cDeGJmDV
         g06/ZPhy1MNG359gA1SMswUJIVWvC/H45wuE4uxue6v3lVibKFFGR5Jn1kRLhtBIZP1K
         cNdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740155037; x=1740759837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XK+UGaMVwf9jHj43qw1MVxGsWYAAC0YY/TWDG0GH+T0=;
        b=upZDLJEfFgh+NQD4PfADhxSZJvfXWiGxcAg2ImgpNRlsfjuZd921EpcYTnC02lYSgg
         duPOfOhUWJSlbFHb+KyeOPe/wDtLlktWd/p2fk0zFHLKtSenBKWhnwXZlyj4RjDvC8sP
         uIVk30qUYbgSl3miwA+JRfY4eRdT13HsUbERbGHwam9na4I/U9MrtT8z8WlplYuxvfhf
         Dr3s6owpodSah0c81zxUHRlFhOW6bgZTl4nGk1sIOy5LAFHCsa0tJ57JZE2Q+v8KzoY3
         l9Id2xVPnMws0LLfmOBM0oArsvSyOm0dhh9FPoLUEJKPsZC09946un5SpdJSnpU1Jx8F
         DfOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWq7Gl9XfkDrlnj8zxRtTaIeq1F0wt1afqZPlOFScooZcIX5iyBpIHa3MvATCS45kBvVFwujUH8JCXR@vger.kernel.org
X-Gm-Message-State: AOJu0YwrdDK/YeIeocx5oqPBxK+XYZiUrzBgx8IG3/5getIfCIhQALlu
	Nx2UfX13P6Dto4bjhGNm7QdlbRs1TFGMW+jW4aZBqRIW5iR4tkNbWGw0R7+5aa8=
X-Gm-Gg: ASbGncupuedgLjgNXnYM9bd3bZouBZcKcmOclqxLi4od5L04WEJEw2YD9fgQGUKUYWY
	Ts+nVS7Sw+G6H6JM05q2XC5zlv3EDJlrYDE22LUbOlzrOLSLafW/jJa2J9dm1Iq+KnDvKxSmmPD
	BxEBEp3PDohanXjo8r3qjKIRMuQXKmVpvwAaiHOaMELPCKR4wrMscXuu34TItrM8xf9vs6R5J7P
	ivPPAEKC/jti5jzZRK651XgGbOB4YOUyVtJ1b7edr7Mb5+Lafpdaqi1hwmo1zuu//+KXlQHdc01
	ZoGbm6BiM/BeKfpDK7f854rb4HF1gFe7a8GSs5avIYO/s30vUD0Wk+EivkcJXGP34SSSzPtdSU+
	1
X-Google-Smtp-Source: AGHT+IGQ+rAbSozgRpZ+wRUAQKnKAFtQDyoOgn4zw1NGcBOvfIlN7bnUvJppMq61ZA5CTfKx07XLtg==
X-Received: by 2002:a17:906:4fd5:b0:ab7:82a7:bb1f with SMTP id a640c23a62f3a-abc09bed0bbmr162400866b.10.1740155037326;
        Fri, 21 Feb 2025 08:23:57 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb9723a559sm1050545366b.96.2025.02.21.08.23.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:23:56 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 17:23:50 +0100
Subject: [PATCH v3 2/3] arm64: dts: qcom: sm8750-mtp: Enable CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-cdsp-v3-2-fe2891beeef7@linaro.org>
References: <20250221-b4-sm8750-cdsp-v3-0-fe2891beeef7@linaro.org>
In-Reply-To: <20250221-b4-sm8750-cdsp-v3-0-fe2891beeef7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=848;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=lR6PjoPFKVsHG2J5Mucpa/CnvA+OdHPQdfRh6cSHZ2Y=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuKiX6zmspgLfQEa9yQXLuTIJ/7IFH1XCEFnne
 /GcOhbKtxmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iolwAKCRDBN2bmhouD
 16r0D/47ZGJeEzfqW5UMPrJaqTikLortSUuoqsmjK83OlbwW/37QqEcxcykllzFO+Ul/SbmH2gu
 Z0n2oALEOH17tCF+g+rgnwBW51ayVKpTOZ4bMf/asplS2vGXc1fTFb4nVB1Ek3dQ+WiQDeD9WIe
 /FAomUWnPhdo5g0ov1E4wTHXBvLUmU5wqbayQegK1qjtn65q80skpYUd84etVW2QhC9KXfPy8Et
 54sJpdCFW+QzC9OJf1romQTKaWHOUf5LQNIDuOFiMyroZSU3oDeqcZFrFuv7VrinUNZNRv86Ymu
 nL4d4BxHhyux+yWcCDNkFoR3BLaWsS0zVTK9I31e0rmsPIzM4f1YU2ClI18KB0SP2QJwfslsfZR
 9M7pkNnbC2atkyYxg7h6Eo+BnvuZ6C4/mh4A4z+zKeOX/oSbfpXRFltWxUeF81jac376xu0ETnX
 tH/KuqDY1rAnNAdqyC+ge3BTMDVU7jF+v3kp8sYMBuMAChjzgU4bBARsn9N+EW7HY3oZDoiPZ+X
 wbkV9IPahZyjO89KYGW8AHfQDdVj5zHU0mzO/kMZbC36WFkqUYyz97QK/CIA5RsgwSEKfVh8RJk
 /woTBfr+MUZOw++aM7tAGp0OOANarhQfG4drdzJdqfqiYHC9zVvIGOHPHhJcGLUPkCdSeounYL8
 rTXhUFDi9YMd8UA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Enable the CDSP on MPT8750 board.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 8eeed7f2f7766326cfc7830002768087e9783b9b..5d0decd2aa2d0e0849414534cdd504714402458e 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -791,6 +791,13 @@ &remoteproc_adsp {
 	status = "okay";
 };
 
+&remoteproc_cdsp {
+	firmware-name = "qcom/sm8750/cdsp.mbn",
+			"qcom/sm8750/cdsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	/* reserved for secure world */
 	gpio-reserved-ranges = <36 4>, <74 1>;

-- 
2.43.0



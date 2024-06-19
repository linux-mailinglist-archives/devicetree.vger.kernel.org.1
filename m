Return-Path: <devicetree+bounces-77630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 171C090F785
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 22:33:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B58F1C220A8
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 20:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63707158855;
	Wed, 19 Jun 2024 20:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WQMn8dz6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99BBB7828B
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 20:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718829226; cv=none; b=eOckDvIxq7GGRfWk2kCPWwaHPp7WUObJufKtkBOTWmBuiIcNOA/oMQjBB/3vmC7vZJ5EaC0F6keNCgWe8yc8LLX1S1vZREs5rrpOfD+3D2t0Ng7UBQlX3tV97O2XgvrYWu9gdTTPVQAGCD2IFXNUTsPv5OSisDFwnDAGp+maJfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718829226; c=relaxed/simple;
	bh=UnaYhc5+nTTxOakS+3U3nyreSrkeCCgz9wus9ZZW8bU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T1C3FH6N3CmTzGtL5IHiAe1Z/XT9S9GdfenUcA8q80phRvUJBSSiO/GbeOfpMKa/BbQUQqi8Xv2KkchL4MSC2mGogSpFE3N+A2E3m3qadGVhHc9oqKQeQB7hICkIP3UDvBwdcwa8BzaNhBfELG3kL7kJS0mZzVQwXDFSEFkd7X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WQMn8dz6; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a6fb696d2e5so14895666b.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 13:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718829223; x=1719434023; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hv+NjUJ1WZ3mnK8yXgwFX5ilWXo7ZTxRNnnJhYmRZak=;
        b=WQMn8dz6WYaGbthyJ01N1TDwDcn4wpi+n872DDD3SkFSukIDs1KRS7uCRZYDy+KfUk
         NMVspUHyd/tRLUs/rrHkwI4DyLYx6JfE28NRM1a5wk+oGLwHfDXLKrMSaiQOx2UNzjY1
         v7Sjin8V/PUVGJ8uhL5iV03rwRnVjSVMZFsDS11b0Bm1H2e79xgULctI9NuxY0Le3G8F
         EWpyEAo9bieOtnvmRd26wkccPuYIcir2A14nsGE+iP0FZFsmdSSsQS8tnmfn0zGDQIH+
         O2bExd6HnwRv9QXC7FgrOnqovvdX/23s/v4hV9mxcEnCdTeKvpjklR4KU4OEzoVw3jWg
         0iCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718829223; x=1719434023;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hv+NjUJ1WZ3mnK8yXgwFX5ilWXo7ZTxRNnnJhYmRZak=;
        b=tHtiPxAXPzlNfYiKq0hchuoi4C+SJWi43lofg4G9xCFn7zlrD8tT1SChs3JRVj9yBP
         cIDrxIJeNzuGvYj+iYp1Er60l8aadd5YgclJwjqtWPRdKjD2jvSHUJPoGXtIpvDevDLQ
         JcfXTeDL0igtuFIzPkC9Z1dwe1CbB3Hgf75cnA/xZQbEsHAUhZuZ058jiOwCNQSG0PDd
         vTF7K6N1AA7NmEZ962gW+6frQckKVStoRodXokzJq0rtH0Fj6ZM7lIMm2LVdWocGiQgv
         MhWHyB2zavagWhzNaftfgPgTsYEYwCMzdXVaXwtdaZaKMrd0VPsyAJd1OpSBbTEhAJaE
         v27w==
X-Forwarded-Encrypted: i=1; AJvYcCVp0mkQ0QWYXXAEL9yYiYkeKskge37LUhPp6dpqECNRyOBeYcFGLNxkV7mLv+m/bQHJTjFk9jMHP25JuoDgD5nyd6WyY0v8MDZv8Q==
X-Gm-Message-State: AOJu0Ywcu8sKwA6IaUzTb1hxmTdFIaQ7vNvRJ0dw+WUnfIPVKJk2uR/S
	4itQw7BW17aCoQ6hdu+S8ThEozjWQvDCmwbSUM+MJM77biBgePTWsnfjoWfotcI=
X-Google-Smtp-Source: AGHT+IFgAPMelxLDn6bavECs3IxVnMjqqIqBeRFcURx6SBk4sFrDDb4QEkIAauyDknblbKh+lcCa7A==
X-Received: by 2002:a17:907:9405:b0:a6f:5c1a:c9a6 with SMTP id a640c23a62f3a-a6fab77a20fmr235929666b.62.1718829222835;
        Wed, 19 Jun 2024 13:33:42 -0700 (PDT)
Received: from [192.168.0.113] ([2a02:8109:aa0d:be00::ebdd])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56db5c3dsm696864866b.55.2024.06.19.13.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 13:33:42 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Wed, 19 Jun 2024 22:33:38 +0200
Subject: [PATCH 1/2] arm64: dts: qcom: sm6115: add iommu for sdhc_1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240619-rb2-fixes-v1-1-1d2b1d711969@linaro.org>
References: <20240619-rb2-fixes-v1-0-1d2b1d711969@linaro.org>
In-Reply-To: <20240619-rb2-fixes-v1-0-1d2b1d711969@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1192;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=UnaYhc5+nTTxOakS+3U3nyreSrkeCCgz9wus9ZZW8bU=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBmc0Ck5rSl1RXldM2xpatqUArnOpMOyxqz0nuQX
 FPc69Jb2P+JAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZnNApAAKCRAFgzErGV9k
 tuTpEACZnIPLB1S62LG+KCdFgb8qc3ALqSSIJCK1brxyZ/JJYp5aM/CqTq1mwCa6bv1Lc8LbuyD
 bbQX46h4XQpAV5JRKfL9AI1VXru1VggHj3mn0v8zV7T3keTz4iR82XAU166ZnJmgojxHz4FnvlA
 auE22mNB6biHKYr7fIfWCdKe3QMZY2zMSWoGH5nkgP7+pZnRdvc81hqFkP737PC1DWTZZg4aLgU
 MSUQWQWZ5Y8pOJJ9YeYSgURIe3r84lAazp1ErvL8ySoH31k/VrILV3kiKOfMnxQiT+gDWK9FejI
 pElbehIBiNAoEUgNO01jVNiWz7BGD6YK5GvedfWIgF8owQngNMwsGK7qI+4IOE3h75Uf0pKVKHr
 m55YuS6GNJNubZiyQnRnqE/4qEV2V09i/rOcVf8dsaA+kb/rc1zp5rHd/dA22MlUp/bRP4VwwTc
 q2TIxrQJpMTz1N/aAAMBHrBjF5/+zLiZc7W18+1yWu77P7kyNK7RiH2dwryGCYDrx/zDpI8GDXQ
 kF0itgqxbpFYOhu2Yzrm8GUBI+GwHsQPIafX7c5dUPCY1wE3N3e1gP5s/G5/K6ddtAecWgRmQzu
 vKXfFFsV78CMGe5VQoaolvEYtHTwnZfp82evkXl+8eJdSP0sID69MeIIExo4Y8/xCOSqQtODidA
 NEIDwvoVL8ripdA==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47

The first SDHC can do DMA like most other peripherals, add the missing
iommus entry which is required to set this up.

This may have been working on Linux before since the bootloader
configures it and it may not be full torn down. But other software like
U-Boot needs this to initialize the eMMC properly.

Fixes: 97e563bf5ba1 ("arm64: dts: qcom: sm6115: Add basic soc dtsi")
Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index aca0a87092e4..9ed062150aaf 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1089,8 +1089,9 @@ sdhc_1: mmc@4744000 {
 			clock-names = "iface", "core", "xo", "ice";
 
 			power-domains = <&rpmpd SM6115_VDDCX>;
 			operating-points-v2 = <&sdhc1_opp_table>;
+			iommus = <&apps_smmu 0x00c0 0x0>;
 			interconnects = <&system_noc MASTER_SDCC_1 RPM_ALWAYS_TAG
 					 &bimc SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
 					<&bimc MASTER_AMPSS_M0 RPM_ALWAYS_TAG
 					 &config_noc SLAVE_SDCC_1 RPM_ALWAYS_TAG>;

-- 
2.45.0



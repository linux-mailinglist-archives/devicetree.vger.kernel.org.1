Return-Path: <devicetree+bounces-40710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD17851438
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 14:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5455BB2487F
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 13:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CE7A3BB23;
	Mon, 12 Feb 2024 13:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rksX0ZRb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E313B2B6
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 13:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707743430; cv=none; b=fgsyWPQ1RXVTwVoH9wf3HLDQXR0VhqOzCfmnXarSbEJGDoyucPyWj73KkPkW/8Se1cl7Hrsnnh6vAGv1e6XpFvtEVPdnPkj5Pck/UU2f24X7MXCDuMJiYd5RHaZkDpR1/pf5bCzuZhKte3EBfg2YY6EOEAMuYZLMe6SOdP3fohI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707743430; c=relaxed/simple;
	bh=kq5j5a44u0i4ZLViq4Vc2kh0Xc0OOLzaeXziNYe3I+w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J1gMNS0xjwcdipsMxGRSkTUCIcCgG1qNTMUM1Kvig9GA3PgicDgDBLYGeH7ixmXiOwsSTDGjOjWg7PSlbu6rQvcubRN1loRshjykazFkQbukmP287rWzz7x/xwGmVghPivJfxaRI9uD3wKCGHHtSXwy1nXsiw1E3lcCLX2BRj0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rksX0ZRb; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a3832ef7726so357658666b.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 05:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707743427; x=1708348227; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gWYcyGNfIFLRPx4pt/22DjIYJEdjPhLiYl159GLEbQg=;
        b=rksX0ZRbjvJ6S5QkVfUAR6yHmdm3TNZ4AUS3wlXA//Lh3RjQ0QNmX4wG8kEfooIr4O
         TubAwqxXuge0dAtYlCsvq6XH0NA8cBLleri3VCxcFfUSrmQpYAabeUnGOwe+8Rm4XPnt
         TPiBUC9YPVOPVRtlWupP5blM7bcEEedrplsuL1jPJYbMhwBQXbkQCqtcDYqzBWkkm/cS
         O9JiL6SegHrLMd66IioR0wd/8jPfZ2a0bIq90xq6OrNlIqcCypg7eza/nIik7J+DiU98
         J7QXP5uZgOQOgqYQd6wZfsTHHdRMZ/tEud7g+KP4pmM9vpbr4ZK3yveUm3OZM2aAAjZS
         tAUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707743427; x=1708348227;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gWYcyGNfIFLRPx4pt/22DjIYJEdjPhLiYl159GLEbQg=;
        b=BovY8LNf2f46DhOid7e/NsWP6P6Jm7KghaXzztJnMgW1mVKguzzh5W0xPknsPiyx+J
         uHzHnjmQFBv79YcOCbt/12JotowzWbwaZ7ogRWYubpgQOOz8zG83I/Z6PAW4ljKYUv/L
         ZFoeIXovr9zWL9liqaGZmNm15VjSB9oEgo8R1la/Rbm1Xl66AIMvq8vj+1KwQ41PtmQZ
         pd3PZf5xUB5P6BcaeqZN3QiChHeu+Un7Ma1f5DVBVDh4X6T5NIB2DNaM3S/MV5e8yPFR
         U4/KKu73qn5y06PToLTECPAaa8BpZdehOB2u5xQiIlf8dFbXIsYx4zwBlRUcR4iQx686
         w+ng==
X-Gm-Message-State: AOJu0YyLdJZhGGoKE2ARA/6NFsCLU8w9w3T/ALICdbmA8rR5rR7LNvUI
	l2SlPyeNw0VUjouxJpornABKSk4gKjbax7Ej6IIUWbkNMFQTSuOnXo22AP4LgkI=
X-Google-Smtp-Source: AGHT+IGFBRNSSJxs1RXogQPC+HmdRuTXUKjjSrq5nznzwQO4T+zFDp77bIblvfKfXm6kEnZ2FAD41Q==
X-Received: by 2002:a17:906:29c2:b0:a3c:770:1752 with SMTP id y2-20020a17090629c200b00a3c07701752mr4218831eje.68.1707743426912;
        Mon, 12 Feb 2024 05:10:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXuCyaQr/W8a+C1M0E7AVq54SBy2u41vHYdbqFfYBYFbzSAeUsaZGW5YroQozvht5zf/so9htC64gtRC7DKItXZfNf0IHOaR8Jn1DQaW2BL8ogkhCi9c/6BKYjEEDGdMbOSX2g9W8DNOxhDn9L7fSOl7fGY4ZE1gXoTjnAJSZs3DEXpIzx5OyMeBidrJwHu9cieHTa8zRfKUI0bJwCod59Y3GeW+vloREbNWN1HXWVnapH6X3a14N9eiBxyCgxu7VYzCJpvyaMZA5LdX5eMJtHWittgwUG0cL/k6HjbssktBzpt+0y8Pc/q4Durxbk4KXmwFZZLRhz8URFyz7vsphYPdeZt9D7HZaV3JjwWRNGf1gFdsjMrrqLPwsjt4XAK7v0dc4MBwaCPhR3yenyXnXTj/oE+wLio9+4JVMUs/YLxuCklZSNmHkANv35Dx30khK6Yx81FRZyouEwZq5byA8MvbarzQWI66Q5ppPY3weaLP6/r2kxvvHMbln90lIuFV++x4OV8h9lExFhKQzNCDLVEwIcxbeQEX10VqiZGVGARWKGQJ8riAjg4KwSIgSI+9STX/TrXlbLNv3KoIBmSHsblQsqU7zK2TpgU7u3rYbnRBxrG6MnvAWLeTB32HCHF3GwT9f9k2AxWHPrV6fc9n4gdt/USEUkN30clb2/G72dJV7zkEI8OvI4HkmpNCLm08Gtxi900nHobW3DAt0FV7VUdn9fhgMvaA3NEJwRW66pNQx68zZI+L+mkIwak0K9YQFt3WWeEB0QXf8aiCSNlzK7YXm7bv2lYMADU7yDiBQrG2EytArx+k6h94tHGa6isATPbiRMzDy+4I7pFrEkTVnAMqLNq
Received: from [10.167.154.1] (037008245233.garwolin.vectranet.pl. [37.8.245.233])
        by smtp.gmail.com with ESMTPSA id gz9-20020a170906f2c900b00a3515b35be4sm193052ejb.104.2024.02.12.05.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 05:10:26 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 12 Feb 2024 14:10:12 +0100
Subject: [PATCH 4/7] arm64: dts: qcom: sm8550: Mark APPS SMMU as
 dma-coherent
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240210-topic-1v-v1-4-fda0db38e29b@linaro.org>
References: <20240210-topic-1v-v1-0-fda0db38e29b@linaro.org>
In-Reply-To: <20240210-topic-1v-v1-0-fda0db38e29b@linaro.org>
To: James Schulman <james.schulman@cirrus.com>, 
 David Rhodes <david.rhodes@cirrus.com>, 
 Richard Fitzgerald <rf@opensource.cirrus.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Ricardo Rivera-Matos <rriveram@opensource.cirrus.com>, 
 Bjorn Andersson <andersson@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Sai Prakash Ranjan <quic_saipraka@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 alsa-devel@alsa-project.org, patches@opensource.cirrus.com, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-hardening@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1707743413; l=787;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=kq5j5a44u0i4ZLViq4Vc2kh0Xc0OOLzaeXziNYe3I+w=;
 b=4KH+YyPNIYKyi1m0IBMqd9biATcIsevmXT8PvZFoSkc51AMiOSoCBGOHDuTdwZFHd4B9pthVR
 6L3X0T8uOeUAwa1aXYa1+fwU//8FX/p328x8Ieq5xfqSZC1Ge94bOb9
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Like on earlier flagship Qualcomm SoCs, the SMMU is dma-coherent.
Mark it as such.

Fixes: ffc50b2d3828 ("arm64: dts: qcom: Add base SM8550 dtsi")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index d696ec6c6850..868d48b85555 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3934,6 +3934,7 @@ apps_smmu: iommu@15000000 {
 				     <GIC_SPI 694 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 695 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 696 IRQ_TYPE_LEVEL_HIGH>;
+			dma-coherent;
 		};
 
 		intc: interrupt-controller@17100000 {

-- 
2.43.1



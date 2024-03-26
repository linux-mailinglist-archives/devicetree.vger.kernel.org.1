Return-Path: <devicetree+bounces-53658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE5D88CFB4
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 22:09:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C90132859D
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:09:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D43BB13DDC3;
	Tue, 26 Mar 2024 21:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bSl86VrA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E3913D600
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 21:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711487325; cv=none; b=hjQaqY3CGABfsa9tjlSotUJ9iZM7JT5KJgOxS59chKqwMdiDzHwM4Z4NC0djURKlWesZDE4P1mkVGKqA7cno9KjGk73wwBlSBsJuxHMHUrE2jHl9EMsgdF3JFFS8njvENbpUNeCoEfgSbK8YAjdhjqDRl48dNwDUyG48fh3OzLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711487325; c=relaxed/simple;
	bh=mCf/bTGrYhIVVZWnC5IuKCe8qNqug2N56zzO/86GYUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iLJzgZjIqEwChgdvpYbC6y6i3dtqI6Tl7JniJOZ/4YqEcMaAfuyripBCWHMWg8nXq916sa1iu2FF7O81oiARjRfdFHLu0ARf3XmUHssW2zE3wbFIAZMZMxo6xjcuO61om7+0rf+ju0SU7zJRXeyX21dTGRA3X8++Kz1L7dFwOV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bSl86VrA; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-513e134f73aso7655858e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 14:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711487322; x=1712092122; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BCRKVJibLLQ4yVCmcxgTjymNUgecCXO5D8tWd3XLDOo=;
        b=bSl86VrAzYvnumuMkUOwOKdBQK7GkcW4riS2r99EO8HSz17Vizup5PTV7AivT/lVbD
         ATGg1OQSLJCeYByKrSCkPQrjDZ6582Bs7dm6gueGnuT52ewiVCVukZH40RTEQ8S7xH7d
         NLdpiEnCzc/+7suLshzdorXAXVAbsR3Eu/NJcq+t72uPaT5OEeeLU77PWyU5oPQMbmuQ
         tXPWgQpfv9cZOMIn4k9K/8riUtBsCLZC6eGJvNiQlRjgVOAgwqSaubPqprjO9QebYXoO
         7oiNqu6wGMB+T/6TXIABDy1NYneECCWVAP0lgzeSfpDUdS2iRJKO9hxGOig+snO7LA6E
         cPVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711487322; x=1712092122;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BCRKVJibLLQ4yVCmcxgTjymNUgecCXO5D8tWd3XLDOo=;
        b=uapr0fDE2OOrDj2zqpudGwO/2uBOQB4x3g6yFzkP7RYH65P7FXwG/KQtv1GtsYP86d
         kxXQuovw/pQjGhaMbkhxYhj67iKMQhgsGE4QHmaiiYBl1tq1KyN2pZNbEK6zZL/Hlgce
         RrqEqWsjaRYvhsnEK7duodbjPOXQT78rYBpL1V6gSZJlA9rTd7s2CEp0mInrakLD5lnL
         NLCeybg45IAp2QQP12d7FqGaIE89nDWtZ7HdaJGyNEa58LJbz1MeSmZ8KB/qSN7KBQ/F
         cpbZNXzz/gNLuZcf2ViqY5qyWXA+nSY5CSyZiTJUMuzSBA7uSKMViTKUpnw4qcP5gZpb
         W1dw==
X-Forwarded-Encrypted: i=1; AJvYcCWipEa+wqwkU+1WGek+EY8OpTwZKUR9Ln42v8NxQV3s6hYF9gelTuhxSKaOgizOll2sxLzQLJElpGr4Cn0WRkkKWb/4ndrJo8Q8Nw==
X-Gm-Message-State: AOJu0YwVi//w2bG3BPTjNs/826Qtr7ZPhlSfLJmaFI0tRy5lYbvwGeAF
	IS4x5nbhkLUT6Ff6ZCdR54LdqhCoH2u+LKTyqxb9EI+ur6BcIiA0v2zwtgOkaWo=
X-Google-Smtp-Source: AGHT+IGTGNZKpviJEN8pv+U1aUTSHC/yaalgj2SyAQw9yZTAD8zmDwSBnctqneOnRGCf4mdA7HawFw==
X-Received: by 2002:a19:e04f:0:b0:512:ee61:c32b with SMTP id g15-20020a19e04f000000b00512ee61c32bmr7948217lfj.43.1711487321879;
        Tue, 26 Mar 2024 14:08:41 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id l19-20020a17090612d300b00a46cffe6d06sm4621697ejb.42.2024.03.26.14.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 14:08:41 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 26 Mar 2024 22:08:27 +0100
Subject: [PATCH v3 5/5] arm64: dts: qcom: qrb2210-rb1: Enable the GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240219-topic-rb1_gpu-v3-5-86f67786539a@linaro.org>
References: <20240219-topic-rb1_gpu-v3-0-86f67786539a@linaro.org>
In-Reply-To: <20240219-topic-rb1_gpu-v3-0-86f67786539a@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1711487311; l=915;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=mCf/bTGrYhIVVZWnC5IuKCe8qNqug2N56zzO/86GYUw=;
 b=ddqMsNfNeNvixGsx0pFhAimc2uyI22UJVbkqFIijsDLdFwb7PSKxyRbTaVNF12ceQY5kGkvYr
 yDMRS4PAalMDaPHzlmj/8gczrQ0AevbaHPQL3B5p7AhQRMiBf2gs5vX
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Enable the A702 GPU (also marketed as "3D accelerator by qcom [1], lol).

[1] https://docs.qualcomm.com/bundle/publicresource/87-61720-1_REV_A_QUALCOMM_ROBOTICS_RB1_PLATFORM__QUALCOMM_QRB2210__PRODUCT_BRIEF.pdf

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index fca341300521..c54ad9f02e76 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -199,6 +199,14 @@ &gpi_dma0 {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+
+	zap-shader {
+		firmware-name = "qcom/qcm2290/a702_zap.mbn";
+	};
+};
+
 &i2c2 {
 	clock-frequency = <400000>;
 	status = "okay";

-- 
2.44.0



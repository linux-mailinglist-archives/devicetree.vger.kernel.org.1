Return-Path: <devicetree+bounces-66244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8F78C241A
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 13:59:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0EDD1F22E38
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 11:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B7016F291;
	Fri, 10 May 2024 11:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tAPYWS07"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B493916E87D
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 11:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342379; cv=none; b=r/FZn55BleAQvRlMCwjeMHpbBIH85+smsFMu7A0+Yi8+3si1OfjoESONROTjBLNnWFjx/16EKynfiP5vNWnggFmHb3NX300wnzX5rukTIeeNYu/kPdhYMl0mOkgyYrJaEV8hOuEa0ED9qixQLO7tfCYZBAo3S/vDYvMWjS6gs4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342379; c=relaxed/simple;
	bh=xq/Hy4Zry+1j/+krCSBNdt1SdGwM41vFXUOXZ7JkdrI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i3h2oGqeQLf9C5F1PLeEi/vZxpYdfdq7Jf7d9qOCCY3AIix53hWSEdfPUD4GEKo1e3CQK1WM/bFSIqawfUGhANUL+JQ7e6d/GafHKbXog9Z612JkxhIe45zsdCzJ0MoAb2MYRWNvGbsGPepID6TvnrakNEvYdV2hoKckkHFterQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tAPYWS07; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a59b178b75bso397730166b.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 04:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715342375; x=1715947175; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AF6Kt3hor5s6WwdiBm5yOEm0vELRyqrn6ISDRDFqzHg=;
        b=tAPYWS07Ndc+MTr7lmSU0wTTiFJYrCkzsva45d+bmNE45P94bERdVFh/I8KgLDk/px
         c2SmpkJ9CBj3/x9GVhlrwpN6N1Ttds++ygB5IujIpPyHsQxP1RQ8ANJTMGdeNQ+FM1SD
         XRsmh/8O8kmT5ShRq6BgBxdjbdpu2z6u1BciFweCbeRuAsk1gdjYP28flfLPscXemgd5
         bzwEuaLKXwUpsOFOxEK0VOjYJ1WETbEo8/PiztUfIipHANRivsLd/XprdgMtc0InotUX
         LgMX9z0lyoZqW9wh66B6RFG8aHnoxAKmCYr5RJB/zG8go7xiyz4nKTXpNc3xTZV/3Vnj
         dplw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342375; x=1715947175;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AF6Kt3hor5s6WwdiBm5yOEm0vELRyqrn6ISDRDFqzHg=;
        b=ipgEA0JkNbddj1jDrzax420rq+C/KKLUs/dZj/zaOXODXOfguK9THroMqqU3M6P762
         dJKtmhcJxC8nPqSMMpzQ7KG+X0+Jy2GbmMH+ITqqS07YMM+CkX0H/E0JTqidbEng0TIq
         MhBHRB30u6uVP15j5r2vtjqTPB2TK8N8FXmn/mudXV8mpwFs+VrfaaiWVjO4VvZHzkRa
         xl6qEvM/06wfN2uV8kYnb0JLGfZHOPMcTwbf6hB1sjyg0Ah9OMdE8OskmrKL1wGg8aoI
         tcEaCk9e37s2Ql2hcDiGBm8hqFtm50o1mPbtNgzcsAUYA0D8D3e30+ljykrQ4O/2151P
         jfbA==
X-Forwarded-Encrypted: i=1; AJvYcCWuRGMn49WiCq38f9HpR9qbATpmWJBgV4X2ijXtQrMnqbrF22EgGfVWL+pcTTkMKpHb+DN4iArRWzIu4v2sD2OMT/98D8gfb0Kpow==
X-Gm-Message-State: AOJu0YyyRVy1LnLi6h2sQ5stnc7QIt4/B8pBD+DwfLOXlL//UwxMRuf0
	uxOKaiHStjSdyKM2bnS2BFQcvHS2nbCRZPbQBWTT7lEUmgpsGE2a17naYeNXIF8=
X-Google-Smtp-Source: AGHT+IHYQac4qaVSSW/Vl8NTk0NuQuH/xUhn9qFwAQyzRyxRuPA7rM2PVw9dIlkgf/jroTybu9x7Mg==
X-Received: by 2002:a17:906:528b:b0:a59:cf0a:4e4d with SMTP id a640c23a62f3a-a5a2d55a730mr176691166b.12.1715342375230;
        Fri, 10 May 2024 04:59:35 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7df7sm176795666b.111.2024.05.10.04.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 04:59:34 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 13:59:24 +0200
Subject: [PATCH v2 01/31] arm64: dts: qcom: ipq6018-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-msm-polling-cleanup-v2-1-436ca4218da2@linaro.org>
References: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
In-Reply-To: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

All of the thermal zone suppliers are interrupt-driven, remove the
bogus and unnecessary polling that only wastes CPU time.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 17ab6c475958..2d05b77201aa 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -923,7 +923,6 @@ pcie@0 {
 	thermal-zones {
 		nss-top-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 4>;
 
 			trips {
@@ -937,7 +936,6 @@ nss-top-critical {
 
 		nss-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 5>;
 
 			trips {
@@ -951,7 +949,6 @@ nss-critical {
 
 		wcss-phya0-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 7>;
 
 			trips {
@@ -979,7 +976,6 @@ wcss-phya1-critical {
 
 		cpu-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 13>;
 
 			trips {
@@ -1009,7 +1005,6 @@ map0 {
 
 		lpass-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 14>;
 
 			trips {
@@ -1023,7 +1018,6 @@ lpass-critical {
 
 		ddrss-top-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 			thermal-sensors = <&tsens 15>;
 
 			trips {

-- 
2.40.1



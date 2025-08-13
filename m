Return-Path: <devicetree+bounces-204314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 80795B24F1E
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:13:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C10541C28338
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E67932BE7C3;
	Wed, 13 Aug 2025 15:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hVDS2x/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C1C29CB2D
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100795; cv=none; b=WmDYjFb3zjpPX4VekDJDWNWVCFu0/RKkUk1zTaWzRG8w7AcENNih+NM7aBav3LbDFy4ganKs8KAolSDh0RTZDidf+4PbjIvtJMMvTRrRMQDnoGAnT5x9ZHnCcftjeAF3bEm9puPblW2WzzQDeml1F8U8ZgMwkhY/BgbtoHZ2mK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100795; c=relaxed/simple;
	bh=gNm8EhjslBU1GmgGWgLZonsQpYEnOk8DA9/VTuIgT6o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bWkfdC18mk14wgSKlisbN+gMoBrDVdy9rZvXZS2+RsFbVcTT0vbFOhhHDYGoi8C1LwBd1KuqdGK5TIpjQ66Y4fk+hek5WhQiYETw9NsEjuy5WGlY2kRLizqZqGoofdADbOOSvcNctAcKOq2Q63edWDaCfma47sMKJHxs4Cv1gIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hVDS2x/5; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3b7920354f9so5552371f8f.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755100792; x=1755705592; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kO4AkXf1LQZgWN36q2s+ktOvNdi599+pfo3LY+xayTk=;
        b=hVDS2x/5cACOIL2pwphAFVDtVWZZLOiDmOf49SZlfnrP9yWZdJ47iNIrNkWjkvkLwp
         RXpZ+cW/IWl4GLB59q3tF2zXncQM5DcjzHCyKTrLm0M7xmg7NetcCt9Q2f2ICZi1oR/W
         gyGDkxFJbnxePlmOJ74TrUX0XppK4sMSdtbUaY7mRVizhyuAUI7Lw8ISl4YaTiBP7tqW
         OP4Kkin7havcv2l8/y3wPuVkCqE29C2dm2K17SvRb2l7pLgnBFPcH1Ece0FnN3XX/P02
         BQrnraygmeHRxNHUOUyy1l86Nkkd4gTDJhRvq83Syt7W2CDNG2kc9AVQ+gIBz+GEPZfC
         QFww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755100792; x=1755705592;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kO4AkXf1LQZgWN36q2s+ktOvNdi599+pfo3LY+xayTk=;
        b=VKLjed06oavMPfh9fX04nVHT14R4mdkeWzMVqIiYYb7KEpMBsRqiXlgaf36u94c8XC
         XTzFf+RSoVG9PpdZ7ZYvalgWTlfh8IVLrtoav1lzU2dcfH7Amj2oE6j3lVG+7Fb07sKW
         J94tNkLBJ44kdxdarW5ph8gZAIuDaZOzt9xwSDcsApzH8rkZ3tvdZvvKR5/U18sbecCA
         6/w2IliSMqWdrK7Qv0Atb4CF8uKCpxLikPRMlnE/vThKTZprZkqj8gRKkBfkGSJVgWCk
         nGz2eNjWy6pt5Mj71XCZrEFB89KOACIP/QNC5ywRjW3znsVALmMclj2ycU3ixftfIBk4
         pkiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAAI9o+qM/y243LqhUZvtu6Jyb2H3G0q3v95UZPEe1/vKUPgOXuTsqvckkJIXxWw4RalC4dEjSw1+/@vger.kernel.org
X-Gm-Message-State: AOJu0YxxZpQB30tdtl2MqTSZr+QmctBPgRZ+vtM757OipxfXr3pN2S3l
	M4cBFfPVWtqQUskASN0d7uDCloV0wCl65ybmwd2S+viKhEKbDAhLVJ6KDL7xQzYTd3w=
X-Gm-Gg: ASbGncus8iwHcH2G8kYUEGQ44GHQk9taR/PMSqohyLW6Q5W38CnhPD89ESummTLvSbp
	OJO0QpATZCF2piG2nrP0RUusebnlbpo3ak7dS3a4OQ9bTdL96429WFJXagc3ZzVv5zgCmN1YEPU
	i83QZis4IuuGr8GfnnTfzrxsAC+5SUGNCvcnR8BLPK22gaFqBJvUq8ZGuBjJmyr5WCiiQZssWij
	Tj7erzk/as+/1eQbyqzPLN9W+1p0LUj1lG21DWWoNl3X1KDUv/jD/hYxR4tMYdKOW9EHKC58Kf9
	u6PmL7nda+t+SBXzTtvKgzIvjTvfPV1aamG0qX19kJnkaT5h1EeE6i32R+AS4+vSsMdbun+lfdH
	vsQ/feiY3CMBrrY1HNj+mdg/zBysSccar7/+CpQ==
X-Google-Smtp-Source: AGHT+IE4FFojWD+k4qvDKu/weMnjxR+wvCx3OHrJVyfPy5P1CFKNsSq4PaxPaS7EO3TTgJn2lMYGjA==
X-Received: by 2002:a05:6000:4284:b0:3a3:65b5:51d7 with SMTP id ffacd0b85a97d-3b917e4f617mr3325967f8f.26.1755100791812;
        Wed, 13 Aug 2025 08:59:51 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:4537:5d58:c08d:204b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a517c26sm7087755e9.7.2025.08.13.08.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:59:51 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 13 Aug 2025 17:59:02 +0200
Subject: [PATCH 5/9] arm64: dts: qcom: x1e80100-hp-omnibook-x14: Explicitly
 enable used audio codecs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-x1e80100-disable-audio-codecs-v1-5-af82d9576f80@linaro.org>
References: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
In-Reply-To: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Currently, the macro audio codecs are enabled by default in x1e80100.dtsi.
However, they do not probe without the ADSP remoteproc, which is disabled
by default. Also, not all boards make use of all the audio codecs, e.g.
there are several boards with just two speakers. In this case, the
&lpass_wsa2macro is not used.

In preparation of disabling the audio codecs by default in x1e80100.dtsi,
add the missing status lines to explicitly enable the used audio codecs.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index f9ce2a63767c151192b0618ee2154e8d97316c1b..1c8735f39e498f044fe8ebfb915cf500bc4ee531 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -1001,7 +1001,13 @@ touchscreen@10 {
 	};
 };
 
+&lpass_rxmacro {
+	status = "okay";
+};
+
 &lpass_tlmm {
+	status = "okay";
+
 	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 		pins = "gpio12";
 		function = "gpio";
@@ -1011,12 +1017,22 @@ spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 	};
 };
 
+&lpass_txmacro {
+	status = "okay";
+};
+
 &lpass_vamacro {
 	pinctrl-0 = <&dmic01_default>, <&dmic23_default>;
 	pinctrl-names = "default";
 
 	vdd-micb-supply = <&vreg_l1b_1p8>;
 	qcom,dmic-sample-rate = <4800000>;
+
+	status = "okay";
+};
+
+&lpass_wsamacro {
+	status = "okay";
 };
 
 &mdss {

-- 
2.50.1



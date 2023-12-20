Return-Path: <devicetree+bounces-27118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B919481958E
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 01:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECC141C20A87
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 00:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D3618057;
	Wed, 20 Dec 2023 00:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iTCXYW+0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022541E520
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 00:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5532b348d30so3846732a12.1
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 16:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703032278; x=1703637078; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RUTCpmfzsSKDHjYlRAYYiQ/aykX/VSlVLVDx9q/aHss=;
        b=iTCXYW+0i4eAV4hQMqN8RjcSA8GqX456kr4QuNfj5Nw+u64ZpB7AcmrxkttHTjOF47
         2foLCdke94OoieAbCN2kfMrpj0QE2xpwe9iGTS1jZrQzVRaDXKQTMqxgy6KqRuhJfz8+
         mQBDGG65XvpXcDwe4LEdcx4J2CXab8LOTLS11Zj0ugqAnTHSKMilFzSeF2hFl9eEkemV
         IFpgO/RJ/T5/JEhkaypQ6hwAXqqhRgVvHcJjWWwZp9/NxtEay1M6L5BIgwwExaZhQ+uy
         WIthHiIHJHtnvyvmbG6RoputmEXyQ5XidEBdYVkSl9S8IyYvjW58JG9h6fGHB+cl2gy1
         Tw/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703032278; x=1703637078;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RUTCpmfzsSKDHjYlRAYYiQ/aykX/VSlVLVDx9q/aHss=;
        b=LEEW3q4ACFMvgA3geZjg2A2ywbzu6EheHNMOLl+LTzZBPwy72RYUxTmt5lGIYoZSXA
         8dlw4eOayKXdWOlm0KkK6f9thDNnACEMdkLOuMWdB5JmWpUmetY3ZvZ0BQ8aaZWIHs8n
         8X7i3jTJcCjEuD1nNtpbrE5oMX6AYqizH9rSmn9WmYjTczVFz0lpkY5K2V+qVy8vWltP
         64nLMATsch89hlLCdDbdtPwaty0H7Q88axKkx/M8cewX4sC91eYAhyX+SYFk0tf+STQ7
         l40FC9nZCrk+pb9j+DSa2cMIr8lh2EhzetDsCDvOuDAQgYEkepRMJsHZD3044d3anVjF
         thMQ==
X-Gm-Message-State: AOJu0YxsH3gKmnsCayj+oJOx+QtRjOVd3q/R14tozAIobDWMnm2/hdP/
	k1WcicYlfYlhF5BA97d88qGQ6g==
X-Google-Smtp-Source: AGHT+IEmuz6Jt47mOpGlL7PwmZ/AhNLJg02iU0S77yqRmiMtDbwYEZOAMDfRbZOWgyDb5ZaZXE2ogg==
X-Received: by 2002:a50:cdcf:0:b0:553:d641:a662 with SMTP id h15-20020a50cdcf000000b00553d641a662mr105787edj.16.1703032278403;
        Tue, 19 Dec 2023 16:31:18 -0800 (PST)
Received: from [10.167.154.1] (178235179206.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.206])
        by smtp.gmail.com with ESMTPSA id k16-20020a056402049000b00552d03a17acsm4824397edv.61.2023.12.19.16.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 16:31:18 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 20 Dec 2023 01:30:56 +0100
Subject: [PATCH v3 15/15] arm64: dts: qcom: sm6115: Add VDD_CX to GPU_CC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230717-topic-branch_aon_cleanup-v3-15-3e31bce9c626@linaro.org>
References: <20230717-topic-branch_aon_cleanup-v3-0-3e31bce9c626@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v3-0-3e31bce9c626@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1703032250; l=911;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=WDI26IliceRlW0YgN7X8GrPWGyVd7988pOYar0kAAss=;
 b=JT9map2Vij7kDkB2GHwlcrRA/PgAQ2Y58vBqJjsCY549ds81i1UK9SvzTpVTsS1KT9mklzCaf
 C2VYQCp2xkQA0O+Oq6whvZJzd0wz8PLykLRWLo0Ox6UIb6ceFDlhwRP
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The GPU_CC block is powered by VDD_CX. Link the power domain and
provide a reasonable minimum vote (lowest available on the platform)
to ensure the registers within are accessible.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 30b140e1cec0..ec9a74acc69c 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1723,6 +1723,8 @@ gpucc: clock-controller@5990000 {
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
 				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
 				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
+			power-domains = <&rpmpd SM6115_VDDCX>;
+			required-opps = <&rpmpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.43.0



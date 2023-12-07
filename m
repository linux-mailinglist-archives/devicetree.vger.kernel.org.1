Return-Path: <devicetree+bounces-22724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3101C8088DD
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:07:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4979B21453
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 13:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C93940BEA;
	Thu,  7 Dec 2023 13:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a5bU6+dN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA3710E3
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 05:07:12 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50bf2d9b3fdso834250e87.3
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 05:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701954430; x=1702559230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o0J8cjOv5k8AIvIFhvZ5YWOKOlem3yXviyX9wh+j9fA=;
        b=a5bU6+dNjHxBhonIQnoHkBn7zEj9dQOGEjF2j2OQw4sCPMLkg0Aq1n4d6GnHbn2dJ1
         ejFswTEBT8cnoqcJW9fuT0PrE9ZQJK3A62LaKJ/wJwDhgBbg+IUUcbr8yTOiIhQnTkOn
         nx7lAHotmHT1JDdF7qj8aarmEe5QkvwtAhnEEy9oPahAK/4bDrD7rK22zDM4AkuUl8x5
         XAujjglsJ6yR165puQ1tAHqCkrqbsLKEzzzpAwTQXQuNF6lDWS1ZAkAdooDBNQLAmHV1
         7HgkFLnmVXC9wyBaMsgQaSTQZzfJ+rpKEGN70uJbK1tdhHx7+eRa/5qZnV9/oBmFu1/k
         NYuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701954430; x=1702559230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o0J8cjOv5k8AIvIFhvZ5YWOKOlem3yXviyX9wh+j9fA=;
        b=dTsU4XOSIdMn1nkHfocKjT0LRPkBckO8SeoZgxiyOIfZJvoggZt2SI05yBOw6/WMmg
         GNN5XzHSaM60hC5LXxL1k8e6GPHvAzhvnJswUFGdUBBS38goNiimtiHXRIY1IVppsRWj
         0iWnlG35IlcGMZaw17aqBXDeiM88B80iddo7Koa3J9KUgl0I9CPPuy0Aduqm40zMJIRD
         2bpFJG3+kEp6WbNqzNrdh+eLvu35M6s8vlPMXpBOHaGRcaqO4YNAa2ydy9SHaMg3zwqV
         ZqWzndIs93NIA8+xi0tdsRfO/sWxXzxI/xPU4j9EJdPI0YxQ9Hb6k0jTscTNXTYVUxxk
         LG+A==
X-Gm-Message-State: AOJu0Yx7EPELJK9Kcyk530W+07Pg7Aw8+J7TcHHaR8vRLeASgRiRESwH
	g8oVyz+qDTArKKyJHuUPguEtzg==
X-Google-Smtp-Source: AGHT+IFzyt+iYxTC1a62j+mR15slvY8zxvT4eeIUbRHT4qYXWdaU7x85njaKSmOSg2VeQbs+g1F7YQ==
X-Received: by 2002:ac2:5227:0:b0:50b:f6a8:c778 with SMTP id i7-20020ac25227000000b0050bf6a8c778mr1593710lfl.5.1701954430710;
        Thu, 07 Dec 2023 05:07:10 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j21-20020a056512109500b0050bc41caf04sm167685lfg.304.2023.12.07.05.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 05:07:10 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 08/10] ARM: dts: qcom: msm8974: drop 'regulator' property from SAW2 device
Date: Thu,  7 Dec 2023 16:07:01 +0300
Message-Id: <20231207130703.3322321-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231207130703.3322321-1-dmitry.baryshkov@linaro.org>
References: <20231207130703.3322321-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SAW2 device should describe the regulator constraints rather than
just declaring that it has the regulator.

Drop the 'regulator' property. If/when CPU voltage scaling is
implemented for this platform, proper regulator node show be added
instead.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
index ee202f3f161e..3e1e88d69c2e 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
@@ -349,7 +349,6 @@ apcs: syscon@f9011000 {
 		saw_l2: power-controller@f9012000 {
 			compatible = "qcom,saw2";
 			reg = <0xf9012000 0x1000>;
-			regulator;
 		};
 
 		watchdog@f9017000 {
-- 
2.39.2



Return-Path: <devicetree+bounces-1431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C58357A637E
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:46:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 686891C20AAF
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5165737C92;
	Tue, 19 Sep 2023 12:46:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186E346A3
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:46:13 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2BBB132
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:46:08 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-52a49a42353so6967124a12.2
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695127567; x=1695732367; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WMuJsymgFdsKAjrQm0VavHQLfVQtcng3/FrcyEkfn3s=;
        b=QthGcJwZLcU4Owdd9tmIeYu+cw4+qDAmK8Dkn+KhTbAeTDfawtgh4Pd6fTFbIAjxMw
         UvzcvQ2+y3vy3JjNcOBKl9q4oIy8wzUCu5E22mtX1XOcEKVC1QYlRScxlYsJdT9aTdeH
         kxvWdKIXcoqI6be1m27GvgUKN4SprlGSAATCfdfDSNmu6IQk2qgpnbPqcTBXa2YK1WCE
         eOfkrVsg/G7X1ZdmsfxyN28/S8q0n6mloPBmp8WuqhsqiwZjlhKYw3LG4/HDkl0BOCkR
         qjrlZs6MvafszOlZ/U0Ntsfi3sFzehz4cpE3kA2Cu1hAcVTx10dZ+YseolZ4hHc6kZvE
         MjZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695127567; x=1695732367;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WMuJsymgFdsKAjrQm0VavHQLfVQtcng3/FrcyEkfn3s=;
        b=Ye1Wok/hzALS7l787BJkSjV1X+u0PdGghKBbBj5XzSyoU0TcDd4h2MfzRnlz6HOfA9
         VDJX69ZOKAkZImxYrL4o8qzJK8o41MbahfzSe1RQLEWXxS4TAqoowRBhnsJARqh0G3Cv
         ssrsXmO5SuxTVfZNpVUqM8xQH9ZLiSbHHc+ZXfZY9/J90ROdm15TvSIdLh24WlsxL2Tm
         AhgFqDiHirwQgiyE1UhxFOwbXKSAUAXZ2n3iJrdouxUxm46coF8P1BQSs6oe9ObEFp0r
         7wItulrApJpeXBc1c8PcQu3rbZLDJfD0bB5DVtNjmzytA92I5Hr0YYDgGBKMLWsYdi/g
         ssxw==
X-Gm-Message-State: AOJu0YxXKxc7as33hXAznSiH39f05zheBRyq/sYvzZftIms7vdFMLJq5
	WeJFuy0PJ1PGloeQt4Yu1N9vfA==
X-Google-Smtp-Source: AGHT+IESN3P4tFPFTmoegpAyu0985VeUnYTtETuttZ8u4RCYd1u27yyNjPxim8n3sd0Ww2U2wL5r/g==
X-Received: by 2002:a05:6402:5165:b0:530:8a59:a01d with SMTP id d5-20020a056402516500b005308a59a01dmr9886341ede.27.1695127567136;
        Tue, 19 Sep 2023 05:46:07 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id dn22-20020a05640222f600b00532c1dfe8ecsm635878edb.66.2023.09.19.05.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 05:46:06 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 19 Sep 2023 14:45:58 +0200
Subject: [PATCH v2 4/7] arm64: dts: qcom: pm8350c: Add flash led node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230919-fp5-initial-v2-4-14bb7cedadf5@fairphone.com>
References: <20230919-fp5-initial-v2-0-14bb7cedadf5@fairphone.com>
In-Reply-To: <20230919-fp5-initial-v2-0-14bb7cedadf5@fairphone.com>
To: cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-pm@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a node for the led controller found on PM8350C, used for flash and
torch purposes.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pm8350c.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8350c.dtsi b/arch/arm64/boot/dts/qcom/pm8350c.dtsi
index f28e71487d5c..aa74e21fe0dc 100644
--- a/arch/arm64/boot/dts/qcom/pm8350c.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8350c.dtsi
@@ -30,6 +30,12 @@ pm8350c_gpios: gpio@8800 {
 			#interrupt-cells = <2>;
 		};
 
+		pm8350c_flash: led-controller@ee00 {
+			compatible = "qcom,pm8350c-flash-led", "qcom,spmi-flash-led";
+			reg = <0xee00>;
+			status = "disabled";
+		};
+
 		pm8350c_pwm: pwm {
 			compatible = "qcom,pm8350c-pwm";
 			#pwm-cells = <2>;

-- 
2.42.0



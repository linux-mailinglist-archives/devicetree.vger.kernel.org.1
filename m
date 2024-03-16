Return-Path: <devicetree+bounces-50916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AEA87DA17
	for <lists+devicetree@lfdr.de>; Sat, 16 Mar 2024 13:11:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D75B1282102
	for <lists+devicetree@lfdr.de>; Sat, 16 Mar 2024 12:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2953218026;
	Sat, 16 Mar 2024 12:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yT6QNQ2b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956D01773D
	for <devicetree@vger.kernel.org>; Sat, 16 Mar 2024 12:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710591054; cv=none; b=JWyKsymaA3CklliaSJcpIYY6kUIQsqL8rwE6KkC5mZRx60a+N8+Qdk1mLYL6b9QhykWxjKBy6BADAbxEvS9yNFsbKGIlyBpG1fFKCq7wqAIqDc5DFWull3DS8R2KEPwRa9PF12EtMMxlYiNFe73WuISLaYeWOgnJYT8dcq/wnuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710591054; c=relaxed/simple;
	bh=fktCCbDv/VIuSyXY3tYWs4IVqhS8SDqxMK0qvxnzbNI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=FflvZsg5CdAnr1pRG1Y75L5SX0z665t/TPDpk2c9KPwE2A9ZpYeqJb9pOD1Y3REKBawzwr5DrkuAs8nTf8T49Q0qTbGsczl9vBEjVcMlOWc+ysbGMXcgxwL734AFJej9uLLWI3TZfifk8BudUtdi5QFQG0CFiskElsCEUuJOI7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yT6QNQ2b; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d21cdbc85bso37462771fa.2
        for <devicetree@vger.kernel.org>; Sat, 16 Mar 2024 05:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710591050; x=1711195850; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hDpnnflX/d44C9t+bbp3CWw+BJoJUiJIyi0Tnl0vMkI=;
        b=yT6QNQ2b2ReX/W79tosz/REgxreL28Ozk3eRP9wmX0kjwJB1a0WuXGDvbDktnsQ1gn
         v+NDeVCa0pm1R1wQLVQmQDrO0bRWBbqML4eztgaLgE444fRPpJxuSpgdNv6hS71Z3bRj
         r84XlW5wlhQdZuFtrKo/oDzHTWfSQLd/OUtY9jfZefTKQeqERz9bV04TLq81fWpwTaBM
         WafnAwcbRO7wasNwi+nCDDQmbS17R1jtd1WaDn4bRzZQjkZt/Trzkey+ZTTNC+LJHA3O
         zNfqu7I23dVwrD4O7Nw6Q9uM5LR1BDB0snLUX+5gS43zKXyI7tgzE3m7HGwj3fvVG/cZ
         cDZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710591050; x=1711195850;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hDpnnflX/d44C9t+bbp3CWw+BJoJUiJIyi0Tnl0vMkI=;
        b=sU827q7lvl+aMzNLZw/ImIw9PqiP8e8VQGO6l2oICW5gv78NfNduBaLxdZ80EuT3uS
         QysKHlrOCS2d+GI/VBwHldcDoBKf0V8nVjCqeFzQjS6wJzrKs3Svo0zeZ75MGdYza3pv
         Ejw5838XiLL1JYaZO6uPNKeaJepB4yBV2q/YM5rMfaF5tMcJom+UNvahimn4qsqEpvVm
         MmOHw5ut1ZnK+PTND1hkWlBsuN2npk4VqcdSn6bNhdj3/NI5UsEh8cuxkxgqensF+MGs
         RuSjCSrNzpsi3eIL0+Jm0tcLtemXnjTrS/SdiVvEUyFSfT4F6vl0n0MPXn2Ok9FtIpF8
         sChw==
X-Forwarded-Encrypted: i=1; AJvYcCU7YXMxDxbP868BuFYEcfTbLybLGg5OvjS6eXWRUwdgzB4wTiQriYkabAWbtrIOm8QlThp0x3FzUqC6pxSQ1GBHlQ6+6xCrl5SiXg==
X-Gm-Message-State: AOJu0YzkKUSsl3TscUKAuwNHbqcrvixZ3OpkJ22XUoChfn+qF7jypmAz
	Egkxunr4Z4i+L32OC9oPnRfgS0BCN4U8dbYGvE7kpX8mGaiiwkWD0rZAKO6GdoY=
X-Google-Smtp-Source: AGHT+IEcAO04rh698adudsqeA0OCLfkC2mSxbb70R3fbi4/BAOaySoscZl/ZJMdaztL3d23VKxoD6g==
X-Received: by 2002:ac2:5e24:0:b0:513:c658:799b with SMTP id o4-20020ac25e24000000b00513c658799bmr3497844lfg.55.1710591049663;
        Sat, 16 Mar 2024 05:10:49 -0700 (PDT)
Received: from [10.167.154.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id q13-20020ac246ed000000b005134263d56bsm945284lfo.224.2024.03.16.05.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Mar 2024 05:10:49 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Sat, 16 Mar 2024 13:10:46 +0100
Subject: [PATCH] arm64: dts: qcom: msm8998-yoshino: Enable RGB led
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240316-topic-maple_led-v1-1-ca3430fd9dc5@linaro.org>
X-B4-Tracking: v=1; b=H4sIAEWM9WUC/x2NWwqDMBAAryL73YUkPsBepZSyJqsuxBiStgji3
 bv0cwaGOaFyEa5wb04o/JUqe1Kwtwb8SmlhlKAMzrjOtHbA957F40Y58itywLnvyNnBmRBG0Gq
 iyjgVSn7VLn1iVJkLz3L8N4/ndf0AVcPOQHYAAAA=
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Sebastian Raase <linux@sraa.de>, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1710591048; l=1354;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=7POCFrK25iWDlgWo1fz1erE33bL/FqB3Pzbou7z2qXg=;
 b=1y3D449unX2u/4yzer9iQnPZsjeGGuEasxQxa95dyYh2Jbc37yqg4ImMS4imagsy+2Xf1LDKp
 Tk/+TI8L2thDKJgi7oB+hH9r88T6H6xoHas5AUIPj/2hb5XxJkuw/wk
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

From: Konrad Dybcio <konradybcio@kernel.org>

Add the multicolor description and enable the PMI8998 LPG to expose the
RGB notification LED.

Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
---
Depends on: <20240315225237.1616550-1-linux@sraa.de>
---
 .../boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi | 29 ++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi b/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi
index fdd3953938d9..d8cc0d729e99 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi
@@ -418,6 +418,35 @@ vib_ldo_en: vib-ldo-en-state {
 	};
 };
 
+&pmi8998_lpg {
+	qcom,power-source = <1>;
+
+	status = "okay";
+
+	multi-led {
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_STATUS;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@3 {
+			reg = <3>;
+			color = <LED_COLOR_ID_BLUE>;
+		};
+
+		led@4 {
+			reg = <4>;
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		led@5 {
+			reg = <5>;
+			color = <LED_COLOR_ID_RED>;
+		};
+	};
+};
+
 &qusb2phy {
 	status = "okay";
 

---
base-commit: 6a2bcf40b85ff77e3f32a2fbced3faaf3f59b43c
change-id: 20240316-topic-maple_led-f54a21620dd9

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>



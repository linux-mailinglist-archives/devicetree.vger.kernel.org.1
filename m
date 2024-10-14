Return-Path: <devicetree+bounces-110880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B09C99C2E5
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 10:20:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E6A61C219FD
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 08:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EEC9154BFB;
	Mon, 14 Oct 2024 08:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RIaPIBHj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3204714F9D7
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 08:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728893990; cv=none; b=R8sVRp6aZPmGVkZFNfcf3OrvnqzWc4a3OLsRNqujxVFfnp52ooDLikvYbeIK/wYVVoUdxnSpEfPSILhiZ/CQeq53IFFm1Q/KhHzc7cX19daJskXQMO0nCRPHaLfGdeaGK3P9fV6DTBlKzL5xku93rjpHUtjcEl5B7zGZ51tvqc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728893990; c=relaxed/simple;
	bh=FdnpvhfC+1AEQjp8j5QlbKHf85wWJdM9k4KJpsGX4RM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Con2gbSZrjJoSvIgDV1XM1mXEx1AjSxDTTJfJwZry3iA2R7ohFCLz9al7lRCcjaS/EGxhMqUCjGqPUqVxx5P2mU6RrlFDXeWbECEtP2NJyEY0yKSzbCsJqC57xJo6zqBgnqQapN+nHU1l/9xm1IFIvNEce8W6Xb1PdtLSSY+as0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RIaPIBHj; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4311bb9d4beso24637905e9.3
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 01:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728893987; x=1729498787; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=clN8Q/pfP4O2rUUmgPO+Y1PHDWp+8mMr2vEE/cJuHuU=;
        b=RIaPIBHjE43Zw2WkLW3xn627gwfi9pPKiKTu7D3Q2+8rnk6RFnGtSyUP6uB5wX6jCc
         QFr7iZyJ08XW7CzZXsPbl3kZjEmL5RdXPx+W7BIU/cd06tO7lri4sVCv7MTkd7eEVAOu
         LXeyrsvVqT1zdPGDQUjNce4jqW+cN/XFK+AxdNUq+xU14ZyG9RdzdUPdB0FLwQZinelb
         eGeVeW2/OhcMmikSPA+kcqXtKnLElyd+RgkwAmM97tpQGfEhqL9ahV7HZ1GLjAiAWsGy
         PDcRoQBTooDVUAXhkVpduYIu9i7e24tqI1yapO7DaH4i3fQD3Y1SLRG0L59aCvXSSmNg
         wdyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728893987; x=1729498787;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=clN8Q/pfP4O2rUUmgPO+Y1PHDWp+8mMr2vEE/cJuHuU=;
        b=AsL0HU0KHT88kuFUUwKKwB8ZfVxn0aAgXP3gWRmnVoBNAXDs1TxNEaF5tXtR770W9L
         /FP4bWDOm8wV02Zti8YTY7rrQXXpMDiv4Ai6SA75I20ik7Odzuz2bZEcfC5YZk9ei02/
         +F+biLpOga5DLhI5uja1T69k35k7Nfl9Ge720qIgYKp1w0S4xV0FbW/6cIBpTtjru9Lt
         pKREM/fk0mXCBq/ggxpPGl9PWhZaeG70TdIB3J7XzUwhFMUOlWJC6AZ0wca9cVuSiY1V
         4EBX+M0KHJ33jp1kfCZkMeOw0cthcTYpXyMYTAvxWKmJ1jTAaoz9N5ITaE8IiGYhtK+F
         LMQw==
X-Forwarded-Encrypted: i=1; AJvYcCWKUlGs/sYs2IMnjTdUMQLp0QAZw+U/WTo/nWDoMtCAPzebOA+PSe/uVA2JuDwf0Gxme1GWQlR/Nwzy@vger.kernel.org
X-Gm-Message-State: AOJu0YzMNHLYWtoBQrBca/ejE+/v0HiXNUsd9LIrG7fqFDgttlhSQRip
	2OuVNA2JRDCGEX2FN5DKtrZ/Un8n0zIaOqOabpozS4eKyxsyzMkJ+us4DUyDiZM=
X-Google-Smtp-Source: AGHT+IHFG67a/n1cQXEKyxem5Tt2gNBr5kLv8Is4C7ERumb9eyVHbbL0HNNznUIOC0T0ErdziFplMQ==
X-Received: by 2002:adf:e706:0:b0:37d:39df:8658 with SMTP id ffacd0b85a97d-37d600c926amr4826511f8f.58.1728893987366;
        Mon, 14 Oct 2024 01:19:47 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b6bd04asm10715752f8f.27.2024.10.14.01.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 01:19:46 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 14 Oct 2024 11:19:25 +0300
Subject: [PATCH v2 2/3] arm64: dts: qcom: x1e80100: Describe TLMM pins for
 SDC2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241014-x1e80100-qcp-sdhc-v2-2-868e70a825e0@linaro.org>
References: <20241014-x1e80100-qcp-sdhc-v2-0-868e70a825e0@linaro.org>
In-Reply-To: <20241014-x1e80100-qcp-sdhc-v2-0-868e70a825e0@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1463; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=FdnpvhfC+1AEQjp8j5QlbKHf85wWJdM9k4KJpsGX4RM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnDNQclMui5jQYBeoZCVZV6g/nXL/dREtRwI3So
 4eSKRyTYY+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZwzUHAAKCRAbX0TJAJUV
 VhgvD/sFAZWsD3ZOm6b/HfM6WsYKqFsCtuYT3wi7ivXWtQu1/tdq0qTmQuihte+pf9rdz/WhB3h
 mu4q74vmZyFIRwL9wVYY33jjn8IaVUoCTaUkDNGmRzP8jm0yJrhf5rt7VUo8k5e/A4pEKQMgKAN
 ECwSS1yOvtvomFmnT9Jpm9Gju4Ja22nRATMzoGjZxF+ELf3U3cooLGa5LAEUbqQZ7Ni8AejfhOn
 lm2d9wBlcbDAgNBJDsMzEGYxzwMjsfZbYII3osB/fLwfc452BSPZp7IWZrLl9u9NSLCXoeIpxcm
 oyjPAZe1MpjIomgLziaCBGYdSSsoK06ZaU0fCzASC2uf0ve5jcxab2GW4gg5DFmO6lhezaKos7s
 2uD1pbn9ryVARcM/KL8I7zf6ehLv9aalIStsk4J6ddsPuXMJvA5eGWfUMDKw/39hIkxREBNmjuc
 ZF20NUktWj/tbp0X/mNW3rWqrokFDkjk52Zj9/r7aLo60em6a0Yd9uK8DX9avg26VRv8ltyZpNH
 0/2dsSGSeEzXW//a2JwroeOHLZvdjnipG1EUq32FXHKH8T8GhhNrm4LvR9UZntTwMPRzkmgLjDm
 4WAPEWJxB6y2K9b/eV3NvNF5CE8dMmFY39Ca6kO6GYthurWY4AWHvnDLUc66ARtndor1A8TacqG
 InbWUg7fZe9QY9g==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Describe the SDC2 default and sleep state pins configuration
in TLMM. Do this in SoC dtsi file since they will be shared
across multiple boards.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 40 ++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 2d0befd6ba0ea11fdf2305d23c0cd8743de303dc..dfdae4f9225740bb3d2de6b0054ed60a2397bba9 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5741,6 +5741,46 @@ rx-pins {
 					bias-disable;
 				};
 			};
+
+			sdc2_sleep: sdc2-sleep-state {
+				clk-pins {
+					pins = "sdc2_clk";
+					bias-disable;
+					drive-strength = <2>;
+				};
+
+				cmd-pins {
+					pins = "sdc2_cmd";
+					bias-pull-up;
+					drive-strength = <2>;
+				};
+
+				data-pins {
+					pins = "sdc2_data";
+					bias-pull-up;
+					drive-strength = <2>;
+				};
+			};
+
+			sdc2_default: sdc2-default-state {
+				clk-pins {
+					pins = "sdc2_clk";
+					bias-disable;
+					drive-strength = <16>;
+				};
+
+				cmd-pins {
+					pins = "sdc2_cmd";
+					bias-pull-up;
+					drive-strength = <10>;
+				};
+
+				data-pins {
+					pins = "sdc2_data";
+					bias-pull-up;
+					drive-strength = <10>;
+				};
+			};
 		};
 
 		apps_smmu: iommu@15000000 {

-- 
2.34.1



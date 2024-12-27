Return-Path: <devicetree+bounces-134360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 154B69FD4AD
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:12:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD7511650A2
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 979101F3D58;
	Fri, 27 Dec 2024 13:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y2JWP4gn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB9E1F37D4
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735305138; cv=none; b=F730hYrW1cNqmIi0QMkw6tQWCF9iTeUrsTN75mFXmoW3JE5TeKRmQRW+lY3dw896vjGs6GhaZGe50IGpuwXJo7rsruI00Vl5KBKx54HMKVHhhLqe2Pb3nYQMcmq+ixbADoakuwfCAliDAAECN1WTqt7/JzFM8V/GN4cipJ8PzWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735305138; c=relaxed/simple;
	bh=W46aOzgaP6TdX6ichSpQ2dPsT4ngVEhSZ+rnWAPjmyA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D1qtW9xz7Qx3PpZdg3doNGIim6hTGNimKXwzw12UYVsFEJoj0x1AK68+sFYIQzwfjXdqXrt730HpRHBceGTap/K4RyM5fHAy5yksLTLP4qogSGpZIX19c+larwQh5bHnXe1xZiXTyyu1ULb4C7kSw2Qqfy+weEwsyRVWO+3LVoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y2JWP4gn; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-385df53e559so5660132f8f.3
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 05:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735305134; x=1735909934; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=enHviFwSFCpeHQweyddaphrH7Y3AaJTqZkigXyqmGJw=;
        b=y2JWP4gnfb9CYD2PYlpcGp9WI2tSRM6ZZjClZeEYXyyfv/BdKgXmCaDXpxrGwXnvHz
         sE6aOYkwt1TBrBOMB8Ge4lHNJ00fUXs60xIvMqvOXrafygr9lpTbXkTV/3R91GgXQ+ug
         xNYikVPBh1sBEuKF3hK1VeUhSoabb4xCq/rns1lBprwgsTKBFPZP/9YvSN5yJneHY7gq
         vpQwzs/mV2ZtNGxT/NOMKL7NU/vK0HW26mWevzUNURX192LWfD4e8HfcLH1lwKoLkFKc
         j8F1REWCIbJ0fABkoAFrJjtZ2/yuDmWcHr6QPjfWfAgm0h4Zbvf3qbiAXeJtHzOBPPGt
         zw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735305134; x=1735909934;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=enHviFwSFCpeHQweyddaphrH7Y3AaJTqZkigXyqmGJw=;
        b=bxj0IsSUCqpeyHBh/IQ8V6NNrdQYjZNFERjvdcTfa5CDDWNlkC9txJfiSQ5Hk5ETXH
         XtntW6tEcMInHgT4EBWjcw1mjc+dTEUs5SzyPE9nMf1zT8bqoc5Ckbey0VIori3XMohQ
         9p7H2qI5t8G6Y5jr0EWOgAttH8qIoP4a0uwu+V+DzZkXboYxqtNY/3zyXEDMCbI3yMni
         BZBafuxn/ATzut4UgS66pwyFkKjVVJq32zRcY+BRP+vXbWNegz1tDBp2eEOEJ3B9zcFx
         Osu4zboiM8YyhJSquOZwX1xQpxPx3XSnU/dk/Ql9Wk03YFTYqPI+pTwZV3GwCUTyn2/X
         zb5g==
X-Forwarded-Encrypted: i=1; AJvYcCU6wFJNunHJx872yeQRebXXXYd2Bz3MVtI2Q6bxhc3gcmfUXVmPW1BUzWU8l76vynflhrfiDH46Fmib@vger.kernel.org
X-Gm-Message-State: AOJu0YzKb5EkVupPjhpNzZqKIEMZsUDaKjIgyuDSC000fanWVLvgMhP/
	aeTz0OyQZa4FvVX7+rUX5beBdZeNjGr1QODFJmKuIz7mjrV7WXj78MQh2WSS+jaFpZsVdz+LVLD
	M
X-Gm-Gg: ASbGncsVM1/ge8pGca2wyNy3Ad6pKWibIq5YUWvEFjD640mJbwI4rdtQedML7lwv6AR
	SriX95R4gGneqA75FY3rsZosTTm+Va7M8G2K825g1G0qgV6/ScBPC5AMJuCDSOXsrKzlcWGeNGg
	sIcOdG4wxGy+RjZ+tJFlSCvkcXwSgCVvZp6b0nf9XLDMlOXbGafq2nN9LNxE1mFAjUjJ/3UaEvm
	G1miRL5yuSZywBK3lcQ2UQ5E+uPfF90mLk4v5YqKIWYfFdUAd8wpAsteKnW+T7vJQ==
X-Google-Smtp-Source: AGHT+IHOR04wC4k4ghQc7+WmGypE2kBkaWFaqs+gZ0PoCMcLtBCwMwyfNpf6kNyKRiIob3vJkPHJow==
X-Received: by 2002:a5d:6da1:0:b0:385:e5d8:2bea with SMTP id ffacd0b85a97d-38a221fa065mr22623129f8f.20.1735305134373;
        Fri, 27 Dec 2024 05:12:14 -0800 (PST)
Received: from [127.0.1.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656af6c42sm298899425e9.9.2024.12.27.05.12.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:12:13 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 27 Dec 2024 13:11:34 +0000
Subject: [PATCH v2 1/6] dt-bindings: i2c: qcom-cci: Document x1e80100
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-1-06fdd5a7d5bb@linaro.org>
References: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-0-06fdd5a7d5bb@linaro.org>
In-Reply-To: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-0-06fdd5a7d5bb@linaro.org>
To: Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-1b0d6

Add the x1e80100 CCI device string compatible.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index ef26ba6eda28e95875853fe5043fe11deb5af088..73144473b9b24e574bfc6bd7d8908f2f3895e087 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -34,6 +34,7 @@ properties:
               - qcom,sm8450-cci
               - qcom,sm8550-cci
               - qcom,sm8650-cci
+              - qcom,x1e80100-cci
           - const: qcom,msm8996-cci # CCI v2
 
   "#address-cells":
@@ -224,6 +225,7 @@ allOf:
             enum:
               - qcom,sm8550-cci
               - qcom,sm8650-cci
+              - qcom,x1e80100-cci
     then:
       properties:
         clocks:

-- 
2.45.2



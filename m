Return-Path: <devicetree+bounces-52396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBAE8867CE
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 09:02:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EB021F21633
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 08:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84BB31B5BB;
	Fri, 22 Mar 2024 08:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="jO1LHyxe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B5917731
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 08:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711094513; cv=none; b=XLd5fw2yWTInGpcq0+44cUJRl3PBAUnA+sDzLZvbQB411tgr3NuKF8nqBAS4o36zPYryPJB+b+FBXWK2JRP/np5tHBoP+P0KzF7ILKhbiKtALX3cluu9RUaaCC6b3LhrfKdx31iP6JYefD9wsoogPlOLJSfxUf1TxY/J+9+76Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711094513; c=relaxed/simple;
	bh=ZBM5V09fKIuDTzLzV/0cG79mmGRRchouq0MxxhGGVXM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T3P/GwWmNvRd+5aIIogvwBFzbAcXZNmK2Cp8mTVYyjmXpVUOAPasbzPB1/ejpRljqBDdBAzBX2+Xrzp28aiJ8nZ2920LCBZL3ko0vdiX9Ql069JyyIbfPvv6ykAf+C9Xkt+u5OP7n5RThf39WdZgLV8kcmpvTjHBrtPT92FWpic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=jO1LHyxe; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56bcbf40cabso1880478a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 01:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711094510; x=1711699310; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SvLE1MVPgDc0vjg2RXtuyO+IXL0HADH5M9xYPYlMtPM=;
        b=jO1LHyxeBbLsB+xQF0yhB+lG9vvRSiDifTk1cfI8nyG8yEWCUYvKpoNB1arVg3NVZG
         OmGTdVmDjcLfhZ+ZWVeu9qUoRtB28ECWV+hTprvsmoZ1wHA7XGIrM+4Eh0EhnPj21Hbe
         sRu6WIi0Rt3Ep8RCSlK9STxPWjQnG1zqzfUMyBC2xStrmgeL7FdOA10yU1xz3Y2HBQEQ
         69Oui27BgfLR6/G7RzrqjmmBUsEp3YDa3zQfFw40MJGNMUytpmbBcOTOAczJJ1KtWzRm
         fMZ4baFGMgqr4fuQsAKmsceatepVuqLcvTURw7W4b/jiWOAOD9EARcK5SB2+KEF0MPEZ
         KUjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711094510; x=1711699310;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SvLE1MVPgDc0vjg2RXtuyO+IXL0HADH5M9xYPYlMtPM=;
        b=Y1GFvFZZURYv6HZKn47g4KOdTqT5sFgtUthODujKc2W8bkL0Ju0eIVF9xX6PWfRzM0
         sTPdzQ1Le3NnTfCVWH1NZflk93zxgPyJutkjGQdZ7ryv5QpWxpNnVmGfntKfWJ4shInP
         TT1FKux9zC88rjS+P4e5IWco6nU8fOSPcNnOFHBAcXs1zgigNVB3e20ucAngjryfpKWR
         a6NsyopWH4L6VAMHadfe9eIAbyDqHPPZAc/3QVe9Ch1+VNNnXohnlCy7Yt2AS7APbIOw
         PHAeycu2n/sMMeyIsbA05UJ6tGmw1sbB5qjeUvAL/ba1J8/lOqLbKUh1akCoMl2DHoFs
         1rtw==
X-Forwarded-Encrypted: i=1; AJvYcCUAVNLmXNXUXoJjlmmNnBkYDDvG3uOZcPu+XiYHqKtIEVkPTVoYVATvR/4PEVecn6Ipi9fCnVUAQLWDqRG/YHYRT9bhmRVeP+3rRg==
X-Gm-Message-State: AOJu0YyykpHGi+piW1VKeOzor07E/RPNrMusfbua4/r9vCnvE0gpLIlH
	2FkuZZwAaO2Qi408ZOFvWwNgH8PqT8AJ4xf91OA2t3SFv5U381qPIyOrLHzRrgQ=
X-Google-Smtp-Source: AGHT+IGbA7Ib8iNtMMdw2HGCUucqhXUuLYARbm0CTeKU/FpNbScbeM2XX2q5s73AS0o+fhZUPA/Xag==
X-Received: by 2002:a50:8e5d:0:b0:566:1952:694c with SMTP id 29-20020a508e5d000000b005661952694cmr971634edx.20.1711094509844;
        Fri, 22 Mar 2024 01:01:49 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (046125249120.public.t-mobile.at. [46.125.249.120])
        by smtp.gmail.com with ESMTPSA id p29-20020a056402501d00b00568c613570dsm739889eda.79.2024.03.22.01.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 01:01:49 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 22 Mar 2024 09:01:33 +0100
Subject: [PATCH 2/5] dt-bindings: usb: qcom,pmic-typec: Add support for the
 PM7250B PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240322-fp4-tcpm-v1-2-c5644099d57b@fairphone.com>
References: <20240322-fp4-tcpm-v1-0-c5644099d57b@fairphone.com>
In-Reply-To: <20240322-fp4-tcpm-v1-0-c5644099d57b@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

The PM6150 PMIC has the same Type-C register block as the PM8150B.
Define corresponding compatible string, having the qcom,pm8150b-vbus-reg
as a fallback.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
index d9694570c419..0cdc60b76fbd 100644
--- a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
@@ -21,6 +21,7 @@ properties:
       - items:
           - enum:
               - qcom,pm6150-typec
+              - qcom,pm7250b-typec
           - const: qcom,pm8150b-typec
       - items:
           - enum:

-- 
2.44.0



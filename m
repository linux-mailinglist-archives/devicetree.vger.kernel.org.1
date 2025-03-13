Return-Path: <devicetree+bounces-157357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B46A60381
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 22:43:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9017177E84
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 21:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CAD01F542E;
	Thu, 13 Mar 2025 21:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b2OAtKlh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F611F4E47
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 21:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741902200; cv=none; b=m8PWfKpVN9rFAFjJqOy+mmkJQ3v9p4PS8RPm4PcHC5/b4Sp5VfP5XvbGxwpiDxpNH5ifH6dvGezRCpoFHxcQdTP1W47wPhrybTWvRU5Om21htPr4VohwwTlg1mNLap62mLNtPxjglI2pKmQl9Xdub9pIFSkQ6UA+s3DdrF40TkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741902200; c=relaxed/simple;
	bh=NaZu91DC4T8heFZFo5XZ2syZfWhTaJWbyUNy8uixAT4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TB8MNbEjVK329uIDNIrqM9wbAcvt3B/tSJsEWfSyKtTMKI6ByV7ch8Ylz7a+FwiMYjnfuvEpZKrWPSySFkcn2vGkVmcMUMcycRJ4b6SRialVMgvGnc7YLqxz72u4glDt3Jj54Z5ucXlRaWb3Tw4+PhNI1r0yXjizCfHNAS2z5vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b2OAtKlh; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e535e6739bso2199678a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 14:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741902197; x=1742506997; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v+Au6V+nm5YKxU288WKh4NUBJU2SyJevP5UMvrIA5i8=;
        b=b2OAtKlhBW9xtV+GU2vRGF+mKQ5FDsaluza2OobOIxUn8H7em+qDlQiFNjU+ownvG7
         ysrZUuJANLkUTWX8MWj8EWGM6y6LH4IT+q/OdVwhaiHv/gQWyABwymqLUwpCFx+RtjOd
         FpnlSiarc7d0JKBkvDSsOLk9dJZyXZPbs9hdC4p5YbptwgkdlNcYcEPwIw0zocNrw8LW
         1C2vghifvLfBPRz7a9QWbDjx1PUsQmCjtPlgozIAbuBLeAns3ciSobTK7ibQ7qOnmpFp
         IC8uG2JDyNZfRyYLBJ6XZwxs2Ut/Fil1ZlNrsTAz9ltuoTK1OlaJXGJllZ+PX2Xs1Th9
         RSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741902197; x=1742506997;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v+Au6V+nm5YKxU288WKh4NUBJU2SyJevP5UMvrIA5i8=;
        b=O3Ck+jq4+ewxcRvNhr6Hz9tTXe8o0S1TTMUqojyhXsk1LwkwRKyGQKGHgywL3wZH3D
         VL1XL4R5gwNGu8JHwIVhabMFqVE5xNTvx9CgFbYOpAdZm3nUozK6JJBv/LEGRhNNxQ/3
         pGE8X1FCc0qKDbyCA7OkGgiYJL8GDISgedNom+zISo9zv7gkhQhICItDVbSF4bKE5+zt
         HFVsbGl5ySOBJAAAY6elDhDKS/09TGSjMhQaAF577IuMztOwIU2IaVVgn2wr6Y+zDWn6
         bPdZXsAkQW9Rjv6ihmzgLvZItO8zvCi+bZoJ6+KkMuCeTvrqEDi0QklR6u+mO40grHJ9
         5qXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoEDMBpj+vLgeY8dMttkAC8SMOOL0zBERkel2ZCzUSXpYjNYv7JoJV7qxUSGE/dY7Yzti3XLksM+kZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yysgb0fQW/9Vev19ewaA+046/2AM6F3nMFqGD7K9bs+8Di1vpGW
	y8enmcon2a8PFdQpAp2Yd5o/Ex2O9jkzadkHURARCnz3J/pfHFr79ToCIf2LZGU=
X-Gm-Gg: ASbGncsb0em20+Ds541+XuhT7oSzH13np2deEC98d0fkNvLoBbKvTYiXVLSP90sRw44
	Mth312e4FS50xqUd1hOW0V10Sd3sl0nEhC1TSpW5UrlIzADUQe3MtzAkyLlZQvbRvyUWNVOEvN5
	lWWozbI+QtawIZ+F4iS7dt8u3Wq7BJ4XE4s7weXUyJAfzh6Hlmts9zEvbGlWm1wDqCpy/GM/Hph
	hxeBqjGOpp1eBbUOaQld5jHEbmHY27TEnYyvYohcaBXN39JkpdO09QP/Ix6GqcU7uUt5nrTm3g9
	MX54pYskUrMLJ0iyZAeP7mQXt/izsbg3dkmxAMyBiol4u2a6T3upSBcNZ70/WRu4GnYkuvqVGE1
	RhU2jlrBHVIZyCVL52dK7fAEFuQeJjNL9ZQqHZ1yjZ/Im+L5JIAqmAIRGk3TJiH9w9+uoJ+/x7o
	oTezk=
X-Google-Smtp-Source: AGHT+IHvGRlUnca+L9ajzxTMQ3ZVV9sUWOvELGKMoU5iE6uqCQcPOCFhwS9U5tYCom0ODtsxVB3EIw==
X-Received: by 2002:a17:907:6ea9:b0:ab7:1012:3ccb with SMTP id a640c23a62f3a-ac330181a8amr10857666b.14.1741902196696;
        Thu, 13 Mar 2025 14:43:16 -0700 (PDT)
Received: from [192.168.178.107] (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a489e0sm126938866b.151.2025.03.13.14.43.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 14:43:16 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 13 Mar 2025 21:43:13 +0000
Subject: [PATCH v5 1/5] dt-bindings: clock: qcom,x1e80100-camcc: Fix the
 list of required-opps
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v5-1-846c9a6493a8@linaro.org>
References: <20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v5-0-846c9a6493a8@linaro.org>
In-Reply-To: <20250313-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v5-0-846c9a6493a8@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
X-Mailer: b4 0.14.2

From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

The switch to multiple power domains implies that the required-opps
property shall be updated accordingly, a record in one property
corresponds to a record in another one.

Fixes: 7ec95ff9abf4 ("dt-bindings: clock: move qcom,x1e80100-camcc to its own file")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
index 5bbbaa15a26090186e4ee4397ecba2f3c2541672..938a2f1ff3fca899b5708101df7f8aa07e943336 100644
--- a/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,x1e80100-camcc.yaml
@@ -40,9 +40,9 @@ properties:
       - description: A phandle to the MMCX power-domain
 
   required-opps:
-    maxItems: 1
-    description:
-      A phandle to an OPP node describing MMCX performance points.
+    items:
+      - description: A phandle to an OPP node describing MXC performance points
+      - description: A phandle to an OPP node describing MMCX performance points
 
 required:
   - compatible
@@ -66,7 +66,8 @@ examples:
                <&sleep_clk>;
       power-domains = <&rpmhpd RPMHPD_MXC>,
                       <&rpmhpd RPMHPD_MMCX>;
-      required-opps = <&rpmhpd_opp_low_svs>;
+      required-opps = <&rpmhpd_opp_low_svs>,
+                      <&rpmhpd_opp_low_svs>;
       #clock-cells = <1>;
       #reset-cells = <1>;
       #power-domain-cells = <1>;

-- 
2.48.1



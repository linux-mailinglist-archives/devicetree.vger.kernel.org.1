Return-Path: <devicetree+bounces-71277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CD28D63C0
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 15:57:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9586328BDF7
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 13:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93730182D01;
	Fri, 31 May 2024 13:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tDwoKNCQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D259F1822CC
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 13:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717163589; cv=none; b=A2FeF5XDgEkOWWO9sHCrhz5MKTGYTfPWOPPse1+2ix8kBxSPhyPD8+QpD/VAlTis8exsU0WF47L+6vgTxN68ZArcJf/5gi+gDX1ZVFadrXfeAkMRdZh3m/2fJJ1SM4Kf4ttRDXzYJJ0YoMKDkXpnQo+6iLStYb8NPcBuRm3NVCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717163589; c=relaxed/simple;
	bh=cfew2uqiue8pFNos13CpGlclgzzZCODLpxXTLnBo56Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T0a2pSCBErNS7wZYeeoJlj77fzIkPLS2gU2EDHW7ZpBGZC7mGFizvRiMZiRIYnB5XBD7IqrszIHRn4sQcplL/pnoPSqkS6a51zaePzNrX8Z9xgcqI1wHY6uxnBuXykQCSRJxcfmhF1XgjOFK29tzYtkc8ILJ0UCoZGPzjpYgnAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tDwoKNCQ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-421338c4c3bso1596075e9.1
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 06:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717163586; x=1717768386; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lITNrKf/D32zEwqFmpHWncROEACnXldi0tQCFUizILk=;
        b=tDwoKNCQzbXGPP+Rh6Sk6RV5XCoOmosdTkvJwn4T/OJqA4fXQiSYknVrJW2VvcWGSp
         VcnCOS3/qpWLhzkBWYNoikkILBhi5T79WkuiKA2Ia8auPdqUg91vjxaEUfsZ1Gtf77RU
         UypYH6PjhHP95hlN6uR8TbK5TqTuJT1ogrS7jD5Hyc9lln9O956s+M56coM1l+sQ3nk9
         fWsxo9A/CRRc69MF94NNCk/57mG8gEmvlR4OpD3pEU+HcVjo/5QNXwMBS71cKHh9thAa
         0LmL0+EkopDWS54eujj1EWGulhbp9bJZb9YVsbYWN22ugHrZNfx5YnEaG57Q3HhOL6/e
         TARQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717163586; x=1717768386;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lITNrKf/D32zEwqFmpHWncROEACnXldi0tQCFUizILk=;
        b=YAJ36hh3Fv1dUYxwR6jdLpqU5TlRbEptgXiKpbiYfDPJ8OAZOL2059zXALFTM5GV9u
         JCIX+9o3um8abmCKVIg4o6C+9cU9T9GReHdVOkElmbnd1Q2MkajYTkJ+U5SRmSuJxkov
         7tV4wfrfbLol3jfFlkzv7W4YNz/3YUs8Q9wXkLg1iTU5W5t7J+SdK/ltDkAk04Nxssrt
         PHaQ0aiuo4vGcXtMJjoIVzRt6k1awKX8VORHtbi7YL3WOoiCYIV+RdIv1nZSTNw81bHn
         FgTYbIJRcirC+DjOid8BHgniP9uLhPaWg1ui7GKMIwI4nvU3jHa1jh0dYPDsOOvCnCzG
         HtWg==
X-Forwarded-Encrypted: i=1; AJvYcCUJLoG2tCnCJaiJAbOkSMkCc5P3MOP3rH0ugYsw6uAObMWUCw9WD3/YpNbgf3JZg2awkcH/l8vIk8agZUxYdFh+4UdCMX4mZRZIrA==
X-Gm-Message-State: AOJu0YyhqChCn330vZYRutPV/x6cpY0VQDG/+48GBhIz3w+2r+gdfybJ
	B/frNt4fhG5S71lOv0mrVFQegu5b3iQHzUR+b4rk9toKrs8EqSezsdtaJKP+oS4=
X-Google-Smtp-Source: AGHT+IGXriIxT5GCBQqSd4h7yTp4WjIT8oD0lZlD8uG+O6i3amcCrreGx65ovgudImDbX2rjxycHIQ==
X-Received: by 2002:a05:600c:4eca:b0:41b:ca45:8263 with SMTP id 5b1f17b1804b1-4212e049f20mr17765825e9.12.1717163586231;
        Fri, 31 May 2024 06:53:06 -0700 (PDT)
Received: from [127.0.1.1] ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4212b85ec87sm26762735e9.27.2024.05.31.06.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 06:53:05 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 31 May 2024 15:52:31 +0200
Subject: [PATCH 13/16] dt-bindings: clock: qcom,sm6115-dispcc: reference
 qcom,gcc.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240531-dt-bindings-qcom-gcc-v1-13-b37d49fe1421@linaro.org>
References: <20240531-dt-bindings-qcom-gcc-v1-0-b37d49fe1421@linaro.org>
In-Reply-To: <20240531-dt-bindings-qcom-gcc-v1-0-b37d49fe1421@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Jonathan Marek <jonathan@marek.ca>, 
 Del Regno <angelogioacchino.delregno@somainline.org>, 
 Loic Poulain <loic.poulain@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1303;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=cfew2uqiue8pFNos13CpGlclgzzZCODLpxXTLnBo56Q=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmWdYifcwUaQQHdugSVV3jvneyfkdccaC62mxeu
 KeNXoOPz5mJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZlnWIgAKCRDBN2bmhouD
 19aqD/4i3BWxzlgKR1h61UuulCx2uBbANkRukf0/zXhLreF8+PEFSUllA/UxyEu7fyDOCz0A9my
 OJcv0mbUrHyo50qjx6pwVpizmc9OPncQ8Zid7/VazMCPGjgoR5n22VQK7O675idFZQjcxwcBG7z
 0yqc6TD5dy72Mj4EJ3NgbqcjAYJXrz6ON1g/o5YDW8uUG4DxhD2wKju0QqwVVNp0m8UP/tMSXyO
 Ha6DLvV4uGwSGlqvPcTVFkVfR3ehugPZMy1CcZac5vDyfjWtTn+KrNkCIAgJNIbUvl/sgRYn2Bn
 UN2jBHYwZt0rIOU4ue0iqZcg/OX4XTHBRdP90b+WuAHPAa0YnZ2N0R+PUC/+IZ/P57TL5pVBF0b
 KGniNNzhWdNh9thHjQdIDxLXhBKcfU9oMCWyG2CBbgNY9w7UHPk5LsatDpTExNFhUFeQAWPU1R8
 OpEtg0SZZ27pH8gpoy23xdDhyXtd+EqIm/ZtuFb2opkcgVeds364v2eJ7PIpROiFHiPrUlCPlrN
 lrSvPJFr5ff/yXZMFYMzM1EMvK5FoU214TQXVxFJIwC9DhX/hibYNB1goPCreeojVbKi8xawFCJ
 clTmpW7xCsCs/uMrH+yfkyVnsBxqSZp0al+4fomea4ZePJ1UgVXrUtFJmXLQ+hZWeTOq5lkDfIk
 pGXrYb+SzcdJmzQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Just like most of clock controllers, the SM6115 Display clock controller
is also some variant of standard Qualcomm GCC, so reference common
qcom,gcc.yaml schema to simplify the binding and unify it with others.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/clock/qcom,sm6115-dispcc.yaml           | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm6115-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm6115-dispcc.yaml
index f802a2e7f818..00be36683eb5 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm6115-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm6115-dispcc.yaml
@@ -28,27 +28,15 @@ properties:
       - description: Pixel clock from DSI PHY0
       - description: GPLL0 DISP DIV clock from GCC
 
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
 required:
   - compatible
-  - reg
   - clocks
-  - '#clock-cells'
-  - '#reset-cells'
   - '#power-domain-cells'
 
-additionalProperties: false
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0



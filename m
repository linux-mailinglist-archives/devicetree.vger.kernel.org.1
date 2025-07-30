Return-Path: <devicetree+bounces-200784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7E5B15FA7
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 13:47:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 920BF3BE143
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 11:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 539642980AC;
	Wed, 30 Jul 2025 11:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rx6wKglh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694EF280312
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753876032; cv=none; b=lJp4yHC5R13QGt64k22/MufvbCWrGQyQHmefmQeLjkKKGs1GjCje+kVk2rHfGUUT87J7IJEK8ei8Yd+DzuxjOk8L2dEithmHVVn3X79xlJCRUXrfeGRQPep/PwNpWUTiWeZRq+AYSJucoVnAQDyFEtuS5uSWqxyYx4Qey1B+p44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753876032; c=relaxed/simple;
	bh=2NokYDIrwQ5BnU+V5V62SNjLrSQQSy6xfJVad8Rvaj0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V807rEmA4b5dpBrJvZp3/WOQpDoAq5Vz5klxJEsccDOqFb51FgQBYLGOb4+DlAJSBjpL2QP8x28KifWzClv9Qrvvzgw8SYfOkyWr7pL6+eAfgziIF/evQTBAmw1pJe78OTQfqFEnyjRePw5RGsM1vwrRGxhBo7etAgByGVA7SQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rx6wKglh; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4560d176f97so66946435e9.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 04:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753876028; x=1754480828; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jn5v3OPTVsl3N7aQ9eg+u74JOJMjyRDux5JHlURDcnw=;
        b=Rx6wKglhY0g7JZ3BS5+wWxTzB8Bk/R/KCMDBRivmOwxYtM479gKnkOQ0QIJTqNnhpQ
         A1r+b3nIPkHCLxFlnfGH7mqv8GH7l78BwXcT6oKmTlkeZdC2UY7sh/LNrYJ2VkJJXTwW
         RgYdNd+VTtbWvO0l/Z5nzuSA38hAQ5CuiEAJAOyx+vCbUv2wtJfupbrKzsDFt9R1guF5
         9MhzdHEnT1anZDC3KGB/of9xkoXgdWOt35ApBpinQ6RY/w30acXeEHSE2q+kZ4bAxQJP
         FvZ4oR6sx8fXhdz/+aqTAmmzPMmoMqDMJpdslRdotNFBKzs2gEKzZhaXy34Y0/yjXG2/
         hwkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753876028; x=1754480828;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jn5v3OPTVsl3N7aQ9eg+u74JOJMjyRDux5JHlURDcnw=;
        b=gf3FVZ5bVzn9U0QjqzNMN8XgfNZaG/5gzNRSYvKYmbgBjL+mWUbVroxMPXBNM+xo1i
         b1qoorGmVx91Fjv71o1jjUF2BEH/N5Rs4cLio33PY8JLGTz07k3eghlwEwln5zF7qbYU
         2aqM/IGrHOX7QDxQdmeAVh3PdhXFC7UNSOHT23XSf+EYNaoPjN/zdFO7WQ3WiBaPzpsH
         1ZMa3ZBYrnFxO5Nszl+yH3p4ctoCXzNNhPULQSCHUcHRqEWn6fiMqxMDj+V/69bDfCuu
         umoE5g2uuPQMrosa30XfHsk4dZrpO5T3VqzUjcKHgXj2xbg1iayc5LWiNray8oaMrzau
         YgkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMo7+lUiapTy4E1V7svYv7T1+IZz8P2R5kgQaBxKciACAtctyH6PEt3qLNdcEkr2IRcDmFoxWew1h2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1mpBooqucIKSPIcDbT4Q1Q4nDr5XHoD5RbwSDCk2VyqqHHoVe
	gsJmLlckB71kANmuPk1NuK09mlywnaaPbIP5RMzBUyjnOWhQCzNeeAOWkmmXF26sWDE=
X-Gm-Gg: ASbGncuz/HsuZ/DcoFex8NKlG2M4tgVL4od/VAl0JRQP/RTMV7m/kIE53s0tnqRXh7W
	kdJD36PYfHWkd+REWjhqDrTzmzTs8pOWaDjtqSSaOeUk1xGv+/CgVYKuHdJGYnFMxyFy7RQDmgk
	D9aOsGQK/bT0iKAgsC2lbD9HctNRCw0pSESIGDaiysBrUYjUtJiZfXuCOB/usvveIkY7NSFJWnY
	cNa2Hef9Iwewy8yQsthQ1mjwb9VH0NhYWzgp9Pcir8cC4imK2e/n3PaJqIjA54PJdrC0NmhZQQX
	2/RzgbV0pqUcAaTsyG2sT/jUjlDERV9jSp+wXTJBEkwYnk50FvBDw+soEMtIdT/0aUGaBMikZES
	D69HQWx/iDya/KeLxTgnO
X-Google-Smtp-Source: AGHT+IHK1v3ExXZ8hWrOGdu58iya/EE9SeoaSHxiXtWaABPsvH5/R+dj3WzTNqJo0SfmAMp/DjO+gA==
X-Received: by 2002:a05:600c:3505:b0:43c:e70d:44f0 with SMTP id 5b1f17b1804b1-45892bc5961mr25413485e9.19.1753876027754;
        Wed, 30 Jul 2025 04:47:07 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953eaeeesm24503235e9.25.2025.07.30.04.47.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 04:47:06 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 30 Jul 2025 14:46:48 +0300
Subject: [PATCH 1/3] dt-bindings: phy: qcom-edp: Add missing clock for X
 Elite
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250730-phy-qcom-edp-add-missing-refclk-v1-1-6f78afeadbcf@linaro.org>
References: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
In-Reply-To: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1529; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=2NokYDIrwQ5BnU+V5V62SNjLrSQQSy6xfJVad8Rvaj0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoigY0lwy32GQTK506+eiLem1WiCxhU9cw0z2R/
 O1v90rpfTiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaIoGNAAKCRAbX0TJAJUV
 VgLJD/4nCTf4Nvpw/joo2iZQElvFfsXIVP4LzsDsJAibgsIq0v9gQCxx3POJXlwnigGIIiWQqX5
 kQ2InqPl0myG95jVVX+Gam33PNJdVimTDcICVYJ4n+GtuZ1sR9B9OQiVJycGGOPceauVOC4Hcvb
 o8lkqZ93Kt4pi55sS5cN5+Kg8DVe+EYNMBhFAaDXSmM1umx76Ioio/C06nbPS9p2NYTjYNfnfJ0
 /DSDFJhn10xSWqFvIiLIVBNTM5vtTOv1OZr5z9NeLVU1OH1wrIJKFgDnYt3pDIx8p1KLWvVyy3F
 1z6kGb8oyqZbtmYJwpT081fCHildm/+mC9qvMwgmbBAiZripsa51PSKbWsqxUd8CO5kY96i1kgg
 XFGhnPdQX3808qyZLG2Nnz9QKrhegQ9KKFRxyNuuunPONl14cAvo1ukfDusI4YpF7fdLU+21r/0
 YNVblR2ufZCqKxz2WlRljArMSYOCngPkTja/FTBWBmw66F9Sgmp+pVem3FvAk8FdLelFe/P63H4
 nBUnUC7c1NJJ9hIPEqXqwF8b8wd33n3pgpG79uYm5qhqH3PtvksJb3+yT7pe2kmDotIlhfzxxVT
 Zy++0Xj2cNCg44N/ngm2OH2bIUKh27tDs9K1lsxwP9mblEgkFXP7WsZfC7FQJhtKw1kPwX0tYnq
 fhH+l+0rNbpNxfA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

On X Elite platform, the eDP PHY uses one more clock called
refclk. Add it to the schema.

Cc: stable@vger.kernel.org # v6.10
Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 23 +++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 293fb6a9b1c330438bceba15226c91e392c840fb..2e594b2ea81d385118684bf58da3440c88ca32b9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -32,12 +32,14 @@ properties:
       - description: PLL register block
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
     items:
       - const: aux
       - const: cfg_ahb
+      - const: refclk
 
   "#clock-cells":
     const: 1
@@ -59,6 +61,25 @@ required:
   - "#clock-cells"
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,x1e80100-dp-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          maxItems: 3
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+
 additionalProperties: false
 
 examples:

-- 
2.34.1



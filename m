Return-Path: <devicetree+bounces-189432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 31910AE7CC1
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:28:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C541D7B77A8
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59A12D9EDF;
	Wed, 25 Jun 2025 09:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="a/+BI7Yo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C89A29B797
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843149; cv=none; b=dbpcwgQRK6JcXtOOa2smrN8ZvETwjr6pIfcAEb9DhRaAS+zpAuKDqnfiRTe0VePw+XfW8/5U7wNEsi4pvT+sSnhifRZr7GkkPdcyXUvoWavSrNg8HtWI214ipFKlyWePQ2YtE8hOggOwuhspYC0Z2ee2DlIjyYTbug6SnWpTYT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843149; c=relaxed/simple;
	bh=kDQYj27AP04wPxwCw2z133BqhOfJY86iBEamyEFYjMo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NPvqfivA7qGZMBBe3KX9uKYZaEYz1P41t7X6vnAJDLt5YzDHTchFp+uxzJlZkteuManXGeMX12+tVE3e4FiplIF8eFDsKK05HLJr00CAuv6X0euTULVBAERhsAR5JtlMjgW53lJWE0o+fI8nn6eYXIR6pgSGnibTWJo8YdXLiLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=a/+BI7Yo; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-601dfef6a8dso9912252a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843145; x=1751447945; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/9uDu/IV5VbpmOP/ke1cMJdOAkM3pQ+53aaRNS0oGnc=;
        b=a/+BI7Yo3mTfZFUEn0bqdhsuIDxJybEtdJ7YWwPMKIjXnEKBcO+Dek1ZnewsSArkXb
         jy1bBWEQy9kO5r2WmTAj/ZFD0i5YaGU/1kTtThlnN5loOpm/q8NENk9zlPFe7NuMh7O5
         f3V9kH6gy9hCS1LRH4zsduyW9/mLlgGnb+7ejzfyP92WVkYp/u7D0xmClL4xW0cv43wF
         fY7nVS3o1V5p4t3cA1BwmiZEF0qCxPFrvxfMlWtGjpvMZmCLj0ZoePvXqt145Xhn5hpA
         jzEn2k4gJYTSN0TIMo4+KZVNW/+QSXuGmFY2rkDW78WV+PDG54jaX6iSnOO5wljlDkwJ
         w0dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843145; x=1751447945;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/9uDu/IV5VbpmOP/ke1cMJdOAkM3pQ+53aaRNS0oGnc=;
        b=mF59pBKrac9NiPEoyGYeT5DVxwOoY+SvEzhOnuJ/hZSVflLrAoVkG3kefpZdbNNuB5
         wUpCJL/Wq50zMwc9niIDyHq7Df6bM2q5OkWnLMfI18r0pv03hqsQy8ms4HPdWQykRC84
         WpjS1Et2/Y75A8ev0QP/CZTMCPrAca9w1AKRcGaYrTjL231E+pJoonu9197+Oz+w/AaA
         LirTxqiY6NuI2ojerIY3jyDKf+sebA4KxnxPhe2ggJoOAJkBL56eEJ4i5W8op8ODULL9
         R8887/7n2XBL+R5RITmAcGRxdNUKLZIIxmKqwDZhJ6S3Hpq2diXYKKfseiJBMjdbVwPP
         RsPg==
X-Forwarded-Encrypted: i=1; AJvYcCUL7ZgXvHpCEz0wz7vUffcbL65Q0jwViVkTc1RqQGqr4AV6zasH8DUN/xlnPViqSWVNh4iilIS3V1rH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9QWgRhGuDbnygB3DKk2wZ/h0FpfKDBcLIphNPcybQimNdTSm8
	pOqUNwQoOTrhmA3G6nvOcmETfuNRJYUWBuJE3v0TH/Y0CQTAoiBiJfBiKrbrVLWuL0I=
X-Gm-Gg: ASbGnctpMryj3egCq1WK9kQzqPFfXHGo/JV0gVzbNyghVs8KXrfmDlYt5cPg/wV4iWo
	QiKdZe5jyKON9fpEdIh9+2wI0EnaAEfu2pmXGWOR9lZya2ra3c1T8j71k4q+Uk7dPAhfl8PBwy3
	L3DsFnq8Zr2xSyEmKjKr1DFgNULgSp59AQJvKKX55Vc01ivbBfc8WrxP56wt2g2+n/6TikhCsCK
	9fOoCxqqXc/UKuhvXdd5OKPRwh9FALuU/av8++r5lfYIXXdrE24M4hC/zAtuOOV5hREcI54BeOa
	eUpZDUD2Vw2qLAISH28C5uwF0PjJbH9pYSWxR5/2wWn8v9oIOkZiC2GJoi7SqWJ163+94LKaTsZ
	PI0ivsBVOwovNVeBxAEDEbk7LsESg5zet
X-Google-Smtp-Source: AGHT+IEiwLuBEMrKG5klw3CrOC5eGRdldVU8lXLohlCG0bQdDMTOk2vu9M5XhJ4WsqHgxQZeCAj68Q==
X-Received: by 2002:a05:6402:26d1:b0:601:d77f:47d9 with SMTP id 4fb4d7f45d1cf-60c4d31714amr1534762a12.5.1750843145518;
        Wed, 25 Jun 2025 02:19:05 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f196f84sm2194802a12.14.2025.06.25.02.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:19:05 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:18:56 +0200
Subject: [PATCH 1/4] regulator: dt-bindings: qcom,rpmh: Add PM7550
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-pm7550-pmr735b-rpmh-regs-v1-1-cab8ef2e5c92@fairphone.com>
References: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com>
In-Reply-To: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843144; l=2084;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=kDQYj27AP04wPxwCw2z133BqhOfJY86iBEamyEFYjMo=;
 b=nPsWkKEZcFEwELUedXaDX8Mec7BYlcARiIA9hL6RwFy7FXpUar01Wo2yo8tG7MQ4ry7EgVg3a
 8R6WNv0B1QmC4Z+pQQCnoRnT36jbYY1LCQ0LqDgrs/sEwKYviJh8Bzg
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the PM7550 compatible for the regulators in the PMIC found with the
SM7635 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/regulator/qcom,rpmh-regulator.yaml     | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 3a5a0a6cf5cc7090f3e09850e9a13b7e6eeac68e..3dd150e5dad897eeb46e13dce5bb2726fdb90627 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -40,6 +40,7 @@ description: |
       For PM660, smps1 - smps6, ldo1 - ldo3, ldo5 - ldo19
       For PM660L, smps1 - smps3, smps5, ldo1 - ldo8, bob
       For PM7325, smps1 - smps8, ldo1 - ldo19
+      For PM7550, smps1 - smps6, ldo1 - ldo23, bob
       For PM8005, smps1 - smps4
       For PM8009, smps1 - smps2, ldo1 - ldo7
       For PM8010, ldo1 - ldo7
@@ -66,6 +67,7 @@ properties:
       - qcom,pm660-rpmh-regulators
       - qcom,pm660l-rpmh-regulators
       - qcom,pm7325-rpmh-regulators
+      - qcom,pm7550-rpmh-regulators
       - qcom,pm8005-rpmh-regulators
       - qcom,pm8009-rpmh-regulators
       - qcom,pm8009-1-rpmh-regulators
@@ -218,6 +220,25 @@ allOf:
         "^vdd-l[358]-supply$": true
         "^vdd-s[1-8]-supply$": true
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,pm7550-rpmh-regulators
+    then:
+      properties:
+        vdd-bob-supply:
+          description: BOB regulator parent supply phandle.
+        vdd-l2-l3-supply: true
+        vdd-l4-l5-supply: true
+        vdd-l9-l10-supply: true
+        vdd-l12-l14-supply: true
+        vdd-l13-l16-supply: true
+        vdd-l15-l17-l18-l19-l20-l21-l22-l23-supply: true
+      patternProperties:
+        "^vdd-l(1|[6-8]|11)-supply$": true
+        "^vdd-s[1-6]-supply$": true
+
   - if:
       properties:
         compatible:

-- 
2.50.0



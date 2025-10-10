Return-Path: <devicetree+bounces-225347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C11BCCBE9
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 13:24:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA6CA4215AF
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 11:24:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 870D52EFDA6;
	Fri, 10 Oct 2025 11:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="IO8I/tT6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79D628727C
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760095436; cv=none; b=sYEWtynUJvfoCDW1dmQNoJWBZU05iD68vZajcYc6oVZmW9CKcKTqYM3hSIPAX2FKrWvF8idsurd6qGB3Jgt04AyF48fOjDJdYaWQfLqMCDu583ZgpiOt91GqkwE0+IlAMqgThajCBp3oz7lQoARSFqVunsHyTcqZEH15slAGrF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760095436; c=relaxed/simple;
	bh=rN2PnqvN06c7mlTMsnkt8Ofc5TQdsHN0zxf8VF8tMcY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bWyQechWjvKQ30hYNF2vj6Hv1feDFgkYQQiBb8PXW774nJNucLAqEt58MyxEVQlPiVjj8mZyLeXp0NdrFzcqmDTAuhSXmb7eNLOIhWNaC7CD4F/HItmxS6BpGdKqsP+9vQ3Wd/qQa2Lw6RYXfa+5nFZjMMpBJWTuL812WiCqSws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=IO8I/tT6; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-636de696e18so3999616a12.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 04:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760095432; x=1760700232; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jjZxwkEE9XRYJeGqY5P3ejLLsqggmj8GPN1yD9SWCBg=;
        b=IO8I/tT677UDmGKAg/r7kbHtMkKKVyUpY6sWKWZd9EcX1j4LEKMio2otyjBDxr5KI6
         HvAGguJvbwiC5HyyUBLNW1rMqrME7xvin3O7UxbqKO48SFGq4xCAbWwh97SkFhHOITvv
         Fbd4WGx2flJDFor0BXHg8INIyYvEhthExvfdaZMob7j0XpeasdD9H+mcpG/7FHLCYIrD
         tVeGm7Ybm7K2oyhBnLXOlnDLy6fcCtDElLlVTzj4axBdqx6PzS1aLP+CYDoz8oB7PHtB
         q2k9DgZ3WRA06muim7eDprtazKIraT6K9YesmJrJm0a9hWOvdUFtvkMEzsZxZuIIGKz/
         5jFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760095432; x=1760700232;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jjZxwkEE9XRYJeGqY5P3ejLLsqggmj8GPN1yD9SWCBg=;
        b=U0EAhN2WKcHVgPu2utaSOT6nBCMQ1M1NUp5pl/Bq/jgQ7AoEOruUPh0rha42q/pWr+
         FwjJc4yW7uvLXBdFKlF+urnHpEBRH4UhmgNCiSIQwIVASi27GBblLNBZuwIu3U+eAguN
         xFnAH/UoY+ocqzaWoYE6GP9M6HQlBQnSGxp5TdTlw8WcnYRAXviHRWJYq++47llnX7sj
         TNXNUz8SyNMiYmXZ2o56ZYgUyAdxZVW6JZc+c+0/iPpuJWh4BtOovV1gd64qe+U3VJ9K
         wbwnfW3T3ovhlaKweZDWrqi39Gt0jJ2A+hz6+DMCYuYgBsyFq0CT5j+rewCHhItQiVvB
         n8Qw==
X-Forwarded-Encrypted: i=1; AJvYcCUvBk2rJZX4NkWanHaWW7E51eh/7JVtWd5joz65gFdHmKlo05zC5lifiu6rf8ChURMnbpZtSIHEb0iL@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk2W3NSyQobrG8vzqc5Vpmb7goNRhXiSU2mCU3KYR3XEJfkB0Q
	746j5r83v6jNWKmhfNpnDoTmXFdzNlUyLw1PvQXIkQx1FQsmh86n9a31hQwa1DkKo3c=
X-Gm-Gg: ASbGncvPoCwxNa1F+poOaLKLst0Co7jCDacPzGH35mfQqCd3e09q+Cs9XLxQ+TKCcYk
	KKnGKGLqvzG4tvUzC0jeeUb3QtC7g5eekENsUfnHbyF21ZjehbPrn1/qgaqXx3vjSJTKppuds+0
	U/E6rn1AVeBMX9Tj8HZK3DRlHve48QqM3JVNbzquL4+CRD2By8QAx2jaXiEhSiXwCLFfX7T/8uP
	Ampfdf8TzSSI359nm0uwGiIsCNTnKvSe7WT0d0ad7JlX5Sdoz1kEVnMPGf/CNm+rbngMbrMZyz7
	DeO00mvTm6pHv8cMNG2FGjxKufmNerU8/iQqV+bqut1n44XT3XVnHxnks9COCXVp2Ul0EffoMzk
	TRoBWUuH2Odu9VLNHul7nBQX20uTyTYHyiWrl1WAa/WBtjWLoif5IRQVv/Bg/B3Z+35m6wQ5mkL
	gHpDerE9zHGJ+RS5EXGGz9S1FiHIzxDw==
X-Google-Smtp-Source: AGHT+IG0l/2slu6V7bbZR48BMoHy5O2kIXbxky/cFnBGBo5QTAKOZtCP/w3ulfdBtRinJ5MOJJg6Yg==
X-Received: by 2002:a17:907:72c6:b0:b46:8bad:6970 with SMTP id a640c23a62f3a-b50abaa43b4mr1251023966b.36.1760095432092;
        Fri, 10 Oct 2025 04:23:52 -0700 (PDT)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d900bf8csm209905766b.59.2025.10.10.04.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 04:23:51 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 10 Oct 2025 13:22:00 +0200
Subject: [PATCH RFC 2/6] dt-bindings: thermal: generic-adc: Document
 #io-channel-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251010-bat-temp-adc-v1-2-d51ec895dac6@fairphone.com>
References: <20251010-bat-temp-adc-v1-0-d51ec895dac6@fairphone.com>
In-Reply-To: <20251010-bat-temp-adc-v1-0-d51ec895dac6@fairphone.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Laxman Dewangan <ldewangan@nvidia.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Hans de Goede <hansg@kernel.org>, 
 Jens Reidel <adrian@mainlining.org>, 
 Casey Connolly <casey.connolly@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760095429; l=1052;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=rN2PnqvN06c7mlTMsnkt8Ofc5TQdsHN0zxf8VF8tMcY=;
 b=y9o4c7jCYDMJNFUkH54nnz+m4QRI1hucrIu/e34bCKs0obhf5/NpX3CWg8CXfUXEpdGxzNqsw
 LlijOXkdwZEAyChf4nWCfOadjRUMdruziUetVwQ5wH+z9ndzcBSuFPr
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the property to allow using this sensor with io-channels.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/thermal/generic-adc-thermal.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/generic-adc-thermal.yaml b/Documentation/devicetree/bindings/thermal/generic-adc-thermal.yaml
index 12e6418dc24d..317fc39ed46a 100644
--- a/Documentation/devicetree/bindings/thermal/generic-adc-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/generic-adc-thermal.yaml
@@ -24,6 +24,9 @@ properties:
   '#thermal-sensor-cells':
     const: 0
 
+  "#io-channel-cells":
+    const: 0
+
   io-channels:
     maxItems: 1
 
@@ -58,6 +61,7 @@ examples:
     thermal-sensor {
         compatible = "generic-adc-thermal";
         #thermal-sensor-cells = <0>;
+        #io-channel-cells = <0>;
         io-channels = <&ads1015 1>;
         io-channel-names = "sensor-channel";
         temperature-lookup-table = <

-- 
2.51.0



Return-Path: <devicetree+bounces-115563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2379B006C
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 12:46:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C7581C20DA4
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E5B51FDF87;
	Fri, 25 Oct 2024 10:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZD08SGPS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF341FC7E0
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729853170; cv=none; b=fcFibjfmv7IAQATYoOQITYNX730/SqoYafWh2OAFuB2r2wBgVoUSG2rYPwuQJSxfHGaI48O75vK3vK+70hppl57LZ3ESmHDt7nGDr84AKE/7/Xy/0HMTBIPIy1lH4x/tg/+atSt33UaWOF/5dMOZ7gq96Wt2C91qCXfaJpZDNg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729853170; c=relaxed/simple;
	bh=LEnPFvnyQ5b9D3+6su2thKqg/1KZlfYf9MBK8xIMzjM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lpz6JZEDySPbWU2h7XYFeBxG3kAKYqSg9IW8XqEAzGGVHNRtkN16Vqp5/cdpUffl/77DR9O5V5T2uh6seUljidog4bnPGDpwlUDs5u3NbBSjdcPUIHI4IBe6Fc8I40TFBotmbz3VY6ZLooYpS0r60wy/wR3EWcKF3ATyZ+K/6+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZD08SGPS; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-71e5ae69880so1315811b3a.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 03:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729853167; x=1730457967; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwvSraMLJg1mpGTC+YokyY9uCOj8ssrQMVVeDpVPQnU=;
        b=ZD08SGPSkPWeEacASX4GKDKYVBHBurcnmcFe/izUS5iirhh6HAJBy21hcjAoG+AJ/l
         +NJXXk25/qCd4iKMgQCgJlxk2SeFA69ELTLzmmtaWBFql/asiJIDTqr1arEe+QrqBMpg
         3qnTAewXW6B/+GXwkycxabcWLmwClXDW1ojIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729853167; x=1730457967;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mwvSraMLJg1mpGTC+YokyY9uCOj8ssrQMVVeDpVPQnU=;
        b=wLnN2BZdfLHa5HThf/IQSkW3pR3Gc6smXoMOZf7oSPo11h/fxlexm/BV8FDXAU+jjV
         KoGVTdaWeTrlWDWkvnjEnKuHW6oFb5rluprjr+wt0CN5LBVmtibExA8Hr82rndkKO0oO
         PlKpwo7iWmK4tCs9j/ro7CuuU/KfJJo0+O4bItcp15SibArTKQQifrqJeZPnHrgh5Xce
         MpJic2zd6jOKZIEFW+3wkKVr4ver0N6QeZdBg2TenqZ5cnA/1cGegAQZdxSKHmmvrfFC
         y38om5x/IWTsQBuTh+ARGq5H73gq3k2nodm6CK+GbVBpV+Jd/cv+rm/8k/BSRvAcsmx9
         3eHA==
X-Forwarded-Encrypted: i=1; AJvYcCU3p9qH7fGI9uEBCJQFX23MIMqxI95mODX7AGx0aEvKWCl1SpIwIKhABDG4trbQqfyaIWMCNWpdVeNf@vger.kernel.org
X-Gm-Message-State: AOJu0YzfcEQMvsCprlboBRxn8kGYjRzSX48Rc3PiFvKuL9eRwNDv4tqg
	DJGIXc4wQRQOeF62y+QBYiZ4aDnZxMYr5Bcwa7ycO8VWynpif/sHPAdu3vPXSw==
X-Google-Smtp-Source: AGHT+IFZb7u6MhTnx0Cd0nGORaHx/jx1aDgSW1ziWHfbhnILcm9MDtQdpUvmawCumLhb1VWKs1mJwA==
X-Received: by 2002:a05:6a00:3c94:b0:71e:7a56:3eaf with SMTP id d2e1a72fcca58-72030bba11fmr12544536b3a.24.1729853167589;
        Fri, 25 Oct 2024 03:46:07 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:ebe1:dd63:343d:8a4c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0d089sm829548b3a.99.2024.10.25.03.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 03:46:07 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: Mark Brown <broonie@kernel.org>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Steve Lee <steves.lee@maximintegrated.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org
Subject: [PATCH 3/4] ASoC: dt-bindings: maxim,max98390: Refernce common DAI properties
Date: Fri, 25 Oct 2024 18:44:43 +0800
Message-ID: <20241025104548.1220076-4-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
In-Reply-To: <20241025104548.1220076-1-fshao@chromium.org>
References: <20241025104548.1220076-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reference dai-common.yaml schema to support '#sound-dai-cells' and
'sound-name-prefix' properties.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 Documentation/devicetree/bindings/sound/maxim,max98390.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/maxim,max98390.yaml b/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
index deaa6886c42f..5bd235cf15e6 100644
--- a/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
+++ b/Documentation/devicetree/bindings/sound/maxim,max98390.yaml
@@ -9,6 +9,9 @@ title: Maxim Integrated MAX98390 Speaker Amplifier with Integrated Dynamic Speak
 maintainers:
   - Steve Lee <steves.lee@maximintegrated.com>
 
+allOf:
+  - $ref: dai-common.yaml#
+
 properties:
   compatible:
     const: maxim,max98390
@@ -36,7 +39,7 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.47.0.163.g1226f6d8fa-goog



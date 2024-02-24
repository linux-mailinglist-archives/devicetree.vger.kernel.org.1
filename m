Return-Path: <devicetree+bounces-45494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E17862375
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 09:40:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4AB41B22DBF
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 08:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8714E17748;
	Sat, 24 Feb 2024 08:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ahfaYAbg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17EF12E43
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 08:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708764038; cv=none; b=pIpQB5u855bYWRk/Z0pXMs+GPkD63VKc1LSQ2N5iWD6nS/yrirh4QSdvVJp99yPEcymWk7QqpI4bNszFYtq2axBaQX4rRc17R5b+7+fOzBpAG3kffWTxaeZ12ZBzbHOvombE892mYl9MyHOpQqt6ILqyAjTxYnWjnmYLPtzDYrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708764038; c=relaxed/simple;
	bh=3z820TJbtI+JkTaunuyY8KneXEkijMZdirDZ3ALyoxE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CxgpXuOIEhxRyk3U2ZmlsqgZp8a2FzgMbTMC0FMRJHjyEJGU/ka0ixCCaArECQfLSiC8SNTBame1lx4uYKU/VOhlWQfFIi6C5/V5VaXjP3eEGBnFRTSPcrfUKObpM7KAx39DByOQ2rxFJ9/3br5RAFvQwQlKTi+f7nLlG7lVVDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ahfaYAbg; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a28a6cef709so240700066b.1
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 00:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708764035; x=1709368835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tvqawZ9ygDjhiPYZxdb1Uc7mVa8dFfUQ9C51G1qDKwk=;
        b=ahfaYAbgpWr8lOp6M+TnnFFp36rBoqBk6riAW2Kj6k8FIvVCWXfl2FLSBKuFuGF+/M
         iYA+m1UdMCH1yexScHM1u3DPpYP2QDTLXNWEWIs2bG4RTErOygNqlrDKB9piBTB2TVQJ
         2Nsd6/rvuND1UBJk3SR1r5BJIoRMmBsnvSOveTa2NrTMTzcIOLay15DgavQrTpZZUpPP
         KY2zanZz1sXJQ+CipaMUs5baqnp5SzBoInzU1p+p4LmjHCn8hgK4rD0+8uVeGEjmCzz6
         ZpE0awIoOSIT5wN6wmyB/r1fS3JHf06mCBk1PHOKfyNH/6MdR7vOc0qo+FXJbb7r8qQR
         AdPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708764035; x=1709368835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tvqawZ9ygDjhiPYZxdb1Uc7mVa8dFfUQ9C51G1qDKwk=;
        b=jGiwmufOIWyHmacv7R+TQoGU+u/kN3+0PnPE1EiWL7BHFx5+HlWIFRNIXZeO2abgld
         9Hbm7wTKPikSxFWfRXuiV1HBtXF/abjTMLpv+QVKePZTPnEoge8VbYjueqsW85d5MRP2
         wQG/naLyQselIZju9OvxI1arKaE9QIEz5e5j6mv5sN6uPIaJB2Uui8TBD/Hr7Otfsgnd
         /dUwg037IqXTYx6tLHdHdOez4QnJTG3YwBZEq22kI2pA0ZpKTr6Lf+83cU+ACpd7BPyt
         ssc4R7O/mFbAInEpWgyGxRb3yOJX6rOWv3ihRLvD4yY6yzgWBIC4zg/n3A1rVj7qxGlB
         /nhg==
X-Forwarded-Encrypted: i=1; AJvYcCVfiDgVA0Q4P6vBBXi0E4gmkWew4lxxBWe0FuiAjIRhI/9YkGoUEMQzg5CqiFZb39b+cZhE1/dywi0ihCJmRR6T/krT8wYkuNqpsQ==
X-Gm-Message-State: AOJu0YzQfZiihqE10Nhu2fXqZ5IE/WGXW9FbKm9Qz8UqmSzN5eaHTKhM
	IPCejjrDXfTTz8KKv6Y6ng+IXq5MeVYZEVerNmRkz5LOHYMKmyP17qPwbygOnys=
X-Google-Smtp-Source: AGHT+IHAwGjXBcDGP2KAJcCWK9exavRgEnO2OcRh7YeXyWgAz3BAcuCgKV1VWO67ifgufDpx8bwbvA==
X-Received: by 2002:a17:907:101b:b0:a3f:2c1:9887 with SMTP id ox27-20020a170907101b00b00a3f02c19887mr1242161ejb.21.1708764035192;
        Sat, 24 Feb 2024 00:40:35 -0800 (PST)
Received: from krzk-bin.. ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id c17-20020a170906695100b00a3dab486a19sm383309ejs.118.2024.02.24.00.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 00:40:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: arm: amlogic: add Neil, Martin and Jerome as maintainers
Date: Sat, 24 Feb 2024 09:40:30 +0100
Message-Id: <20240224084030.5867-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240224084030.5867-1-krzysztof.kozlowski@linaro.org>
References: <20240224084030.5867-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add rest of Linux Amlogic Meson SoC maintainers and reviewers to the
Amlogic board/SoC binding maintainers.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Entries ordered by lastname.
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index edbc21159588..949537cea6be 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -7,6 +7,9 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Amlogic SoC based Platforms
 
 maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
+  - Jerome Brunet <jbrunet@baylibre.com>
   - Kevin Hilman <khilman@baylibre.com>
 
 properties:
-- 
2.34.1



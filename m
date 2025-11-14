Return-Path: <devicetree+bounces-238673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5F4C5D170
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:24:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 14FBD35CEF3
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:21:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8F113191AC;
	Fri, 14 Nov 2025 12:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="I933hu1d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CE53191DA
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 12:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763122754; cv=none; b=BtugoMXS/6wZ7DAUMkPEIizCLH8EemR1HeDplj/CmyuQqmQQp9/tvqChDIRJa4swnTc+w+E2j6p8NXHCMtHeyrsWyTu+c/lGKNkLicDcZIULhkoFyOQCE5HN9QQ1v3AumVucH8l3L8xm4ks9KPP5c5NXJG1AMduYqWbB6r4yTdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763122754; c=relaxed/simple;
	bh=C/tgHBEMS7lC54F1l05FDdUUbx+i2inD9Tlr30ZzFM8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RBNzSxLy7VMLhatDIyepCevNZRisSZaRu7nK5yPpil95ax7GRC/FU5QWflVtX25WI9dGkw8EQBJ5GXOFenEDqoXNnzjVDAKz/ULSNSFOvzk5oWIoMAtGnb4xlVNS+UJ76Jzkiw/F/tGS6ZBEmQXRS8wtatly38IczddzNmZrtOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=I933hu1d; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b736cd741c1so97082066b.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:19:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1763122750; x=1763727550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u90NAsdBNasBuoFf1cybakUudwJYTlK8TE/NRm955hs=;
        b=I933hu1dNu1pyIZy/RwkNPSps7v6epasv+it/29ZixigwcZAx+zxbbmfic6xQrJh/D
         0gJ3B/6wNYvKWzEEGhbYN1DEs/aZM563f1nuearQxLsE06VrRCiIo1k8YHG9ijarYOkc
         7waHNXWGXIgNAV9ByJxICSh6Hm2ZCz8zM9LwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763122750; x=1763727550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u90NAsdBNasBuoFf1cybakUudwJYTlK8TE/NRm955hs=;
        b=v8L6h1Mg78ZhADYdM6nmyMj3IPETb40w8/oPpZRkQcETJV0SOQ3MmTxwqWLWqoBRUf
         D3anAPgqNPgk/NHSRMe/B8lwr11xV2C6nMz1GBqHyRbJR/GxzFM7xjUn3PPxYTbkrTMQ
         6Kgkm7+ToB1WnTyhjX5IN9aFfAPiHdP3KJ/X1o3VgR6IT81qr1LkwOykm4JA3gx6gJ0b
         jttGnOGNtCSZtT0VXdQk/2iwcUmQtV+eV/iMpcLnFp6e9tJYkRRW87RE35qPa0wW6uUy
         7tfQvxLz7pPGUf4og1liT6piC/u9izxTaxpthzQBRN1Pv6PEFUpfeixi0WFJkRXP0Kbj
         t8CA==
X-Forwarded-Encrypted: i=1; AJvYcCXZ4lZR9pEPT0qCPtd8rK/RVacWbGvtGTOxi/rrnBrSy2mJkMJPkUcwsAAhucnA1R7wqlU1kQMSFI15@vger.kernel.org
X-Gm-Message-State: AOJu0YzslrLW2egA2ZVgVVqqXNF6bERF91E6ACG8zZA+apuGQ2Vu5Rhr
	wVhKu6c+SdWGcQ0XFeW8/pw15/TYuq7SYLswLctd517D5YOaDi3X5Th6+oBML9Rb4Qk=
X-Gm-Gg: ASbGncsxBL6mDVkwTZcLIgRnCMdtcFhEw6KDpg732Z7NAOomyWa4ktjk9FlXkGMYKiC
	RsUo5D4BD8Tn2wth9f3E5GMLHASflN+RZrfPq5Do+yN34B0PpH6HRHCtqg0nrkM0c4m2Z/RuQaZ
	x/8mYe6b9/cgbu6zMlUtccHINYCeICgVbQ50mN12fqqQsUS/iuFGswxaEfuKIqKUvG6deSFGvQt
	8WUiJHERqzEzqYgwGA68tX4MC+E4s8yD1/kb2QepNzLr+WTY5bQdg4D1C2e62Cz7NHH+tVLAyK6
	N8RHJgI7NvT1/2Rf/ONOWE6ohirfSlobLLzEg+HLKgc3GW5ynq9272V7qAPx5wu/Rxwz6BsfpBJ
	9zLxu/PQ2O4uOFmF1N91DukP9dFnf8J6OKXOBvMv/lLFV1cM7Qlt/nAqPIpcEZy7foXdb5JNTyo
	yQZjkHegUsKRDTsEGhCBOxrzguWpgESNS36U6t2JBUi0LvUAHchfyq0dne1RNX074AiT5fem/EC
	BJoUihf
X-Google-Smtp-Source: AGHT+IGsHmnSIhpWtHLoB35t9TtSGdohvRhU+DpPgTHUuRWxKlnSUCRa6zD2ZLZYgRuc/phSInmncA==
X-Received: by 2002:a17:907:7f09:b0:b73:64e4:2046 with SMTP id a640c23a62f3a-b73678f4734mr288988966b.33.1763122750026;
        Fri, 14 Nov 2025 04:19:10 -0800 (PST)
Received: from riccardo-work.fritz.box (host-82-52-164-74.retail.telecomitalia.it. [82.52.164.74])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fed6315sm375295666b.64.2025.11.14.04.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 04:19:09 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
X-Google-Original-From: Riccardo Mereu <r.mereu@arduino.cc>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org
Cc: linux@roeck-us.net,
	Jonathan.Cameron@huawei.com,
	wenswang@yeah.net,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	nuno.sa@analog.com,
	chou.cosmo@gmail.com,
	grantpeltier93@gmail.com,
	eajames@linux.ibm.com,
	farouk.bouabid@cherry.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	m.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH v2 4/6] dt-bindings: arm: qcom: Add arduino imola, UnoQ codename
Date: Fri, 14 Nov 2025 13:18:51 +0100
Message-ID: <20251114121853.16472-5-r.mereu@arduino.cc>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251114121853.16472-1-r.mereu@arduino.cc>
References: <20251114121853.16472-1-r.mereu@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Document Arduino imola, UnoQ codename.
Arduino UnoQ combines Qualcomm Dragonwing™ QRB2210 microprocessor
with STMicroelectronics STM32U585 microcontroller.

Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..1af19245b1d5 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -336,6 +336,7 @@ properties:
       - description: Qualcomm Technologies, Inc. Robotics RB1
         items:
           - enum:
+              - arduino,imola
               - qcom,qrb2210-rb1
           - const: qcom,qrb2210
           - const: qcom,qcm2290
-- 
2.51.2



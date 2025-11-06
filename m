Return-Path: <devicetree+bounces-235877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B477EC3DB67
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 23:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A3FD44E4031
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 22:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD4834A3BC;
	Thu,  6 Nov 2025 22:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XdvlU66X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8BA2E2EF9
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 22:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762469980; cv=none; b=HP1z1iVHoeq8mSjBDJbNmee+u0p9Hh/j/aAeaCwaCTZ2eZGRbxdMMa54ue+3A8NUQ1zciYQYyIqYLUPgOy/dKe5UWzV4SlsbLXrjCqptOYhkQrPswKua/zFGwdoQFU0jBDqtbuZvSRHN7aXERvfMW43QvT5NL8IXksukWyPkvxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762469980; c=relaxed/simple;
	bh=iFfgKGXsxXqqbK/r1KQuykijR7+PTg19keFMmyCyV/c=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=AjStuhDyFLsDJFub1a5Up9Q3X31DeIZsuPJ6f5+6kq8aB6QytMxz3vWo2YXz1UgcDdiUX5K3us2li30TgaayJrX9dOAuUGMFbVarw+AjZJNnavfsCIRJS52ij32Jber5YiKIKUqmDeCpdicvIHis20TVurjGfhMe5DlwlAr4SUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XdvlU66X; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47755de027eso924275e9.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 14:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762469978; x=1763074778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=hi+9G52pGopoyYkFySoeof3Qn+i2cqX8N5/nDU8LmHc=;
        b=XdvlU66XZG2f0KbIRjcpkYjKyaWtcWqyh5F3UoI+Kw/2coHxWSUBYX9AfNMHLoQR1s
         /yDowRKhKIWZzi/ludKPlYzFqVCdjIKUcDZMeqdAKEXvABubvLjtoWPQL5ppEySF6/4z
         eJGMQK0FVuPLpGA0Nh7Mf34NkcvTFkvhNEdAPfjCZNIK9WJmgJu5JsioMHTSlFca4v/x
         TSGMwfTq/Wt/R3Ql9j9A54+Gay+udE8JG0ljy/axECGyWO7Eg2xSZVsmoHp0xld6jsdQ
         nMB8AnCzdLDw3/7QuAKhedik5mxARc9VZbUuKjnrY98hcczQA9hALocDlwmiww53c6eh
         djzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762469978; x=1763074778;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hi+9G52pGopoyYkFySoeof3Qn+i2cqX8N5/nDU8LmHc=;
        b=lkdujZU+rjNRZvzGlyPSJq5hmEbj4dCgEUJ+CO958ZdGDNJmGleh2Dez/FvfNvrEQy
         sPz1UZcocReiV5PuXHva+VQqGuldr+KMaGQcGQ1xzFDie0F4zwZgBogo4V/fZTrADf5M
         iFP3AenBXS53F15okc8TS/ZbAnDuzA9u2JrmzAT3nfjLKkYm7A1vEi7Sp5gb1To/Kgi9
         Af6cP7k2+8ZV3cRva8UWCRITnUU9AZf5Ld9S3+0gBQsIo4mCE2thbqqdKZGo0aq7eYhO
         agtqGTwyXv3c3E9wW6t0DAnEuP9NhtH3YFQZXK5POLxdKv/NqVcXg3VVknhCZd5ZNsYj
         BcXg==
X-Forwarded-Encrypted: i=1; AJvYcCUa8FIVaTZhAw+aVwjFtlDhoPyxB3fErWXQz/ncvg0XxuC6EWJfzT4qwNoVCtUtljW3f4J0hXCVSvKu@vger.kernel.org
X-Gm-Message-State: AOJu0YyxbvwC0/R2aNNtqBN9hZ0L5IDYEv2ot1f4uEwJCzd1pF28AR6E
	MtR8TxiMfOPyR7qDIr/hSOVQdHbvBEBCNFkKVUZUD91gqT+5GHgT6E61
X-Gm-Gg: ASbGncsZLkY9IQvwD7SgUgqPV/c/rHfQFEpe+E+aE5EemEGN93tww80Z0kVmG+LOJKM
	CftaPgXmGbEGHhZCI/SPQzCYB6nVZZsp7QQuOZFjTCUTtEkctU/KN5CewpWv8+MGF/1/mulNNmY
	F0ZV1gzy/ab3H530r/UlPoNv0aNLxgweqpwUAZe0ir1ix/sbVb2lYmfwF7XsSSLVc2a8EsMGZWI
	tfXIrF5TJpfwo/gRUJQlJH8qdW86PHiHEfmQz89TZaxPwnkvPr+WahK8TxyMgxqh22KBMUI7QYm
	way5+D4lnhgw8UV8P/2mRXDZwkyyinXs8vdUts/N5KyhjCrkO7nnbdFM5/Q4bmMJWdIiGOWuzes
	qbottSJYUePSehjRNN6vL7jrUDN+sq2g8ROVKxVHudGsD4ppfWAqOKaNxU1nYjQWoZ5r7M9KLZV
	g2oKULEMy/4ZSkESLpX/dZgff29aoUrQ==
X-Google-Smtp-Source: AGHT+IENtlLcnvy44GLQGVYhK7qjs2eOpO1qdt6HoWtPgjvFNjDk1DciOd6xmPl52n+wvIT69vB/Yg==
X-Received: by 2002:a05:600c:6305:b0:475:e007:baf2 with SMTP id 5b1f17b1804b1-4776bcc756fmr7905035e9.41.1762469977539;
        Thu, 06 Nov 2025 14:59:37 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42ac6794f63sm1640000f8f.42.2025.11.06.14.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 14:59:37 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 0/5] thermal/drivers: airoha: Add support for AN7583
Date: Thu,  6 Nov 2025 23:59:09 +0100
Message-ID: <20251106225929.1778398-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This small series implement all the required changes to
support Airoha AN7583 Thermal Sensor.

The SoC dropped the Monitor subsystem and only provide
temperature reading. Some generalization was required
to at least save the common code with also the help of
reg field API.

Changes v3:
- Property use chip-scu for thermal sensor
Changes v2:
- Update DT schema patch to implement dedicated schema

Christian Marangi (5):
  thermal/drivers: airoha: Convert to regmap API
  thermal/drivers: airoha: Generalize probe function
  thermal/drivers: airoha: Generalize get_thermal_ADC and set_mux
    function
  dt-bindings: arm: airoha: Add the chip-scu node for AN7583 SoC
  thermal/drivers: airoha: Add support for AN7583 Thermal Sensor

 .../bindings/arm/airoha,en7581-chip-scu.yaml  |  14 +
 drivers/thermal/airoha_thermal.c              | 368 +++++++++++++++---
 2 files changed, 318 insertions(+), 64 deletions(-)

-- 
2.51.0



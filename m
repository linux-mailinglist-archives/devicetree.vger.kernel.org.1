Return-Path: <devicetree+bounces-174687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB032AAE1A7
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 15:57:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B3384C2006
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 13:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB68228A1CC;
	Wed,  7 May 2025 13:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="lFAhvrr/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DBE289E33
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 13:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746625926; cv=none; b=q9UMY2pMtVgFxXsaG7ZDXAhwQWPYZuCZtSg5WOYc8aTAzEQZ1nH5R98yLORt96RsC1D/6JWSneRi7IqdJF9IEjE43yOrxKsnrkKTcb/62uVKufBuCWkyn0M/XZ1vKoewMQ+T5bumXeTQ31mJW2BmMq+Oq/clqizEaGtNbWV9vao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746625926; c=relaxed/simple;
	bh=5LLKe8a++xD2c3tJVJ8drGjnk/736Tl6kXc3j0/ObLg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sMX7ryPPJR7ZCz0sY5euCqDuTRRq6vS+8j6y84rxf7LiYtfCSOVsiFv4sepc0ChP4OlJcZGRybV8o5nG8OGXSS/fgyVQVfMcgJpinsRhkTtE4ndedHoaxPyfU2bOEv/gK53LmZd9MgElA2Rcrg36cGP2VNUCfqIjEJDebE1i/Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=lFAhvrr/; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5fbc736f0c7so2366383a12.2
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 06:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1746625922; x=1747230722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7GeKwUyzeFoIF4XHNI7B0gCteSiC3k5ZfaiHzje0KNY=;
        b=lFAhvrr/x2lCs9AaM/SYfyToFSb5i2OyrG4DEJm4NkxKfoRAsd3erSklk/W8AJ1JMM
         mUJqPvjfLN0DXTjKTDqhuenAUbGp6bEPixhKMk/TCst8b0MCfBrTVhElgkJAVv4WEkQ3
         ACgZmU6p5+YtfDKuJpo0xQg/imF8f8l7hezmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746625922; x=1747230722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7GeKwUyzeFoIF4XHNI7B0gCteSiC3k5ZfaiHzje0KNY=;
        b=EHzkZFDB7TLq3Z/xVWsuBGioGm9Uw7aYSFVVW2XqTv5DpS56VkqYuDBmufsEvzTLZj
         f4j2PWgTWwQIW4bE30jGwUNtoTXL6HGVt9Qo5HzOaPQE0MIghXQu7hI/z+qr0Zt3Zh8a
         Y/+3pRv5cgtCHV68s9ltN5oeGYod8OOIj7g05pnK5+apwwQt3awvHc1Si4miriddrOq5
         jZWLHkwUzhJf4cEkI12PUk7RQwjp6zifnLrW6PKXW/Nb6QH7m8BzYHvwu+JE1a0r976f
         rzd2kYQc7Wq/xiphoajlPM7z9V6Ac3sw5WBEHeTk0AckQRIFPMrQCyeaPB34eiHiw00g
         LaHg==
X-Forwarded-Encrypted: i=1; AJvYcCVh7MBW3wUOz99u7A87lXg0tv+o44QeMvXYsE1Ho9KXv7DpNPjhYMVpZBkdx62tjYDBzcWWq7au2PC3@vger.kernel.org
X-Gm-Message-State: AOJu0YyiVYwvCOhizBvgbS45OWa9AoGEvq3p4+IPVniSeJmppdtsHAuI
	L91UNlwNbRjkVnFfOmoDhXPJxA1soIyIViARWIPCowpA1jKTZFJfdc6Rwbb906g=
X-Gm-Gg: ASbGncsHCC30axKwbNjwy3xpKX5tX1G9TWMJNgf7A0DYOA85xqThFeCyQvUZf1PF9RR
	dvWou/hv+dh7lfxkFc/FebJjZCo2U/JyO4blPWvPqfaM7vZi1A6I+9nyCa33fWTLNbp0j+Ywnjk
	rdVxX4t8GwD9ByazLmp19L/EBD1YSnk6VkvVkpttZuIOEdyJjaXM9If8WUNIxtFxmFKjVFfVwys
	kY8l3/ujKul46c9yVrWn79fkTrV73t54enI6L6/H/7N6QharrQJTQ3GBQ0wEXtJGAqpMuFA6WBW
	NNlV9yqjkuqGd+VBAWqIKI+GNo1gRvkk2In9RjCdFrXTVeLd5GCPBkmr6wGe+Ia6ssGPu+fTqRs
	AeMGSSwrnKCTtyN+a9xqwdC0GihbBzA==
X-Google-Smtp-Source: AGHT+IF8nFh7Jj3E3ztZAdeC2ct0kjtnQ1x6LvMRae+EEiYHTrZbN6TQQ4YbOvTXqTUEGvOdOJzFVA==
X-Received: by 2002:a17:906:bf47:b0:ace:6a18:595c with SMTP id a640c23a62f3a-ad1e8ce4c1emr334611466b.16.1746625922122;
        Wed, 07 May 2025 06:52:02 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1891a6873sm920845266b.61.2025.05.07.06.52.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 06:52:01 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Mikael Gonella-Bolduc <m.gonella.bolduc@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH] dt-bindings: iio: light: apds9160: add missing type definition
Date: Wed,  7 May 2025 15:51:38 +0200
Message-ID: <20250507135147.1328639-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix the following warning:

 Documentation/devicetree/bindings/iio/light/brcm,apds9160.yaml: ps-cancellation-current-picoamp: missing type definition

raised by command:

 make dt_binding_check  DT_SCHEMA_FILES=fsl.yaml

Fixes: be464661e7532 ("dt-bindings: iio: light: Add APDS9160 binding")
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 Documentation/devicetree/bindings/iio/light/brcm,apds9160.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/light/brcm,apds9160.yaml b/Documentation/devicetree/bindings/iio/light/brcm,apds9160.yaml
index bb1cc4404a55..f9c35c29fe04 100644
--- a/Documentation/devicetree/bindings/iio/light/brcm,apds9160.yaml
+++ b/Documentation/devicetree/bindings/iio/light/brcm,apds9160.yaml
@@ -37,6 +37,7 @@ properties:
     maximum: 63
 
   ps-cancellation-current-picoamp:
+    $ref: /schemas/types.yaml#/definitions/uint32
     description:
       Proximity sensor crosstalk cancellation current in picoampere.
       This parameter adjusts the current in steps of 2400 pA up to 276000 pA.
-- 
2.43.0

base-commit: 0d8d44db295ccad20052d6301ef49ff01fb8ae2d
branch: fix-brcm,apds9160.yaml


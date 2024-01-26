Return-Path: <devicetree+bounces-35512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C598183D9BB
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 12:55:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F10D1F247A3
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F8CA17BC9;
	Fri, 26 Jan 2024 11:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="bEHO79tw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C8B1AAA5
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 11:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706270121; cv=none; b=MSW2FScqI8V1eSZezLblCnltOrgguY5/sXYYYzXf2Ums8Mgbjea7iCrCO4vtRE3mtjqoI5Q9bUhlfQWr/gv89d5T08vnoDpphQRgq9KGUxJ8uq/I5dzRLxWBsns2rSj8DeqFrnd9PL4AZ8VeV3k6m29q8WrLIOiwV5Sp/24eEVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706270121; c=relaxed/simple;
	bh=KvDW3oimirzaLZ+3LyQ7tjVmuNkF2WsoEwGt2Ec9I+U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NMKqlAPT93k0K2oQNA6hR8uQNH1mpxHMR9h0KGGEMQn1I8m/r+qsWnGwgW+MTT22TGs9lzFx0E82+yFJrGrHhvQwT6z1PrzGSp+aZjrZE4+wYKlem8Lb+UlO+CRO4MO2v5DCukxBWI1OPFGNvQMpNA88eq330LfNX9btFGfaXHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=bEHO79tw; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40e7065b7bdso5309345e9.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 03:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706270118; x=1706874918; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5YD1avWXiDmKVPhJNDv4Z+Ew3Vz4aGu7X+vQARwJOeU=;
        b=bEHO79tw3TzVQ2l67Em3pJ1i2WQahpxukP6KAly1UgAx260fqefLl3M98Da/7ioDNF
         XWKoB1dzLEVQX8XhRR5Y1ynSUPBqF0+v0ONgwFhf5e1mrEQfFRRSkcjiKxCyacQ0DsS5
         PrYP5/pnX2ElLzFAruz0byazQKEU29EEM9PlNDPGTkf+g1zhUlrfiOtR0jVeDZLDyyOW
         eHLNSNikLwUS2qLA9SflP7LcPdoDTqB4gL4jvLB2CAUwC6yyzZUP8rYR3jNNSmebcC1j
         ZOlCGl9OO+199o2VGsLo0F/6X1ktu5HxJpeME+CPpZJsXIhFAiYzu62Coln5Az+pxbQi
         uSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706270118; x=1706874918;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5YD1avWXiDmKVPhJNDv4Z+Ew3Vz4aGu7X+vQARwJOeU=;
        b=t0h5QI9ENPq6eswt6NaM0OgZ4nNKIDUK4AChImk79DXqIMSnKSRmfUAvHVvDh4UDxC
         CnQJiLio4bz8H5K4RawOgtWRB+WpF5FpEFsrhmQVxE0I1yB4jb2Ar4sn1c1pJzspklIV
         oW9ICmXwdlklsMiwDx9UEijYec3BuSc6unl1y+emXoQH6QsM5mFp1AtjkQ3p+3VEWuQ1
         sdAOcWAgSFoij6yQeX9GaMRr0fbRUHPCvxI54haPSkt9/nyuZLjx1lu/+izL8aKgGLhT
         NxXIuiFynoUJRVJaMobxfFv1ZKmNQZXPl3HqQLE6cXXmT2Lc5zfCLQg9hJ7zKcZSiwfw
         500Q==
X-Gm-Message-State: AOJu0YzQoVToS6X3kgn/gvkT1cuKVhe05hb7iQJ4iFqOLEK+YW1wL2aa
	EJug7luAbDTC2BkZDApJP+hxHOsydLz78Zg4tgl4NVIZ75fV/k8tDrElzupqh9A=
X-Google-Smtp-Source: AGHT+IECraYXk/gis2PyyZjpxoZQsQq+NsKnyjHm2H37sX1KMoJpc1j7bNxvr2bN1NJQpzQfiVhaCA==
X-Received: by 2002:a05:600c:3548:b0:40e:d5c7:8355 with SMTP id i8-20020a05600c354800b0040ed5c78355mr466668wmq.131.1706270117801;
        Fri, 26 Jan 2024 03:55:17 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id f11-20020a05600c154b00b0040ed434ef66sm3387424wmg.25.2024.01.26.03.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 03:55:17 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Peter Rosin <peda@axentia.se>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: mazziesaccount@gmail.com,
	Naresh Solanki <naresh.solanki@9elements.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: iio: afe: voltage-divider: Add io-channel-cells
Date: Fri, 26 Jan 2024 17:25:08 +0530
Message-ID: <20240126115509.1459425-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add #io-channel-cells expected by driver. i.e., below is the message
seen in kernel log:
OF: /iio-hwmon: could not get #io-channel-cells for /voltage_divider1

TEST=Run below command & make sure there is no error:
make DT_CHECKER_FLAGS=-m dt_binding_check -j1

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
index dddf97b50549..b4b5489ad98e 100644
--- a/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
+++ b/Documentation/devicetree/bindings/iio/afe/voltage-divider.yaml
@@ -39,6 +39,9 @@ properties:
     description: |
       Channel node of a voltage io-channel.
 
+  '#io-channel-cells':
+    const: 1
+
   output-ohms:
     description:
       Resistance Rout over which the output voltage is measured. See full-ohms.

base-commit: ecb1b8288dc7ccbdcb3b9df005fa1c0e0c0388a7
-- 
2.42.0



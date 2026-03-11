Return-Path: <devicetree+bounces-273785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJDwHtLIsGk8nAIAu9opvQ
	(envelope-from <devicetree+bounces-273785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:43:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA47B25A753
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 02:43:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7ADF03186C35
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DE31370D64;
	Wed, 11 Mar 2026 01:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nnx025kN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C31236F427
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773193398; cv=none; b=M+BD4jOlKkTo/Uz+1ylOKoqfTlhOqPR2vuju7SSurexh6E5Cnw+/z0qhoFThHcnokeo0k0pNafQyMWVLZxZatPRuh1hpTPt2tJ8Z3eAGa1M80ai1uQsYLD1ZsSJQuBOppmA3e4ZnQQczAVJadlZ8oBAMVZhfmi1m3J7CRDrr2mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773193398; c=relaxed/simple;
	bh=TvSITG3LE+Bng8Cblqu9isE4WnwGXqZ9Iao1MqgYEdA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Hf8Mf9nXb58z6LZHoYPqsjv+eO3n68RQMVVwQA4F52vtaBopH1sMRWb/IyQt1XzNKPAlIeZXPmtVadF0HkywDsK++nXLEKFJvRouKM1+H/sB+i5fqE1+3g/HXLkYNWq+OXLGIit3HPpRsw9VTbbykrHfkwQNRCmT43q84wXmuws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nnx025kN; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-35691a231a7so8475925a91.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 18:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773193396; x=1773798196; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Ri1ylRQmHD70sRz0GnPg9oFsVJuulpHnpyaFrZpBYQ=;
        b=Nnx025kNSID5wOTHB0nfZY8fok1FYhGNCbHJyiRB5PpuKSUibw20o78ixAD8eQn7gs
         BIVzn1eUdudj53/gZvW9FJmL+DWEiCx3jIh9QkzFr9SCKT6UgrfFbWKJb3xQfF4SS4q3
         8wLcsETd4A+dxPii5+7V/TDiSXDWDhaorXoM0qM8UAEs7ime7jFdMgBZ0YC+KFReOqV4
         8BSiOaEJV02VUcrRXONJwri8gF1mJo1/VNmgaOBe33OpO8CEB9/j8ZTNnnDMR6qUIa+A
         7HnASKQ817JQNC/wwr0GN3q3iWFeK8l5ziBCLc5oZwwWUzMg8XR2mUK1oAA1lH60yg46
         4Mqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773193396; x=1773798196;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+Ri1ylRQmHD70sRz0GnPg9oFsVJuulpHnpyaFrZpBYQ=;
        b=EbBNUwGE33FbV+8y8i7rcGnscZynnNwUO0vIVPg45PKv5y56rLT3FgtN1QWZAZ3jbv
         ymgTMY+Yo0vpPTJeqhW2vTywiV68ZE/nBfHLOWm/E7TNzY3b6gr0b61e/WLD0dgGQQyC
         /8k+aAOBJcF8lLMQoXvhfh7V+kUO8pQazox53z2vc0PlPxZ3RCd8fpYjiXErYNa3kkFm
         u9p/GLHJM7y75z5+IfZnKaghKxsVp3NC33vPZQ6Db3mJJ5Q835fdECl+LkZA4eTW907g
         eGdweGO0z2tnXVDWgzuFC84KA9nbDg7luuUNdAVlF7LB308ubIMj6M2T4F+a5G4r/f2i
         urew==
X-Forwarded-Encrypted: i=1; AJvYcCWa7CpliYdkqjdweaIv2QgbSveK9nLvP6VGgSJru8itX9gfU+ikyypQpyEk7n+atYBuUD/sm4RKr6dI@vger.kernel.org
X-Gm-Message-State: AOJu0YwY+9SgjHHwDve+LrYGURDoeQTKVJFp3sT6SMGjxE78dVLahH6K
	Mns0rmecrmM1wtSp7vmAX8Xhm4+lpoEx42lkl7sjZjTeEULskuACEPMV
X-Gm-Gg: ATEYQzxpJg5NUEZxhC4BaCLJvUlpZcKYCNEI31MlBlCWsTgOSxuQa7XO8J2HslQwKul
	1L+EghOrcE4Ys+GADBn0Xl+ExFaiKAGtDs1eLIvAQ9IaM2oGlJRORJWjew7ZcL5tkuD5DuLcNN+
	MYbHuk956tWNV6Bo3R9iPOmhOsyGp7TLH6G4vXwQSLGmdxmtxI1bqvM15BDrNaal1+LGLsSciQN
	ZLY8UoQohnX26XtRg8PaG15xU6d8Jq48gZgrpWmcP7c1quMVYnoef6wlEZ455hUlFw0jJGC6P9k
	uDyVX29JPWGUoij8paf/m8xUDI0nzMZgZAvddE9g22P0YvEPx9juMZk1W8kgCpxm6NiDz6UJ1Fo
	Ummzzsvqcg85IXjDiQIilCRYb+96Y15JV5zbm/TiaRiM6uHr+zmCP7SNve0J+9l9SrtjIA1D0IU
	WI5EmUKCT+uYCu+BEazu5YRKaFq3wjbw1zrZ2P7ZfuBmE9PvB8ddiv4l2DaI/EKzE=
X-Received: by 2002:a17:903:18b:b0:2ae:456d:b836 with SMTP id d9443c01a7336-2aeae8f4d8bmr7958935ad.47.1773193396382;
        Tue, 10 Mar 2026 18:43:16 -0700 (PDT)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae378980sm5219545ad.84.2026.03.10.18.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 18:43:16 -0700 (PDT)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Wed, 11 Mar 2026 09:43:01 +0800
Subject: [PATCH v4 1/2] dt-bindings: adc: ltc2497: add support for ltc2305
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-add_ltc2305_driver-v4-1-bc350d347f33@gmail.com>
References: <20260311-add_ltc2305_driver-v4-0-bc350d347f33@gmail.com>
In-Reply-To: <20260311-add_ltc2305_driver-v4-0-bc350d347f33@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Beguin <liambeguin@gmail.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kyle Hsieh <kylehsieh1995@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1519;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=TvSITG3LE+Bng8Cblqu9isE4WnwGXqZ9Iao1MqgYEdA=;
 b=owEBbQGS/pANAwAKAaWDQrcJVsSBAcsmYgBpsMiuQr0v3Tpnbe0JWIWNBzuoAbYgw8z157FDl
 hf1vdy4WViJATMEAAEKAB0WIQTJHsaNZOdY+THGqJelg0K3CVbEgQUCabDIrgAKCRClg0K3CVbE
 gT4jCAC9onAGYF7TuW80NbJxdpRSa6Ca5Oc2/cJphnCRk5lutYWrFohCaJALpnzE0N5Mpal71X+
 H9jzSN2b8tIcb6yyyi6jc5EHJ/RrssKCwVPuX9j7UGF4/8dLoxWDeVBaQQs+wdQpdlL5MA4a233
 kFn4Kn9pq4nxraFZPVP2VOGvk8LsaaGii7QiCzZVOlnX42Oajdwin+ArQeenKE9w6+J3Pv3XQZ7
 7z0mwzlaPjqNL4j1yuTuEoCGmcMWHh9NoAxoJQpuXYrHR0LsOxWHCVMn60dZI4PoilrIIlHleWm
 8La+2+04wjb0GDXeVW8Kjrmn/bVdVkVPZNAxrmyI2UbKslIW
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481
X-Rspamd-Queue-Id: DA47B25A753
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273785-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[metafoo.de,analog.com,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[analog.com,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kylehsieh1995@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,analog.com:url]
X-Rspamd-Action: no action

Add documentation for the 2-channel LTC2305 ADC in the
existing ltc2497 binding.
This enables automatic device tree matching for LTC2305
while using the LTC2309 driver (drivers/iio/adc/ltc2309.c),
since both ADCs share the same I2C interface and 12-bit SAR architecture.
The main difference is the number of channels (LTC2305: 2, LTC2309: 8).

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
 Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml b/Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml
index 5cc6a9684077..c884b6e03767 100644
--- a/Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml
@@ -11,6 +11,12 @@ maintainers:
   - Liam Beguin <liambeguin@gmail.com>
 
 description: |
+  LTC2305:
+    low noise, low power, 2-channel, 12-bit successive approximation ADC with an
+    I2C compatible serial interface.
+
+    https://www.analog.com/media/en/technical-documentation/data-sheets/23015fb.pdf
+
   LTC2309:
     low noise, low power, 8-channel, 12-bit successive approximation ADC with an
     I2C compatible serial interface.
@@ -28,6 +34,7 @@ description: |
 properties:
   compatible:
     enum:
+      - lltc,ltc2305
       - lltc,ltc2309
       - lltc,ltc2497
       - lltc,ltc2499

-- 
2.34.1



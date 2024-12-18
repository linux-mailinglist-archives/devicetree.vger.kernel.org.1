Return-Path: <devicetree+bounces-132134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F2F9F5F74
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 08:41:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F0E7188187A
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 07:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 077DD15A842;
	Wed, 18 Dec 2024 07:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="DH0M5r7l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D54E157484
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 07:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734507709; cv=none; b=CZD0V2tzHGMji7hUxbwhOWg90jZd5eF/GGq7B+Lo507tPHJxtm0VgG/CV9QqH4fP/aDFdJzWxc+OS0V8izXEQnchhhlh6RBDxZGVUIZWe02ctY0xbgWDpcDTN1lZugIy0aZp/arozgl3d0IZ2GHDXXZpTX0tJQY97PrmxhdSAwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734507709; c=relaxed/simple;
	bh=bXhT9rpHUdO8PJgL+gmGGXnM0Cz5S8TN2lT0wa07lvY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GyipE81K/UEscCw0ADqbysxogc2qsom2OT/CNW/acEStE8jVEvyxzDgxF4paAZwTrniTuTPUKbm7A30OikjvwoPSoO41Id7YqVybQPaYaHDeG8N5BSDf1EZWEbXc9oK2Au7Ja6BY9w+ty5VbfcI+Qv+DQLcdtcOEc1t0rs/iiTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=DH0M5r7l; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=EHPeC04wnRnRDJ
	/g3YAhOvHpQP1I3YPM8zg5kKrpmvA=; b=DH0M5r7lTDwQvVwrzab+9O6PALd+uY
	r2mJFIbontsEgL8aU0LE1u5dZ5IuxMhg2dat40BwPPC7mQIlFz7VJWPPQV6ewMAL
	RSn7l4k5IKI8++EDWidh35UH49OSx6EFIuWFNVLbkKdPc2waMRi/0Ga9hYupvj2V
	Gb+VGaLMCiqtjRKZf7GpMuPuhpLGicz1xxlo48fIAgM2SJeXLI70qS6gq4TmpCE5
	nSmhTU6drggJ02UWW8EzJ6STW2FrEeYX7UA0HeANqDZ7brt9xcpAbp3SsfHWkmoT
	QcI+OkICYTLLFuzHPaUtU24hU/uT97atEYHbS9XMZtvj/dHf3qU5Mlqg==
Received: (qmail 204755 invoked from network); 18 Dec 2024 08:41:46 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 18 Dec 2024 08:41:46 +0100
X-UD-Smtp-Session: l3s3148p1@G2mqi4YpPJwujnsY
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Guenter Roeck <linux@roeck-us.net>,
	Jean Delvare <jdelvare@suse.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 0/3] Add NXP P3T1755 and fix LM75B docs
Date: Wed, 18 Dec 2024 08:41:31 +0100
Message-ID: <20241218074131.4351-5-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This small series adds support for the P3T1755 temp sensor. Ultimately,
I want to support it via I3C. But for now, start simple and add I2C
support, so we have something to compare against. Fix the LM75B
datasheet location while here.

Changes since v1 are described in the patches.


Wolfram Sang (3):
  dt-bindings: hwmon: lm75: Add NXP P3T1755
  hwmon: (lm75) Add NXP P3T1755 support
  hwmon: (lm75) Fix LM75B document link

 Documentation/devicetree/bindings/hwmon/lm75.yaml |  1 +
 Documentation/hwmon/lm75.rst                      |  8 +++++---
 drivers/hwmon/lm75.c                              | 13 +++++++++++++
 3 files changed, 19 insertions(+), 3 deletions(-)

-- 
2.45.2



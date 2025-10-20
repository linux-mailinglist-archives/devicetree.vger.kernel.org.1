Return-Path: <devicetree+bounces-228939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 065A5BF2868
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:52:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EB0B94E45E3
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 16:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7218A330301;
	Mon, 20 Oct 2025 16:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="vPAvdVW2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929A032F75D
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 16:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760979121; cv=none; b=b7/oqf2uWRdMYfz716IdoafU4tPqioFizD4UPMw0VeOKpsGftNsNbUiQzfAuifk7TqML8NTJgPp7IjOGjwiRPggScn6sdI3e12MjEGR66KYZtUjq0XdGguOxYRO0boTJlVOpFimsGElvQbMZBV8aXzpUQOuoPCKYinYvxdywNKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760979121; c=relaxed/simple;
	bh=J4RnlkPmRis+4sZTPl73tqOpMLz4XTH3ddn132lst7c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F5I/eSzsehVQzShj6jCxr1duj8Ox4nrZfHuZfyOJ96RmkaqZVtupmviokr3lZ9sATnMkUdbOMK0vg3aaBBWSIXatV5xR2y8aEu2R3W+F6QoWeCBcdi0CH6r29+adLvhejOvz+u1Al1h1gbOnDcINT1be19y8WUn3fm4t+7pgPgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=vPAvdVW2; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-430abca3354so44323195ab.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 09:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760979118; x=1761583918; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BuOxACCK+Imy4d0s9ApaTGaS6oXJ+8tFgrJY9fioEn0=;
        b=vPAvdVW2Aq9JKBgQQn5U/VBywZ4m8Acex6+JX/fjRcJJaOpU3lpjfyDQ7bBaE5C78P
         szpBB8M2ctfZjuo8n23fUVOs26/6WuHLoV8o02kPEX46Jn+VH7BAKf9PP1+8QT5sgSZs
         F1ASYRs7Rujbm6EUdaHFdftWev3KJkxMIGmJiInsHrWcyEVYEx1wuVTb4SxfVslsHKtB
         KrIKyQYH1RoERiQO3V/T8idechikUX9H6txIYF1b2oRuH30JFbmZ3PfspE/2pC1sKOBz
         zhauEgJttg2W/SY+erDONQXd5iUk8t5FLff+D41I+Le2tUwBN0+glcbU+U+uHeX5PrRC
         szcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760979118; x=1761583918;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BuOxACCK+Imy4d0s9ApaTGaS6oXJ+8tFgrJY9fioEn0=;
        b=Tdy4nSXPbjzDQWjsnraMT7iQuI5K9teNaj7rZDEFJcyfHqLO4oqXzBhMQenqndN6TF
         NBulUrPimZLwlDzCN2JECFSH65llGUQ4NLWbMn2yaz6WuPpF7XDDKMNyB8SUEzKQdkL5
         8Tt0u5xyGUcGHn9GV5S0VIPxTvSEUFAGQZbpIAHIioDoSJ9y/iR+v7mWMYrTkydU3BMR
         YACdUminFgo8C2nZorrZ56TkIqNtsfgYVqXrLfNZGPV6SrgzC2rVfAREGeM60mI5xbN2
         hN7KB68nNZk0gc6om/WlkJkVeVwdBHjly3QTITs9GIiGJuGK3k1Nm5p2WLEuYHYgc9l5
         l7dg==
X-Forwarded-Encrypted: i=1; AJvYcCUG592XG8WOP7thirV541REDdKItDh0oseSmhrVQJaLR7jxyNiw9k9l6bxdFfAOE09fOFYTRHlWyJ9n@vger.kernel.org
X-Gm-Message-State: AOJu0YzYLfwhSwBOqihl8LWnYAxO3sJd4m1Eqooh3xsDpTJjOfpe0Cir
	VdNRnX9liGTHtINnwtWhZWi836Cxtvt68KVQedtqjwhdlcAvA/PvD/lirq1vau769IA=
X-Gm-Gg: ASbGncv7ntn4FhQElidw59uZdLhjGujdMphAgZPFa+LZSh88izGdw7pMXRCTGdclZKc
	kSXeoijFvWSIQu6nLsTb5CO11RExLqO3J5ik6JZ9Qcq1cCEjOKy8FRZ2SnvIeS3tDvQ6lcLgZYU
	A0NoNPiwR6ky9bQIAmuAiiLQ41ByR8Sv3l/qczExwWymYcNWbW4ngVU2RJX4lvDJbKriJAgfrIf
	hR1H1IV2fmqadskUrmyUroBibDQuLqo05jFs58ztdL3ab/N/TT7iwhgHOzN8N5mbDxrgqfxuyJx
	4v4CsRkrEFlsy5sIDef6vEmw+gOuAUvbkg0B2so7qeO68JtzY0TySIQJML+ikGT4rjn3Mp+Vam1
	akRERXM43PhgOJIz0Ugh/EJ67n68Ytp4vjFZyKN0CPKUAROtuzEb7z/DPvdmnmG2nJCorYw2F/B
	b/V/YrspZkS2WX5nwBjXyloIAwZhKYWrmKy+hilagYlvk=
X-Google-Smtp-Source: AGHT+IEC4oh/Jnvhjv0NLxKRomMypLMZRmo/rR+Ffv9+T12KDSfiODwIv7xt26rVmqA6jr2VlWiOZw==
X-Received: by 2002:a05:6e02:152d:b0:42f:9dd5:3ebb with SMTP id e9e14a558f8ab-430c529a04bmr188317305ab.24.1760979118533;
        Mon, 20 Oct 2025 09:51:58 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a9799428sm3116783173.63.2025.10.20.09.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 09:51:58 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	han.xu@nxp.com,
	broonie@kernel.org
Cc: dlan@gentoo.org,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	imx@lists.linux.dev,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/8] dt-bindings: spi: fsl-qspi: add optional resets
Date: Mon, 20 Oct 2025 11:51:44 -0500
Message-ID: <20251020165152.666221-2-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251020165152.666221-1-elder@riscstar.com>
References: <20251020165152.666221-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow two resets to be optionally included for the Freescale QSPI driver.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
index f2dd20370dbb3..0315a13fe319a 100644
--- a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
@@ -54,6 +54,11 @@ properties:
       - const: qspi_en
       - const: qspi
 
+  resets:
+    items:
+      - description: SoC QSPI reset
+      - description: SoC QSPI bus reset
+
 required:
   - compatible
   - reg
-- 
2.48.1



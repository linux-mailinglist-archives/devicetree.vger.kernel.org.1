Return-Path: <devicetree+bounces-187312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D04A4ADF85B
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 23:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81BB83A1E63
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 21:06:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1860025F7B2;
	Wed, 18 Jun 2025 21:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZvZX5FTB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653A5221F13
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 21:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750280825; cv=none; b=h6gZRAiExRp52QVT8DNKn2imlzThyHn2gwoF0mQrj229m00KAGvcYFJHU87oI90esP/A/Pw4Ujtw8nzG98jXWiUsTLspp11oZA+1zVNhajRJMTXrOWcQMh13dvxuZxsO+UrSdjB30HGKuyf9cadWsfxTUswu6nmBnHp7z36BF8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750280825; c=relaxed/simple;
	bh=9SSlTyGcvM3WP9iJvBpypYeq0oOSbyJY4I+5igRnGig=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Uc9bASJvjPkYwkatEV0zTpIAS5tK17Dgd5w8SWGHbvk30OCSiRKwomcavqNBItfPhITO03GdrXLMJuR+aXWnr1EqfVz9xAs/Jy6sm8xktKP9ptm+q8pmptF8AxoZcf2UGnx8l1XJ38Y2RUQAEQF9FUi+3j7MEjinzvwvkVq87IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZvZX5FTB; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-adb47e0644dso15464066b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 14:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1750280822; x=1750885622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iC4Avl5nsV5TTclLWzzJIwtPU3vLc3MEvXLZIzDVvGc=;
        b=ZvZX5FTBoJdNCOE9i+noZEvQMlZvM5qin1K/A9uE2+OGiEmjtbW3cV+gEIXXma7ufb
         Vl147M5LGgYF6g6xku4Hfq9f0hiOdjTgao/2nGXJMVhXklcl77QPNEi13unQEQsfL6Ue
         qDAvt8GqsE+GcN7lPAnmrK94TMit7f0O9+twc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750280822; x=1750885622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iC4Avl5nsV5TTclLWzzJIwtPU3vLc3MEvXLZIzDVvGc=;
        b=nYKf6jQtjb3gTqkaONtpRAcV83VRAX6ZN04ah686WmsS8McoiJWEO73sqpNbfcgkjQ
         0cJ9pQID2lBFgbLeNRaPX1E6/goOLCqeBW/G0lI94bH1cU2Fp7WZp4ci3H/Wo/aT5kul
         nnkVIu/LyAaxXokiZo6ciZsVxa+08Y1oeBxrzLPkTraKg7nycM9FFseufCefAU8fV1kX
         O1w2GrLU5pRXEaWFBhgh1qGeGStCypMKFc7OQ/KXRtgzSXmOKIfBTmzqNOpimjDqkTsM
         CvGxX6xDN+qninaiQHqJHftglaOz3ufEmIEiC0lRqmwX3jvmNa+bg8PDWTv0I3LQpxKP
         HmuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWddWYM5nQUBe4K587h3tI2XzR3AdMi8lBc4sPbf8TieuvRf+v6pvwBtUNt2PIKyz3den9CV9oVYaop@vger.kernel.org
X-Gm-Message-State: AOJu0YzkjKuFN1xo6G3rmIJG0WpTjjwelHHDj8kVf05tVdcsO0xk2rsd
	gXM+NmIs4Ml5FESCXnjU+7phgPEZ/h4jSyCJuHbOLNqCJD0Mq9BgmgIfFDLRkQ38hw==
X-Gm-Gg: ASbGncveIRs5je7l8+cXkvH3ZRZGtbnCvBFs9FckibqRpkq8vQSpx49Hxb+ao28qz7c
	NQMoE26MEdjQAL0vV8Lj/ApEvuIovDgV9KQIXUeq/ZgE4K3GJU4SPvywegoK8z755fXOuGqd9+g
	CpkZys/jLT1P8D+8AJIcXRBWIRJf6hXQO2ajXGHRj8SzCNBw3ZuURz7dAomJhFls/wi78SFLk4b
	kw0vhhPAjNLXd9ANtX2jP+fjzN9BvDQ8CH/B2NJ+tcZlr+1FxF50smP39N3yRsg0ql8aVag93bp
	6JTgoOa/YM4EwEdA6yI2Lvp3W3U6qXXcPsX92wHjTSuU2mMe2w50wliyAAq8GoPjt8DSnINCRlk
	Wjd/9LRqXeMWRxE2GCGi9sE3rhW6T3Fa9utwpeFpxr+KlWJrQgQ==
X-Google-Smtp-Source: AGHT+IEiOE+h6jkEcIYe3lTIazAot2yWdKT/iY65/o+HVS9iYyzBT8ezqDEzQ9GEc6CtqcUb6mDfYQ==
X-Received: by 2002:a17:907:944d:b0:ae0:175c:18 with SMTP id a640c23a62f3a-ae035264a94mr84982866b.9.1750280821779;
        Wed, 18 Jun 2025 14:07:01 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (104.112.91.34.bc.googleusercontent.com. [34.91.112.104])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec892b216sm1112822266b.135.2025.06.18.14.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 14:07:01 -0700 (PDT)
From: Grzegorz Jaszczyk <jaszczyk@chromium.org>
To: tglx@linutronix.de,
	robh@kernel.org
Cc: mingo@redhat.com,
	bp@alien8.de,
	dave.hansen@linux.intel.com,
	x86@kernel.org,
	hpa@zytor.com,
	saravanak@google.com,
	dmaluka@chromium.org,
	bgrzesik@google.com,
	jaszczyk@google.com,
	ilpo.jarvinen@linux.intel.com,
	usamaarif642@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	tnowicki@google.com,
	mazurekm@google.com,
	vineethrp@google.com,
	rppt@kernel.org,
	agordeev@linux.ibm.com,
	dyoung@redhat.com,
	myrrhperiwinkle@qtmlabs.xyz,
	guoweikang.kernel@gmail.com,
	kirill.shutemov@linux.intel.com,
	akpm@linux-foundation.org,
	joel.granados@kernel.org,
	sourabhjain@linux.ibm.com
Subject: [PATCH v3 RESEND 0/2] x86: add support for reserved memory defined by
Date: Wed, 18 Jun 2025 21:06:26 +0000
Message-ID: <20250618210628.2635891-1-jaszczyk@chromium.org>
X-Mailer: git-send-email 2.50.0.rc2.701.gf1e915cc24-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Grzegorz Jaszczyk <jaszczyk@google.com>

Currently x86 allows to boot with ACPI and DT at the same time and basic DT
support is already in place but processing DT reserved memory was missing.

The DT reserved-memory nodes can be present in DT as described in
Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml.
Similar to other architecture, which supports DT, there is a need to
scan and register reserved memory regions on x86 for such nodes. It is required
by drivers (e.g. open-dice driver) to process DT reserved-memory regions.

v2 -> v3:
- Patch #1 which extends of/reserved_mem and adds the possibility to register an
arch specific hook was dropped. Instead "x86/e820: reserve corresponding to DT
reserved-memory nomap region" was introduced.
- "x86/of: add support for reserved memory defined by DT" stop relying on arch
specific hook. Also calling x86_flattree_get_config was moved and is now called
earlier during memblock setup.
For more info please refer to commit log description and v2 discussion:
https://lore.kernel.org/all/20250418124718.1009563-1-jaszczyk@chromium.org/

Grzegorz Jaszczyk (2):
  x86/of: add support for reserved memory defined by DT
  x86/e820: reserve corresponding to DT reserved-memory nomap region

 arch/x86/include/asm/e820/api.h |  1 +
 arch/x86/kernel/devicetree.c    |  1 +
 arch/x86/kernel/e820.c          | 19 +++++++++++++++++++
 arch/x86/kernel/setup.c         |  6 ++++--
 4 files changed, 25 insertions(+), 2 deletions(-)

-- 
2.50.0.rc2.701.gf1e915cc24-goog



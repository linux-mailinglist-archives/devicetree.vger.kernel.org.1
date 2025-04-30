Return-Path: <devicetree+bounces-172278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 266A1AA45BC
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D62224E3BF7
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 08:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED89E2192E3;
	Wed, 30 Apr 2025 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZdP3hXK4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A090218AC8
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 08:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746002542; cv=none; b=q657t1gYwAFrBpSDsMv9MsEcaN+WogcFUj9uaSBX8cjuwSFKMNUA/sh8FxY7goIU+1KnVUgU5mEvZ1AEg9PQY1Q8OZWDvemp8e0/9ypmuuJWrzky0Qd8yRKiOHhJu8EzP1T2CJhVYoV9zJBgmXg5Xdzw5Hkpx007AO93IPendkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746002542; c=relaxed/simple;
	bh=GKW8F/esjma3xIisnNdfmxgVLhg33OtW33/8gKmHAKk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jBCg+d9nUxmqm8L1Ea35ERXgdq4ZvYc1BfSYCFkeW+PGYPVR/7PLd6Q4Ky9w/TPnDqB/YUJV3GR6d3Tw4b0QqdHQBgV8TYfttQa0RutAqQTbR7wFnoe9y9Eao38WEr5EBc2Gd84mhLkDqZj1KEsuHC3GKG7QPVmCnNgSZnFSYmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZdP3hXK4; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e5e22e6ed2so11253375a12.3
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 01:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1746002539; x=1746607339; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=92CUaGQAbfLwUOAfwUK+51NCmaqkCK/WvaTduxkGT4w=;
        b=ZdP3hXK4ynRDOFi2tBgcCpqZ11Uhc2Lr+dg3S070NzPMjv9vrjF8vSR3p/4TT7gn5z
         w74qgnwm0Ux/CEVCuYuALSGsIFve3AuElAG8I0wkNJQqHD/+2X1hC1T6rcSX5cFTqz4I
         AaysfU8cLxLT7xvaaL4mRXYhgaBK7fuFyAMek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746002539; x=1746607339;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=92CUaGQAbfLwUOAfwUK+51NCmaqkCK/WvaTduxkGT4w=;
        b=fi7f77Jr2g1Wek3FEXORD0HgCYGDE+Dgy/w5UNTU65bY2NW5bppneaozJg7+ZHu1yx
         9xWzDQXANgY5XtFxCZ9nbTIWnCY21ParMJfkbxxL+6Wo0whjv4XpPYKFYonCxNUVYLGN
         phPUk0ETa9T3YqxKCFow+fiKKVqMdVXALE/GypoczfDFTkh2h8zyXZS2D3d9G7YWU3fR
         SQhnGgP1FNal9Wagg0mYQpn0Y8Qd+ZjRGRb11Hv9ExBOgcRHKEZWrk388n/MlhE4dpe6
         PGKmH/pLPrkDRwe4JAR00ZvWCgF9b7YrXOlmTtPcNAsigvLbpmOKsj6zxydhqXRdmRmB
         Dkjw==
X-Forwarded-Encrypted: i=1; AJvYcCVGIoHkmp+pFCXNyVgDcaSQD+RQ4ODzqZJAtonEfa/s2JJRVC4CWchRRDlyazmeo1IzCLmloRbOd39X@vger.kernel.org
X-Gm-Message-State: AOJu0YyxQ/DlgGHSPE3aiZrLBuULep4Lg/0RojiqI7i6NfnWKdNOqL+c
	Y7SEIpgWMLzMABQXGIWA961HNseFcC8RW3cxBNkaxLxET/+KD1Ku6F4Wjj3vLA==
X-Gm-Gg: ASbGnctZr4gBrSs4+PVwNU9VZesK6wq05xzQfuqci6visYk2j4paGk1peuXcu802rIQ
	RivpGqIIm7wqQvuw4Ww+4ULInuT1ck4AxUdo+CaS3beBSx4s9wTRaqFZm5iUVG5AJOqaxyd6qCM
	ojhFFupwiYGlAY8mWwB+CHQTN7Yt2bdAOESAWsAqQVBzD1ImZK3+4LnoL3JzM+XW9iD6IA9YaZK
	yAQmOq5yDr5edV76+eLpG3Mj2FMR9MBZUEYGs4haEeZ29/WwPm4/xfEJBJ+Iqyu5kFJrNqdjwZx
	xGp0gu4/A/9BsSNnQn7Qcr3D/0jQSDwOjLitIfSFUceAiPtFxDgiFxRsnQ8zZKNET9zHJqV5dCd
	sTk1vaARHwsT3PpT3zCFEF5Iz2Q==
X-Google-Smtp-Source: AGHT+IHxx+jvJKhxJN5DAz1Pj/9fep2nbrC9HiPTHd7+BrSnkhxBr/I4PsJYRNJc5L9MSoHlnuyC3A==
X-Received: by 2002:a05:6402:50d1:b0:5e6:616f:42e4 with SMTP id 4fb4d7f45d1cf-5f89bf1d74cmr1957760a12.27.1746002539157;
        Wed, 30 Apr 2025 01:42:19 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (23.31.204.35.bc.googleusercontent.com. [35.204.31.23])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7016f5342sm8351783a12.35.2025.04.30.01.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 01:42:18 -0700 (PDT)
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
Subject: [PATCH v3 0/2] x86: add support for reserved memory defined by DT
Date: Wed, 30 Apr 2025 08:41:36 +0000
Message-ID: <20250430084138.2287031-1-jaszczyk@chromium.org>
X-Mailer: git-send-email 2.49.0.901.g37484f566f-goog
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
2.49.0.901.g37484f566f-goog



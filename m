Return-Path: <devicetree+bounces-252161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DA5CFBCE6
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 04:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D120B303B18C
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 03:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D411253F05;
	Wed,  7 Jan 2026 03:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b="PwkMHhty"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F893143C61
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 03:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767755268; cv=none; b=UJTZ5wAlI3f/hHorhIKXAZCx+0JRcTxdPr8JTZ8Zwcgf2sbvjuJ64M++kXoYL9mjs0EABQWQu7SWbwCK2UASgCGrXiEVaeyqNrBnf2g5B+8h2DHTHFWKloEOFM8ZaOq28dHFLmRG+uQxEfj2agavcywr8YRA9sXcD761xkKl1ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767755268; c=relaxed/simple;
	bh=A0Sb/c1+3nyw7j95RoY40IXeaUFjCzQ8wLUD/WKWUhI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=n0L6PbslO6KhKjwKHAcJA35zQri9pJlu0jOb7Zfqs63I7cwZIPythv+hGorrkUC/oSS+Hmt1QDgs2/q8CdNHyZ+DdcVuWM7xNjrnyfWEPud1dRjyFltQ30tJGXB/DsfmL7QPD9Y9hOOBi3buxKHSM6VoVJ+XcDhR9lvVZODwEaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b=PwkMHhty; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a0834769f0so15350395ad.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 19:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thingy.jp; s=google; t=1767755265; x=1768360065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a6Wp5tqQ2i9bGT22Xc5qD8OYwZmiFUbdcsOrP4/XS+c=;
        b=PwkMHhty09WwvMXPNrbeJ4v4BaOvVJbOOiB8NFy2WpffWg4fLBO9kZZZ07nbfa4MGo
         965cgpFvx1tSlfYtHUfdW+TefccBKnwSWm4tVSyPJRNiOs79040qxOGp/SuuMiKmYUV6
         T5xuLjCKwANkMICTQO7VDXzTeiRV1mWUakuRQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767755265; x=1768360065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a6Wp5tqQ2i9bGT22Xc5qD8OYwZmiFUbdcsOrP4/XS+c=;
        b=kbT4FBb14z2OvlrDvY9tgsczmOGXpSGEHlHlqr9mRxZtf2v5YIPi0Ay0ypvhYfo6CX
         byfXa7DffoEO+9xhfbJZStVoaz0R9wn/F8lOVNLdROnl0qEOfsRj/dytqjDD1Gls19X+
         lTTNQIl/kg12XiFnC2M2FS5QpiNUoMAvO5VmV//Iwg7BeRIIKocx8QCBG637BpD6uj/H
         WtWj5TqnfSyWJMn5+50hM+rhqBKL/5fAG17lUkR8aXxDNRxTQ0acuoP4gZFBVD4FKn8f
         lRNmbCRugJdAYU8n/lRCM0nsYyDD7I5dPTf4JYEGUmTFTsG98Jto/0Lh3pKFNUt7foba
         aUYg==
X-Forwarded-Encrypted: i=1; AJvYcCWseNkPMMioTEI1ZAk0Lcj3KpfIYJCHSPPQwIR40huxb8vvikZZQRYp1zEInhtKkTGrrgo59FPD4Vz2@vger.kernel.org
X-Gm-Message-State: AOJu0YzxbyTAcbsd9zuId/DTu9x44AmA62Qg+fmX06RN2TG/GPqX3TPe
	MP2xW+d71TCmjOTP4LhnlfxK2XRvqLhIvtU3W7s1Ak1bXKPHMOJrLbQAT+XyCwiKptQ=
X-Gm-Gg: AY/fxX5tzpUZ13app8Aex7wiEatXD1OfcGhoPpirY7D/C5J/bF4rcIfuJEdtMy87r/R
	p2tMj8XRod9pv74J4IKfqTG9boThJloKmEzeI+LdStEkwVSaVCYRXo/KP8JkQv6zybgxVpAZhMa
	XvjMdjmrdH6DEvTqbY9Xf4jsmuhGnM+FIXJUzVhftgO0rQmIN636DopQG5W/p+q4NclxP2K/fB3
	6zslDIkO16N8Ba8evYHNKiqi8Kwco0xoMoOBziOJKdAlS3v2oTJHMuVg6cGoUulfB6AXqKaIQgR
	g74PDmr71ySWcA4Atf/foza6A9WcjY28IoQxz7oIznbJQT1+ODgs/CExW1yj3Qo2LtRrpDSvbUo
	vB73lRAROUKXy7bzpSYG/fzkDtK87ioJhWUSA2/ekreWzBdCGap6zdL5Wh/QH7N0UnEfvajyTpI
	WqvC56SEToUo2U0dpGTr9WXgsDGF7R0JJIlZ2mTKDSzU6Srhb1E8Xg4bC0yJxHcByr4Ho3D2UaJ
	AwvFdm8OW633w==
X-Google-Smtp-Source: AGHT+IG+sB+HojVoVOexYxe9/ikvcdN1H43dWusvFZ8jXjOgBaiHrSIaofUJWLWvSYbf3jeY2d+Z5Q==
X-Received: by 2002:a17:902:f547:b0:295:8a21:155a with SMTP id d9443c01a7336-2a3ee48ff6cmr8697855ad.35.1767755264788;
        Tue, 06 Jan 2026 19:07:44 -0800 (PST)
Received: from kinako.work.home.arpa (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a3e3cd4bd8sm33694165ad.102.2026.01.06.19.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 19:07:44 -0800 (PST)
From: Daniel Palmer <daniel@thingy.jp>
To: linusw@kernel.org,
	brgl@kernel.org,
	robh@kernel.org,
	saravanak@kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@thingy.jp>
Subject: [RFC PATCH 0/2] Let the compiler remove unneeded compatible checks.
Date: Wed,  7 Jan 2026 12:07:29 +0900
Message-ID: <20260107030731.1838823-1-daniel@thingy.jp>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I like devicetree but I dislike the way it removes the compiler's ability
to remove dead code because the compiler can't know what is in the runtime
devicetree.

One common pattern is checking if a node is compatible with some compatible
string that should never happen on the target machine. i.e checking for
something that only exists on a very specific PPC platform on ARM etc.

For weird people like me that want to run Linux on FPGA softcores, processors
from 1979 etc it is better to have the most minimal kernel config possible and
for the compiler to strip out as much unneeded code and data as possible.

The following is my quick hack to add a way to hint to the compiler whether
a specific compatible check is even possible or not so it can remove deadcode
and then an example usecase.

I think this is cleaner than #ifdef..#endif all over the place but maybe
someone has a nicer way to do it.

Daniel Palmer (2):
  of: Add a variant of of_device_is_compatible() that can be build time
    culled
  gpiolib: of: Remove a bunch of compatible checks for spi controllers
    you don't have

 drivers/gpio/gpiolib-of.c | 6 +++---
 include/linux/of.h        | 2 ++
 2 files changed, 5 insertions(+), 3 deletions(-)

-- 
2.51.0



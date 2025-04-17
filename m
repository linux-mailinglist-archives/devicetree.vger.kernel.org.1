Return-Path: <devicetree+bounces-168385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FCBA92D34
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 00:20:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB9D73BFF20
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 22:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209ED20E706;
	Thu, 17 Apr 2025 22:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ik1Oou4+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C461FBEA2
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 22:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744928406; cv=none; b=Bm3HiEGxt0mGV/ip16hDD+vA3kJAi0nBETdCS787O1aNMdH9XO4rTv53f45Np35mBuuX+wm0yfkUCMpRYamI98/CpAxcR3fm3Oq1xyx3ogZ9OTb642LH12/Ny7dIge/64fubE+3QfCbiMaPviAaVBPI28KEhyGC+ERlszuS0oZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744928406; c=relaxed/simple;
	bh=fog5CWESXdKx/6ubejMM0siBLnev3SMvqMgD/8SRGwU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=gV3wlno+ZfacCM5YJACAQUzuEcJ7kMBr0Er3DjnoodOPtZsZ8r5jqwWb+V3OwYux0BYpr/OzJCwhL1pm5jpVLO6V+Td9gPT/LPAFns7UsRcEKquqgPmMOZADZtVFt2WFBcqPDn0GFRNYUBUzD+NtyxDCvPxchvS/H5iAs3talmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ik1Oou4+; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e5cded3e2eso2069141a12.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744928402; x=1745533202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rzrckr4thNI+C6JEdU5Aeb+FsaAEqlUQoawPDha4Svo=;
        b=Ik1Oou4+f4hQz+qzOru5G/kx3ciXP0JOK3Vequ2nm4uGyG/6ecVW/v8rfgyrUWcfwF
         mNOFtZKDptUISMAhAcT3bA4orDOV6a/8kRAK+6tbX0Hh2gVGJNJkPyOr1pygjz0Uj4pt
         IkpwWrEqbhworyKn5JrWJFm6MSbIS6fVjpH9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744928402; x=1745533202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rzrckr4thNI+C6JEdU5Aeb+FsaAEqlUQoawPDha4Svo=;
        b=rtTgfkA4YlwpBJfTXtlSlpR20IXUK5xfQT7z1dSKzkkNIKvZ7+sbFF4IureuyHPnO0
         CEJ05ck89yoxv3Y9NMZJuA7j5x9K/xqu1QVrY5zZjat1B+b2lqs6pFQDCsNhnHPu/Rmd
         9kpNnc52CYJzBK78tK1mloV2qy+H7pYo4ie0YouuCLJYG+RT3ZkYe/PXhiDVGMuSLASn
         yb4PU3Xi1089tfwxODguyTqbh4eY/5ORdj2n33B9wSyddkqaD8XeXowlpa2G6S9yfNuu
         4lUqSAMjk1YkMXZxlpEkAFfK3MNgUGgLPBnqp3jKT6+j8WcoJwwu+QNabusqNZ3gxx4O
         V5ig==
X-Forwarded-Encrypted: i=1; AJvYcCUKhPn0XvjC7zbkkuayWHCR78Z/45tAhHl7tEozkOlkOPF383gaUjAqBBY+6y+vMHHdThiCSEdmoNO0@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ4bjGgYXEijx7FvbrhlUKph3mWWSqVB+gQ/hR2PMBCRnpvDsX
	c29sEzOK1PZnJPBwC95YIS3onnZC5s17e9zzoBYM8aMiHspYMfOfFkTEJE/gxQ==
X-Gm-Gg: ASbGnctMCmMBQ8JHVssF2/I7j9wenblFvmAsoyDPtyxirwLY+WChQ9GHXc5HqZpwlyB
	4zmrzmUBcnsYyA4Bv8Bah+dZSBvWoqedyQQOkBjaeqdPawZKjxcKS9kQg+BxtZpguKRLqO40EGB
	bL3O6WnlKbL8FJdUJ6R6htGCcKU13GChRdUP2+26Jsle1vsCyOjsiRkCywYa1vaglRm5f3KKqVE
	LHLjb6mEUEteUNHAM1fILPtSjoiBYGmxBhgs23EGmUq7E1Yi/MfaGsB54Jc6kEHye0G9/WaaaoA
	qMqcKuo90DC3eNnfAs0rcXtWN9o4fQasPPwZMZq6lGr3Gme7zASEzNThbx5ljarURbRNLiWyw4Y
	8IiSW+GVM+Ri8znNMXuJU1CBmMI4P5E99ZA==
X-Google-Smtp-Source: AGHT+IHHIANGDHuODOVGmA1P4rTvkA2hkLp8NQiSmp7ChP3YmPRmbiVxDn4b/Nka4+tZ6lw02YRnFw==
X-Received: by 2002:a17:906:f591:b0:aca:db46:f9a6 with SMTP id a640c23a62f3a-acb74e52fb1mr31024066b.59.1744928402578;
        Thu, 17 Apr 2025 15:20:02 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (8.236.90.34.bc.googleusercontent.com. [34.90.236.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec0c068sm45725066b.11.2025.04.17.15.20.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 15:20:02 -0700 (PDT)
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
	vineethrp@google.com
Subject: [PATCH 0/2] x86: add support for reserved memory defined by DT
Date: Thu, 17 Apr 2025 22:19:36 +0000
Message-ID: <20250417221938.579452-1-jaszczyk@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Grzegorz Jaszczyk <jaszczyk@google.com>

Currently x86 allows to boot with ACPI and DT at the same time and basic DT
support is already in place but processing DT reserved memory was missing.

The DT reserved-memory nodes can be present in DT as described in
Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml.
Similar to other architecture, which supports DT, there is a need to
scan and register reserved memory regions on x86 for such nodes. It is required
by drivers (e.g. open-dice driver) to process DT reserved-memory regions.

Patch #1 extends of/reserved_mem and adds the possibility to register an arch
specific hook, which will allow to validate if reserved-memory region passed by
DT is valid.

Patch #2, uses introduced in Patch #1 API and registers x86 specific hook, which
will validate if reserved-memory region passed by DT is covered by E820 reserved
region entry.

For more details please refer to the commit log description of individual
patches.

Grzegorz Jaszczyk (2):
  of: fdt: allow to register arch specific hook validating reserved
    region
  x86/of: add support for reserved memory defined by DT

 arch/x86/kernel/devicetree.c | 12 ++++++++++++
 drivers/of/of_reserved_mem.c | 14 ++++++++++++++
 include/linux/of_fdt.h       |  4 ++++
 3 files changed, 30 insertions(+)

-- 
2.49.0.805.g082f7c87e0-goog



Return-Path: <devicetree+bounces-91154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A910948082
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 19:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 147741F210A9
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 17:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16B4316BE22;
	Mon,  5 Aug 2024 17:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="egrvSP7L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C65316BE13
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 17:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722879508; cv=none; b=o60GLwY778vlW6yNfe6D0h1HDue0Z263qG4e31ICdX8XT2Vwk8UAw+kQ3v8FqEelR92w/4WVcduffAEwu6zY3HgzIajfxLn0TVz6WZOLPq61AhY+AWADNpwgF/NYPLKd8Z9ey4PFpJUxUcS+qDAUN7lf6kWLqX3rGgolEWRPETo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722879508; c=relaxed/simple;
	bh=ik8EI0eu3P6stBq1q1xB5IG4bhoSIH/gjP7dkCDbQdY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=utChYiVfCFYazna4dLfszE+pnT20HrM/axlmXXrST3lBibBavHWHeW/ScToCBH+9NRZla+Ln8zooWkkA4Rz8tAkHysWOfmrPWiuc38LmgPT/XSkN875GKFwnx2r/zmlfdgeFwmkPhw3uhxww+GuPvvIwGbS64Jc15aB3xip3h1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=egrvSP7L; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1fd65aaac27so40186475ad.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 10:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722879506; x=1723484306; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VZkU76SoGtSfmnwPfEEw88qwH45x7O9KVsPVc+U7f04=;
        b=egrvSP7LRcv4U55hUov6FgQTBhehfu39bfQVH775NHIHJmROMyJQT6nQ4SfX3aNZL6
         6u74HD6qv6w3dXun7jTztfHH7ib898FPshP5SGV5NLNFB6Lkyd3ie7pMWuIYEQRt00Zu
         8fc5RPjKUqVOAklXaHUtKjjugDqDb4SaXt0lPJTAw3GweEI4jBWJTOF+etM4tUmpRDcq
         QgijJVhV14CEGR0pPh9pJUlyoAYy/iT9dMQ3HV09qdM6IVSQxLyneby17EqInG9tzz3p
         HjG81Xlc1/6tLTEmnjc/h83P3/S9ZOYc2I1iN8+TUiYhxJ+8v+JnLLOd7vOvYFEecZmm
         JOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722879506; x=1723484306;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VZkU76SoGtSfmnwPfEEw88qwH45x7O9KVsPVc+U7f04=;
        b=EAJt6GCHO2ZjAzMuONTa+YIFrpFv+QTmONB24Jrm0xUTwXbNuwMIBa3bNaivp5sUKv
         N+KOkityv41r2HPDa2gu4DeKUXV5Xq8K2GMPISSJ9GT42XIqlYjpZuO+Ce3diacQWFfX
         dWBiTh/EMWBJJXsMdK14l469p1BO6fCAexDOgWwPCx9qAvcDSz/X//aR6CrrXyFs5l31
         KX0IcZOAGdlNf2TJ45TJfu2JJ5kXF6z1LlxP+L2L0VX0A1ZKzrHkQgmwIrcz9uCnuBRp
         jVMt/cgMgHNW7ipyTdtGpeZgJggIZaLRJc9xLMIS9+64Lpin389RPYQrpfIWXfLpZ78+
         xM+Q==
X-Forwarded-Encrypted: i=1; AJvYcCW3PHZMr5jSgSwakHsB+3pc3hI0yxqFR0BkGleqRvGCvOK2Dun4hTkSJultr8tTdtSt4LIoOSej6cCUmilATSx/iocmZnKY0bd8Tw==
X-Gm-Message-State: AOJu0Yx7eiSSjw/tKi0UrdgoqspuuBxe5aZ4EVnZpo0aGSoV/43ULkIG
	mkjDYrRRFMn29iCiuMd9q5OAXumeiqRakoz2+LpxSQbBSBkZEhWV+GAHOlONTAo=
X-Google-Smtp-Source: AGHT+IHhD7ZA5U9zNGbfmuHz6Kc73fLM0dyk7QDOl15u9J4kpVy9BxqJMA6+3ZrOnp9i0Fr8cg59Bg==
X-Received: by 2002:a17:902:d48f:b0:1fb:9cbf:b4e3 with SMTP id d9443c01a7336-1ff57ea1a8bmr218560665ad.22.1722879505996;
        Mon, 05 Aug 2024 10:38:25 -0700 (PDT)
Received: from jesse-desktop.ba.rivosinc.com (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff5929407asm71128435ad.242.2024.08.05.10.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 10:38:25 -0700 (PDT)
From: Jesse Taube <jesse@rivosinc.com>
To: linux-riscv@lists.infradead.org
Cc: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Jesse Taube <jesse@rivosinc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Xiao Wang <xiao.w.wang@intel.com>,
	Andy Chiu <andy.chiu@sifive.com>,
	Eric Biggers <ebiggers@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Costa Shulyupin <costa.shul@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Zong Li <zong.li@sifive.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ben Dooks <ben.dooks@codethink.co.uk>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Erick Archer <erick.archer@gmx.com>,
	Joel Granados <j.granados@samsung.com>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/1] RISC-V: kernel parameter for unaligned access speed
Date: Mon,  5 Aug 2024 13:38:16 -0400
Message-ID: <20240805173816.3722002-2-jesse@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240805173816.3722002-1-jesse@rivosinc.com>
References: <20240805173816.3722002-1-jesse@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a kernel parameter to the unaligned access speed. This allows
skiping of the speed tests for unaligned accesses, which often is very
slow.

This patch requires (RISC-V: Detect and report speed of unaligned vector
accesses) to be applied first.

https://lore.kernel.org/all/20240726163719.1667923-1-jesse@rivosinc.com/

Jesse Taube (1):
  RISC-V: Add parameter to unaligned access speed

 arch/riscv/kernel/unaligned_access_speed.c | 81 ++++++++++++++++++++++
 1 file changed, 81 insertions(+)

-- 
2.45.2



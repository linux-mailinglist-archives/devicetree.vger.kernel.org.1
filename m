Return-Path: <devicetree+bounces-77548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5260390F27F
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 17:44:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 550AD1C208FC
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 15:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B3B158877;
	Wed, 19 Jun 2024 15:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="BDKiOAjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D91157E9F
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 15:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718811674; cv=none; b=e/RkA+gUlkey92BMdcUxvOFpRC9/xFiNfxNBdQmpvzYuPVEhUHCb2hG/2Ox8dRoOS75wH2mJB59YO6rhe8Qrkcoybv5yZpG65QiLHVjfrxzwKejWZ4vMJ8Z46eObHU/07yLFgHznoc+VUjRwWHSiDQqFMpiBrd2MRgtAbYJGnk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718811674; c=relaxed/simple;
	bh=ImYuYL+MTKJa/2J5xW9/DgP7trO3Lsm5QYHKt+vupEw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=g2O/EyMzbRPs+eopy1Dd72zrEgw396/HAwXiCmBeSsPfgUZSPlrE7VfzyFQTnbKgLBaqTBxPjVpUeH8IafWNbDWDuWOZrGwKOt/WOv+LMltcLTQSZqnl3dRSgPlEl0YobhlP5aq8CyyXwyix1jnCkNLSuTrLjXrf8F+8ZxLMFXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=BDKiOAjQ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4247ae93738so283555e9.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 08:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718811670; x=1719416470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sG05QgwdQ7sARDUt4CTUt6qfEG9g0T59arCJfjRkJ9s=;
        b=BDKiOAjQqdupNqKFVBZqIW6SnnpuvYPoSsJjyCNjZtMCHNXQpQ4+/SZCkTkChZKYbV
         I4bRZLUjhS69J2boZEXM3TNRrw5TCQu4OiXRsAxusmuQiNsWzxEzEfJ4Lkm/ASeSV7QH
         YCdiDebKxnf2swtxBkfLXCjHGhTPc0+OAgFSrxdDmAvMTGSrO4piVzt1eMeXh/4zWou1
         7bfR9DBv1V0A86Wsy4lGEAg19U2lZNdVw+IECgA01rw89ObwF4+izkWZ5Yiao3HLN66G
         WqL8DlzRB6Agtj6qhuPwkmsoM3+X6Y1E9fe9cKzbdjPzCtOjd+o8BihJdIADPDPLYDms
         Nnjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718811670; x=1719416470;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sG05QgwdQ7sARDUt4CTUt6qfEG9g0T59arCJfjRkJ9s=;
        b=ToZ0GIehjL4R03DLuzvW73kjm18OLNhNpJO+16s2HCRJIv1m0ZZJX0EFl4+fXPqjus
         C7VQUYFY/rVTO+9g7+i/le62/rHFbU2ctCXoprkpC24VQUSl3Sm1dhpmp+d1wgN98dyQ
         WY+zwpg00P/dSZTAniQM+M76k2m6olfl4vfQnyeRU4UT+rqrRkMG2IBmo+zY/1M6mstr
         24P8AE0NzmsNP0qLliKjpKDOqoz8/AJRoigOdBbJcARbh8JZSdwD1LHT0x2mQ7GeKHav
         w0y8r8Bu16RiYSqQY7dMVByLPrQ3eTI+X9oWO79VJs83tOcxEUpHDHIiMP9wtvSPMQ4Q
         dVeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXc+VRdK7tyrfU2RfapwUMZcfntW/UqRLDsyjn8MJR4dglazBd1PA/w+sTepfmy/sb9KioEE8qEmtIN3z4UWHD3mkCsFdlX8eft3A==
X-Gm-Message-State: AOJu0YydD/5N23Tu+bdyhW9lxDw/6j8Tk1u+Fz92IKexGux26S0dQdFc
	MfDvq/kFdxBXHEKq9P4kQqx6uikaUM2Wxcic4eZEw14U9lVs8ek4NEOu2LD1Q+o=
X-Google-Smtp-Source: AGHT+IHjJ/ELMaLTWKWeAU/HVEqGrqCHBr+fjB+4qaex+w80Yfl6w29FYw+Q9TIgjrzlZcWwZpq3WA==
X-Received: by 2002:a5d:5f93:0:b0:35f:2929:846e with SMTP id ffacd0b85a97d-363171e28demr2732074f8f.1.1718811669978;
        Wed, 19 Jun 2024 08:41:09 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:819d:b9d2:9c2:3b7a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3607509c785sm17392292f8f.34.2024.06.19.08.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 08:41:09 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>,
	Atish Patra <atishp@atishpatra.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH 0/5] riscv: add support for Zaamo and Zalrsc extensions
Date: Wed, 19 Jun 2024 17:39:07 +0200
Message-ID: <20240619153913.867263-1-cleger@rivosinc.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Since commit e87412e621f1 ("integrate Zaamo and Zalrsc text (#1304)"),
the A extension has been described as a set of instructions provided by
Zaamo and Zalrsc. Add these two extensions.

This series is based on the Zc one [1].

Link: https://lore.kernel.org/linux-riscv/20240619113529.676940-1-cleger@rivosinc.com/

---

Clément Léger (5):
  dt-bindings: riscv: add Zaamo and Zalrsc ISA extension description
  riscv: add parsing for Zaamo and Zalrsc extensions
  riscv: hwprobe: export Zaamo and Zalrsc extensions
  RISC-V: KVM: Allow Zaamo/Zalrsc extensions for Guest/VM
  KVM: riscv: selftests: Add Zaamo/Zalrsc extensions to get-reg-list
    test

 Documentation/arch/riscv/hwprobe.rst          |  8 ++++++++
 .../devicetree/bindings/riscv/extensions.yaml | 19 +++++++++++++++++++
 arch/riscv/include/asm/hwcap.h                |  2 ++
 arch/riscv/include/uapi/asm/hwprobe.h         |  2 ++
 arch/riscv/include/uapi/asm/kvm.h             |  2 ++
 arch/riscv/kernel/cpufeature.c                |  9 ++++++++-
 arch/riscv/kernel/sys_hwprobe.c               |  2 ++
 arch/riscv/kvm/vcpu_onereg.c                  |  4 ++++
 .../selftests/kvm/riscv/get-reg-list.c        |  8 ++++++++
 9 files changed, 55 insertions(+), 1 deletion(-)

-- 
2.45.2



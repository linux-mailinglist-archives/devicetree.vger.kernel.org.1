Return-Path: <devicetree+bounces-67182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A43CC8C6DFB
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 23:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57626282365
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 21:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F9FE15B555;
	Wed, 15 May 2024 21:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="oi7oaaXf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021DA15B14D
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 21:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715809819; cv=none; b=LBTBt2iPZkm66dyIT6D5gt3PFGLjcN53Dmqmh7vBXSa/D0i2OW6XAbb1RaDw3v/t4j13ymZ6qEpXRn8tOrQdvO+ARvOaMR9f3udhlhTio+5MPNeREQY+Jz7VCA+XDO+jgJv28nEor2TmaO5xVUN56GDFiZxijKmcqJL0fUJlOhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715809819; c=relaxed/simple;
	bh=c4LlbPQQIBW0EY+raJTf9Sq+v6mtxv6mLuVOawRyfPI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ILCHD8Fg1J1pjToIacfYJPPMCdqyfx9agQQdbLUyXv0CDpfTNND0b0MIGxxBndy/il3xuGTfnAsP9WFX+2M992gPsK0MeXYY6nu2xHScjfXLtu9uWkpf8Bb3AAmWmFwp7/cVs70vCosxmahENC7JKwNHDdKDmlxVDPegya729vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=oi7oaaXf; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6f4302187c0so5707271b3a.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 14:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715809817; x=1716414617; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zPoEGWcFNM5Ac7p7zaIQJhacd+hmWksSsGfBqQ9x+34=;
        b=oi7oaaXfsQoDaW/uOAHCsTugqXoWZ9G83+UEduJGM0l8L/5f1B1Klu2qLSYP6/EYxr
         cPLSrrTCTITOuYWS9P9jaD5ZAkDKsZXYT3HohurUkewgMA2y8fnv/yHT94OlcgLRWOXY
         xw9EN2apmSCYbINejUj8O0/7IA771avVaSTuFMMi0PmitxPXwltWfwJghKlCPNhrv3hN
         ZJpJISQMS5dICT7pc7OXLzSDv2LCrZ4VxrvKtwLjAOoFEw7kV9Wntpqho6kp9f2CwgoK
         D7mCoL04trfMxZJMkbSVWhZg3dAVlNWNf/ojyT9NQINhdcUWsuVGKlfOEvTTNgHzbXhT
         Qx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715809817; x=1716414617;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zPoEGWcFNM5Ac7p7zaIQJhacd+hmWksSsGfBqQ9x+34=;
        b=smVOQifzgmoRcSgg3RL9Z+XAk9QDF/fo93FJp7PVe3vrfHGVbUNcjHu/FrPMgP5yCk
         17fbd2IwNG4sylQ/ZcCR4JRlHebOpW5WlmTLvAhXDUdxG6/UHcSSni5uYbdxoMG12RRa
         BdxVamgcxFZLFsY2oOidu17dz4mdhC5vQHdy+imtJCawNbQU/6Dkff9Siq4WKYCeDZmy
         LSknL2rs6t5G7jP1vcOWxT/jVW9FleKX8Mcml+TAtFLIJD/5zA0mUupIRAI0EaSoMmnf
         wnqeDzhdd5NqilxDOJ0YloiMWjSYgUqH6yrj6TaeHwwzAoHqtdKh4xTwWrnd9wa4vx7o
         0dng==
X-Forwarded-Encrypted: i=1; AJvYcCULfUYt55A89GqRNwJC3aLcYHXMq6Fn/HCrHwgqi+FnzZD+eWHQKt3Z2MTuYN8hhsvk3d6AMzpAT+SfGv4SHOMtsqF1CjwFD2lbvg==
X-Gm-Message-State: AOJu0Yxyi3/vDqxia6JZJnFmtCetZlU+9oTJD03s3Yof8bmXi7kcJ8aE
	OoLyJYv5SRpwMv/+9c3NJiOnArNlM5/j9TPv4d258Hwpu1kYjMtljiXDcdfYNpM=
X-Google-Smtp-Source: AGHT+IF5Gr9Uvw1E9W3ONU1uWg3LggBP3lJhDNnWVyW+gMvBcIPC/4PE3shbuxqBWxeL539zSSHZrA==
X-Received: by 2002:a05:6a20:4323:b0:1af:58f8:1190 with SMTP id adf61e73a8af0-1afde0d5a81mr23719147637.12.1715809817327;
        Wed, 15 May 2024 14:50:17 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a827fdsm11638629b3a.60.2024.05.15.14.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 14:50:15 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Subject: [PATCH 0/2] riscv: Allow vlenb to be probed from DT
Date: Wed, 15 May 2024 14:50:13 -0700
Message-Id: <20240515-add_vlenb_to_dt-v1-0-4ebd7cba0aa1@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABUuRWYC/3WNwQ7CIBAFf6XZsxhowRpP/odpSIHFbqJgoCGah
 n8Xe/c4k7x5G2RMhBku3QYJC2WKoYE4dGCXOdyRkWsMPe8lV0Kx2TldHhiMXqN2Kxv4aIzkJ7R
 WQVu9Enp678Xb1HihvMb02Q+K+Nn/rSIYZ54PfpQjDrI/XxOVmCnYo41PmGqtX85eqYyxAAAA
To: Conor Dooley <conor@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1715809814; l=1245;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=c4LlbPQQIBW0EY+raJTf9Sq+v6mtxv6mLuVOawRyfPI=;
 b=+GS9U1THGMp1qD7oH2HEN2rPKyTNMLV48Ujp0YQK3a3r6JILWA3YeyyDpN6XLBgdWmg/ewOQz
 EytEXhrktHbB9pkexU5E3ZawhX1Kj8dAqEM+y0Upld68uUOeVc82Hc9
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The kernel currently requires all harts to have the same value in the
vlenb csr that is present when a hart supports vector. In order to read
this csr, the kernel needs to boot the hart. Adding vlenb to the DT will
allow the kernel to detect the inconsistency early and not waste time
trying to boot harts that it doesn't support.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>

---
The two patches in this series were previously part of a series "riscv:
Support vendor extensions and xtheadvector" but has been factored out
due to a lack of reviews on the thead specific parts so that series will
be updated separately.

---
Charlie Jenkins (1):
      riscv: vector: Use vlenb from DT

Conor Dooley (1):
      dt-bindings: riscv: cpus: add a vlen register length property

 Documentation/devicetree/bindings/riscv/cpus.yaml |  6 +++
 arch/riscv/include/asm/cpufeature.h               |  2 +
 arch/riscv/kernel/cpufeature.c                    | 47 +++++++++++++++++++++++
 arch/riscv/kernel/vector.c                        | 12 +++++-
 4 files changed, 66 insertions(+), 1 deletion(-)
---
base-commit: a38297e3fb012ddfa7ce0321a7e5a8daeb1872b6
change-id: 20240515-add_vlenb_to_dt-307bb406ecc5
-- 
- Charlie



Return-Path: <devicetree+bounces-276977-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SK+uBNxSumkAUQIAu9opvQ
	(envelope-from <devicetree+bounces-276977-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:23:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBD62B6DBB
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:23:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8D2D306774A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:18:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6C22D8798;
	Wed, 18 Mar 2026 07:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="od09iqYh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C17833E346
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773818322; cv=none; b=meG4k6oKiYuTiPiB1bD6+KF6S3Y/wB1DSEQaIFgy4h03DGwGjntpimKc0jAXL4KsIvGi5ZLiIUuNfFidlF+d9f3uXCE5nSiRD4EkC6fq7lhsGDkP5BA+2WEU5+LQskVVxKuxSKgAEsxCihw3LODMlZx3yGxGPePARmxY3leQtOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773818322; c=relaxed/simple;
	bh=Gyksr/pyYGqVtevGjzu4MsGSzoHchdIRE+2F2pPtUXw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VMPQASGmHMhfRAJG8Dab8hD1LSHK6Qam/cQEGBX8AGdalrIJ3xLE8yA180DOL+TQkNPjaafd45/0FG4KmVP//7xjh3AyjgI8xqA05zTjGVSnns4Xq9aTxtS6hETraaj/3h8yqmkhPEBmHGb0W0QcEsH73Wq0qr56BVh0N+4zBPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=od09iqYh; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-82a3d3235c9so2558358b3a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 00:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1773818320; x=1774423120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ec9WQ6ngtqE4aJzEaoZ7GvRrgvhfaiK5DhkkbtIkfv8=;
        b=od09iqYh0pvALEjCFMKphtUFE8Ijw72RqIR5EZu2XDgA1KAX1gk/0GN+VkWlvw3U68
         GOln6XTl2VZhHBkMA5CZuW8EDOFsFe/jfGHn95Ul73jJ3QsThzVTevGXKDYcwpj9Ii3h
         Q8Pcn+2omv8Mx7iqSFk8hwVo64/z513KdSNqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773818320; x=1774423120;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ec9WQ6ngtqE4aJzEaoZ7GvRrgvhfaiK5DhkkbtIkfv8=;
        b=i3RULggZEqOdv0GhsLkLySKM7bJxZctYxRcInvAQJTpa2Y9+tJI9R40rkAMjLXZHdc
         +IZzZw/2IPpeXElyxpMqTLfxELL9zeQDgHVlplNqQCWmePksD/oQ4kRWTd/4KN/pAutm
         PaKt43LWILWPX3Bti6j7vasxCQcOwEvg+deaKBj6GJJdQkusITncmGq1kudpKQOfaiGi
         mIWCvAWR6jQaRUIBoXi9Bv2jCZgG7ypPzJsKMasMpp/t7iY62XN9Y+FtmZ2rQ09i0RYQ
         I5z9+h+Sd427f+FEQlE8nybmfkGhcUeFZurpid1fXwexyb3y/Zwh6KKSaBeSseF2dvVE
         XXrw==
X-Forwarded-Encrypted: i=1; AJvYcCXpgmc2z2RU4wK2QDxodafsjhgreBYc3l+fT3MM35b83oAdIlDNVtQWXjb/Mgslx//QbvIHg1U9N7DG@vger.kernel.org
X-Gm-Message-State: AOJu0YwtBs+H5JX4NyUt/TuQwd2uc4hHGY7/uUFaNRj6NZuEEihG6Suz
	SZ3OknPKQ7dlP6wTGsXrcTuh4I6vhxQqnoRLe5ThfOy9qL17flW0vNGWK6fvalrcdV0=
X-Gm-Gg: ATEYQzzbM38X0Ok+nKaOuff34BdVbhI9K7NnIliXCub3OQk4CPo2aWgrCEG2ebrUJaA
	41sUiXJK5cEOS/TvqJMwDTTEZLBw8V1Js5SggK4S8fzwaCcSvnmjvyGxorKLjOwjHOkV0MuWLhU
	aUNdPJE+DjyNdBoIEmn05RA/yrJYLIZJTs/FyQO7gRswJ5qoyWqCvSiIBArhmIMbJxuAqTZcaTb
	kwKwMWd47fp7481FzwxpkE9/1Y8X1XsJSRRZ4nueIkpP8Qypc6ea6ysqPcup7QkklhVpmu44Uz4
	6MVmBkQ4jxqWDll8tAeG9r+YAiKCqQocbhY0BOwfvlDsbrQ3rfVK9OQ2fhyLI6NNQhnfMM3TxON
	YsrI5wvLsuldZaV++H6UaqViNDDmDCTyI+G8Y29J8lQcInN3neWjWI87vTHs7qpEcNJLLe8a/LW
	Htz4NYelm5RjQKfSg0Vo6b/yuFLsJaZKkMCFEd+WG0Eq/wKuqP38JJJD4t7eMjUF6g3hCadwrOf
	/fjBQl/iCi3pF4DH8F1sxDB6P3pBzsUebKb+lheEFd6PAdFCT5hrXgSIWAG/pVRYFg=
X-Received: by 2002:a05:6a00:1da6:b0:82a:6461:6d15 with SMTP id d2e1a72fcca58-82a6aee5104mr2047087b3a.46.1773818319581;
        Wed, 18 Mar 2026 00:18:39 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6bee89d5sm1613669b3a.51.2026.03.18.00.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 00:18:39 -0700 (PDT)
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: conor+dt@kernel.org,
	Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	navami.telsang@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH v11 0/4] crypto: spacc - Add SPAcc Crypto Driver
Date: Wed, 18 Mar 2026 12:48:04 +0530
Message-Id: <20260318071808.817074-1-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[vayavyalabs.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[vayavyalabs.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276977-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vayavyalabs.com:dkim,vayavyalabs.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5FBD62B6DBB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the driver for SPAcc(Security Protocol Accelerator), which is a
crypto acceleration IP from Synopsys. The SPAcc supports multiple ciphers,
hashes and AEAD algorithms with various modes. The driver currently supports
below

hash:
- cmac(aes)
- xcbc(aes)
- cmac(sm4)
- xcbc(sm4)
- hmac(md5)
- md5
- hmac(sha1)
- sha1
- sha224
- sha256
- sha384
- sha512
- hmac(sha224)
- hmac(sha256)
- hmac(sha384)
- hmac(sha512)
- sha3-224
- sha3-256
- sha3-384
- sha3-512
- hmac(sm3)
- sm3
- michael_mic

changelog:
  v1->v2 changes:
    - Added local_bh_disable() and local_bh_enable() for the below calls.
      a. for ciphers skcipher_request_complete()
      b. for aead aead_request_complete()
      c. for hash ahash_request_complete()
    - dt-bindings updates
      a. removed snps,vspacc-priority and made it into config option
      b. renamed snps,spacc-wdtimer to snps,spacc-internal-counter
      c. Added description to all properties
    - Updated corresponding dt-binding changes to code

  v2->v3 changes:
    - cra_init and cra_exit replaced with init_tfm and exit_tfm for hashes.
    - removed mutex_lock/unlock for spacc_skcipher_fallback call
    - dt-bindings updates
     a. updated SOC related information
     b. renamed compatible string as per SOC
   - Updated corresponding dt-binding changes to code

  v3->v4 changes:
   - removed snps,vspacc-id from the dt-bindings
   - removed mutex_lock from ciphers
   - replaced magic numbers with macros
   - removed sw_fb variable from struct mode_tab and associated code from the
     hashes
   - polling code is replaced by wait_event_interruptible

  v4->v5 changes:
   - Updated to register with the crypto-engine
   - Used semaphore to manage SPAcc device hardware context pool
   - This patchset supports Hashes only
   - Dropping the support for Ciphers and AEADs in this patchset
   - Added Reviewed-by tag on the Device tree patch since it was reviewed on
     v4 patch by Krzysztof Kozlowski and Rob Herring (Arm)

  v5->v6 changes:
   - Removed CRYPTO_DEV_SPACC_CIPHER and CRYPTO_DEV_SPACC_AEAD Kconfig options,
     since the cipher and aead support is not part of this patchset
   - Dropped spacc_skcipher.o and spacc_aead.o from Makefile to fix build errors
     reported by kernel test robot
   - Added Reported-by and Closes tags as suggested

  v6->v7 changes:
   - Fixed build error reported by Kernel test robot
   - Added Reported-by and Closes tags as suggested

  v7->v8 changes:
   - Fixed misleading comment: Clarified that only HMAC key pre-processing
     is done in software, while the actual HMAC operation is performed by
     hardware
   - Simplified do_shash() function signature by removing unused parameters
   - Updated all do_shash() call sites to use new simplified signature
   - Fixed commit message formatting by adding "crypto: spacc - <subject>" to
     all patches
   - used __free() for scope based resource management

  v8->v9 changes:
   - Updated the software fallback implementation to use HASH_FBREQ_ON_STACK
   - Corrected dynamic allocation of statesize and reqsize in init_tfm
   - Fixed synchronization issues in the digest request

  v9->v10 changes:
   - Fixed unused variable warning

  v10->v11 changes:
   - Removed the redundant crypto_alloc_ahash in the init_tfm function
   - Removed the redundant crypto_free_ahash in exit_tfm function
   - Removed the redundant crypto_ahash_setkey call in setkey function

Pavitrakumar Managutte (4):
  dt-bindings: crypto: Document support for SPAcc
  crypto: spacc - Add SPAcc ahash support
  Add SPAcc AUTODETECT Support
  crypto: spacc - Add SPAcc Kconfig and Makefile

 .../bindings/crypto/snps,dwc-spacc.yaml       |   50 +
 drivers/crypto/Kconfig                        |    1 +
 drivers/crypto/Makefile                       |    1 +
 drivers/crypto/dwc-spacc/Kconfig              |   88 +
 drivers/crypto/dwc-spacc/Makefile             |    8 +
 drivers/crypto/dwc-spacc/spacc_ahash.c        |  886 ++++++
 drivers/crypto/dwc-spacc/spacc_core.c         | 2413 +++++++++++++++++
 drivers/crypto/dwc-spacc/spacc_core.h         |  827 ++++++
 drivers/crypto/dwc-spacc/spacc_device.c       |  276 ++
 drivers/crypto/dwc-spacc/spacc_device.h       |  236 ++
 drivers/crypto/dwc-spacc/spacc_hal.c          |  374 +++
 drivers/crypto/dwc-spacc/spacc_hal.h          |  114 +
 drivers/crypto/dwc-spacc/spacc_interrupt.c    |  328 +++
 drivers/crypto/dwc-spacc/spacc_manager.c      |  610 +++++
 14 files changed, 6212 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
 create mode 100644 drivers/crypto/dwc-spacc/Kconfig
 create mode 100644 drivers/crypto/dwc-spacc/Makefile
 create mode 100644 drivers/crypto/dwc-spacc/spacc_ahash.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_core.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_core.h
 create mode 100644 drivers/crypto/dwc-spacc/spacc_device.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_device.h
 create mode 100644 drivers/crypto/dwc-spacc/spacc_hal.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_hal.h
 create mode 100644 drivers/crypto/dwc-spacc/spacc_interrupt.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_manager.c


base-commit: c708d3fad4217f23421b8496e231b0c5cee617a0
--
2.25.1



Return-Path: <devicetree+bounces-266413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP0rDXW3lWmNUQIAu9opvQ
	(envelope-from <devicetree+bounces-266413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:58:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8420F156766
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:58:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26C70300A8C5
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 12:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE64831DD86;
	Wed, 18 Feb 2026 12:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="Uf0ndIWA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A5731D37B
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 12:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771419505; cv=none; b=tlWDcNagqhJPynw3zGxwOKo5QAAfuhknsJcA2CahwIM6crdWmfizBc5SpV+CmwDevmoPianaM5gWdESGPaN2GJ7VntchJlyhxsRm0iWkslQJdQat0/oyVsogNoiKL25n27WtvXRloXvIKxoNZi1gCVfTX21vfR26QJDieN2b8QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771419505; c=relaxed/simple;
	bh=gK+KKgFUzxlhMCj0LxpVCcUd1vgulONckUl7eS0o5HA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=natnTkHy00pHAY8HbDPtZ6QEX0gNBqODwwDp/zAC+1ambNmcJowumCs32FiAg9rtbgtRkTU/Ywm0MiayngZP9A6+rbhb+TjEB9rkB7JRmif2zbPvMrUIfz2dPRJaGmYKIJrmqHDRFdS/2F+plfgQ1YM3OdH76uDSGKVjezoCmro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=Uf0ndIWA; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-8249cb73792so5438832b3a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 04:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1771419504; x=1772024304; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7hVAT/5QVZwmXo9pGmQ4y2dfzJ/j9Y3HMmbHC2KkWxM=;
        b=Uf0ndIWAYlogFAclWxjepvOswL54Xro0QYg+0/nLU+ZmKeOuvck6vWg55WXouJ5mTS
         E6Sd8hZobGCM1gM3mpr9MkxW5D+mNYphC3l9J0TFLw1ZlMDEfaDkq4SFXjFULx6bMQc+
         x611nuP72pShJm4U/+eHqO+jztswZnrNE+eqg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771419504; x=1772024304;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7hVAT/5QVZwmXo9pGmQ4y2dfzJ/j9Y3HMmbHC2KkWxM=;
        b=PZzMBxpBA+AW5G2tohMF+NLysn1gyXOc4DbhTQ+MvzW8XaKHSMTA6OVymFWQ+sgIgL
         md+Rt1Kb4Wg2qBE2hMCmGs4NpkDbkl/tpiswLPD5zWGBsI8d0CZ7sVyrDmcEnb4AMAMp
         4SLavDOqjAp13FN9fbFuqU/uaVyfax6PsYP/TvQV1D7Sr5jpNGeGfrQWqAwwYbxNcm9i
         VLWmpDHpwkwIXrVGBCVh437GDNchja2Nx9HHMPvWFjNJc+85bpBV9BTHxzSDpvZwFpDR
         T3Q/l/L18a63VdWta3Az8n0ipPom8iSmhdKFbqNZvDthsGrZZC5sdlgrMmyvEedgJcwz
         ex3g==
X-Forwarded-Encrypted: i=1; AJvYcCXzN+S32KUfmOyneSnAhSO+yft1lwiqVZJWDyJlOCPdg1XWm2WmgWhgamXdISlbGRJlio8JUSc9+3q0@vger.kernel.org
X-Gm-Message-State: AOJu0YwBfoM2WiON77nZ7zTO/O6iUKCyPacrVIllbVVG1fRSHsaxdwfE
	4V+nK/8XQ6fGJTmCmpo+NqzFSnZIdmV5f3RufVefbYikZ/JMwMQkAWgTxx603Oooobc=
X-Gm-Gg: AZuq6aJSEgDTeWJQH0dIrEW//2aZN276wBd6/CKDT+F2jQS8bfhvGqyh0YFUUNej8rt
	rocBjmFbRZFo8YrJGK5c/LchBnCVJ0lu94BeLJplLqH8MYs9Cj/gQM25J681cqHw1NFxMsbYVQi
	1BO2e9qDu3OMyImV+Kd42fMsIqCQt3ab6kAVd2PhS5jnJ7SXfTxaFqFvzrD/r7agbJJNrFjFent
	PmaSSw5w4fDDUXO2Z9ALwwvjYivhjWd8IZl7JwzcO21FCeuxh2UQi1qVTy+tzV2CVzSLEOehb5+
	RXnRkfW0AIEVXvu2MNg0shfb5x8voh3rjUcJyD6WVJNfI7crqWuvmFQMtrUAw8W0YyIrhU/hwwp
	cTNSMXWI7rEsFJ2RiLqDMEibca+QXYjpN9G1xXqj5mjVBUy0vqwi4YipzTGTc0EVG20e4gKdC16
	h7tD7XncYCBBpRwQZUFbfXhvIOCLE1vK5hBknJwted7Okbu13wliZBXGcSNaU9Wi4jfZxkzpOMA
	hIy5qj0E86fS5jqw7aq7EteV56S1Cbx+ziqTne1MuJzNRogqMv/S9Iq+mPrDJ3HgQc=
X-Received: by 2002:a05:6a00:189f:b0:81e:e0dc:6d00 with SMTP id d2e1a72fcca58-824d96287b0mr13137301b3a.58.1771419503709;
        Wed, 18 Feb 2026 04:58:23 -0800 (PST)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6a2afeesm19227464b3a.2.2026.02.18.04.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 04:58:23 -0800 (PST)
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	navami.telsang@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH v9 0/4] crypto: spacc - Add SPAcc Crypto Driver
Date: Wed, 18 Feb 2026 18:28:01 +0530
Message-Id: <20260218125805.615525-1-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[vayavyalabs.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[vayavyalabs.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266413-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vayavyalabs.com:mid,vayavyalabs.com:dkim]
X-Rspamd-Queue-Id: 8420F156766
X-Rspamd-Action: no action

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
   - Fixed synchronization issues in the digest request path

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
 drivers/crypto/dwc-spacc/spacc_ahash.c        |  918 +++++++
 drivers/crypto/dwc-spacc/spacc_core.c         | 2411 +++++++++++++++++
 drivers/crypto/dwc-spacc/spacc_core.h         |  827 ++++++
 drivers/crypto/dwc-spacc/spacc_device.c       |  275 ++
 drivers/crypto/dwc-spacc/spacc_device.h       |  236 ++
 drivers/crypto/dwc-spacc/spacc_hal.c          |  374 +++
 drivers/crypto/dwc-spacc/spacc_hal.h          |  114 +
 drivers/crypto/dwc-spacc/spacc_interrupt.c    |  325 +++
 drivers/crypto/dwc-spacc/spacc_manager.c      |  610 +++++
 14 files changed, 6238 insertions(+)
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


base-commit: 0ce90934c0a6baac053029ad28566536ae50d604
--
2.25.1



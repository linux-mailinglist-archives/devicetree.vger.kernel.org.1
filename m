Return-Path: <devicetree+bounces-266634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHE7HQD3lmkusgIAu9opvQ
	(envelope-from <devicetree+bounces-266634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:41:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CE815E5BB
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:41:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E5423012C75
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86DD3033CF;
	Thu, 19 Feb 2026 11:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="jv/kogkW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 944761DF271
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 11:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771501309; cv=none; b=N6+fP5f0xKNonB/Sze01MFVvQwDPxbcnKPgK6TzbcyLefa01GJRumq+TFxWAytHw7WjpbbjAEw1bt5hrR/1OTssBW5X1mEH4Na8ZPNGqgl2uBDCFoHaKXp+GmCfM+/nQWLetQDIv4lTTMNjxa3NYLv3/vMSMJ+59aNjpvOtEXCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771501309; c=relaxed/simple;
	bh=8/1jiS/unXwFeTtKZ5GFPZK5+wQAryhDKIuhlJdlgeg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=biMqXZxYKhqp3JfKHOBy7RI3+97GiTYsbE7YPOW30KINQw5He8r5VFCt/Y+cHDO7k7/fns90xKCv4e9Tj08jnjxhSkRvZPP//6O2xNISKS5yDgyN6awXLos0hrLDS3+We+H6R/0y0F+9vwA6pykqOcxSlLsmzkJtOyRTIeOAlZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=jv/kogkW; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-354bb7d2cb1so855252a91.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 03:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1771501308; x=1772106108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xYarPc7OYpRPJwKoVkXKgM17kbatz0FH5pjUD5pGv5c=;
        b=jv/kogkWZxfBCVSnvrmHoy6wpCfezRdD3a7jXz1MBettzJjyHBzWER+9Os4PRQh/44
         lxfhkcfnAL7EMMHNCxqP9WjCAq0dXLvCMKYBAs4CMdWyCGsW1WgMgvesXd76b37b9aqj
         bQjrRtKWY0ZFlR45BYFmQJ+IWWEhR0M8xKTzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771501308; x=1772106108;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYarPc7OYpRPJwKoVkXKgM17kbatz0FH5pjUD5pGv5c=;
        b=coCrMjIF14x8zR2gRjmdjxl15+F7eogn5BUguJQVGxO00zRKnajot9+Dtl/ExDzuxm
         yuY0dgIRj7EK/QyIJeYyGt4FV1k93eun3I8RxAY1w2+/TRe0LpykGC7ZZgJrhiqYB9vS
         7l7nHlZbUBeTxd++pGKk34ZczDO19+egN/D3xD0Lk2PEVJVenysj1kPExYyz9qbezt43
         B5GApvmKLTD4Cu9iHzObP96bnO2mO+7MP2+xVst71trg4rjAR2eEeUQLnujWCLEiDbHe
         efgpYZW8ULEVImiYlTp7+17rv2VbiTmfwH59tCVxXP9fV+1KPabzlK+s/A2w/JUF88oO
         WQ1g==
X-Forwarded-Encrypted: i=1; AJvYcCVr+KnLi46/Yfm/bxfQ5tee6FZdCVR06xRW0ya8sOXwXc7AbEQQz6eQ6kp7gCMSGYOJyN3QB7qNPU2L@vger.kernel.org
X-Gm-Message-State: AOJu0YxscwwoHMpEfirCx4sQEGIJ4TKyZ37vynUXZz6cpltE1H/DKw8C
	KaihnolH/Tk1vEfoUMskOC+aVmMzs81WXbkhfjaNOfsc5GarEgZ2HyQqV7D4qBe40YY=
X-Gm-Gg: AZuq6aIABYGQP4eFzaXubx1wZSp55GLgqtQk6bmvq2+NQa6vi5I35wIJF/3/HLbOhuz
	W8abCyxE1QcYs1MnHur6f1NXiRO5RFPxIbrlPju/ix4SpwonLmMHKhj6ZRn/IUom4nOwbYnJBcD
	L23XDbk3dFVLOkK3T4AooXfeAyU1GY6XvaCiuPJOwFeXw7L7E+Otiu2RyS1Kj16dDI8hq2Smh/9
	iXImR6Zrx7ODPxsJGC7+SOgZ7Y04QEoBWRBgHlUGwc2NKUdGl1wg2gI2fZvW/l0LhZAehPBHSUk
	OwLgC4AR3ye3x2KCYKwMOlcn03jCpYtf0EGnrCbzezmdOpxyy0d54K74bbZ/6tWvhUpdVXLx9vT
	FPDAyz/gzxudRQp5FvIaWWkxNMfDTCRXpi+rNULOY9kBLum8+TcJhVK7/NJA1tOfRJxWbhN8vuz
	Ks40off3ZT0GevmytLHj0n3wncwjgrzddNOY19AY5LTRHhIv3JizS41DT9neAqq7eXSyjwynqph
	iwbk9WF6eDgMdAClIQGl05OC7Sqg/6ukNnD7HLCA41ZAwrhE6H1PnLSuJMlaPq8C0c=
X-Received: by 2002:a17:90a:e706:b0:354:7e46:4a8e with SMTP id 98e67ed59e1d1-3589851f189mr1576547a91.7.1771501307803;
        Thu, 19 Feb 2026 03:41:47 -0800 (PST)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567e7d95d8sm27442358a91.2.2026.02.19.03.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 03:41:47 -0800 (PST)
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
Subject: [PATCH v10 0/4] crypto: spacc - Add SPAcc Crypto Driver
Date: Thu, 19 Feb 2026 17:11:26 +0530
Message-Id: <20260219114130.779720-1-pavitrakumarm@vayavyalabs.com>
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
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266634-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[vayavyalabs.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pavitrakumarm@vayavyalabs.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vayavyalabs.com:mid,vayavyalabs.com:dkim]
X-Rspamd-Queue-Id: C9CE815E5BB
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
   - Fixed synchronization issues in the digest request

  v9->v10 changes:
   - Fixed unused variable warning

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
 drivers/crypto/dwc-spacc/spacc_core.c         | 2413 +++++++++++++++++
 drivers/crypto/dwc-spacc/spacc_core.h         |  827 ++++++
 drivers/crypto/dwc-spacc/spacc_device.c       |  276 ++
 drivers/crypto/dwc-spacc/spacc_device.h       |  236 ++
 drivers/crypto/dwc-spacc/spacc_hal.c          |  374 +++
 drivers/crypto/dwc-spacc/spacc_hal.h          |  114 +
 drivers/crypto/dwc-spacc/spacc_interrupt.c    |  328 +++
 drivers/crypto/dwc-spacc/spacc_manager.c      |  610 +++++
 14 files changed, 6244 insertions(+)
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



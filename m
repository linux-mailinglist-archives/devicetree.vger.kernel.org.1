Return-Path: <devicetree+bounces-221921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5F1BA41FF
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 16:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4181B1C057F7
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 14:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C1C623C4ED;
	Fri, 26 Sep 2025 14:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="HCmIdGLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BD422FF37
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 14:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758896365; cv=none; b=VxGv36c5dNsB6bKGxkgbzn4qUHRinDTJdMvrnJHueqwNLqkcmq6dPpoRGfvaMiQ7e3q2ZC9H0Gxl9YhV80ntbVvj3uUmRciFmrZfn2feJGHeSYu0Pm5y0Z7xt5Em5Vw94Jz8c/dcGoHGWSVdcWuRN20vIJjTpqEWyjxvtnPwXRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758896365; c=relaxed/simple;
	bh=qvArYMpECQWNjBPgOxirpmiiPvoUDMcIKMOCAFvgia0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=feT3nqSlCJ+qK/wl3N7yiYQ2Y4LGsg3Q9+I7OdnXTaOHtJJ8AHUz9bwXhYuA5Bqiupb3moaYqHG8+h5zkj8WYMMAX/0Vp3X6iqzt0nRkHrK1hDog628KpLHNxGO8349n12RpuM8qFdELYe65WqzvBczImaCQfhIbfDLFnKtRv/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=HCmIdGLg; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-78115430134so716413b3a.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1758896363; x=1759501163; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a15yEDQ1T2kumn6gYn6T3lQRGJS4ns0sEIC2Qbr0Jig=;
        b=HCmIdGLg0oVNGQ3tCXmQt72rHBTNTPQoEZRpuyAE8QPxquF6wwOQw4PQ1F3FSyhkYS
         YUsKByiZvNJYwOET+DDE89MoACNPvBlFR7Z9wpDmHkBwNBA6HTHmWgAC/SzmRp5ASTSh
         dhypQ3iNyCmOqi6zIGNM7h5yNG893pslkcI0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758896363; x=1759501163;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a15yEDQ1T2kumn6gYn6T3lQRGJS4ns0sEIC2Qbr0Jig=;
        b=bjkmbZ2usQlcobx62O8hNUrLybZ4cBbeE5BSS2DL7LvDpBBDAoF2SzNhbN1qgyLI3A
         71qdNp2fCGqq5Sau7O/xPwon8GJhZJgJyXEi5WpTDKI5Zlu/IMNxd8pIQSsEf+KMCodw
         he63BvXRc2FJc8HKgC9/UBdH4ptVQnk2mZ+kETYaumetsWZD0mMe/AIfVuLWV/t/UFal
         2qmxP1ySC0T8lv5jdRy//FpR1YHP/inyn0vfZYwrg5GAOf0y5MFHkFMXz6h2/I7oP+q5
         0XN3zqqsGLALiGsZ0M4fz2X5Mf5tg8uF8wnJuMKxao3cF7uZ18XhDEnZrpJ+j3Nxp6lu
         mE9g==
X-Forwarded-Encrypted: i=1; AJvYcCWAeUk5y0g75Ko35HeMlPorC/Aw8A03+J80cBcRnS71txeYlMfrjeNIdM+3QIRSCYHg6LPZSKlYPHBu@vger.kernel.org
X-Gm-Message-State: AOJu0YxStf3aJPEnsACFUr1cLAC0ycJB3eDyaKXkuPaLqzzQsUe1KBFX
	5y+4CLyYzOHVRkaY8bwXdKav1P/43Wj0mVdj4U+nub+WkePgePwjXhdjIeLm6UFtp9U=
X-Gm-Gg: ASbGncu0CWs0uHwpet9ndMLk0cQ+Qy1kkFa3ZnMDPVvxFC1AFxqSTUthdAhq2R6x93N
	GOyjUADguJq9vHbzylL6P3AYtweCWJBxHiLDrbwLdzD/25ulMuAd4dfaLy4zp+kNueVUSACU5ay
	AkinOu4pxdFP1ZiJ5V7koc4f8FiWtliPK9I+V3YDsstwz/K8AN9NUlUW4N3Sic2fOzEKahgRhsw
	NdMI0mV7fx6dSYIieslVJ2VLu8oKV4KErV1HbzFwXl+FZbF2sLoi/Oj5Nn5QTJnBDocdL7DJGoG
	RVGi/58K2sV1/nt/SXowE/WAVs1dDbTsZ5JwOFNiTdlYTUjI6ogErcs0w+fIG66yyDqxPmvlV4C
	x3zAK0hD3rL02Ahj1pYOTHOF1GsoHk2LXfAMvT4QnnUQc7w==
X-Google-Smtp-Source: AGHT+IFZ16FT1p5gokWgr6LpHsUm5GTcBBHq5fPgHU1wdmqAqjrcfBJ/8H4l2VH5+fHKS9me61FR7w==
X-Received: by 2002:a05:6a00:139e:b0:781:2271:50ed with SMTP id d2e1a72fcca58-7812271540fmr530653b3a.5.1758896363226;
        Fri, 26 Sep 2025 07:19:23 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238ca1esm4624845b3a.11.2025.09.26.07.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 07:19:22 -0700 (PDT)
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
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH v5 0/4] Add SPAcc Crypto Driver
Date: Fri, 26 Sep 2025 19:49:00 +0530
Message-Id: <20250926141904.38919-1-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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

Pavitrakumar Managutte (4):
  dt-bindings: crypto: Document support for SPAcc
  Add SPAcc ahash support
  Add SPAcc AUTODETECT Support
  Add SPAcc Kconfig and Makefile

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

 .../bindings/crypto/snps,dwc-spacc.yaml       |   50 +
 drivers/crypto/Kconfig                        |    1 +
 drivers/crypto/Makefile                       |    1 +
 drivers/crypto/dwc-spacc/Kconfig              |  114 +
 drivers/crypto/dwc-spacc/Makefile             |   16 +
 drivers/crypto/dwc-spacc/spacc_ahash.c        |  980 +++++++
 drivers/crypto/dwc-spacc/spacc_core.c         | 2394 +++++++++++++++++
 drivers/crypto/dwc-spacc/spacc_core.h         |  830 ++++++
 drivers/crypto/dwc-spacc/spacc_device.c       |  301 +++
 drivers/crypto/dwc-spacc/spacc_device.h       |  233 ++
 drivers/crypto/dwc-spacc/spacc_hal.c          |  374 +++
 drivers/crypto/dwc-spacc/spacc_hal.h          |  114 +
 drivers/crypto/dwc-spacc/spacc_interrupt.c    |  328 +++
 drivers/crypto/dwc-spacc/spacc_manager.c      |  613 +++++
 14 files changed, 6349 insertions(+)
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


base-commit: b73f28d2f847c24ca5d858a79fd37055036b0a67
-- 
2.25.1



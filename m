Return-Path: <devicetree+bounces-173667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A38AA93AA
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:56:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A68A316CB94
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BB362517AB;
	Mon,  5 May 2025 12:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="jjKAhme6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB04924BBFA
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746449795; cv=none; b=EtIhokKh00qs8yNhKNJjq/LbTkaOMgmPEdOjpuLUADGGb+TD9t4E9yn+eveEB3HWaHBQi67e12sRSwlwD0hse/Q3pPe3dAtrN1MXh5V2FJsotqb57wIGuLyzlXk6c9JD80dFp+L/Of18c5nIHZthFSRRqvHqAqSHD7KwssfmKik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746449795; c=relaxed/simple;
	bh=cFqBE34txTRBz5u1i0lU3gPtRNXfWw+oybt/9tjZKEM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aj7F1DIRhXunbjnkhKC8L6tiAXYSWCRtt9s5htEwO+Kh7mL9I2Y0N0v4l4cKhQdPorrIALT2LF68plvz9A0Xm2hjJXsxFCw8AkMA05kdBL/APlgnQ8t599Hgp6hb6neCcbeYbswUtElWAWD/591wvXbliN/+Uf3G/34Ap2zdkW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=jjKAhme6; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-22c33ac23edso46358225ad.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1746449793; x=1747054593; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bAnzCXe5txb+UjJy80i7lsKQWkz0PMSte3uBrvU5TzU=;
        b=jjKAhme6l35ZvzLjmNoqI4mYM0pJLM+IKWjPWTsfCqiOsi1G4jNYlTVJy9PFQT6wIv
         tvCILprIgnNpG4sdYKQqXAT2+8Yw5VZFCziP2x77P4QwSVM8Qb1NIrZrBwz55Vdp07ya
         qyVIXBzUtRrlGTYjd1cqP8J07Ni2TsLmVd9Z4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746449793; x=1747054593;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bAnzCXe5txb+UjJy80i7lsKQWkz0PMSte3uBrvU5TzU=;
        b=GKiNwYGmJ9nqHdG+EJvLbd40YqWVh7NCgiKSi+lmXeFI9SrqxXGawQNLOqtqiQnmCm
         MBdReK11RJmy6SkEUBdiCMLlIrTfs6X9Tyq+QEu2YGHMKjtr+lmih1OB20wv/6QUm7Zl
         zaeC2whYjEBE7ARks2pLc0PIrX7bfTvB4JC6n0doC0fTyha1i7CH1iQpjmvLhIG9SEvJ
         vOtVju9QToaYD+0wkDz6V0ZtZxnQktXI3Z0K0iHbhbYbdyw12cF7D4M1RP+KXkfiZxHf
         aZ8nekLXERDaf3QgzxYG0sZM2cJu0eTwktCGFjTqVgKUd2vkhEvWOZwF5+l2yV6bm9P0
         M0ew==
X-Forwarded-Encrypted: i=1; AJvYcCXBtm9sg5zc3YSsHhuizuWjq9b7rN0y61N2hYd6ZJgsA6pmJN51O3gErnPM7edz7RCusT9SYbl0yxJ3@vger.kernel.org
X-Gm-Message-State: AOJu0YxBjgEogQM+da1fri2QtGFRIAjTIikxZjdl5i8vVk1eVBr8zhrZ
	vTBbfJm5Nh4SyncEpr8Ds+FbYlUZqcqJRRnmqxnDcw7Vv2PPX6lchBToUWieCZU=
X-Gm-Gg: ASbGncviaCkHZeLvFr33hWTgP8l6kOadcNJHcclvDdaql2GoVscxUpUftJhpwuLdXrV
	S0/8CX3Vz+5aqAdHiaAoW5uERSKjBgL+iuImwWnDQBPMuq4uTmNC+fUenmtOV5ky1spvMWJWD/W
	k8lEQq16VAy3MwyfpmwdRCp446HdavhwLCbd0bZF3yQ8AdLZ/WUXG46l8BQQMHex8Z4qwvxjYIc
	qOy4oCLVliAkuR/isZFbtF7YVzb7OoQAX6I14ap9dSFtHvMqQ54SUSGppu2tBXPHhogMFyM70qS
	aRCMJ9crE1oPG8ep8ctnOL0c6Gn/TDaI7VBY7zLnhHP/uAlMlO7hhVAIttXCo/DV
X-Google-Smtp-Source: AGHT+IEyEpdDrrmWogQElo0DR+gWPXLf+SlnENF+4mdj9wocOmAOCP3bfFYGnG50O+Vp/nCEbn5zRA==
X-Received: by 2002:a17:902:d2d2:b0:21f:8453:7484 with SMTP id d9443c01a7336-22e1ea3a9b8mr96685165ad.30.1746449793039;
        Mon, 05 May 2025 05:56:33 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e1521fc6fsm53559565ad.145.2025.05.05.05.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 05:56:32 -0700 (PDT)
From: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
Subject: [PATCH v2 0/6] Add SPAcc Crypto Driver
Date: Mon,  5 May 2025 18:25:32 +0530
Message-Id: <20250505125538.2991314-1-pavitrakumarm@vayavyalabs.com>
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
                                                                                
AEAD:                                                                           
- ccm(sm4)                                                                      
- ccm(aes)                                                                      
- gcm(sm4)                                                                      
- gcm(aes)                                                                      
- rfc7539(chacha20,poly1305)                                                    
                                                                                
cipher:                                                                         
- cbc(sm4)                                                                      
- ecb(sm4)                                                                      
- ctr(sm4)                                                                      
- xts(sm4)                                                                      
- cts(cbc(sm4))                                                                 
- cbc(aes)                                                                      
- ecb(aes)                                                                      
- xts(aes)                                                                      
- cts(cbc(aes))                                                                 
- ctr(aes)                                                                      
- chacha20                                                                      
- ecb(des)                                                                      
- cbc(des)                                                                      
- ecb(des3_ede)                                                                 
- cbc(des3_ede)                                                                 
                                                                                
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

Pavitrakumar Managutte (6):
  dt-bindings: crypto: Document support for SPAcc
  Add SPAcc Skcipher support
  Add SPAcc AUTODETECT Support
  Add SPAcc ahash support
  Add SPAcc AEAD support
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

 .../bindings/crypto/snps,dwc-spacc.yaml       |   81 +
 drivers/crypto/Kconfig                        |    1 +
 drivers/crypto/Makefile                       |    1 +
 drivers/crypto/dwc-spacc/Kconfig              |  103 +
 drivers/crypto/dwc-spacc/Makefile             |   16 +
 drivers/crypto/dwc-spacc/spacc_aead.c         | 1297 +++++++++
 drivers/crypto/dwc-spacc/spacc_ahash.c        |  972 +++++++
 drivers/crypto/dwc-spacc/spacc_core.c         | 2464 +++++++++++++++++
 drivers/crypto/dwc-spacc/spacc_core.h         |  829 ++++++
 drivers/crypto/dwc-spacc/spacc_device.c       |  309 +++
 drivers/crypto/dwc-spacc/spacc_device.h       |  231 ++
 drivers/crypto/dwc-spacc/spacc_hal.c          |  374 +++
 drivers/crypto/dwc-spacc/spacc_hal.h          |  114 +
 drivers/crypto/dwc-spacc/spacc_interrupt.c    |  324 +++
 drivers/crypto/dwc-spacc/spacc_manager.c      |  610 ++++
 drivers/crypto/dwc-spacc/spacc_skcipher.c     |  779 ++++++
 16 files changed, 8505 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
 create mode 100644 drivers/crypto/dwc-spacc/Kconfig
 create mode 100644 drivers/crypto/dwc-spacc/Makefile
 create mode 100755 drivers/crypto/dwc-spacc/spacc_aead.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_ahash.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_core.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_core.h
 create mode 100644 drivers/crypto/dwc-spacc/spacc_device.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_device.h
 create mode 100644 drivers/crypto/dwc-spacc/spacc_hal.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_hal.h
 create mode 100644 drivers/crypto/dwc-spacc/spacc_interrupt.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_manager.c
 create mode 100644 drivers/crypto/dwc-spacc/spacc_skcipher.c


base-commit: 2dfc7cd74a5e062a5405560447517e7aab1c7341
-- 
2.25.1



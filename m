Return-Path: <devicetree+bounces-182107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA06ACA8E9
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 07:34:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BD86189BE5C
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 05:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9933156F4A;
	Mon,  2 Jun 2025 05:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="Qk0ZN7FE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2854A02
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 05:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748842482; cv=none; b=pXTXndPOnKFFNQD5y6ZfBOEKFiLQdWrG4mqUwHyf4wwp1btZanwZ8FuYCfwFw2LkY+bVvRr8tfp0oFUNgC6/vwpAmT17KbWfAG9IATG+XHVaLH1WGG4W1eufM/jQ/fSQi0NDjk+JS6ZzqNXN2n6kS0nLOVYrRiDNpX8Fm8OhabY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748842482; c=relaxed/simple;
	bh=BnSztsTB2eS0uQmoM2RspcYO2f63Ee7poXNlG8WSz6s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=e6fwUCxKEaZy5dq+2CyBkwPAiR1337sbUsGFAOUUpjqzYNY2Ben6bgSw9gmJQgtme7TUiiQJCgYG0MDOTlquAqUGuQ2yqlyT35q77cHf0IHFXl8Ndn8AJaRXWTMRxUEjPhPciRccpsllBoJceRXMhVJVTL6c8jTNGkA7BeEUirc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=Qk0ZN7FE; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-742c73f82dfso3089481b3a.2
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 22:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1748842480; x=1749447280; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Of+giPRXoHa61+G+1+f6AExdK/oFgaXp7VMTppRfyjk=;
        b=Qk0ZN7FEJDYbkIaz8exZyXzwHQ4eap6pK8DJd+cintxaFKsNrbuJuHLGzFoy6K7qM5
         GoU9pQrEDFQFCRYe/CD7uk0KlsT2Oq4F1UnQILMGi6O6RjWBqkptje0aHsGvbIXG1MKl
         HNijXqkQJKw01PBQcglJAu8E9Nnws6WQzjc2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748842480; x=1749447280;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Of+giPRXoHa61+G+1+f6AExdK/oFgaXp7VMTppRfyjk=;
        b=Mfj0sPoQIncMxU2tnlNjimySdmPGLeisgQUGk29eKB5xMHtUHOhtnnxH2EfQz86kun
         SgXzCPoMwvUOM7KXbMdseW1yy2FMbcBRIwcYn0QTyIomrjFV0gQtDxLLW5TJ/I2+T3To
         6An6TUi9wBDQ2bzh9fZSkr2XPYdG2eayPFHmEp9plkqgPNRRY3jOdMuQJEXBo/awIJN6
         ZXDMpzfYIfpknxXkkXfsQs9h6M/925IixYf+TrbzMBgXMv8A9Xb+0iz+wgS7usMPSXyJ
         yw6716BThpYiAhKATPMDMZaedrgKXvE2Zr/QnlZ3lcLaEYWAmdjSiyOtH+9T8V7DjEZ6
         Qzkw==
X-Forwarded-Encrypted: i=1; AJvYcCVTefLyhAYRX59exv4lb0BdnBAtj1J+X5B5jspudyRvHgFM3zHsJZk+JOikUvCjMvp9s+PXXJvmlYEq@vger.kernel.org
X-Gm-Message-State: AOJu0YzRPPvCxim4hiN4/I3zJc4+5Gnq+h+xTJXpr7ihTam6lfxZBJ7m
	798z1CJ+0DZt1yX0i1GS/X2iimRBUuBGjv2LjBWYb0d2UN5HMDp4TD/ivl4Akgney4E=
X-Gm-Gg: ASbGnctT2+VkwszAPw9wZMkSdX84hmLGVNOBNYw48W9S7kSHhzHtWH6ezxfkI8cbmUK
	UpC4RYBamBfXTYQ3BNPdNjFH99SkCbjttxu26B1To925lUe6+4GEKL2KT9oP46z1MLr4s6veIHn
	iLt4I6vEUlRBHrbaOO8QZoGKA70C7T6GLfKdhEB2OUgET/QrYvtm5gBEDtFEoJTpxwGNu+9rfqY
	C/W0st0b66HGGvcSPKDmGPtc+QVyyW1wflSavZ+6ummIvAwBNkHD+lcKdh4DAn617BqzY/SUL5L
	LA0oukWiu2UMhFp7edeVJrq5LX/1alqHwxtfHGkujKvyzW+wCxdDsiTTwtOwdD7/uxh1gbPLzuU
	6fdo=
X-Google-Smtp-Source: AGHT+IEYz2g+lwHZ1E98s1mdsv0Y/q1t6Wkg3SdaSFK3PwIB6dMcQta0OhSUjtdKKXoOzY5aUorewQ==
X-Received: by 2002:a17:90b:48c2:b0:311:9c9a:58c7 with SMTP id 98e67ed59e1d1-3127c6a0481mr11589132a91.7.1748842480443;
        Sun, 01 Jun 2025 22:34:40 -0700 (PDT)
Received: from localhost.localdomain ([117.251.222.160])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e30cbe6sm4836986a91.39.2025.06.01.22.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 22:34:40 -0700 (PDT)
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
Subject: [PATCH v3 0/6] Add SPAcc Crypto Driver
Date: Mon,  2 Jun 2025 11:02:25 +0530
Message-Id: <20250602053231.403143-1-pavitrakumarm@vayavyalabs.com>
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

  v2->v3 changes:
    - cra_init and cra_exit replaced with init_tfm and exit_tfm for hashes.
    - removed mutex_lock/unlock for spacc_skcipher_fallback call
    - dt-bindings updates
     a. updated SOC related information
     b. renamed compatible string as per SOC.
   - Updated corresponding dt-binding changes to code 

 .../bindings/crypto/snps,dwc-spacc.yaml       |   77 +
 drivers/crypto/Kconfig                        |    1 +
 drivers/crypto/Makefile                       |    1 +
 drivers/crypto/dwc-spacc/Kconfig              |  103 +
 drivers/crypto/dwc-spacc/Makefile             |   16 +
 drivers/crypto/dwc-spacc/spacc_aead.c         | 1297 +++++++++
 drivers/crypto/dwc-spacc/spacc_ahash.c        |  969 +++++++
 drivers/crypto/dwc-spacc/spacc_core.c         | 2464 +++++++++++++++++
 drivers/crypto/dwc-spacc/spacc_core.h         |  829 ++++++
 drivers/crypto/dwc-spacc/spacc_device.c       |  309 +++
 drivers/crypto/dwc-spacc/spacc_device.h       |  231 ++
 drivers/crypto/dwc-spacc/spacc_hal.c          |  374 +++
 drivers/crypto/dwc-spacc/spacc_hal.h          |  114 +
 drivers/crypto/dwc-spacc/spacc_interrupt.c    |  324 +++
 drivers/crypto/dwc-spacc/spacc_manager.c      |  610 ++++
 drivers/crypto/dwc-spacc/spacc_skcipher.c     |  763 +++++
 16 files changed, 8482 insertions(+)
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


base-commit: 0a84874c7e7dde5cdddc80a82093120e924a348b
-- 
2.25.1



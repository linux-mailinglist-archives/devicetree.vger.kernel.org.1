Return-Path: <devicetree+bounces-224030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EC8BC0605
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 08:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42D37189E8F0
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 06:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AE4F22A4CC;
	Tue,  7 Oct 2025 06:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="GwDAa8UH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C870C1B2186
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 06:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759819839; cv=none; b=awWnEgaBJEKudNTD8aeiUlCgGAmE0cxyrx1pGp9Dqoj+tMvEp5Hm0bxbXFIFGF10Hl/HytyZiXZxKaWHN8+ZudNH4gRkFgnkpmymhGHsVxuU1Uu0cO4V9bMcZU8OZ/+qNf4WYmIB5xNDrC+acVEsbzvtc46ZXL/SpXYZVh9iG0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759819839; c=relaxed/simple;
	bh=QnTLV3o19IG6q9YeHZebGR923u5V9mmkqGyVmvzfLc8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SWv+bxUeDhNOnRirxSXKBfUfEITbbV6o1pAP2HkHnpLHYgWj+vTBlYiDuMGasmITQOcAoAv6jd555SLwh56kopJNQ+EZ57YZojvqcn3LcQ2k6aLEjed2bJgBCDUkVRIrDAZjlmUbCGxlOoEzpfFVrXcKYQmkZr9znL5KigOL8nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=GwDAa8UH; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-269af38418aso71498935ad.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 23:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1759819837; x=1760424637; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1ue3YLt56/lr86Z7z674epKcb+OTcReM8+sZPVWTsKU=;
        b=GwDAa8UHYRjEi52ycFVQ04djnMFU4iM3bQU46XZVynA8kB1fsZI+V72Zq+STjkjofn
         BMVYvtrQNKpdhm5VumSmUalNa6uQ1jLAm2T2ynYbOOTxwAOXmSZm7qZ972TLN2I6dOSF
         W/MaV4tkmWOEigTefoaI7d7r9wyZ3+FKxKxAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759819837; x=1760424637;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1ue3YLt56/lr86Z7z674epKcb+OTcReM8+sZPVWTsKU=;
        b=u6UU+mcZbUydi/fsEp/0v5OQEvVbjw851Pp7+HzumspeOtYQSHRF7bgIyeMMvovteI
         ffShh8YFb81hu0+C+2gR6H28ymCyfWuJcoqEk1TdEQE5EfzIBTmG689FGrWrqOnWaJ74
         7d4OMtWixVCNtdW9nH2l3XAO3HKDBvqbVy8kbpN/WW+UuUxk4tORI+ynoYq65xtdcrh3
         ZXbIh4AMPR+gse2+c9G+XLnl4gP8QnogNl7m2YTWXF8rN+F3Dudp3b9eyXWq0ZDt5hxq
         2JxXU54ENPKQQDI2sMEzvg/D0sW/1gXZXK79sJF/3KloyXUNhyBhwQpBvuM46qjZfYtW
         tlQA==
X-Forwarded-Encrypted: i=1; AJvYcCXcbF/rTsbiPIHGOgwVDDq+TS5zK7j4oiZB5rHa714L02sQjPAvhiloKKqAThtxWlZWlneOb18E6vMq@vger.kernel.org
X-Gm-Message-State: AOJu0YyXKNVSvrLC4BHePH24HOH1QpVeHxs4AWt3vu726rMG7ONeATeY
	aXqTExhZIzgEnoDPD49+Xqf64yfM4rBfkmhs6fGAY0Au9/kf0LaooaT8dDVGTUbjTTo=
X-Gm-Gg: ASbGnctAQaeWotL1PWsl+X/u15AZ0iRt4vx6UJDoMe27htZygFZowGO74vvBPvl/7Aw
	8NCa8S43oEpJ4RLedo3mtmEh6LmFR4QD00kgGEl1izLNu40jd6IWFLkbwy0Xv1ckoY1MOIFQpHH
	h2cPzPlfPxGjvlncPmcHqUwHLA7kyAMjiLP/IQaT9DMS/N8WZISU+MzKpfNhcnfkJVgcodwUwcv
	OtoqVxc5xNRNHLKrvt6u4V3nZf2K0cqWhBPFGXRxauZwSJO/GUpAY/oIAzyo9n7PuHfNVokGKGZ
	Y3FohNjwHzSowLQ8Yg2vEQI6NUk+7m7W7p8QglNUUOiDcyriQH59v8IRgWCK4qB3hLtcXdTHzl3
	MycnZHqUZoOmzrtzZGsvmeOHF5vEsrTzIdA5RNRP+dNZZy4NuGr63msvYTfRvN9wmvavdqQ==
X-Google-Smtp-Source: AGHT+IGyuOfQcD629SA8YXpzQqVGAaDQkA881473yXUv9GAx21Pra7oLfp+Z5y2AIx6o3w56Q0/m5A==
X-Received: by 2002:a17:903:3bcf:b0:273:1516:3ed2 with SMTP id d9443c01a7336-28e9a6dd480mr172564515ad.50.1759819837084;
        Mon, 06 Oct 2025 23:50:37 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d111905sm153287745ad.24.2025.10.06.23.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 23:50:36 -0700 (PDT)
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
Subject: [PATCH v7 0/4] Add SPAcc Crypto Driver
Date: Tue,  7 Oct 2025 12:20:16 +0530
Message-Id: <20251007065020.495008-1-pavitrakumarm@vayavyalabs.com>
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

  v5->v6 changes:
   - Removed CRYPTO_DEV_SPACC_CIPHER and CRYPTO_DEV_SPACC_AEAD Kconfig options,
     since the cipher and aead support is not part of this patchset
   - Dropped spacc_skcipher.o and spacc_aead.o from Makefile to fix build errors
     reported by kernel test robot
   - Added Reported-by and Closes tags as suggested

  v6->v7 changes:
   - Fixed build error reported by Kernel test robot
   - Added Reported-by and Closes tags as suggested

 .../bindings/crypto/snps,dwc-spacc.yaml       |   50 +
 drivers/crypto/Kconfig                        |    1 +
 drivers/crypto/Makefile                       |    1 +
 drivers/crypto/dwc-spacc/Kconfig              |   80 +
 drivers/crypto/dwc-spacc/Makefile             |    8 +
 drivers/crypto/dwc-spacc/spacc_ahash.c        |  980 +++++++
 drivers/crypto/dwc-spacc/spacc_core.c         | 2394 +++++++++++++++++
 drivers/crypto/dwc-spacc/spacc_core.h         |  830 ++++++
 drivers/crypto/dwc-spacc/spacc_device.c       |  283 ++
 drivers/crypto/dwc-spacc/spacc_device.h       |  233 ++
 drivers/crypto/dwc-spacc/spacc_hal.c          |  374 +++
 drivers/crypto/dwc-spacc/spacc_hal.h          |  114 +
 drivers/crypto/dwc-spacc/spacc_interrupt.c    |  328 +++
 drivers/crypto/dwc-spacc/spacc_manager.c      |  613 +++++
 14 files changed, 6289 insertions(+)
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


base-commit: c0d36727bf39bb16ef0a67ed608e279535ebf0da
-- 
2.25.1



Return-Path: <devicetree+bounces-222355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE89BA8465
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:44:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D95931669A9
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 07:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87CE02C0273;
	Mon, 29 Sep 2025 07:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="SOzTMCuF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E1A2248B9
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759131838; cv=none; b=H4Z42uLUmKXKi3HWf4Wg56Oe+8pom3nWZKB5yVUN1JLIz1s4Uu0cLs0vwvFj7MoiUyW0gv3kRkvqXMJvhIy4NHtw1lupjyqhBgdxVvyQQijdKJavD2ze6YtRizGEsNQj+l1Y7qsX2nWbTo2W4jsCFp/7hZYbUtsARwJAmRsHiIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759131838; c=relaxed/simple;
	bh=VXI1szOjiKjEL8zYBGVQtWD6/5ILKOW18W82tAcfKjA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=s5xf6mPvbe95cUEPEiq4hVQ20Eyqp5QUYIc6mSIz83/ryHx8exexiUZPCrRBe+1w6vV0kgtTe58R2KVqEKIpdSEPP2cipr8vvqGvgpDXOm9yP023yb755H7mPmxwteAWEyUnNiu5zuN9/sjzjfNmhZzY7MNNqqcuLYwFvikI4rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=SOzTMCuF; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-27ee41e074dso38200065ad.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 00:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1759131836; x=1759736636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zkzwN7LTL6uCgBrStY6yDcslORDO/lWty4C23MUHWAI=;
        b=SOzTMCuFxKjZRIgr6MqrE9n03uWTDOmWiEUiSUQ97Uae1YoaJLyeVxMg2vU9SXBOq0
         +aedJHA5WdaDNsbL+/qnItG6YS1kf/uAB34zLIUxPRu3aRPfisButG8QFt0vqVGr4e1H
         i+JWRqP7UhUR4SROAlfmqe/rFqL8lfx1nDC64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759131836; x=1759736636;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zkzwN7LTL6uCgBrStY6yDcslORDO/lWty4C23MUHWAI=;
        b=dygYhJzfF2DaQRKD+OSCSITiqIofyOyYmeX+uDBoceq2HRjVl22Yq09ccKYLARIdwR
         YZ+p6WrNyAwqArVYzbBIt8Vd46AOkQu2Rgo5Mju2E7y2MuS5j+o2EcHtvKhqV5kdMW3D
         tFme6+vvjHiKi0nVaKSzRszshrnzuysz8HrZKDijnjYdQKLcoQa8LfggGwhi6iVwu6cj
         7yhjLQkp+NuKQRl0dO1B9X+8t0gLPakyfcIhUJzjT3650Yea4LWjfJiyjaAdONSd4c2K
         Swo5op91ftFeo8Zw+fLxjaCmmcZZtdXr888xZ8YIXwE/V8JVhpxYi0YLcbaKjsuxBeZx
         nLUA==
X-Forwarded-Encrypted: i=1; AJvYcCXjogZQ/omQq1XXXD6P58QjWJPdbPdShue4n5iMWKA4CrsM4xKrd1WKUh5EGkZj+cK0y7S+np2o4KeM@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4GGx1hCZySXjkD2AvHgvpTMWyNOgQLBjiIoF3ryTvFBmPsdDm
	uvNIK2Ghi++zOJSTd4j5zJ2nNuSCsd9PQ30BUmbmLtpIDKbTVGiPuFV49qdHyt9twIc=
X-Gm-Gg: ASbGncvXqBQtc+g7BUdxIUo6sCiNPHviyMJ0pYTapKPZpRhtGEvxapP29pqS30TRekF
	Al2MrQ9ajkucrEWhjnytBrVbscODxYlTptslLx9sh1PuCpNiCm7OB9rdPGyLLo/Zv8zYk9tzWHH
	z0o8C9fm90PvMNkYG/WWMVnuJ9P07jJD0RImJuKoDPN3Lyndi5M17230BS2zTjMAkqbmoygSChP
	dN7EuVhrrqX9t3B7PFeDIg948KrwfWr509Gl2pdFTkXnfQ0mc43cp2XUZqwxBT/nPgZXEYNUhnh
	VN0BMjAD4toHyajUbBRJmR7IXTX2sNu2wyTT05DsdVUbPs6vy9+A5cSRvNqDx2XAsrSFYIS31oR
	kkXd4CKZuMI4Ahg1vths21PMyqm1ngtREv34mjkrcKn9NIefMmgREHsyg
X-Google-Smtp-Source: AGHT+IH5ltnVhI8p9SWMfpRx11EhtJiGOK7ftW/7FfXvSgTjSgVPvPELvNXl5zpk2IS2lmwtKYpJEQ==
X-Received: by 2002:a17:902:e5c7:b0:24b:1589:5054 with SMTP id d9443c01a7336-27ed4a29670mr159434275ad.23.1759131836048;
        Mon, 29 Sep 2025 00:43:56 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69bc273sm121341105ad.124.2025.09.29.00.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 00:43:55 -0700 (PDT)
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
Subject: [PATCH v6 0/4] Add SPAcc Crypto Driver
Date: Mon, 29 Sep 2025 13:13:30 +0530
Message-Id: <20250929074334.118413-1-pavitrakumarm@vayavyalabs.com>
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
     reported by kerenel test robot
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


base-commit: 166c83f7789ed02dc1f25bc7bed4a1beb25343aa
-- 
2.25.1



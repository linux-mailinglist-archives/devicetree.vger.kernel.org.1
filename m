Return-Path: <devicetree+bounces-202724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AA7B1E844
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 14:27:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13F2D562BBD
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 12:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE6F277CAF;
	Fri,  8 Aug 2025 12:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="EX1gAw/p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545FF277815
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 12:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754656025; cv=none; b=VYDMrIIiVkYZ5ToDGpKy5QQvVo8KtGd6FRKPqfgid954+LkEORdS0aYAeQbXpZEknSYQpWkb2UrNvQYyQlS5Mqdex1bAKyszjrzewbAAdvvTFKKAd/XgD3moMAkZ7DeaQalbPZyeH88GYa6dfVumeOn14Lg8ui6eAncT0tcdAqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754656025; c=relaxed/simple;
	bh=OKFjF1Bfnuf8ky87YXofFFua4f1JQFfaJXtPqeH77Fc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mQsM4xU3ZxS+QSHBpm8vJVkyA3DLUO2HGiK9D45CadUKRfqvHEXMUhx74oPGFaCJ4mbMX/ZrxAAdX7yifOj2RfgNdurcfBoIYe8DouXBaFu0IAhknGehN3CPAFCqNbR02Q9xkFjWm93zh2V4Ljg6YwuYvHAoZbO/XvoOoE2sIA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=EX1gAw/p; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-769a21bd4d5so2103995b3a.0
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 05:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1754656023; x=1755260823; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PIrQA2x5lCe6wDOB4syEAlQhMjLSjkTfPyXDtA9t/Q4=;
        b=EX1gAw/pFTb3JECWBw7OHbIMoenduDYovtHunGUzfd1XEj47Hr5W1+YZB8E+wyqRH2
         0qTOoV/nwwzJ9EZ+2qBYrpKQr8ToMmPumoZlsUoagjL85/ba39O6w61EBSjPv4gbtWc7
         7mlKlFBZqgO7kpsnenJf8XKNGrFehxsIh/7R8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754656023; x=1755260823;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PIrQA2x5lCe6wDOB4syEAlQhMjLSjkTfPyXDtA9t/Q4=;
        b=bWlVfuY8ULMxGLGoulFaJdeM5V48C2dnrSG2MI0EPSRB5dUFxY2xaCmk8dKDbaSZJI
         LFZ+B8uIfKyQqbGL8QKbuRpnvaoVH90ufDKxIIaa9+pbOfhf2qW9wKOh2o7rqIMj1/vl
         c/qqhrp7CRiGjPNXiyX6S7lndhVJ03Po0iOPAH8uX2gdV0QH9dzHxY0tgJV2PrkSarfo
         ZZtobRgPic2H0gNMgc2XFg73K1h3CGg5Wj44mbl2nDLGy7ka+85PfIs3R72HqGcxd3i3
         Hp7SCBomLgjDv2X1+y2m+d/oBIIqXrK//8TtEEuU7Z9vLyllMKsSOR40qeKhUxIOz4oW
         1OaA==
X-Forwarded-Encrypted: i=1; AJvYcCVhstNB6/cX8lA7JmFZb/8HWjS/XSDjalRyXH3DVYxanv0r/rq4CF5H1U/8bcV2ACLbya+YQFbsNr+g@vger.kernel.org
X-Gm-Message-State: AOJu0YySNr9cIEirtm4VcfN3h5F5rOzY0O4GB7nNA1CR7G1M3ciGYMdW
	uqDyuNKVdmAXl0G1Fd1w4cSKeHF/WhQBkTMugRr8R8Ee4wPOTYL1d5AbVnBgvS2Mr3E=
X-Gm-Gg: ASbGncv46cwPyLDJd2tt21u5UpUDUvg0NOuxTraNVJ/UtklE+x6jC2zJ4SaSFC5vVwV
	/vkJl3b+mPXyHak9lnE2VYmPId0DD6VoOJnoxXN6sb6/LWw9yzf6NI83/sZCYx1SCz5mivk16WI
	fHs/r8kkGR+HUSWDypKHXaDpQV3eeeDOzsDTTioP2q1hLYXKzf7+H5+Mwk3Bt2uL+dU7eWVM/y8
	N0FVlktbDb9w02f3l7PSBGMDHye9eoG817nNzceCDrKvals1uLewAatUHoBv6gkYPvaRfdOciyj
	9Ls1cTE6b2kMW0e9t9F3PXR8YxN5vsKhsIEeFgQMY1YBbavedEapaeebwmn71xKbH/E18c507TS
	6uS1Kc/VgOxMuAZP1vVkrWUr+duJhEWtjOehGmS2MWvYgmYOqBsbrKe4f
X-Google-Smtp-Source: AGHT+IEPWSAwHTSc8ABL9LCu2I6T6WODoVF4DZm55wdkaEYX0gM2Xc13ez3clxRybEyqcPrMyMs6Rw==
X-Received: by 2002:a17:902:f78e:b0:240:1831:eede with SMTP id d9443c01a7336-242c21e043dmr54100225ad.32.1754656023573;
        Fri, 08 Aug 2025 05:27:03 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899a8cdsm208296665ad.121.2025.08.08.05.27.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 05:27:03 -0700 (PDT)
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
Subject: [PATCH v4 0/6] Add SPAcc Crypto Driver
Date: Fri,  8 Aug 2025 17:56:25 +0530
Message-Id: <20250808122631.697421-1-pavitrakumarm@vayavyalabs.com>
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

  v3->v4 changes:
   - removed snps,vspacc-id from the dt-bindings 
   - removed mutex_lock from ciphers
   - replaced magic numbers with macros
   - removed sw_fb variable from struct mode_tab and associated code from the
     hashes
   - polling code is replaced by wait_event_interruptible

 .../bindings/crypto/snps,dwc-spacc.yaml       |   50 +
 drivers/crypto/Kconfig                        |    1 +
 drivers/crypto/Makefile                       |    1 +
 drivers/crypto/dwc-spacc/Kconfig              |  114 +
 drivers/crypto/dwc-spacc/Makefile             |   16 +
 drivers/crypto/dwc-spacc/spacc_aead.c         | 1297 +++++++++
 drivers/crypto/dwc-spacc/spacc_ahash.c        |  968 +++++++
 drivers/crypto/dwc-spacc/spacc_core.c         | 2452 +++++++++++++++++
 drivers/crypto/dwc-spacc/spacc_core.h         |  832 ++++++
 drivers/crypto/dwc-spacc/spacc_device.c       |  275 ++
 drivers/crypto/dwc-spacc/spacc_device.h       |  230 ++
 drivers/crypto/dwc-spacc/spacc_hal.c          |  374 +++
 drivers/crypto/dwc-spacc/spacc_hal.h          |  114 +
 drivers/crypto/dwc-spacc/spacc_interrupt.c    |  330 +++
 drivers/crypto/dwc-spacc/spacc_manager.c      |  611 ++++
 drivers/crypto/dwc-spacc/spacc_skcipher.c     |  752 +++++
 16 files changed, 8417 insertions(+)
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


base-commit: 9d9b193ed73a65ec47cf1fd39925b09da8216461
-- 
2.25.1



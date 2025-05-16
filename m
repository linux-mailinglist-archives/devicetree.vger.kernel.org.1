Return-Path: <devicetree+bounces-177823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD6CAB9481
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 05:11:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEE23A2245B
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 03:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E957F25EF83;
	Fri, 16 May 2025 03:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="bA5YLbDA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4332928983D
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364762; cv=none; b=njH7MTcxz4nVKaG9ypTeW4v0j+0IrogQeOPzV4MJGGVfTzt4leqeCCMWlLl/I+lRoj5+OggSpr41dH8RPMCmoQBPx9ctHWs080vJvovm3hnJErDIdQI25FeSGMAHuTX7Jvw1Spi+wln50H7/wq64NN44BVE/t+ZLphG/KDRP/og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364762; c=relaxed/simple;
	bh=76YvIuqiHwshKlnxsI+ssczIVIKtV6Kxq2bsjqhgSno=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=I9CD98gKyjwHebwOJK57qxBHz7mgIdK6PoNEOCeg/sEOw5HvREtFK2mqykwEJlVys5Y4wKlUWsboeR4HjfVUBpq6TqxWsmY855y0ZYDeIpt+bO0JaSHkTvRRKoIf0/6Wpdiv7kFvNRhGiQJkUGNHy0utfyQ9Yxv0L3Jz0SBFwBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=bA5YLbDA; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-22e3b069f23so13936095ad.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 20:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747364760; x=1747969560; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uebw5yKXQY4T2EOZNFFsPOSoaV3mkjJcAwfE1uNSZZE=;
        b=bA5YLbDAMNzDYzsK1QKWjsR5nj7rsTyjdz6eYDdjM/TqjaKetxDokpac8QCt4EyuQ3
         st0wmmMBD+U8Kiro5wZDy22Zn7GbDLpwhbzGl/muFooDkio78wrkjtlG2Y4BymhJK4Rb
         5diPSz8w9NY3Qn4F+WwPIN/lYnOuBUZWqM8P8bQRqJ15PIDO7sXKFW7W3z3XL0gkmUGD
         EzOVeelHP4Hsn+HV+scqCN2OyVmBskNTM289I2P4pVvuhCnkqa3B0cK183PbW2RA8p+z
         gF9UnFbTTv2+5N6ON0EwZtmk/EbUm+jcGMLzEoMNRXgcAqK658FnEDeCff6FBaHMhcwX
         9MZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747364760; x=1747969560;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uebw5yKXQY4T2EOZNFFsPOSoaV3mkjJcAwfE1uNSZZE=;
        b=F+Ux3hp+mChqaKClXKL6yQmhFHLrrAh3cX4j8y5PctFb9sJy3qq8X8VPlv4Gryf4h9
         JRF6DaKH5KILrRLwpaH4JxHenJ4Xb7iL+5eWRvwjubQFSNdRx5AYrP5aCl7+qcBdMh9M
         x0YuF77PGzFVDTbaD72SMoOTCmC/7ERax5ZmkL4ScRntxgdnQgGsx0DCsQ70LG+VQuDW
         DJJoRoet20RsnuoOUUW6wyQONU4SfH4GNNJwGPdqN+flVTo0O48RA9xauY3xttiX2x2h
         pxB0vrc9ZgO/8zAM0v7Uf2fet3mzHpRHVmS4aTK8B0diusauNk8Mjc0gGI1EV58A9rCX
         AiRA==
X-Forwarded-Encrypted: i=1; AJvYcCWKhzpueikATxmvBjnoldF3hBIkG+NmTdZsE6QDNCfMhzxMmZEipKBDR/hlrpB4Ps2u6atRZlJ4vLCI@vger.kernel.org
X-Gm-Message-State: AOJu0YyMXyEQY59DmMw49EIA5+t2S9eLtY8su7Qm++V99GD16Z/274jK
	ivR28uUlikKjMYYSSgNMWG9xUT4sPCHls8MZPFEyOxcQPd787VXQBo7ET733S0eNFdM=
X-Gm-Gg: ASbGncszVY6FdUe8l7b954PGiJDj5glwiJMSYAXaGx5LSzSCy4IneLThOl4gYcwzdBX
	0kga1UFoqxoK8WDLLUdMwi8HkVPNJIFQ0aQ7/q5rRr7mQzaMSJGbbmXe7hVNFLEeJ4i9mDRPSdY
	l1VSLZH2ufGVKyXRWhOwUb5G2PA2qaEf9HWnYV+X7IKL7YQbK2VPoqSBmHTf/I62xf0HAjbuVA0
	TR0pzSXVqwG3Xd/E5hPQznJBoKV/mHpzM/TdlXeXnnr+4nVUqTqF9Ne+3NfQgtAzioUVi0jYKLq
	Ev5q5sbfUVW4XgPJxheDlKbTjFljMiBWMBVglllmK7VAnHmDD7I/L3BbytyIRzR/rKG1085Tef0
	B055z7cxT8lhisbK/bvRUCw==
X-Google-Smtp-Source: AGHT+IGHOS+9p/lRlrvuxjoBtFxHTXOF9CcsyvcnXM3ZuSvglZ87knFmunIlRLlJfsORHSmTFtTD4g==
X-Received: by 2002:a17:902:fc46:b0:223:5379:5e4e with SMTP id d9443c01a7336-231de351434mr13109245ad.10.1747364760422;
        Thu, 15 May 2025 20:06:00 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebb084sm4804405ad.201.2025.05.15.20.05.57
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 15 May 2025 20:05:59 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>
Subject: [PATCH v2 08/12] riscv: hwprobe: Add SiFive xsfvfnrclipxfqf vendor extension
Date: Fri, 16 May 2025 11:03:06 +0800
Message-Id: <20250516030310.16950-9-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250516030310.16950-1-cyan.yang@sifive.com>
References: <20250516030310.16950-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add hwprobe for SiFive "xsfvfnrclipxfqf" vendor extension.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 arch/riscv/include/uapi/asm/vendor/sifive.h          | 1 +
 arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/vendor/sifive.h b/arch/riscv/include/uapi/asm/vendor/sifive.h
index f25d8cf110d1..b772d4631284 100644
--- a/arch/riscv/include/uapi/asm/vendor/sifive.h
+++ b/arch/riscv/include/uapi/asm/vendor/sifive.h
@@ -2,3 +2,4 @@
 
 #define	RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCDOD		(1 << 0)
 #define	RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCQOQ		(1 << 1)
+#define	RISCV_HWPROBE_VENDOR_EXT_XSFVFNRCLIPXFQF		(1 << 2)
diff --git a/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c b/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c
index 461ce0f305ce..2b9505079a9f 100644
--- a/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c
+++ b/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c
@@ -16,5 +16,6 @@ void hwprobe_isa_vendor_ext_sifive_0(struct riscv_hwprobe *pair, const struct cp
 				   riscv_isa_vendor_ext_list_sifive.per_hart_isa_bitmap, {
 		VENDOR_EXT_KEY(XSFVQMACCDOD);
 		VENDOR_EXT_KEY(XSFVQMACCQOQ);
+		VENDOR_EXT_KEY(XSFVFNRCLIPXFQF);
 	});
 }
-- 
2.39.5 (Apple Git-154)



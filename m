Return-Path: <devicetree+bounces-177821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A187AB9469
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 05:09:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 657B91BC67E9
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 03:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E452E28937B;
	Fri, 16 May 2025 03:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="SwixV3/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF2A25E83F
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364756; cv=none; b=d73lfXYw4cDeVcGwWZNvgbJc+11YVVrbfFCR32KLHQhWs3pBUMacbjS3zUG7ydKx/bPY/54JbH4ecS8Y3LUTF+OK5hpa6HmqFrpqWdYSLLoh9PuD+n4Uhq0lMfDB6NPa6KCNZPmRPfXRPVDOa2DWp0SC2lXqs1Ka8RMMEkVE45o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364756; c=relaxed/simple;
	bh=jwzybOogsnpwjXZfW60XYhy2TYjkOLviZX+I0L3/c8I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JuJgb98n8obrJln5WJLR2iLGThjg2ZX7izWRwX7zkouRIkHDGhO6ghcrybFiTGoeLujKbLHEzMa2hq0fJVBQrvQLEBLTrZ3RKhmGjtjMizqv3cY/DNd0nyCGtfRXv/mb/Yhwg1+9KAkEl28FWX1yiXVJtgLme/5m7mA0P7EOkOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=SwixV3/Z; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-22e661313a3so19179765ad.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 20:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747364754; x=1747969554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t9SYuNTu0FAVFrwp78RXEvkkHj//qONU+zmTxNF3YZI=;
        b=SwixV3/ZbIl+Jer0vLp9EoYWI2T1isFyt7iIoO4YYKa+QLeEaddwfUXAS3JMKGDnUp
         MRykxpF/WPkjVaJjLUM2IkFo5SCfEYSeEeTgkvJvRbWevR+sRa/KS5lLIAqljlTHC7nQ
         FmBc8DBgJEm0ziw7wfTH4k+FIR27qTYampFkQyVutF/79K7s7PwwScme5SGmF4jkgbeQ
         qeuFGovK3PMLgaiTmkGdwCh+sgmBvCLjrUe6OWRsLx/f3lRzMCoUbFhmjYzUt5O6w4+m
         D6rgtK5I4e0lI3AKDkZLoI7zgHbPKTqi4YRd2tVcu/jdh+WU4QkhRxxwGliFX/0QpYVF
         lLgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747364754; x=1747969554;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t9SYuNTu0FAVFrwp78RXEvkkHj//qONU+zmTxNF3YZI=;
        b=EuB7Q9gYHSv2HGNE1JvVbtWJ1R0GYLeyIDgSsWbhWB1zhf0auI4W1Sa0O65kHk5eCY
         lRK3dt4i8rlxFzb9/KjVZd3ngttGBsuy4EL1LppFzmfGM7GynH8vLJ41EBKEmkYWzNue
         37bGCPO4+QQn4NJcCu8OYgYDRwedxyX+oQC8iTxZ9FGFO5SYSXfA7vzJ2iJbx3FSpZHj
         atDx3A44WiAOjCuLY2iVPtvtWR+Xp2+bWBMfMjP7ZOUF70CXVGA3iMM6eUo1T2tiejAb
         bqqCIzLkJFlKyDI1N766eJaC1jnGaBSV8D3SMCdb7GT9t9H4MZ5ZKaJtnwzuPspHpkH6
         Kkcg==
X-Forwarded-Encrypted: i=1; AJvYcCWI1tAfgwqjnn2rHbKAqj6seH1n+nebFrp/ZR+a+ajE9Ui9ofCNCohLWyntKjDrNa4JxEydmmnw4X7K@vger.kernel.org
X-Gm-Message-State: AOJu0YwL5o2PUX0tw4yMH0BwULbVWoUfIvPAN/GuUI6IhWch3OXEp9bp
	YvLAbsFshFuwnh4J5s8zp4l0k/bGc9l9V6Lavv1rnpgNH4MSTDLrEjFeDsgpDpNx//I=
X-Gm-Gg: ASbGncsimzKiASACtHmAMC1ysK16cTWXo6JF2JkvTW7YWocCyHPlpM7wVr7oru09Wwp
	UtCC+Mb54Kr2zfYi9jLa8WjfE+Eh6VNbFsrrxDkdYl2nK8Ppain1p1V9/fV8L7JeKPfnahajYNl
	Or8uB1BVpG+vqkg8c12pFH/plxwStlxN+7h+AAB6TkyCbgtAqMVRgJlyAl//Lw02o21Fh6RrUJf
	f4OLJrqEgwjxkYltSv+zJFFvA+QaSpNh20Zllk5K1P6GIHqxByrkuE+MKM+tOnPZigr6+Ul8m+w
	w/DW/hLYSidFp2KHf4zi23EGacEQV8t+XoZMpuD+AQzgV4izxDwfXNlqwRFesVgItgbcCYRPmLI
	IFOPYdbwpfIE=
X-Google-Smtp-Source: AGHT+IEZ2ronJfVBYw0CNofcDTNPNdTruhtwvA5nHbntYV+GYPIfnd+sdXjNknRMWd6vX6/qWCPU7A==
X-Received: by 2002:a17:902:e786:b0:231:d143:746c with SMTP id d9443c01a7336-231de3ada00mr9814335ad.39.1747364754532;
        Thu, 15 May 2025 20:05:54 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebb084sm4804405ad.201.2025.05.15.20.05.51
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 15 May 2025 20:05:53 -0700 (PDT)
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
Subject: [PATCH v2 06/12] riscv: Add SiFive xsfvfnrclipxfqf vendor extension
Date: Fri, 16 May 2025 11:03:04 +0800
Message-Id: <20250516030310.16950-7-cyan.yang@sifive.com>
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

Add SiFive vendor extension "xsfvfnrclipxfqf" support to the kernel.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 arch/riscv/include/asm/vendor_extensions/sifive.h | 1 +
 arch/riscv/kernel/vendor_extensions/sifive.c      | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/vendor_extensions/sifive.h b/arch/riscv/include/asm/vendor_extensions/sifive.h
index 608004250e2e..2d05e3e73170 100644
--- a/arch/riscv/include/asm/vendor_extensions/sifive.h
+++ b/arch/riscv/include/asm/vendor_extensions/sifive.h
@@ -8,6 +8,7 @@
 
 #define RISCV_ISA_VENDOR_EXT_XSFVQMACCDOD		0
 #define RISCV_ISA_VENDOR_EXT_XSFVQMACCQOQ		1
+#define RISCV_ISA_VENDOR_EXT_XSFVFNRCLIPXFQF		2
 
 extern struct riscv_isa_vendor_ext_data_list riscv_isa_vendor_ext_list_sifive;
 
diff --git a/arch/riscv/kernel/vendor_extensions/sifive.c b/arch/riscv/kernel/vendor_extensions/sifive.c
index 6042cc3021de..9376e1ce133a 100644
--- a/arch/riscv/kernel/vendor_extensions/sifive.c
+++ b/arch/riscv/kernel/vendor_extensions/sifive.c
@@ -9,6 +9,7 @@
 
 /* All SiFive vendor extensions supported in Linux */
 static const struct riscv_isa_ext_data riscv_isa_vendor_ext_sifive[] = {
+	__RISCV_ISA_EXT_DATA(xsfvfnrclipxfqf, RISCV_ISA_VENDOR_EXT_XSFVFNRCLIPXFQF),
 	__RISCV_ISA_EXT_DATA(xsfvqmaccdod, RISCV_ISA_VENDOR_EXT_XSFVQMACCDOD),
 	__RISCV_ISA_EXT_DATA(xsfvqmaccqoq, RISCV_ISA_VENDOR_EXT_XSFVQMACCQOQ),
 };
-- 
2.39.5 (Apple Git-154)



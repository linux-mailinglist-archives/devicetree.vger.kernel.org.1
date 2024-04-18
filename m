Return-Path: <devicetree+bounces-60546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4928A9A17
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:44:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0919428352F
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E814416132A;
	Thu, 18 Apr 2024 12:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="F0vGwcL6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B0D15FD0C
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713444242; cv=none; b=AUXE+mfGBrPe9tP/YPzuxt1ZOcPtMpTmgBhB2ZXEVrY3nX3VJc/uE0VAZ3ZUP/lPbcAuBd1HUWlu2It+odNXaKXksjhVDKmCzYvtx+9C6PRxmQ41pIgm5O6dKSkDpVodT6OAPrdw1KcHzvS6bbluCrQFS4X6wGGPaaJ79vxnwHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713444242; c=relaxed/simple;
	bh=SrpAxjIaY3RV8BXenxbFlBJKJmsCS8qPO2iasFfYMfo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Vpcqibvz7E4YIm2LSop5opj8gSOAl1s9OPRrYAgshKQzEAcJUKv1J+TKVSQW/g1WhSvbeN+AlblJDohwa4LA+7wWRvGMaOKBTsFCJg3s1bsbbxR9ubo9mSNpynmPwd/gG+EWGlme4IDyM0B51s20hlV1ws7IPWbMQdNvdrXxzb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=F0vGwcL6; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-34801b1bc4aso150474f8f.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 05:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713444239; x=1714049039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hAM+PbC/Wqgx6Q9RB0x39wuP2KdW0QgVrrLDnXaQ5i0=;
        b=F0vGwcL6w3PptZ6deCyKLtJ9QDT+nQmUG1cZnZJrU+mgbKRzgJSpnwGP+40BhVL3h0
         S0ncc8TRLr0qWrR4f2R6xIB6x62GeDnzSsOBUGCjtIDv700LNORnFz6MuIZBhlEbPR6G
         OA9YKwQQrX9ClTRxh50P9AhSBIw+HLEcW1+UHU2xCuKAPZpZivgrmoG1gtMI1kruOeo4
         eZ3KWIcBIfM2SdXTEXipBQ1n1k2gCiArxQO1cyXnCbWSs/if6iWVvQPOpNtGTtaGOvTR
         yUWaEV9J4A/0Iu1LiRpU1OkEPwcrYM+lZAUHTC3GQ1GC0urxOk7kMzMPCqsz5FJ1xXH+
         VZ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713444239; x=1714049039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hAM+PbC/Wqgx6Q9RB0x39wuP2KdW0QgVrrLDnXaQ5i0=;
        b=jQbzktHo4fnZUhlE5QsZo9AjsGT2KZaHFcsXcTOW2ySPH03nIIHZDQjpYtVblhrQd0
         KQ8rCL+ZZa5qyo4K4h6abKaBVQKb+YH7d12ozJ3xORE3f65ozZ6QprloxSE8O+4Ezjqw
         cLSvtDbc7H8IANg1NwX+RSOCYDU1FG1szIyHHj1YaTvsO8wnOsBrGLsdZ+Ch4dSeCRbM
         aWopkcPPj4YIIQFz2cJXb4AbAJU7/b7i+Wh+f2YonH4FzrscqCWvHZHaXs2M4CgJY3hX
         9CjkCJh83idAkb+Kexqg8+tYj41HfPRErX2guQwV9HxW3udVkUbLjWZsg9kQnNMa4yWJ
         /Qaw==
X-Forwarded-Encrypted: i=1; AJvYcCVxIqop7MPNDp0SphYOU07ZU6z76+IxYiXdLy1tGwnC+uRO4DNXfsP3y20YZK5exovjR3S7tEyqQCXTEsU32UA7IwOCIe8bH4xDqQ==
X-Gm-Message-State: AOJu0YyfhhsUVqYJEHr7/c4le+m3aAdf6j5Jw/mBh9FEw/db64S6tq/b
	gFuFfzHf2+cCNPYrYc66yMPMY7Zssc8XTe0peVcUVzXct66nHhiQ52IJTF6TS7E=
X-Google-Smtp-Source: AGHT+IEfRUjBsR081et3wJOadMgBsrPT+MF87MwTDvd2ymBdOvFDiLCp8AN/vnIfSdOc1TYzaATntQ==
X-Received: by 2002:adf:f60c:0:b0:343:3f59:c97e with SMTP id t12-20020adff60c000000b003433f59c97emr1553063wrp.6.1713444238851;
        Thu, 18 Apr 2024 05:43:58 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7b64:4d1d:16d8:e38b])
        by smtp.gmail.com with ESMTPSA id bi18-20020a05600c3d9200b00418d5b16fa2sm3373412wmb.30.2024.04.18.05.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 05:43:57 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH v2 04/12] riscv: add ISA parsing for Zca, Zcf, Zcd and Zcb
Date: Thu, 18 Apr 2024 14:42:27 +0200
Message-ID: <20240418124300.1387978-5-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418124300.1387978-1-cleger@rivosinc.com>
References: <20240418124300.1387978-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The Zc* standard extension for code reduction introduces new extensions.
This patch adds support for Zca, Zcf, Zcd and Zcb. Zce, Zcmt and Zcmp
are left out of this patch since they are targeting microcontrollers/
embedded CPUs instead of application processors.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 4 ++++
 arch/riscv/kernel/cpufeature.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 543e3ea2da0e..b7551bad341b 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -82,6 +82,10 @@
 #define RISCV_ISA_EXT_ZACAS		73
 #define RISCV_ISA_EXT_XANDESPMU		74
 #define RISCV_ISA_EXT_ZIMOP		75
+#define RISCV_ISA_EXT_ZCA		76
+#define RISCV_ISA_EXT_ZCB		77
+#define RISCV_ISA_EXT_ZCD		78
+#define RISCV_ISA_EXT_ZCF		79
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 115ba001f1bc..09dee071274d 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -261,6 +261,10 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
 	__RISCV_ISA_EXT_DATA(zfh, RISCV_ISA_EXT_ZFH),
 	__RISCV_ISA_EXT_DATA(zfhmin, RISCV_ISA_EXT_ZFHMIN),
+	__RISCV_ISA_EXT_DATA(zca, RISCV_ISA_EXT_ZCA),
+	__RISCV_ISA_EXT_DATA(zcb, RISCV_ISA_EXT_ZCB),
+	__RISCV_ISA_EXT_DATA(zcd, RISCV_ISA_EXT_ZCD),
+	__RISCV_ISA_EXT_DATA(zcf, RISCV_ISA_EXT_ZCF),
 	__RISCV_ISA_EXT_DATA(zba, RISCV_ISA_EXT_ZBA),
 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
 	__RISCV_ISA_EXT_DATA(zbc, RISCV_ISA_EXT_ZBC),
-- 
2.43.0



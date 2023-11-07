Return-Path: <devicetree+bounces-14338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FB67E3A7D
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:56:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 532F81C20BA9
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 10:56:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210212D05C;
	Tue,  7 Nov 2023 10:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="kL4dRSDm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BE729CE7
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 10:56:18 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FC0AD71
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 02:56:16 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-32f8246103cso1245201f8f.1
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 02:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699354575; x=1699959375; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aJyd1YBcb+U2PBneGSdwCeFg8Fe7xoja8XAVvgGr8QM=;
        b=kL4dRSDmheqW1rZa9Ma3GuG+hJghK/vLfPpPAmTPnPQNkc+v+PO+QBYBteB7FCABIW
         4f/qF0/vmHTJ1g6cvFQXULenWdUxp+VJzkQnWeq1n+uncWDzbigRGwknYyxCZGn+0Z2G
         Y3/yQdSfRdsJ8lqDBJUfNIoRs7gCb+FesUP1K1Hbo0ov53pqvU6CiD8ztEtWwb/iSSPF
         JCEd8vN1AwG7Zr/INM0c94gTDcri5IBnaENuCqx/yxENbZNhg+DIiKChTv1OT8W37P+k
         J9uJLRKVHGKrkKwxLXuSJj2g3oQ7oZv4inwm3OZzl2o3Kl6EIUP+MaVAgNoAwEvncWq9
         ERKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699354575; x=1699959375;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aJyd1YBcb+U2PBneGSdwCeFg8Fe7xoja8XAVvgGr8QM=;
        b=BnpaxekEzaDXsX4k99p1doLnToqjKGIx8axgGN1kfzbb0L3ye7DU5trnGUW6MBrV81
         bpGBl5qv3H9eN98grMOp1R6NKCzMdugZrC0ecf0GuHNIi16S1hmUlOjnfJyp+bkLvmn+
         5PvU1t5rFtEtq3PuytDhPAI3f7Q+++pWqoMNGC6nASvxBV08kNCCRqxNES4eVWoxyGD7
         yeQgcyhPve9Q3pswpL2lHZoyl2eYBoEI/Xh1+0iHTBarH87RpvNFG+sENXgNsL49vmeE
         Ph6gNZuKbFN8V7gf1ufYYIfReZQVlyjYgGOGEOUc3orlw3zErV4YOXQcvjNSRfC/qccG
         Y6GQ==
X-Gm-Message-State: AOJu0YwLnuWyjvzSXHvq3KpGuEB0XZEYdmkGuN5o3FgduhhiDZvaphE2
	P7Yv15PrOj/yPm3s1CI6ChNWyA==
X-Google-Smtp-Source: AGHT+IFwqzEm1CRJc3Tvln28fqzLrx5PcA3gU0DPHRFsH47EQLrWlkSUXHW5cbEtNQ1KO6g6dWi35Q==
X-Received: by 2002:a05:600c:35d6:b0:404:7606:a871 with SMTP id r22-20020a05600c35d600b004047606a871mr24942179wmq.2.1699354574695;
        Tue, 07 Nov 2023 02:56:14 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7db3:bdd9:4cab:2ee3])
        by smtp.gmail.com with ESMTPSA id n30-20020a05600c501e00b00405442edc69sm15396853wmr.14.2023.11.07.02.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 02:56:14 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jonathan Corbet <corbet@lwn.net>,
	Andrew Jones <ajones@ventanamicro.com>,
	Evan Green <evan@rivosinc.com>,
	Conor Dooley <conor@kernel.org>,
	Samuel Ortiz <sameo@rivosinc.com>
Subject: [PATCH v3 12/20] riscv: add ISA extension parsing for Zihintntl
Date: Tue,  7 Nov 2023 11:55:48 +0100
Message-ID: <20231107105556.517187-13-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107105556.517187-1-cleger@rivosinc.com>
References: <20231107105556.517187-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add parsing for Zihintntl ISA extension[1] that was ratified in commit
0dc91f5 ("Zihintntl is ratified") of riscv-isa-manual[2].

Link: https://drive.google.com/file/d/13_wsN8YmRfH8YWysFyTX-DjTkCnBd9hj/view [1]
Link: https://github.com/riscv/riscv-isa-manual/commit/0dc91f505e6d [2]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Evan Green <evan@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 10ebd36f67e0..5b57b24db60c 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -83,6 +83,7 @@
 #define RISCV_ISA_EXT_ZVKT		65
 #define RISCV_ISA_EXT_ZFH		66
 #define RISCV_ISA_EXT_ZFHMIN		67
+#define RISCV_ISA_EXT_ZIHINTNTL		68
 
 #define RISCV_ISA_EXT_MAX		128
 #define RISCV_ISA_EXT_INVALID		U32_MAX
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 7c04c03e435f..baa8edfb0e6a 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -258,6 +258,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
 	__RISCV_ISA_EXT_DATA(zicsr, RISCV_ISA_EXT_ZICSR),
 	__RISCV_ISA_EXT_DATA(zifencei, RISCV_ISA_EXT_ZIFENCEI),
+	__RISCV_ISA_EXT_DATA(zihintntl, RISCV_ISA_EXT_ZIHINTNTL),
 	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
 	__RISCV_ISA_EXT_DATA(zihpm, RISCV_ISA_EXT_ZIHPM),
 	__RISCV_ISA_EXT_DATA(zfh, RISCV_ISA_EXT_ZFH),
-- 
2.42.0



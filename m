Return-Path: <devicetree+bounces-24722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BA8811010
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33B8B1F212CB
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0586A24208;
	Wed, 13 Dec 2023 11:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="1JzP0M/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCC7710C
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:14 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2cc2adbcf87so5356491fa.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1702467193; x=1703071993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EdmTrlQiysEJ9gRiozTT9JeMo8PxECkQ3IPcbyVimLw=;
        b=1JzP0M/Zj2mlSQmonb0E6bjzwpGdul5JD5yby86ozwQQnkcAMlhoXcu1gNto7LHn6w
         L2tfbjF7psCq8omOqGZL+9tA6zC/+z6zgSIobdgW6zm7negsTBRt5pAJUzu7Xij+Cx5Q
         CB3LeqWVb/7tV67MbHb7hLFBlVdP8/ratdtjzS47snCF/1OPXaQLNdYPHnPCBgKhli70
         EDvxqSi4acmAjmoXKMOsew45jGFPWnz5AEMGzPk0SbWGT4g8WFYc9HNtnvoALloDyZJv
         Sn2rCzFG3Xk0/yXGulGk0miKAvcLcUxg8NZnhidEOfD5jV8uUZeMq0We6Kq8KBRSyyuS
         uSlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467193; x=1703071993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EdmTrlQiysEJ9gRiozTT9JeMo8PxECkQ3IPcbyVimLw=;
        b=eW5ai8oNB5P57mdIJVAtpX3AgtyDYr6iBqIHrLH2+EWe8ppMzlA5hzb8xbg0DIX93D
         W6mkOdq3vu9mtDm3sA2AQhOpwVgQ0tkAk1tkcbEG+Nzd9VKEj7Kbs9NU4UR6lLk5idN+
         6JnLfPcJSEqxfGqekua/I0Y3KuYyyAxgmY1Iuyjyw9e3OjTHUZcAY0k7+rifeBG/oq+R
         OkJBMUYQuhj/9AA0E7T081ll0RLLqxxiTrtxETIY+Ti2wQUR40KrYpAL1I6ygGXPpqiF
         dUyxeUry2KnJmil9kIlICEoa+4hZf+/pZqcLNMCEMOU4HuPzgXSTnt2RlEJst0xb9KAm
         BMCw==
X-Gm-Message-State: AOJu0YytRWfF696SS1tLFHBWTjjle1WDGYXEzBMnxZMAaqyHkB2Lgees
	mxPYrB42vTVT5rpA2zLmwuiWjg==
X-Google-Smtp-Source: AGHT+IGRFuH629++Bb3wGMQ+qnci9mOmjy+tVmt+kXTT5YpcBLnKt70/RrbZJJli1/GOWOFaotbQYw==
X-Received: by 2002:a2e:a54f:0:b0:2ca:350:9339 with SMTP id e15-20020a2ea54f000000b002ca03509339mr8364738ljn.3.1702467193265;
        Wed, 13 Dec 2023 03:33:13 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:c564:f167:d072:5672])
        by smtp.gmail.com with ESMTPSA id m27-20020a05600c3b1b00b0040b38292253sm22433137wms.30.2023.12.13.03.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:33:12 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Robbin Ehn <rehn@rivosinc.com>
Subject: [PATCH 1/9] riscv: add ISA extension parsing for Ztso
Date: Wed, 13 Dec 2023 12:32:57 +0100
Message-ID: <20231213113308.133176-2-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213113308.133176-1-cleger@rivosinc.com>
References: <20231213113308.133176-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add support to parse the Ztso string in the riscv,isa string. The
bindings already supports it but not the ISA parsing code.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 2438d4685da6..3b31efe2f716 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -84,6 +84,7 @@
 #define RISCV_ISA_EXT_ZVFH		69
 #define RISCV_ISA_EXT_ZVFHMIN		70
 #define RISCV_ISA_EXT_ZFA		71
+#define RISCV_ISA_EXT_ZTSO		72
 
 #define RISCV_ISA_EXT_MAX		128
 #define RISCV_ISA_EXT_INVALID		U32_MAX
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index dc0ab3e97cd2..3eb48a0eecb3 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -279,6 +279,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zkt, RISCV_ISA_EXT_ZKT),
 	__RISCV_ISA_EXT_DATA(zksed, RISCV_ISA_EXT_ZKSED),
 	__RISCV_ISA_EXT_DATA(zksh, RISCV_ISA_EXT_ZKSH),
+	__RISCV_ISA_EXT_DATA(ztso, RISCV_ISA_EXT_ZTSO),
 	__RISCV_ISA_EXT_SUPERSET(zvbb, RISCV_ISA_EXT_ZVBB, riscv_zvbb_exts),
 	__RISCV_ISA_EXT_DATA(zvbc, RISCV_ISA_EXT_ZVBC),
 	__RISCV_ISA_EXT_DATA(zvfh, RISCV_ISA_EXT_ZVFH),
-- 
2.43.0



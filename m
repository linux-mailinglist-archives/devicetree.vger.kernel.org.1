Return-Path: <devicetree+bounces-175990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C409AB288E
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 15:40:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A2883ADBE5
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 13:40:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A69CB2571A7;
	Sun, 11 May 2025 13:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="drY56icV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4317822DF84
	for <devicetree@vger.kernel.org>; Sun, 11 May 2025 13:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746970816; cv=none; b=e8cmlVCXwSh5acn5H+l8HaQgpyfcke5IHkERtMTuPQboZeEhGrU43gwCNXfIO2Zf+JyB33WuMElPdn+cr0lZX1847FWGUCq1qEIJKn5x8Dy2sY1yX7UpcW+7MnkNeYK3PtSBIkO+hhU2FtE990zkIzWAR9UG3Rk1ZSVzzJvJL8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746970816; c=relaxed/simple;
	bh=gv8a347ZgM8grLLMwGRczaN5bCj8XaY5cQilQ8vIa5k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U0wEetGLsx/syf7D4D19keO2YMBThUycLvxMSBXr7F/dpzxuvDTwALYI61bmF2uGtCGxKtWxLdsS08lyyE95HlrZnwuAYKn3g4tSViHUC+ejVTdzLUQcASjS2Z77CQyaZWMz/AcPHYlPrAcAqdWlodAvDxvAHJCHdwsSWmXfgWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=drY56icV; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b07d607dc83so2798796a12.1
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 06:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1746970813; x=1747575613; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DVsERMSdIf5sKMRIf3zMFFXP9slyQDAj89Ix8Yi7kgA=;
        b=drY56icV6tdieKz+DAnOABe29F2zlSM4UxxLw5e1Q/VjViRxcUkhmtyE4fxM0ckqTn
         oeyHiqE10+QPXhzpjIpFiWHFEfIWHUInTvhAE4+GEmrUNhZJoKKu5y/O63PnOoo9ghBy
         jn4kZI4imIYj9cAUMNDjkdTgpxvpe1erahQJhsNyRBG9mK6p1dxsLzfNnW3D5QLYZi33
         b2ocBYnP8F7ntxGxnkc0OHEq0X6jBb8HK3m88Gme234VcA0T8fdFmu2XMwN2ZaTV4Ica
         EXne0WVzRcD1nlkY7qwpAIplPi7DYEJZ/iecEimh8dpGMO4LxVm7yCSkx38grrvTUpnP
         acqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746970813; x=1747575613;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DVsERMSdIf5sKMRIf3zMFFXP9slyQDAj89Ix8Yi7kgA=;
        b=jUsikTZKCPogPUfgTnT+nPF7YdEUkMC927FLvKOP2/pC2EUakXbaCF9oyrqF91o0Ig
         2iIZgu8sYcglBT74VCwusHuNyy3xlVj9jAnY9Wb73iWEc3SKyTvZt17LWgm53e65VcUS
         C9FxRItsppwvK/5lL9q9fwmD42D5cUcFFaI8y7AO1IK8NRAoow6uzwg5Sf/vwRVXeRVk
         +18HQJS4gio0RfMrqiUMhwvw+C9T6gA+Wb3/ENV4qvlzGjCCE2MyyvFQHdKzp4gk6jV8
         LsnqTeNvDG/i+WXSMjfRZZ3M8OscoOp6BDe4SnaF06WInIK0XEve+I0HL8+W8/H018my
         jiiw==
X-Forwarded-Encrypted: i=1; AJvYcCWwvy0VNE0azjiymklqwhdGUR7QMpDfKje6s7GHQ6VPH8eJREN+7m+mJwLAkEL0wLcCYyUKYpQo6g2r@vger.kernel.org
X-Gm-Message-State: AOJu0YzQuYkKHakhVYKtmRRfgcQsmR29r6RSZk4ck3wO+ponI6LOJKT0
	jlZo5DAls1bOwtBCM1GDgG0JT7jUT8cv2F2NDjA7WLHzSGrJGpXDdxCaqgdQYh0=
X-Gm-Gg: ASbGncs6DnTwXsrSvttjbuymktCIajhqQ9fJKEBIWtUap1FEgrwY3j7fuk5TdrPSb6Y
	XmS9SjE99Y9kJPjnUKIlLb8xWZwPUXG4TDd0yAyNbNFoBKYtLp+j024k+hmOa0lewgGvhB4qZyc
	4FvJBW3Sgj95j94ETvDOAj2lhRko5O67oQPMSTJtkyFgmDEm5UNef/vf+358ACfTff5Cfk40VD7
	a9qYu2sLvHjXwgsHrKfHLQAk6FcuZzeNa8iYWBFUMVTbsau8KK9voWttU0IoQsWze1POTGQwYbv
	ePHn+AhFZekhHU9Mi+r3E8O+Ibiq8MOQDlsiPd7VVPnRKfMbRRdkJ7xydGH2zOWcy93MrTiSMvk
	ghWXFeFoC532HsA==
X-Google-Smtp-Source: AGHT+IHFdwKqWqDeRPUbNBSRmc+vSywbFgnPqE/8PACRgl2hkEeI3vsdadNPhXxEMsmI76yi2E/0hw==
X-Received: by 2002:a17:902:e952:b0:22e:3b65:9279 with SMTP id d9443c01a7336-22fc91cbb8amr136349565ad.53.1746970813374;
        Sun, 11 May 2025 06:40:13 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.17.86])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc754785bsm46665805ad.20.2025.05.11.06.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 May 2025 06:40:11 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v3 01/23] riscv: Add new error codes defined by SBI v3.0
Date: Sun, 11 May 2025 19:09:17 +0530
Message-ID: <20250511133939.801777-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250511133939.801777-1-apatel@ventanamicro.com>
References: <20250511133939.801777-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SBI v3.0 defines new error codes so add these new error codes
to the asm/sbi.h for use by newer SBI extensions.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/sbi.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 3d250824178b..4dd6aafb8468 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -419,6 +419,11 @@ enum sbi_ext_nacl_feature {
 #define SBI_ERR_ALREADY_STARTED -7
 #define SBI_ERR_ALREADY_STOPPED -8
 #define SBI_ERR_NO_SHMEM	-9
+#define SBI_ERR_INVALID_STATE	-10
+#define SBI_ERR_BAD_RANGE	-11
+#define SBI_ERR_TIMEOUT		-12
+#define SBI_ERR_IO		-13
+#define SBI_ERR_DENIED_LOCKED	-14
 
 extern unsigned long sbi_spec_version;
 struct sbiret {
@@ -503,11 +508,18 @@ static inline int sbi_err_map_linux_errno(int err)
 	case SBI_SUCCESS:
 		return 0;
 	case SBI_ERR_DENIED:
+	case SBI_ERR_DENIED_LOCKED:
 		return -EPERM;
 	case SBI_ERR_INVALID_PARAM:
+	case SBI_ERR_INVALID_STATE:
+	case SBI_ERR_BAD_RANGE:
 		return -EINVAL;
 	case SBI_ERR_INVALID_ADDRESS:
 		return -EFAULT;
+	case SBI_ERR_TIMEOUT:
+		return -ETIMEDOUT;
+	case SBI_ERR_IO:
+		return -EIO;
 	case SBI_ERR_NOT_SUPPORTED:
 	case SBI_ERR_FAILURE:
 	default:
-- 
2.43.0



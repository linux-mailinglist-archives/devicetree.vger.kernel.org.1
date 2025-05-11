Return-Path: <devicetree+bounces-175993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 690C6AB2898
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 15:41:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BBB13BA05D
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 13:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD31E2571D4;
	Sun, 11 May 2025 13:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="mulF8EG1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EBF2571BE
	for <devicetree@vger.kernel.org>; Sun, 11 May 2025 13:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746970840; cv=none; b=UoqHDybUjdEMUyWZplL1Ct6JAYP5ZO3y2YrmMjqUAoMfPJzPfXtJyoi8rLoY9RwZwJyA9JCdIqIQMVm5xMgXBLD9Zz/lZq3B1Q2Qf3MU19/ky6AJG2vOgbUG7fj8H92mvuYrjH0raI+lgvRwhuwmxR+DaOnXAzz9Sdv8XgNKznQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746970840; c=relaxed/simple;
	bh=fKLluswzTa56gHUFwQvXEf5D8fw4b1KiETn3nSG7kY0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CqCBEESjYATtTv7/+kZGuVsCli5Ax0jDqX7TJ88Gj/XQxJrvN8BSb9cuGX5LuF1UR+EOQGrUuComQT95mNThbFelBE/AXILluSHHvTUqHJHengixXvCT3d77HSJk973R4g5Qktm+4qk7rqCp35EwW5mQkXOcKla5XTr1fVtKDTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=mulF8EG1; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b1396171fb1so2352657a12.2
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 06:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1746970838; x=1747575638; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NxTPUwSNoQG9w3qR3LtIgBXvV+xInFFIHYJOltRLchg=;
        b=mulF8EG1Oivs2iD4DHOeqSs3Y/9IqHxLENpZC7WGZEGfVJktolBoXUGR1jpEw9teIg
         Q5+6Y+fGMdmkp/4ZYKhIT+eapESVXCuSc1cC1kRLMpo7SC8pu+q9XYy0UEgAr8AXdsqJ
         sUMaSBiNjU4VqmE1w+DMQL5xdzf1Nzz1DxuiN8Ep08mxHo7tjrXgzJMgKTYieaxjsAhn
         4xYHOJDPUVjYXhlk4PjjjzOTDPs9lsMtO4FwxcQNlwxVVLdWF63yGIS+rkosmb2T+2jR
         scmWJXdyru62e3Aial4tCZCl/IeDPNATkMra7fXushG98wAzBVdkdE8zDhyC8nXI9y3B
         MOVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746970838; x=1747575638;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NxTPUwSNoQG9w3qR3LtIgBXvV+xInFFIHYJOltRLchg=;
        b=m7ERtbfcmzv1H6FvG/PJ/cNhjt6tZhTwZhlDS/KlYflZ0UelE0K17jkkSqfdFmpInv
         FhdxoxhzdzW61ulROgK2/lJJA97q1trvQkAtM/DZW57rc0ogODBW7b+5nRgUM9OMwA5w
         gH+5RHpUbO5gHZmBZPvOpqwyij+N/wc/OJmmjvADuSTJ9xnwvXs/rZ0o5wsrOHKZxu8T
         p3y5smzZKw5Hic84ewatEBLdoPmPaqR6CNM2OBwkrLt7UJltK2muVRrS9gCUcwuFfhOV
         IQdd2OLERqFaSo5ggLIe2d15qI/yU29p9Fsu1NZfn4b19s7i8R1JC+EEeQNsZ1q0MCLt
         PjrA==
X-Forwarded-Encrypted: i=1; AJvYcCUUDxuizu0utZfG+0Ddcyr1oiX9+NFcjcu6JD1CX5Qob1EnTa2/D6KFAoVWz9xeZBXWQRFWgkRIExB7@vger.kernel.org
X-Gm-Message-State: AOJu0YwA+ygYvcuzUYKM606wjvzRZEfZRT3izBK9uUJ40LAtPhwIsneD
	bu6iGTIVeBoFdscRT12aGMPoItIXZYRVTP01AQ0vCIXIHJEDfUTnD1zXaT5GXY4=
X-Gm-Gg: ASbGnctj4I73Nl/icWdyUeXA+drfdk/106xZu3Tsqc2W3zvJ3DWMGbjRn6qTyx+uFpP
	s9Bm19xGnwGYmHmYI18XSa3Z9Ba6VzaDPGa8BtR2DTI/P0MPg7kp/sVdX6m3Cvoxuv1TtWWNHAl
	XpsgW41LbCP1PgY/Sp086gehomy0dHetGY8b5nutftlfC17TGsEtoXdvzllySfv3SwJ0pCrfyRu
	UjLDnv9NobmpV69YW/GcHHq76PCSIKF5XQ6TEH8lN/BoCHmWNYh9RDypjZ1n9OqMiViHb1SD84W
	BkOZdOVTNPrUthvYJIJN12oCKz50NlfzdqjdLhEuuNYeHn78y1mR8Zf/auijrgxnL+C9WGnDGMN
	v4dgPnZU5Rh47lA==
X-Google-Smtp-Source: AGHT+IHA3PsXqyuN65sUtIV2Ta99+xXozSEhh2Q4R2ahfGnFgJSheXDWuFscswXV0+c2V15ebDTDaw==
X-Received: by 2002:a17:902:d581:b0:21f:1549:a563 with SMTP id d9443c01a7336-22fc8b0cbbbmr134190455ad.2.1746970838172;
        Sun, 11 May 2025 06:40:38 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.17.86])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc754785bsm46665805ad.20.2025.05.11.06.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 May 2025 06:40:37 -0700 (PDT)
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
Subject: [PATCH v3 04/23] RISC-V: Add defines for the SBI message proxy extension
Date: Sun, 11 May 2025 19:09:20 +0530
Message-ID: <20250511133939.801777-5-apatel@ventanamicro.com>
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

Add defines for the new SBI message proxy extension which is part
of the SBI v3.0 specification.

Co-developed-by: Rahul Pathak <rpathak@ventanamicro.com>
Signed-off-by: Rahul Pathak <rpathak@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/sbi.h | 60 ++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 4dd6aafb8468..d295c26a7c26 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -35,6 +35,7 @@ enum sbi_ext_id {
 	SBI_EXT_DBCN = 0x4442434E,
 	SBI_EXT_STA = 0x535441,
 	SBI_EXT_NACL = 0x4E41434C,
+	SBI_EXT_MPXY = 0x4D505859,
 
 	/* Experimentals extensions must lie within this range */
 	SBI_EXT_EXPERIMENTAL_START = 0x08000000,
@@ -402,6 +403,65 @@ enum sbi_ext_nacl_feature {
 #define SBI_NACL_SHMEM_SRET_X(__i)		((__riscv_xlen / 8) * (__i))
 #define SBI_NACL_SHMEM_SRET_X_LAST		31
 
+enum sbi_ext_mpxy_fid {
+	SBI_EXT_MPXY_GET_SHMEM_SIZE,
+	SBI_EXT_MPXY_SET_SHMEM,
+	SBI_EXT_MPXY_GET_CHANNEL_IDS,
+	SBI_EXT_MPXY_READ_ATTRS,
+	SBI_EXT_MPXY_WRITE_ATTRS,
+	SBI_EXT_MPXY_SEND_MSG_WITH_RESP,
+	SBI_EXT_MPXY_SEND_MSG_WITHOUT_RESP,
+	SBI_EXT_MPXY_GET_NOTIFICATION_EVENTS,
+};
+
+enum sbi_mpxy_attribute_id {
+	/* Standard channel attributes managed by MPXY framework */
+	SBI_MPXY_ATTR_MSG_PROT_ID		= 0x00000000,
+	SBI_MPXY_ATTR_MSG_PROT_VER		= 0x00000001,
+	SBI_MPXY_ATTR_MSG_MAX_LEN		= 0x00000002,
+	SBI_MPXY_ATTR_MSG_SEND_TIMEOUT		= 0x00000003,
+	SBI_MPXY_ATTR_MSG_COMPLETION_TIMEOUT	= 0x00000004,
+	SBI_MPXY_ATTR_CHANNEL_CAPABILITY	= 0x00000005,
+	SBI_MPXY_ATTR_SSE_EVENT_ID		= 0x00000006,
+	SBI_MPXY_ATTR_MSI_CONTROL		= 0x00000007,
+	SBI_MPXY_ATTR_MSI_ADDR_LO		= 0x00000008,
+	SBI_MPXY_ATTR_MSI_ADDR_HI		= 0x00000009,
+	SBI_MPXY_ATTR_MSI_DATA			= 0x0000000A,
+	SBI_MPXY_ATTR_EVENTS_STATE_CONTROL	= 0x0000000B,
+	SBI_MPXY_ATTR_STD_ATTR_MAX_IDX,
+	/*
+	 * Message protocol specific attributes, managed by
+	 * the message protocol specification.
+	 */
+	SBI_MPXY_ATTR_MSGPROTO_ATTR_START	= 0x80000000,
+	SBI_MPXY_ATTR_MSGPROTO_ATTR_END		= 0xffffffff
+};
+
+/* Possible values of MSG_PROT_ID attribute */
+enum sbi_mpxy_msgproto_id {
+	SBI_MPXY_MSGPROTO_RPMI_ID = 0x0,
+};
+
+/** RPMI message protocol specific MPXY attributes */
+enum sbi_mpxy_rpmi_attribute_id {
+	SBI_MPXY_RPMI_ATTR_SERVICEGROUP_ID = SBI_MPXY_ATTR_MSGPROTO_ATTR_START,
+	SBI_MPXY_RPMI_ATTR_SERVICEGROUP_VERSION,
+	SBI_MPXY_RPMI_ATTR_MAX_ID,
+};
+
+/* Encoding of MSG_PROT_VER attribute */
+#define SBI_MPXY_MSG_PROT_VER_MAJOR(__ver)	(((__ver) >> 16) & 0xffff)
+#define SBI_MPXY_MSG_PROT_VER_MINOR(__ver)	((__ver) & 0xffff)
+#define SBI_MPXY_MSG_PROT_MKVER(__maj, __min)	(((__maj) << 16) | (__min))
+
+/* Capabilities available through CHANNEL_CAPABILITY attribute */
+#define SBI_MPXY_CHAN_CAP_MSI			BIT(0)
+#define SBI_MPXY_CHAN_CAP_SSE			BIT(1)
+#define SBI_MPXY_CHAN_CAP_EVENTS_STATE		BIT(2)
+#define SBI_MPXY_CHAN_CAP_SEND_WITH_RESP	BIT(3)
+#define SBI_MPXY_CHAN_CAP_SEND_WITHOUT_RESP	BIT(4)
+#define SBI_MPXY_CHAN_CAP_GET_NOTIFICATIONS	BIT(5)
+
 /* SBI spec version fields */
 #define SBI_SPEC_VERSION_DEFAULT	0x1
 #define SBI_SPEC_VERSION_MAJOR_SHIFT	24
-- 
2.43.0



Return-Path: <devicetree+bounces-131291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 686D29F2C3E
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 09:49:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75467167267
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 08:49:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EBEF201116;
	Mon, 16 Dec 2024 08:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="czk9nM6j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112B72010E2
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 08:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734338938; cv=none; b=cjIpV8nz88W4P05xS670Y/ejL2D9TUrqQXY7t1jLiy2JI2WlBk5LyQkI6Qp/kADg36P2YxjtedB8CVpLx6bc6jE4XR2W3DYae6T05IrLONvvLjLNVImSpQjVDwozVxbQ2NRh00uJ9vdgQRvEBiYaHYuD3grk5j1N6UTwdUI8miM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734338938; c=relaxed/simple;
	bh=43icYDitKGAJFCQcQUQh+xigsEvTJRoq6tVP0e8YBXg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KBC4dPMVNUOPxZ7TpLTamWIZ59DhfnR+zPmnxUwqokDd+fcx+tDYFxZkmBBFuQWUoYV4zLAbLs6Tj2WnxuDF1t1Zk5QE4675gBEsuIhgCrtYe6IINNYMmSbDBjUVpowcvXX27yqILrcWq/+Hk4Ya4gtaYtSLwto279dsf5trFAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=czk9nM6j; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-21634338cfdso44901605ad.2
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 00:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1734338936; x=1734943736; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tTubMU2kWF4VQtI7+afjrAi0Qg8VFM9pvYCuyyQx/90=;
        b=czk9nM6jwQ7mbHLJcOt306xGlayywp+cwTu66eAkox2nv2tMeVaEFEaKt6UdzZVxN7
         zEl2heWSX/GsoA6HLLKihPPqOWDNmbG9c9b+NC8B8dPkt2EfFwI8NbpGTTK9qSA3S24I
         g4aEl9Pci3ko13gwdZY7fhFks1SZ5AV2UKKoKfRwQmfKObreF4hH0pSg4TTa1okHdNQW
         ngbDDz+xqQ5lq8I4IuKHQnN9mXe+0vx5bBQpG03M+19kHf2D7xJJ6mffIPIYFzq1BpqR
         ns/C0/wzt9x2nXLfu1j6vmOn8MGwTbEfWbpig3WaTDTNAqx5TUfez10qUL9+22oloXko
         pCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734338936; x=1734943736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tTubMU2kWF4VQtI7+afjrAi0Qg8VFM9pvYCuyyQx/90=;
        b=NWtA01ALfhJQ2/J9dIaTA9cAfR0YPNZ1Bvnpq0Y1E5hNnhbJH8a9AFZ2sWuaHbbb/w
         3/hS7l5u0HQmb61PyhV2d8xakPqdhPLBLF12Pt5uPz2KXU9fuxEeHW3asXakpRf4z1DL
         T/ZUXjbFKwzIcm1qt7irzcz4Xhjedc59QduMSJuECkVgAncxr2v/EjfV7QDCKzXHc65J
         MxhRhSH3BFGYttb7mIXZu7QiYJ7B6My3+BCE/SJEiq3uf5K8AQ5lJFq3pgG5fV648Wsa
         OMjRFYaHPoP54DgtchzmjIv6Ulm5UWxas2wt2yEZsRMAsPeO8HyWH3HFV9ZFrTO848GV
         KDJg==
X-Forwarded-Encrypted: i=1; AJvYcCX7et22JJmKmTDZbp6ZkvJf1tRxE48reu/9GsxN9e2goPOJ/L+DGartwj6nUELmsWOlOtwW6bCKNNt+@vger.kernel.org
X-Gm-Message-State: AOJu0YwumDlfGcEMaAr6scskVK6uFXEuA6SYCoEqj0A2a7wQC1anK7G5
	/zScyWkm26EGmVK+xzX7cnF0OqzujkzHsxi3Gxwkb87C/dUXxlEZmIMMGihgAxg=
X-Gm-Gg: ASbGncs1gqDbu4doOENYRhnscTvXHgrBD74qRbuVZhRotlcf05Jw01pM36ennRsv44b
	7v74nzO8VV7ZQXCOLY6YZcW6tWvCtiEejqAH0g9bLv1+sfncoc789wN9+/CIXQEeLI4QyMZssrz
	xwxVEGctLfjgCcjflJo0hJVqmWPo+cXZbZUecHqmqDSa5veYiVuMzm0zDFT98homec6crysfI0q
	HitjfPY0+Ofc4U8p4EKQ0tHx5GXUeImG/5cHsNErxHaPl1bHZmg57/N/u9zaNW7vqyiP85/xg2z
	U2PgVF2lVE9FTLk=
X-Google-Smtp-Source: AGHT+IHpuJTFzeEhjSiGdehFNiKlPC/zQ57iedGa+8ilj9RzYBUBHeCW2l8Z59j6jtt7ugE/4lqbMg==
X-Received: by 2002:a17:902:ec90:b0:215:75a5:f72b with SMTP id d9443c01a7336-21892aed1eemr161821665ad.53.1734338936193;
        Mon, 16 Dec 2024 00:48:56 -0800 (PST)
Received: from localhost.localdomain ([223.185.130.105])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1e501d0sm37711495ad.116.2024.12.16.00.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 00:48:55 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH 4/8] RISC-V: Add defines for the SBI message proxy extension
Date: Mon, 16 Dec 2024 14:18:13 +0530
Message-ID: <20241216084817.373131-5-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241216084817.373131-1-apatel@ventanamicro.com>
References: <20241216084817.373131-1-apatel@ventanamicro.com>
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
 arch/riscv/include/asm/sbi.h | 59 ++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index bc35ad750e28..18817efba430 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -35,6 +35,7 @@ enum sbi_ext_id {
 	SBI_EXT_DBCN = 0x4442434E,
 	SBI_EXT_STA = 0x535441,
 	SBI_EXT_NACL = 0x4E41434C,
+	SBI_EXT_MPXY = 0x4D505859,
 
 	/* Experimentals extensions must lie within this range */
 	SBI_EXT_EXPERIMENTAL_START = 0x08000000,
@@ -401,6 +402,64 @@ enum sbi_ext_nacl_feature {
 #define SBI_NACL_SHMEM_SRET_X(__i)		((__riscv_xlen / 8) * (__i))
 #define SBI_NACL_SHMEM_SRET_X_LAST		31
 
+enum sbi_ext_mpxy_fid {
+	SBI_EXT_MPXY_SET_SHMEM,
+	SBI_EXT_MPXY_GET_CHANNEL_IDS,
+	SBI_EXT_MPXY_READ_ATTRS,
+	SBI_EXT_MPXY_WRITE_ATTRS,
+	SBI_EXT_MPXY_SEND_MSG_WITH_RESP,
+	SBI_EXT_MPXY_SEND_MSG_NO_RESP,
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



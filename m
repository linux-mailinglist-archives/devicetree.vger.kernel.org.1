Return-Path: <devicetree+bounces-142417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4419DA254D0
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:50:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBEF53A810B
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 174261FC7D7;
	Mon,  3 Feb 2025 08:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="nIg2SSZO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E691FC7E1
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572617; cv=none; b=J0pQES6LUKBCgZBX9urSFh5l0SJmgESebAl1mcx6TYaU9zVYlMfemxyLoGa8OTMYFYlOWu1oFwUbuwBk6poGGrG5dsCat/r3S2eNCxDlovglvZeAH9xNTF5ZovlNwq9W+TZN7QUwSdgrs+A5hN2IfJd6QyPlsNlOq0/kuhlPGN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572617; c=relaxed/simple;
	bh=YMpqZIPonInsMHgzcVOEUu7z9BcpSX3NDENvMdGdBxg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GyaT0uXumYE0bCJWYPLOjo0OlFsUH8RyUAD8uRvDvh3jShJsRZ1OGSgJAyam/yKuPeO3BmGRFbpXxSMkXU6PfrclKWBbBD6ANZE4ykEJK5d9IajCPiXpQd/fsc0rvRgi3AeV+plnAOIjCQRu7l/Rdb1vvnyJTXE3fUuVKQOM06I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=nIg2SSZO; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4678cd314b6so39178121cf.3
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738572614; x=1739177414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tCnHAquQUwch4tcFWwygkET+UwWze5YhLFw9G/xcbPA=;
        b=nIg2SSZOdo75eKmDbOKv4xsmeJ7LqtvO3Cz83tWu+QMEThdSjmmGtq8UwFFNM21UFZ
         CUb+BsdkB3jhlBfNcrUXUkIBjiKx9EC/uEX1FuyYj17n2EKNBRCuSNcLK7Vy0rPpCiBn
         0Qsp96lwJaCtkQZeLKOGaBjswmwJHQN2BzES84IgIoZeXkPBc/IeOTflTK7qsojVV5/L
         Wu40bz65p2Z7QmBIZHUS5warF/ZvYyfanE7T45cD5wBd2rdw4B/4H/aztzz6Fyr7x6qR
         dpWyJHF914wIGNnTV2yURW8v0Q/j0xH7oc8ks7P37WPLLUteyOfalYhYCQltuNgh2S8K
         BnVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738572614; x=1739177414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tCnHAquQUwch4tcFWwygkET+UwWze5YhLFw9G/xcbPA=;
        b=tcBOpbT7IjnWrrg9Dr0IqMmZ/Atnto9EBtdpHaOnrNHx6rfnH5b5FJpX5dXw2hXWHS
         eq3WguFW6YdU1okayAW/MhFW7DZ/lErj/QlxrlEOHdK84JXESXyAWhRjdXt9Qt2uqB2Z
         B2QtsVUPx2hYy4kB/lT8kEe2naMw6nI94mcFR6pszi0vz98OBRJY22rFPgX1KwZXnbak
         YcRN069uzbkYLLqDp69aAp1JGsy45eu/Etf5HjH+09yoiP0j1NdpIdy2qQSWdq9ccQBi
         uP1aGSY/j0QIylMDkHryNDjTouGxzi8xcKZsLFjXeyUx6Bqrv5qnF94f/EaIzu35nt+j
         /UnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPHmx2kPaOmzQYO235+4xE3fFXXTZ/rSlir4Tqr30QeQ+mU+yazh7L0UmIP+DSRfxQ1o+CopPWS+yo@vger.kernel.org
X-Gm-Message-State: AOJu0YzJn3HmyYDvIMRSDPQq25PiHScOM7nSngx0qp2NVfXOKARVQcMR
	IbjUgUnJnua+B0CUKoy/RX5POKDnO6tFu/Gh9+mRpf0MAor8otiUWZ92+lbXrsc=
X-Gm-Gg: ASbGncsVZzzveWG23ykFC/46xox6Bgt2jUwT/5NfIjLrHzP6pu21ucEWuclwQXAaeI9
	OhnWKHJqycj7ra3DvqCL2SwPqqaAQYlsp14a3AiPyXBdFoebatfP267HumD1smCuqe8JUflvf8d
	yNvYKpvv6qciUOYwEOXY/C4Hu3pDL6KUFNeheLH/0JRYDuze5hffIEsoBax1DeuxKJQGUwCMDgH
	IsLMGyc8U97hgd1mBK9fqLLCebUvVoqW2fQ79m5MbCaY6oYb5/zhZSTy/Q99fiLBYaeYEidmLFI
	ArxpnI9/J2MwAJRP3bCwcU6nKrwO0Ukz0FYkz/LXESZuq8dmANwSfps=
X-Google-Smtp-Source: AGHT+IGOIuwdSy2AtM7BxpLkRJK1hm6BLxTjmWDlKOGDZZi51/9Wkwiyb7XXsEI/yNOgfLAOZVUrkA==
X-Received: by 2002:a05:622a:1803:b0:467:84a7:5147 with SMTP id d75a77b69052e-46fd0b6f794mr281355951cf.39.1738572614133;
        Mon, 03 Feb 2025 00:50:14 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46fdf0e3089sm47657911cf.46.2025.02.03.00.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 00:50:13 -0800 (PST)
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
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH v2 04/17] RISC-V: Add defines for the SBI message proxy extension
Date: Mon,  3 Feb 2025 14:18:53 +0530
Message-ID: <20250203084906.681418-5-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250203084906.681418-1-apatel@ventanamicro.com>
References: <20250203084906.681418-1-apatel@ventanamicro.com>
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
index 972eecccfb2a..b730b5159b97 100644
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



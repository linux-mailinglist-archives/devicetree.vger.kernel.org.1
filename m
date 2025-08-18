Return-Path: <devicetree+bounces-205570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0BBB297B7
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:10:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3093620313E
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:10:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21AA826159E;
	Mon, 18 Aug 2025 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="CE4akxDe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785DC25F97C
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490234; cv=none; b=ScqQ5T5X7s+rVsCnDuiv7bM/Y9H9KaXRi8oipbAxQ6zbfpfqQgBxj2/TOCvQ/Tdc7oPBWmDEJBNBP7X6ionnE+mQkOMetTh1E66AH+3t+I8m+dnBDuIFkgrbuFqMpgWPQia8KOZvrGISvUA9C8WVbZB0nezqOPnkgihceWYD+7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490234; c=relaxed/simple;
	bh=JzH3yhqwYOudTCMAKRwj0oa4K99Zc+6yOM1JzEGNxmI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=izotpOQUk7cKKZdRO6qM0677lI0cWz15PeDg6IhwAUc7CnL7bJajQgYOO1iubwrqr9YCgMjB5dMq085KicwtEQKMFlMyuQ04qY13F1dZAyx9RJwjkaA3bqaRhePsDkdpt2Avc4pzyxMU5FCzGKduFFgGakbcgZsI6V9HlFJah2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=CE4akxDe; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-323266d6f57so3660426a91.0
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 21:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1755490232; x=1756095032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hPHcLL2SG/7gEz7cPa5IwB1kBN+rHxLpWke4w+6lxok=;
        b=CE4akxDeqOem6d46ePEyqAupaBofCeegggCdJS5x8WF0ZTSGJolGt2GULq31ZQmP5r
         L+d8T9US0UE4vNKPGKsN+Ucrk8S1j0F1HIFczzpqvnwbzGVNxpJdqfqwwddWnUuBSvL8
         L5PBf/CGHY4YthJwMpae2FFBXWGmks/Q3LeW80WM3uNm6/IExiNR6q/sZ8ZQL+uCP4Hj
         JHM6brEEG5Chew8SsMKrDOoB5jOJekirDiP4OG0Sx2HuDPra6FTRccHbGffZz0y8CLF4
         KutSYj02ADY6qgh9huiUVw1NhLRGIwqEuWh18neqBBpUz04TKhGTLlX4k6l4DGlkkh3b
         6kFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490232; x=1756095032;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hPHcLL2SG/7gEz7cPa5IwB1kBN+rHxLpWke4w+6lxok=;
        b=fm3bPd/rgYb2/cNs2dbQqpvFDIrZt7Il736EuLkNowumLeWB9/UT0JNGibJbEJiWiI
         KmCtH0qQgu78xtOpDR9XVNH4HWcNZmOd00u6pPSYgAmWTiW81ZdpwsJaHyryOLTKCx+R
         n/PLRa4pFMnZeBvhWGLnxq9b6BBvBU42Q0N1+fQ8u+KOmB5cyBgoAPVtiQaLM+U02uLa
         qyvfUgHHyx1HZj90EHBKaHFscN6nEGW69dsKpO3GtthbR354JnR04PR0tn25Ssa240/W
         O4PBV+hi0B9rBOZmV9XWK5r0LkY0GfX+NiBpUaMHNgNIqkLL8jZNX9QKdnXYYUqQ4Y9b
         /rMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxVvwz1mE9WNARxTKljwvmwakZFU5nOqNoOgnd8vO7fkFXOsX0Ai79HMNwiCTKtA55p8mHJk6hHnEV@vger.kernel.org
X-Gm-Message-State: AOJu0YzLekbxT1kk9AgFz1pOqQ8IkkCwALVYC3GBDukwHstypcip2XnH
	/9790SHrmbYqnCSS5BpeK6fTqmDw+9UBJix+Tkw2tOJZrPXXmte+tOj4QqeO4VsTBko=
X-Gm-Gg: ASbGnctaX5bp9OP54YvRIQRhSPhgJIqLSPhg8NzDJAiBzG6RciBOLRXBC/UcqYb+EZr
	gkOJ5BOq7ORzMEtdxVsc0eMdLlsf67LqHTWN0vjWl5lQtRsWSeJ8/H5OROk0++FTqymR4zM0hFp
	zTL95nSWfqm4y21gK6UtBj3oqKS8t/ZG0XonFLndEX2lknjtyyN6VkrvoTvU43/E9JGDqJE166c
	gzbCIMRm9TBrcgsPLYV241xou0x5KhLKtbZa1vkjRdXjYrJ26zcAnqbEz3379KYPBuJtWbJV25R
	0rUOv0UUk3QyGyvMDrlSSQPX+t4rpAsGa+/eJgVxXnisdrrnJyq9Tf3bzKXyBM4qMtPI33BRm9T
	m2n8QZdi+DL2B5thCDABnd5zORTXZfqHETqtOB/GuYLiRa1DWgXXAsA==
X-Google-Smtp-Source: AGHT+IG2Lm+Y52n6XKyIXBlc4RYKAT1nFaGLczgz8usKKmMpO2sTLSC8znXmp2nRau7FtQyr+2X6Qg==
X-Received: by 2002:a17:90b:1e0e:b0:313:62ee:45a with SMTP id 98e67ed59e1d1-32341ed21famr13448415a91.13.1755490231451;
        Sun, 17 Aug 2025 21:10:31 -0700 (PDT)
Received: from localhost.localdomain ([122.171.17.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c70356sm6560972a91.25.2025.08.17.21.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:10:30 -0700 (PDT)
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
	Alexandre Ghiti <alex@ghiti.fr>,
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
	linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Atish Patra <atishp@rivosinc.com>
Subject: [PATCH v10 03/24] RISC-V: Add defines for the SBI message proxy extension
Date: Mon, 18 Aug 2025 09:38:59 +0530
Message-ID: <20250818040920.272664-4-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250818040920.272664-1-apatel@ventanamicro.com>
References: <20250818040920.272664-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add defines for the new SBI message proxy extension which is part
of the SBI v3.0 specification.

Reviewed-by: Atish Patra <atishp@rivosinc.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Co-developed-by: Rahul Pathak <rpathak@ventanamicro.com>
Signed-off-by: Rahul Pathak <rpathak@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/sbi.h | 62 ++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 341e74238aa0..c19e5c7383a6 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -36,6 +36,7 @@ enum sbi_ext_id {
 	SBI_EXT_STA = 0x535441,
 	SBI_EXT_NACL = 0x4E41434C,
 	SBI_EXT_FWFT = 0x46574654,
+	SBI_EXT_MPXY = 0x4D505859,
 
 	/* Experimentals extensions must lie within this range */
 	SBI_EXT_EXPERIMENTAL_START = 0x08000000,
@@ -430,6 +431,67 @@ enum sbi_fwft_feature_t {
 
 #define SBI_FWFT_SET_FLAG_LOCK			BIT(0)
 
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
+/* Possible values of MSG_PROT_ID attribute as-per SBI v3.0 (or higher) */
+enum sbi_mpxy_msgproto_id {
+	SBI_MPXY_MSGPROTO_RPMI_ID = 0x0,
+};
+
+/* RPMI message protocol specific MPXY attributes */
+enum sbi_mpxy_rpmi_attribute_id {
+	SBI_MPXY_RPMI_ATTR_SERVICEGROUP_ID = SBI_MPXY_ATTR_MSGPROTO_ATTR_START,
+	SBI_MPXY_RPMI_ATTR_SERVICEGROUP_VERSION,
+	SBI_MPXY_RPMI_ATTR_IMPL_ID,
+	SBI_MPXY_RPMI_ATTR_IMPL_VERSION,
+	SBI_MPXY_RPMI_ATTR_MAX_ID
+};
+
+/* Encoding of MSG_PROT_VER attribute */
+#define SBI_MPXY_MSG_PROT_VER_MAJOR(__ver)	upper_16_bits(__ver)
+#define SBI_MPXY_MSG_PROT_VER_MINOR(__ver)	lower_16_bits(__ver)
+#define SBI_MPXY_MSG_PROT_MKVER(__maj, __min)	(((u32)(__maj) << 16) | (u16)(__min))
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



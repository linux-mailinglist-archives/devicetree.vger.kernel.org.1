Return-Path: <devicetree+bounces-191844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B53AAF0A48
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 07:15:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B525485847
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 05:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A727E1F8ADD;
	Wed,  2 Jul 2025 05:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Wv0t/MUi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10671F78E0
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 05:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751433279; cv=none; b=GPezGFKy+pmrBxQQT2fnutsjLy6SZtNiry4nweZN/pKZmmoEAyJn6MNTXnzTcfckif7Ii6PyVmk0NGJP+ug0Rouq3ce4xl3YIBgII0HAu8PKSiGZSJAr6pjqr79bSgxcKBT1PAS4PsG6Go2kRhuLSQxLWXvVelMdrdXmqHL3qnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751433279; c=relaxed/simple;
	bh=j2OFfQpWBaGYJhqPKT9rFOG4EIUH8lrP+UpGBH4mqxQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MYi5UHYXsKfHyXtS0jMM+Myo6mksjeWzxMUz8Ffal4C/eQIPzWV4xAL3a1BZtt7HjpkY0qw3rDB8ZYQPGXCeXny/8edni3KUZUH6ANGWj7ePGBN3JXjsvzW6LGT10E1Y1TmaPfhhBnonaRcCQ1wIiC1IQEpDMeGr5DWT3kqE4K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Wv0t/MUi; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-23636167b30so37266015ad.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 22:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751433277; x=1752038077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d/5/u8lxcTpaYqZ0TVUq4VuL6zz3DLTGiHSQJRlenIE=;
        b=Wv0t/MUi0VPQAbpgM96MexQJbVeMQ3SLJwGrUBC6p/Pk2RYwtJYhSbGdCdEWDxAHcJ
         yUJlx5NBn+IwSinLEpVmwdVfnrnhrNQMiZKHKYmifMxeIafBq/SUI7Y+H8SOsBWKXGYZ
         gBjfe56XXgiEF1984ZUSq9Ah392S/1FpNFgAXB8zKCjIT5NurbOBLrDhpto3F790AY2x
         ZRprR8euhOpK2thIBN+QjjVrVwc7tI0MkcquaMyLiyK1CUTr8s4VRWYGwade9h8vzHNd
         YNyS/+YvVv1LwmWtOEUdzCNFKoRiARGUDvAHM6Sv2o8Eb8yO7dVW/KXWzce2r549G6hn
         QC4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751433277; x=1752038077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d/5/u8lxcTpaYqZ0TVUq4VuL6zz3DLTGiHSQJRlenIE=;
        b=nL4ngXbSyvbrr2hlkPEkUOLbIMz6yMlVJVF0aleAa4Z39F/bYJCMo7rWoNh5CqO+MQ
         a6fWIzMm8Fz94bE2Le8JSyvy6aF+ZHfytTZqemH4s97Iq1sO5vpHS7/E/pI4YP8uSXIx
         U5jFNNZSqD04tqrRQ8eX/90yOgmWJ183i3k2RYoOjJJkEfGYvzTTLvlFegilgHzKtxqI
         +LaZtXiCJn18sb/H1Vs/3wFQc6gvX80IGXiDKU+MkJ7GJgzxAfUvr9Nx78Odwo18woDB
         fBW4BnX5MTG6B+iK/q3LzXnc6KtqswZzf4bXKQggCOZqGcTKAwsC9RjNFxYV5ELjrzAE
         DPbw==
X-Forwarded-Encrypted: i=1; AJvYcCUACEDJqYCMfkTIur9Mv/W2e31O+SnumLPARnd0iOat2F/q6i9XuDokEgSO0z++FxNCFRVZ3KFcdSaF@vger.kernel.org
X-Gm-Message-State: AOJu0YxUg73FxARPGO77MeTDm8BIr3ch0I65HNh6hSNQ53xZLDICmL9Y
	+2IRx76zW3r2EUptfcuj5wKbDsBe+qfvkp7sL1wMzLt13vG8yoHFe7/gMWPcCLyhQ30=
X-Gm-Gg: ASbGncs/pkYMzWuswQt/Oy24QWL3YpiiG0jDjkWRaABnk987/cvHs46YJd/XsVO48+B
	IM6XZOG+Muz+rojowCCF4oFVK3eJ94ApaoptAvLjbLs2FWuvmrva82A0bReA/zQ0k1Lyilewnyk
	5i5iMM2DYGdyYBqlpzdOMxFyhtL0ZoQlArcW4U5qz+GBV9RuoP16f4Z2Xp/DBXmZRL5QykS6cGp
	7jKBPUh1EZQoNhL/ppOqU4ksPlhVYyiiYN96AWqNEO6Ut6NCXceBnThiQbRHlA90FjGx2TE2ShC
	TIamu4pL9b9+qA/fsMhXLg2uu6tF7rjjDQYeOgtX0g6zutDK1BZqPaFirg3WonQmqzi3IR3s87a
	aaLrsFzYTqdGZ6YGVb2vfcwFetFc=
X-Google-Smtp-Source: AGHT+IES9LhEnWB4A9fxqUJqeryubwD4uQ/CtDShKyl6gs+Nv1L1brdg7eqin6hNQ7dmbZoM/4qL7w==
X-Received: by 2002:a17:903:1a4e:b0:235:129e:f649 with SMTP id d9443c01a7336-23c6e4b0bedmr30949955ad.12.1751433276946;
        Tue, 01 Jul 2025 22:14:36 -0700 (PDT)
Received: from localhost.localdomain ([14.141.91.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c6fe31933sm4719595ad.220.2025.07.01.22.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 22:14:36 -0700 (PDT)
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
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v7 04/24] mailbox: Add common header for RPMI messages sent via mailbox
Date: Wed,  2 Jul 2025 10:43:25 +0530
Message-ID: <20250702051345.1460497-5-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250702051345.1460497-1-apatel@ventanamicro.com>
References: <20250702051345.1460497-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RPMI based mailbox controller drivers and mailbox clients need to
share defines related to RPMI messages over mailbox interface so add
a common header for this purpose.

Co-developed-by: Rahul Pathak <rpathak@ventanamicro.com>
Signed-off-by: Rahul Pathak <rpathak@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 include/linux/mailbox/riscv-rpmi-message.h | 214 +++++++++++++++++++++
 1 file changed, 214 insertions(+)
 create mode 100644 include/linux/mailbox/riscv-rpmi-message.h

diff --git a/include/linux/mailbox/riscv-rpmi-message.h b/include/linux/mailbox/riscv-rpmi-message.h
new file mode 100644
index 000000000000..3f4c73529aa5
--- /dev/null
+++ b/include/linux/mailbox/riscv-rpmi-message.h
@@ -0,0 +1,214 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2025 Ventana Micro Systems Inc. */
+
+#ifndef _LINUX_RISCV_RPMI_MESSAGE_H_
+#define _LINUX_RISCV_RPMI_MESSAGE_H_
+
+#include <linux/errno.h>
+#include <linux/mailbox_client.h>
+#include <linux/types.h>
+#include <linux/wordpart.h>
+
+/* RPMI version encode/decode macros */
+#define RPMI_VER_MAJOR(__ver)		upper_16_bits(__ver)
+#define RPMI_VER_MINOR(__ver)		lower_16_bits(__ver)
+#define RPMI_MKVER(__maj, __min)	make_u32_from_two_u16(__maj, __min)
+
+/* RPMI message header */
+struct rpmi_message_header {
+	__le16 servicegroup_id;
+	u8 service_id;
+	u8 flags;
+	__le16 datalen;
+	__le16 token;
+};
+
+/* RPMI message */
+struct rpmi_message {
+	struct rpmi_message_header header;
+	u8 data[];
+};
+
+/* RPMI notification event */
+struct rpmi_notification_event {
+	__le16 event_datalen;
+	u8 event_id;
+	u8 reserved;
+	u8 event_data[];
+};
+
+/* RPMI error codes */
+enum rpmi_error_codes {
+	RPMI_SUCCESS			= 0,
+	RPMI_ERR_FAILED			= -1,
+	RPMI_ERR_NOTSUPP		= -2,
+	RPMI_ERR_INVALID_PARAM		= -3,
+	RPMI_ERR_DENIED			= -4,
+	RPMI_ERR_INVALID_ADDR		= -5,
+	RPMI_ERR_ALREADY		= -6,
+	RPMI_ERR_EXTENSION		= -7,
+	RPMI_ERR_HW_FAULT		= -8,
+	RPMI_ERR_BUSY			= -9,
+	RPMI_ERR_INVALID_STATE		= -10,
+	RPMI_ERR_BAD_RANGE		= -11,
+	RPMI_ERR_TIMEOUT		= -12,
+	RPMI_ERR_IO			= -13,
+	RPMI_ERR_NO_DATA		= -14,
+	RPMI_ERR_RESERVED_START		= -15,
+	RPMI_ERR_RESERVED_END		= -127,
+	RPMI_ERR_VENDOR_START		= -128,
+};
+
+static inline int rpmi_to_linux_error(int rpmi_error)
+{
+	switch (rpmi_error) {
+	case RPMI_SUCCESS:
+		return 0;
+	case RPMI_ERR_INVALID_PARAM:
+	case RPMI_ERR_BAD_RANGE:
+	case RPMI_ERR_INVALID_STATE:
+		return -EINVAL;
+	case RPMI_ERR_DENIED:
+		return -EPERM;
+	case RPMI_ERR_INVALID_ADDR:
+	case RPMI_ERR_HW_FAULT:
+		return -EFAULT;
+	case RPMI_ERR_ALREADY:
+		return -EALREADY;
+	case RPMI_ERR_BUSY:
+		return -EBUSY;
+	case RPMI_ERR_TIMEOUT:
+		return -ETIMEDOUT;
+	case RPMI_ERR_IO:
+		return -ECOMM;
+	case RPMI_ERR_FAILED:
+	case RPMI_ERR_NOTSUPP:
+	case RPMI_ERR_NO_DATA:
+	case RPMI_ERR_EXTENSION:
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+/* RPMI Linux mailbox attribute IDs */
+enum rpmi_mbox_attribute_id {
+	RPMI_MBOX_ATTR_SPEC_VERSION,
+	RPMI_MBOX_ATTR_MAX_MSG_DATA_SIZE,
+	RPMI_MBOX_ATTR_SERVICEGROUP_ID,
+	RPMI_MBOX_ATTR_SERVICEGROUP_VERSION,
+	RPMI_MBOX_ATTR_IMPL_ID,
+	RPMI_MBOX_ATTR_IMPL_VERSION,
+	RPMI_MBOX_ATTR_MAX_ID
+};
+
+/* RPMI Linux mailbox message types */
+enum rpmi_mbox_message_type {
+	RPMI_MBOX_MSG_TYPE_GET_ATTRIBUTE,
+	RPMI_MBOX_MSG_TYPE_SET_ATTRIBUTE,
+	RPMI_MBOX_MSG_TYPE_SEND_WITH_RESPONSE,
+	RPMI_MBOX_MSG_TYPE_SEND_WITHOUT_RESPONSE,
+	RPMI_MBOX_MSG_TYPE_NOTIFICATION_EVENT,
+	RPMI_MBOX_MSG_MAX_TYPE
+};
+
+/* RPMI Linux mailbox message instance */
+struct rpmi_mbox_message {
+	enum rpmi_mbox_message_type type;
+	union {
+		struct {
+			enum rpmi_mbox_attribute_id id;
+			u32 value;
+		} attr;
+
+		struct {
+			u32 service_id;
+			void *request;
+			unsigned long request_len;
+			void *response;
+			unsigned long max_response_len;
+			unsigned long out_response_len;
+		} data;
+
+		struct {
+			u16 event_datalen;
+			u8 event_id;
+			u8 *event_data;
+		} notif;
+	};
+	int error;
+};
+
+/* RPMI Linux mailbox message helper routines */
+static inline void rpmi_mbox_init_get_attribute(struct rpmi_mbox_message *msg,
+						enum rpmi_mbox_attribute_id id)
+{
+	msg->type = RPMI_MBOX_MSG_TYPE_GET_ATTRIBUTE;
+	msg->attr.id = id;
+	msg->attr.value = 0;
+	msg->error = 0;
+}
+
+static inline void rpmi_mbox_init_set_attribute(struct rpmi_mbox_message *msg,
+						enum rpmi_mbox_attribute_id id,
+						u32 value)
+{
+	msg->type = RPMI_MBOX_MSG_TYPE_SET_ATTRIBUTE;
+	msg->attr.id = id;
+	msg->attr.value = value;
+	msg->error = 0;
+}
+
+static inline void rpmi_mbox_init_send_with_response(struct rpmi_mbox_message *msg,
+						     u32 service_id,
+						     void *request,
+						     unsigned long request_len,
+						     void *response,
+						     unsigned long max_response_len)
+{
+	msg->type = RPMI_MBOX_MSG_TYPE_SEND_WITH_RESPONSE;
+	msg->data.service_id = service_id;
+	msg->data.request = request;
+	msg->data.request_len = request_len;
+	msg->data.response = response;
+	msg->data.max_response_len = max_response_len;
+	msg->data.out_response_len = 0;
+	msg->error = 0;
+}
+
+static inline void rpmi_mbox_init_send_without_response(struct rpmi_mbox_message *msg,
+							u32 service_id,
+							void *request,
+							unsigned long request_len)
+{
+	msg->type = RPMI_MBOX_MSG_TYPE_SEND_WITHOUT_RESPONSE;
+	msg->data.service_id = service_id;
+	msg->data.request = request;
+	msg->data.request_len = request_len;
+	msg->data.response = NULL;
+	msg->data.max_response_len = 0;
+	msg->data.out_response_len = 0;
+	msg->error = 0;
+}
+
+static inline void *rpmi_mbox_get_msg_response(struct rpmi_mbox_message *msg)
+{
+	return msg ? msg->data.response : NULL;
+}
+
+static inline int rpmi_mbox_send_message(struct mbox_chan *chan,
+					 struct rpmi_mbox_message *msg)
+{
+	int ret;
+
+	/* Send message for the underlying mailbox channel */
+	ret = mbox_send_message(chan, msg);
+	if (ret < 0)
+		return ret;
+
+	/* Explicitly signal txdone for mailbox channel */
+	ret = msg->error;
+	mbox_client_txdone(chan, ret);
+	return ret;
+}
+
+#endif /* _LINUX_RISCV_RPMI_MESSAGE_H_ */
-- 
2.43.0



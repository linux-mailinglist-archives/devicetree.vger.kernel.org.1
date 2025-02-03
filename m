Return-Path: <devicetree+bounces-142418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 942FCA254D2
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1684E1667A7
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A82C31FCF68;
	Mon,  3 Feb 2025 08:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Joj1gEXd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A1F1FCD0B
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572628; cv=none; b=En9qVZBSdji78EsKB+6ZM59BJHKbORv4vDZvy5BKyd4Arj7JBETW7FGkE31nEZypiT7u5zIJof5um9/aavza0deIoOSia1lMytfsiVNGBKZbZrQ+cuHDacN4OCMysC2g/7iIQ+38duq5/y5WGL2HmTSLUTemriF9eUQMFownL9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572628; c=relaxed/simple;
	bh=JhXfpKKCbktH8tF1HsRyWnAzeCC6NiI2ESy73c57R2k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Nxa6yf2lwXkGz0nF6YJy3r+z7mkq2p8L+u3waJTPjwd/AkIrhvI7N0oIgSAU7bP2sHyLoKUSUM7tPEIG3hu9OwC3f1dxIhlx8VtOmh7Sm3SXNrt7IBs/qrnvuxhSCREm/oFcZ8QiRhKdxUEOOwNMNWmvYviXnXyQ+jCYxzvt2VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Joj1gEXd; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4679d366adeso36828121cf.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738572625; x=1739177425; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XdK3RA2/Xw6yVMNVLx3NKCgbGjnJZG+z+r3IIEXb3Yg=;
        b=Joj1gEXd7lTJtHvJ4VxMKqgMGu/E1yhoyUG93oHP4Cx2b9Xn+fUdZSU6irSAsHBuke
         m/gNddli0BHnqGe54MamupT8R9Rbe67fwk5buuebhnWSRNA4A9lOn7SJi7yLE8Pq4lMf
         L1QhvHrnJyuDa5REWyBe20ZsLDg5E4QjC26lWAi4iXFwbyHJUdLcDXcEHRFZckdhbOMR
         83tcM4YT1VQ8wRKTZ/G4LDlHDaZtgzyqmneaTERVjyLmJYlpQ0xvny72AX9GACV6ER9Q
         IA6pPO4Q+nc/Acyd7ed3QGDp5BNsitZ0FMSc7KU82E/tucdF9Uk8jn7wdS5SbwQfvo8U
         TMCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738572625; x=1739177425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XdK3RA2/Xw6yVMNVLx3NKCgbGjnJZG+z+r3IIEXb3Yg=;
        b=X6Upo9k5s6hjFLH5QvhRSER1tALF3GpD3DM1ND4dwJQk9+ymYLyePyR9LUcB90NiAW
         05Q0qMxw7fHDuGuBY7v2J8keRSpBrkOPBoBgFhUDFXp87B2GoZQfJP0LmNA/YrBlgqEg
         n4ioQmOMoMwqf76Ppi51RYAeoyXhR7XtUXfClLQCKRORug/vLsFuTO1TsyWpTn2/NCqo
         2EOgHiUeGpOORtstMc0zvTZRmBjNCgxt0zJrqmCPNRDqx/6qdgyPfp3ZlQakzujQkTUl
         wocC6CHwxV0xBb5UtZODlkFtfuUmZeqPyKt+jUp2nYdJUU2qmyV9hW8xqkPNgxbwXYDs
         gLfQ==
X-Forwarded-Encrypted: i=1; AJvYcCW24WjIl0PFuPP3wpF/okc/zL2W+BY4tDlyszQ8g4DlkXpv4ue9+dtdEgH5l3cP5g3V4yh8EZGnLLsH@vger.kernel.org
X-Gm-Message-State: AOJu0YymRo8Anv3Xdf0aFKZ65xeRB3/d3Lv9/HJrABE3iWgFP5BQU1q+
	TlnI5TgTRi0YCLJd8a+NPr8fByskN3jZ3q6TxafSBJ883dAf3bqFR0Zy/afPCx8=
X-Gm-Gg: ASbGnct9FCqdH/jGIgMqn187U8YwM5XfGxmDmUu487IsQLL1NOhpH/C5hMK32oBFoQ4
	JapOzVgGaGZiNJ1t9e5q0AqA6vW1WkVc4lSvNDEEnHworoNXuENOH+CG6KQKScYEC3IhbOATIlD
	AXlYeARPnbIXMdh4b80cxb5/GoJ9w/+AkkAhgFma/SAW+aeORASVP3p7392FN4iqvo0yq7NdaaI
	Yg1L0xbAvGDeXFAl7PgZ9q7KtWIc2VkLFO/OEEUUjVcqAXYYHCwbpqPXsmu6HRFPQ/bEu4R4H3Y
	+iaSpEdT7UYIASz16Ef67Wgh+8hu2vOwrJDIjYcW24+RydEe5yQpcbw=
X-Google-Smtp-Source: AGHT+IHVI9spQDZrHgsamoDpI1hVc9XGEsTGMyR+0ZZj8QriPFJvFNy8qUlPnrOP5LODn17USjnipw==
X-Received: by 2002:a05:622a:1aa0:b0:467:52bd:c137 with SMTP id d75a77b69052e-46fdd354769mr237348941cf.7.1738572625551;
        Mon, 03 Feb 2025 00:50:25 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46fdf0e3089sm47657911cf.46.2025.02.03.00.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 00:50:24 -0800 (PST)
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
Subject: [RFC PATCH v2 05/17] mailbox: Add common header for RPMI messages sent via mailbox
Date: Mon,  3 Feb 2025 14:18:54 +0530
Message-ID: <20250203084906.681418-6-apatel@ventanamicro.com>
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

The RPMI based mailbox controller drivers and mailbox cliens need to
share defines related to RPMI messages over mailbox interface so add
a common header for this purpose.

Co-developed-by: Rahul Pathak <rpathak@ventanamicro.com>
Signed-off-by: Rahul Pathak <rpathak@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 include/linux/mailbox/riscv-rpmi-message.h | 206 +++++++++++++++++++++
 1 file changed, 206 insertions(+)
 create mode 100644 include/linux/mailbox/riscv-rpmi-message.h

diff --git a/include/linux/mailbox/riscv-rpmi-message.h b/include/linux/mailbox/riscv-rpmi-message.h
new file mode 100644
index 000000000000..2747a1840937
--- /dev/null
+++ b/include/linux/mailbox/riscv-rpmi-message.h
@@ -0,0 +1,206 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2024 Ventana Micro Systems Inc.
+ */
+
+#ifndef _LINUX_RISCV_RPMI_MESSAGE_H_
+#define _LINUX_RISCV_RPMI_MESSAGE_H_
+
+#include <linux/mailbox_client.h>
+
+/** RPMI version encode/decode macros */
+#define RPMI_VER_MAJOR(__ver)		(((__ver) >> 16) & 0xffff)
+#define RPMI_VER_MINOR(__ver)		((__ver) & 0xffff)
+#define RPMI_MKVER(__maj, __min)	(((__maj) << 16) | (__min))
+
+/** RPMI message header */
+struct rpmi_message_header {
+	__le16 servicegroup_id;
+	u8 service_id;
+	u8 flags;
+	__le16 datalen;
+	__le16 token;
+};
+
+/** RPMI message */
+struct rpmi_message {
+	struct rpmi_message_header header;
+	u8 data[];
+};
+
+/** RPMI notification event */
+struct rpmi_notification_event {
+	__le16 event_datalen;
+	u8 event_id;
+	u8 reserved;
+	u8 event_data[];
+};
+
+/** RPMI error codes */
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
+/** RPMI linux mailbox attribute IDs */
+enum rpmi_mbox_attribute_id {
+	RPMI_MBOX_ATTR_SPEC_VERSION = 0,
+	RPMI_MBOX_ATTR_MAX_MSG_DATA_SIZE,
+	RPMI_MBOX_ATTR_SERVICEGROUP_ID,
+	RPMI_MBOX_ATTR_SERVICEGROUP_VERSION,
+	RPMI_MBOX_ATTR_MAX_ID,
+};
+
+/** RPMI linux mailbox message types */
+enum rpmi_mbox_message_type {
+	RPMI_MBOX_MSG_TYPE_GET_ATTRIBUTE = 0,
+	RPMI_MBOX_MSG_TYPE_SET_ATTRIBUTE,
+	RPMI_MBOX_MSG_TYPE_SEND_WITH_RESPONSE,
+	RPMI_MBOX_MSG_TYPE_SEND_WITHOUT_RESPONSE,
+	RPMI_MBOX_MSG_TYPE_NOTIFICATION_EVENT,
+	RPMI_MBOX_MSG_MAX_TYPE,
+};
+
+/** RPMI linux mailbox message instance */
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
+/** RPMI linux mailbox message helper routines */
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



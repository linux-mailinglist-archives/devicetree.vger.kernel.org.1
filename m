Return-Path: <devicetree+bounces-81072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F2E91B2FC
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 01:54:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 107EE1C228B6
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 23:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D811A38C5;
	Thu, 27 Jun 2024 23:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Si5Lb3Xh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761C11A2FD4
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 23:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719532437; cv=none; b=RSyYupOuPLxrHIsH9uZ0HvPL4M1toTb8FWlHtcBzNURamW+QHXmfKvhiHuyLrDxumRJZqiSA6H5gDvIc6ofFfmNDMF6Iq7l3Ui2IX0QCNJjn2R7IGrOCNb/xcG8xqgDtUeHvWFlZTRQN4cbHibASVXoFjQ6B30SZsmteKailU0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719532437; c=relaxed/simple;
	bh=+MkSknPEAqqjUaY5k5jJEdYG6RDoEon+9UKGF9CYlpM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TlzjslHcX/77cnPKRWKNgUyX6W7hZ8moZfCqN5etLI+GLfyR6uUBQcG4BeoYXBuyfXH0uBAE/SDvTy/pUIlh/U8Mf13cOW6iILmuyt2/4WWPUftI/eWq6vmtoXUv4F4MxyHyMDBwz0yzAbinvrKVbGMdoOyPZMiTdOxThcKc2zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Si5Lb3Xh; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1fab03d2f23so96985ad.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 16:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1719532436; x=1720137236; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l0t3zZaJBUN3PLJmCz77S8k31xe8bvzplrXd7ftlq5c=;
        b=Si5Lb3Xhw8a7r7hLUWRbn46sLQxLGrm2uQ/S7I6on3j3h3ExhulvsayL4ax1uh7O7C
         3Y8OuNocH0X3P4/M6tFgMiHKS/qhvB52XA8RdG8n0GJJ7b6htzjs7qj1KWP1t/pGg0wo
         KNNx/nA0wW0lXGS9XwfuM0fmdL4eRkLtJbn74=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719532436; x=1720137236;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l0t3zZaJBUN3PLJmCz77S8k31xe8bvzplrXd7ftlq5c=;
        b=M0Uny3UHk7B0Y/3ulHV+B4F10Ood0/jAkJDMtpgO2/kUsdTkEfnz6T676Rpg5nZdNK
         EeVmDNstaKjUG+X1Mxoy9mn5vF3G1mz1NeUoIUSY2IapP31nhkww93tVygFzP+9mSsqO
         T7qT0y0xljqrIULtI+MKL9Vmlnbei9iAbdsXX5qtACZOiYP1nVfuVUv+m7Mqy5RYnmt8
         zyy6I+6GiQJjFWULjkt7nf+W6gXU5k/Nlr/IwqGusMXisYCougwWQlqSbRFve+oQu4xq
         e+68TsurmtK5jIX7uPqQjSe8u1A3tKNZIeNScIsQet2n/5pO2D72ILH4YBWqDqkicVTe
         AaVw==
X-Forwarded-Encrypted: i=1; AJvYcCXzopkn5nMPnLnPbTaaLExgHeshJ57PV3reaZjJJhUYb8KiitIF1RqXGjOS7+JczFiAEx6uxhFS2kt16SfBgEkdO3cO+RBnmkJ1gw==
X-Gm-Message-State: AOJu0YwWf2gpGWjEfHfYGuqp2Rp3JoIr/CPRZQansbjSo3qEonPk/Ntw
	hUG37uXtjpCKaAFPdW85pdce0waww75QXyuXAZpdx6CYKZShHc9kAtFDx1VPbA==
X-Google-Smtp-Source: AGHT+IF2Pj7LKt2106lccDErPzwWRz3ComfRGxrxTvIekxCIfDZ26W10wiBXzjP5JceH/T+LG9fZDg==
X-Received: by 2002:a17:902:a385:b0:1fa:9149:6b17 with SMTP id d9443c01a7336-1fa9149796dmr37858365ad.68.1719532435693;
        Thu, 27 Jun 2024 16:53:55 -0700 (PDT)
Received: from pc98uv11.mtv.corp.google.com ([2620:15c:9d:2:cf5d:cb26:248e:ee00])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac11d8cd2sm3366595ad.107.2024.06.27.16.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 16:53:55 -0700 (PDT)
From: Daisuke Nojiri <dnojiri@chromium.org>
To: 
Cc: Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Guenter Roeck <groeck@chromium.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Reka Norman <rekanorman@chromium.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Gwendal Grignou <gwendal@chromium.org>,
	Pavan Holla <pholla@chromium.org>,
	Lukasz Majczak <lma@chromium.org>,
	Ching-Kang Yen <chingkang@chromium.org>,
	Daisuke Nojiri <dnojiri@chromium.org>,
	Stephen Boyd <swboyd@chromium.org>,
	Prashant Malani <pmalani@chromium.org>,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 1/2] cros_ec_proto: Consolidate ec_response_get_next_event
Date: Thu, 27 Jun 2024 16:53:07 -0700
Message-ID: <fc251d6935c1cfc39d7a31d3cfe735d31a0371d1.1719531519.git.dnojiri@chromium.org>
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
In-Reply-To: <cover.1719531519.git.dnojiri@chromium.org>
References: <cover.1719531519.git.dnojiri@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Consolidate struct ec_response_get_next_event_v*.

Let X->Y indicate kernel X sending EC_CMD_GET_NEXT_EVENT to FW Y.

Old->New:
   Existing kernels send a smaller container (e.g.
   ec_response_get_next_data) which may or may not fit the last few
   bytes. The FW copies as many bytes as possible to the container. The
   kernel processes as many leading bytes as it can understand.

New->Old:
   New kernels send a bigger container. Existing FW copies as many bytes
   as it wants, leaving the last few bytes empty. The kernel knows it
   didn't receive full size data from the returned data length.

Signed-off-by: Daisuke Nojiri <dnojiri@chromium.org>
---
 drivers/platform/chrome/cros_ec_proto.c       | 16 ++++-----
 .../linux/platform_data/cros_ec_commands.h    | 34 +------------------
 include/linux/platform_data/cros_ec_proto.h   |  2 +-
 3 files changed, 10 insertions(+), 42 deletions(-)

diff --git a/drivers/platform/chrome/cros_ec_proto.c b/drivers/platform/chrome/cros_ec_proto.c
index 945b1b15a04c..a849c29f125b 100644
--- a/drivers/platform/chrome/cros_ec_proto.c
+++ b/drivers/platform/chrome/cros_ec_proto.c
@@ -686,7 +686,7 @@ EXPORT_SYMBOL(cros_ec_cmd_xfer_status);
 
 static int get_next_event_xfer(struct cros_ec_device *ec_dev,
 			       struct cros_ec_command *msg,
-			       struct ec_response_get_next_event_v1 *event,
+			       struct ec_response_get_next_event *event,
 			       int version, uint32_t size)
 {
 	int ret;
@@ -709,11 +709,11 @@ static int get_next_event(struct cros_ec_device *ec_dev)
 {
 	struct {
 		struct cros_ec_command msg;
-		struct ec_response_get_next_event_v1 event;
+		struct ec_response_get_next_event event;
 	} __packed buf;
 	struct cros_ec_command *msg = &buf.msg;
-	struct ec_response_get_next_event_v1 *event = &buf.event;
-	const int cmd_version = ec_dev->mkbp_event_supported - 1;
+	struct ec_response_get_next_event *event = &buf.event;
+	int cmd_version = ec_dev->mkbp_event_supported - 1;
 
 	memset(msg, 0, sizeof(*msg));
 	if (ec_dev->suspended) {
@@ -721,12 +721,12 @@ static int get_next_event(struct cros_ec_device *ec_dev)
 		return -EHOSTDOWN;
 	}
 
-	if (cmd_version == 0)
-		return get_next_event_xfer(ec_dev, msg, event, 0,
-				  sizeof(struct ec_response_get_next_event));
+	/* The max version we support is v3 */
+	if (cmd_version > 3)
+		cmd_version = 3;
 
 	return get_next_event_xfer(ec_dev, msg, event, cmd_version,
-				sizeof(struct ec_response_get_next_event_v1));
+				   sizeof(*event));
 }
 
 static int get_keyboard_state_event(struct cros_ec_device *ec_dev)
diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/linux/platform_data/cros_ec_commands.h
index 070e49c5381e..00c06c130dd5 100644
--- a/include/linux/platform_data/cros_ec_commands.h
+++ b/include/linux/platform_data/cros_ec_commands.h
@@ -3475,32 +3475,7 @@ enum ec_mkbp_event {
 BUILD_ASSERT(EC_MKBP_EVENT_COUNT <= EC_MKBP_EVENT_TYPE_MASK);
 
 union __ec_align_offset1 ec_response_get_next_data {
-	uint8_t key_matrix[13];
-
-	/* Unaligned */
-	uint32_t host_event;
-	uint64_t host_event64;
-
-	struct __ec_todo_unpacked {
-		/* For aligning the fifo_info */
-		uint8_t reserved[3];
-		struct ec_response_motion_sense_fifo_info info;
-	} sensor_fifo;
-
-	uint32_t buttons;
-
-	uint32_t switches;
-
-	uint32_t fp_events;
-
-	uint32_t sysrq;
-
-	/* CEC events from enum mkbp_cec_event */
-	uint32_t cec_events;
-};
-
-union __ec_align_offset1 ec_response_get_next_data_v1 {
-	uint8_t key_matrix[16];
+	uint8_t key_matrix[18];
 
 	/* Unaligned */
 	uint32_t host_event;
@@ -3525,7 +3500,6 @@ union __ec_align_offset1 ec_response_get_next_data_v1 {
 
 	uint8_t cec_message[16];
 };
-BUILD_ASSERT(sizeof(union ec_response_get_next_data_v1) == 16);
 
 struct ec_response_get_next_event {
 	uint8_t event_type;
@@ -3533,12 +3507,6 @@ struct ec_response_get_next_event {
 	union ec_response_get_next_data data;
 } __ec_align1;
 
-struct ec_response_get_next_event_v1 {
-	uint8_t event_type;
-	/* Followed by event data if any */
-	union ec_response_get_next_data_v1 data;
-} __ec_align1;
-
 /* Bit indices for buttons and switches.*/
 /* Buttons */
 #define EC_MKBP_POWER_BUTTON	0
diff --git a/include/linux/platform_data/cros_ec_proto.h b/include/linux/platform_data/cros_ec_proto.h
index 8865e350c12a..a795fe260a38 100644
--- a/include/linux/platform_data/cros_ec_proto.h
+++ b/include/linux/platform_data/cros_ec_proto.h
@@ -185,7 +185,7 @@ struct cros_ec_device {
 	bool host_sleep_v1;
 	struct blocking_notifier_head event_notifier;
 
-	struct ec_response_get_next_event_v1 event_data;
+	struct ec_response_get_next_event event_data;
 	int event_size;
 	u32 host_event_wake_mask;
 	u32 last_resume_result;
-- 
2.45.2.803.g4e1b14247a-goog



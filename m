Return-Path: <devicetree+bounces-222952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F742BAFBEF
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:57:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E2BC1922D69
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9739B2D7DFC;
	Wed,  1 Oct 2025 08:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fl3B83Zp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07273594A
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309047; cv=none; b=OQIyOHQBz70y1RmYnVr29rANsTcnIew/FOujYa3g8Eizn70xKB35Rl7uoFZC1AWeSlx5r/I3Hofk2/cvXjUeln9UhUQAs87vU0lmayjkciXgrQo+FaHjnAed4dzK2GTQblcGKl5RAEk/xMXLv+KUDB/rUkL8b0UwlRLOsEbneLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309047; c=relaxed/simple;
	bh=k9SxVIm4/yH7EwdOtG9iVyaWlVa8cX/lDmaADceMdq0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UDX5MjdLYS1pYfJpzesNxomwqZmEaMe9Zi00vqiFtTx63tK6TfYQCQDvvwvTjxUZLCjf5gvETxEp9ZuiU4azuWu6NuhV1YA5VY9e1Q7aAUiqgD4ybmsI4ta9BGj9RHyFviMoYtsMUaWRAVc4ltOkRp/1CDYxqCEWCcaLRFSMVPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fl3B83Zp; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-279e2554c8fso69969155ad.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759309045; x=1759913845; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iRXPyeGU3kLEllAg/cKWCvTTzigpysI7ZlcrsfYX+pA=;
        b=Fl3B83ZpA36Wfy9UWWRH9/6iNewMgD3IT1R8Hf8hiHZ6p4IlxTGG5eXjxMmxjaAfhN
         u5LI2wHoaJLGRCl7BphnV9Snx4FJIcm/3oq1nRVKV+mLHVrydJ9qVimuyYDs9ZwkL14N
         IHZ+9q0CA8YXtLRyhMDQowgxZnv/IDID0wZQSYHJgPIHdBB28omUaHkikY0FQg5HcGKl
         7WlGFvz7568f2T9NEce8agSb0TrmhhKq09sXc+SpcTS4H9dOwzGCtlc3kLrGNo4VjJFa
         sWId27/W7svdpYIyBkAqhgN9l4XsGYsJxIpz+aD4VNd4TBSlh7kFFPpwjFmJedBGF9i2
         nt8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759309045; x=1759913845;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iRXPyeGU3kLEllAg/cKWCvTTzigpysI7ZlcrsfYX+pA=;
        b=lzfX5iccR49f4drs2+6JGEpRpKOHmQU492hEs2NbtzFbbDUI5VVAtMYCheWb/EwsrY
         D6yq/Pc8dqJfdWkE8tTnVRaqiB34HJTXCdRpiHf0sc8B5cV+gOspCyUG+qPny3taN/DN
         cw9Qo1KkqG4k64f5jybYgudqMn9IuSfPAnompYemzrzqredk9mel4Q5mUdnyTfwkV1ZP
         9uKm83M5Sb3+fUuZ68S39ZZn+TfSVH9c8RETxTXY3gj/gpAAxXquSzuw75ZORrQnTkbt
         avbdFF3KFE6OrYe35D6TimWitiZXrfSnbHlausi3ZYyQDFxj+Yg56vhWh+mmhGvMTde4
         UC3A==
X-Forwarded-Encrypted: i=1; AJvYcCW9ktR28QsjDHBxXdEui66gN7sX9LVg1CDQCq6TuPl0TXQfDYbjLOUcicNmZGWsOXbzsaEOIyQ8N5Nr@vger.kernel.org
X-Gm-Message-State: AOJu0Yx07f+VzNRE0ev61cSKzFCbHkwW2Vhl552Ag3buBBY+j7pNdkts
	Gqkmi8azLRx1nYZuZwD5G45B0wwd/nFxGqSB4LzeYO9i669AB7oBjFyY
X-Gm-Gg: ASbGncvSPkrjsgiFt99DZ5PJemefGCjvDHRJvc9KU19+iqPqynjVUQWld0+qT+rOeCY
	4NYonlNY3s5NnaFEyMF8rdUP5Bpxj/HTRdObMSbIZT92MqSiM2sSnbXVZjfYpYOl4xlI7lvjTLk
	WvkXyjp8YiCr+llMD0K65PEAZssBrdjKKEjx++wSx4ODOwB5uuIxsyXw/qIjA7eqXnl05CEPOr5
	7OGDJ/widNdNPXli7tbw/6lS6j4m/IjLvR7a4fBNWH9CX8Wy3RB56GatPKihvoAbdJUSYIbJ01b
	5C5T2O11kn7DTfirFqArfHY29xa+5O9kNqVyP9yKOA5awaX1SMDdjMl9WM119ea/jyyBlDz2a7k
	2JUuR/gyCCuCa+QasPRHmdZ9zv75TB3SkqrqE6Bh4MUSCw8iufwC25Ra11fJixeR1ui6eRcw+8H
	NcWIs=
X-Google-Smtp-Source: AGHT+IG61FIjH34dziMXtOWfv5flwguk/t3Ek5Rl9JJ2mkWhY2/XOOReKC9NTp1ictu/iFlnRBa13A==
X-Received: by 2002:a17:902:f78a:b0:266:63de:eefc with SMTP id d9443c01a7336-28e7f29382bmr32482615ad.14.1759309045134;
        Wed, 01 Oct 2025 01:57:25 -0700 (PDT)
Received: from ti-am64x-sdk.. ([157.50.93.46])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66d43d4sm182186965ad.16.2025.10.01.01.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 01:57:24 -0700 (PDT)
From: Bhanu Seshu Kumar Valluri <bhanuseshukumar@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: bhanuseshukumar@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com
Subject: [PATCH] of: doc: Fix typo in doc comments.
Date: Wed,  1 Oct 2025 14:27:16 +0530
Message-Id: <20251001085716.45361-1-bhanuseshukumar@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

synthetized => synthesized
definied => defined
sucess => success

Signed-off-by: Bhanu Seshu Kumar Valluri <bhanuseshukumar@gmail.com>
---
 drivers/of/irq.c     | 2 +-
 drivers/of/overlay.c | 2 +-
 include/linux/of.h   | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index 74aaea61de13..8951a69390b7 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -163,7 +163,7 @@ const __be32 *of_irq_parse_imap_parent(const __be32 *imap, int len, struct of_ph
  * @out_irq:	structure of_phandle_args updated by this function
  *
  * This function is a low-level interrupt tree walking function. It
- * can be used to do a partial walk with synthetized reg and interrupts
+ * can be used to do a partial walk with synthesized reg and interrupts
  * properties, for example when resolving PCI interrupts when no device
  * node exist for the parent. It takes an interrupt specifier structure as
  * input, walks the tree looking for any interrupt-map properties, translates
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 1af6f52d0708..255e8362f600 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -135,7 +135,7 @@ static BLOCKING_NOTIFIER_HEAD(overlay_notify_chain);
  * @nb:		Notifier block to register
  *
  * Register for notification on overlay operations on device tree nodes. The
- * reported actions definied by @of_reconfig_change. The notifier callback
+ * reported actions defined by @of_reconfig_change. The notifier callback
  * furthermore receives a pointer to the affected device tree node.
  *
  * Note that a notifier callback is not supposed to store pointers to a device
diff --git a/include/linux/of.h b/include/linux/of.h
index a62154aeda1b..231093032ce0 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1127,7 +1127,7 @@ static inline bool of_phandle_args_equal(const struct of_phandle_args *a1,
  * Search for a property in a device node and count the number of u8 elements
  * in it.
  *
- * Return: The number of elements on sucess, -EINVAL if the property does
+ * Return: The number of elements on success, -EINVAL if the property does
  * not exist or its length does not match a multiple of u8 and -ENODATA if the
  * property does not have a value.
  */
@@ -1146,7 +1146,7 @@ static inline int of_property_count_u8_elems(const struct device_node *np,
  * Search for a property in a device node and count the number of u16 elements
  * in it.
  *
- * Return: The number of elements on sucess, -EINVAL if the property does
+ * Return: The number of elements on success, -EINVAL if the property does
  * not exist or its length does not match a multiple of u16 and -ENODATA if the
  * property does not have a value.
  */
@@ -1165,7 +1165,7 @@ static inline int of_property_count_u16_elems(const struct device_node *np,
  * Search for a property in a device node and count the number of u32 elements
  * in it.
  *
- * Return: The number of elements on sucess, -EINVAL if the property does
+ * Return: The number of elements on success, -EINVAL if the property does
  * not exist or its length does not match a multiple of u32 and -ENODATA if the
  * property does not have a value.
  */
@@ -1184,7 +1184,7 @@ static inline int of_property_count_u32_elems(const struct device_node *np,
  * Search for a property in a device node and count the number of u64 elements
  * in it.
  *
- * Return: The number of elements on sucess, -EINVAL if the property does
+ * Return: The number of elements on success, -EINVAL if the property does
  * not exist or its length does not match a multiple of u64 and -ENODATA if the
  * property does not have a value.
  */
-- 
2.34.1



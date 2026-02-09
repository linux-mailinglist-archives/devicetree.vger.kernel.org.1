Return-Path: <devicetree+bounces-263942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IMPGCm7iWmEBQUAu9opvQ
	(envelope-from <devicetree+bounces-263942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:47:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B139010E4D3
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C6053034644
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 10:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7105F369216;
	Mon,  9 Feb 2026 10:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pt3lXARm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com [209.85.167.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F39369203
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 10:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770633870; cv=none; b=Pah4X7TyF7CRnL7vCMPET1zGRPS6FLJo+ZKQKd9r36zVIxrc14YEDKY6ZU0q0Dh1lUJemcmElea81J9G+G+dhq9FcEYiq+3hjADu6b9jskIEZuVH3AGwSiS+K3FheyJm9KYmffC/wOIWnhALtq2fEqC/ArjDPGjg/NxaZgwqtpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770633870; c=relaxed/simple;
	bh=0rMc9serpkGe0Fm6CAZ7oAjYMwzI8MQXlyyHyy0L5GA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZWCQODr9u5nfxOulowfF1bqzXOMVjAt9b4Ql2qRTK3reSe1CaJbG4D9TJEUOjlfIK7yCZ2rVyyARi5R5ymzJz8vcIqqE5boEFlJ2XuoTFpx9CS8UDSM05azQZHCX0n30xlAI+dk3djM7biDziFLQnI5Ito723MKex+U22neOHSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pt3lXARm; arc=none smtp.client-ip=209.85.167.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f68.google.com with SMTP id 2adb3069b0e04-59e4993e00aso2064527e87.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 02:44:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770633868; x=1771238668; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pvOWIK1480Z8Yx2DsXHdUSkuQ/WnPILfKjXKA3uostg=;
        b=Pt3lXARmjg3kVulV3S5F7WLUVPqFht8rBb9v9tagQPuKAud9SSF8o9gteV5jYy9kv0
         pjDE+bPx1h2AqwKfxiTmVeSc7RS9ye+WroCUjeFMn4Q/8e735BAU1aP+hBiErrd4ZYoQ
         T+cgyV8o5BLmg7qTmtoMkV/yCf+hEregYpf64ttZehYgWP9ThvU4FYQhMewZ8u/NPtxJ
         2JMylXD5aPt4yB2GQjbLk1D6CVXpr7mmrot3TajSTupjbkbYJvHkiMlHcWMnK25hFF0P
         OBEZI0JCeR4+1o2N5oY91fEl4r5fmBgvLr+o6NcoX5TVr9ZUS5GlSGBhSZkS2C6QYWW/
         2PFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770633868; x=1771238668;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pvOWIK1480Z8Yx2DsXHdUSkuQ/WnPILfKjXKA3uostg=;
        b=j7DtIL0IM0U4i1DeI3gzlp9q2isUqVgyze/S4ILKwuabnytL8EvVtBv2NVlVIhOLYY
         dxDepKApNlnZQYm8suhxdEiFBoBcQA1KuP1B3wZpJOZoAy0AmjhJ78XPFuqmwiW80bpG
         mMHEUq4vXuYDcH75865qyGEUL8FC7JAJZ67rHBC4Cmk6nqNmufIYnPdaOU7JcN0uc8pM
         EW0iZhJbTUEI8Fy4MbsZv2w5BsR31TJYOG4atB0aWZztq6aMVLD3PkB0CBiQT7BP/fBu
         2jWRWcR6k64HMjTmbPijXanRfYebgZ+WJEdlSxF9LuDD4oLS2L2J1SNlfItL5q2wTeMV
         9KZA==
X-Gm-Message-State: AOJu0YwplpoyTA0G6D82RZ5NdyHUVVIReh9DiVs09C2NQiO5eTqsUC4z
	0tmQZprdFH1vpDgPQIM1PQpVCEzvZSstmgsg7ozAJ7SGTxA8SDLpIfKu
X-Gm-Gg: AZuq6aK0HF8eFDAhIM6AWqJXSwSyaHBBIPwT8CBqKS2VICaYz/EkKyyuLqfdgelZtT+
	RgIciFvoUZLn5fF4UFPYfhk6OruQyRKvR4fbGCiC3qzI297oPCLqFH5cgEucr+db6rDnZI0NQPb
	mZFjkoyC4o4IoiBzORVLEmFEAyBwXJzqfZnNRJ/N7NB3XgoBmROs0HSjIK521wAVZ/Yor4ZkF0/
	ICl+aaX9Cxe9sGjnvGLwNhcgOYdqDKNK2Pyv94FNXUt5zqZMu0XPCgNfPM/WWFAftk/pyrIp1jo
	VbfZ9xU1Nx5rI3+NXLupbNGkw7fJcygAWTysDAlNPxNXa1/LCqZD/5nvHSHVm0FHVs11Qe6Naus
	S1HLhzm+FPWcyCHhayS7XzWTTFeMMObs4oIkY3JRsnL1uymCCc70gaCEs6d+JZ6d61186nmTSSp
	5N
X-Received: by 2002:a05:6512:32c8:b0:59d:d615:4b72 with SMTP id 2adb3069b0e04-59e451532f8mr3290200e87.25.1770633867920;
        Mon, 09 Feb 2026 02:44:27 -0800 (PST)
Received: from xeon ([188.163.112.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6f88sm2501469e87.21.2026.02.09.02.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 02:44:27 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Pavel Machek <pavel@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sre@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
	Ion Agorria <ion@agorria.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v2 1/9] dt-bindings: misc: document ASUS Transformers EC DockRAM
Date: Mon,  9 Feb 2026 12:43:59 +0200
Message-ID: <20260209104407.116426-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260209104407.116426-1-clamor95@gmail.com>
References: <20260209104407.116426-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263942-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,arndb.de,linuxfoundation.org,rere.qmqm.pl,agorria.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.17:email]
X-Rspamd-Queue-Id: B139010E4D3
X-Rspamd-Action: no action

Documenting an I2C device used in conjunction with the EC on ASUS
Transformers. The main function of DockRAM (the name used by downstream
ASUS sources) is to provide power-related functions, such as battery and
charger communication. The device is exposed as an individual entity
because multiple embedded controllers can utilize the same DockRAM
instance.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/misc/asus,dockram.yaml           | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/asus,dockram.yaml

diff --git a/Documentation/devicetree/bindings/misc/asus,dockram.yaml b/Documentation/devicetree/bindings/misc/asus,dockram.yaml
new file mode 100644
index 000000000000..0cfde619ba01
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/asus,dockram.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/asus,dockram.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Asus Transformer EC DockRAM
+
+maintainers:
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description:
+  Dedicated i2c device used to provide power related functions of the
+  embedded controller used in ASUS Transformer device family.
+
+properties:
+  compatible:
+    const: asus,dockram
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      dockram@17 {
+        compatible = "asus,dockram";
+        reg = <0x17>;
+      };
+    };
+...
-- 
2.51.0



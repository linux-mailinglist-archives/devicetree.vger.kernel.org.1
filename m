Return-Path: <devicetree+bounces-277736-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IcgKgviu2lXpQIAu9opvQ
	(envelope-from <devicetree+bounces-277736-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:46:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C472CA8C5
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:46:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9032D302F24E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4577A38E5F1;
	Thu, 19 Mar 2026 11:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PCzGSb84"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3137838F945
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773920351; cv=none; b=E4bOFPsJhHYoEBxrg8drW0tHDTxN+wQNan/6uMclkQ6yngMl8wrfYwln3RevHdBLPv/2CONrwThK0id7RJm7sU0kNDaQ25ftyF9hFb7oZLNTUhhcW4NL1gaNZuChsJUPOlf8+Tn86CIpCgW6CtgXEx1Lw0bS69tR0qy15jz2tiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773920351; c=relaxed/simple;
	bh=ciHLf7bevgqHXVV1Zx/xu9fwtsFudEQfZfvHtZh2a7I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=uiMqDwgOzyWhuu04+IEbxyCYT+FAdjwLHqTwCcerZ0wiYx8UDWMXSOjbb0VzUnQgR/rg2M2/NgY6d3/9oc+zoqyPQByB/YZE3nbiTLo1CQDt1R2qlqbGHNqoDEyMfMqMHdXsyXh4FN7AEFmbps6efeQFXkkUty1TS7UneHmwR0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PCzGSb84; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-c70ea5e9e9dso388694a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773920346; x=1774525146; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tFWl6KgxoNw3rtXQXYIsDCxT8H3n54d3r9FBVbrDtcA=;
        b=PCzGSb84hnhOnX8XOkBQwbjJgH0VWxyK1DCEFgUQyWtbniok9InjsKNk8Ei7lT63ht
         V33Btb8u8xC6d/m7A/ddpkjYiUt6UpU74+nvBSPtxQmChXm/p2Bpx77AyZuJA3Aa1hwA
         QzRfldYZBxFoOdaf4G2M5vnJcLoXDRWFj8n37c2nWCsBlBWy4eq5f+WSzeEYG1hpxdjQ
         Xp3OMqgq01+tdVnH62CmlDQKBq8GJ5s1YED49NXzZhDUyhK4N3Inq8OiUhhZblMbhonR
         BkJs1/FMnhF6HIORnIUrAhpl0+AkD3jtA8IDk5yKi/fbNKwoWL5wtqyBXsVwqhBb1+QA
         OZEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773920346; x=1774525146;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tFWl6KgxoNw3rtXQXYIsDCxT8H3n54d3r9FBVbrDtcA=;
        b=nOcl5ATSKqoGFDPCfJvWIerC9ARbGX0X0gFAikVtFdnVPHTZjni9E+SSq6lxsnWVF3
         9DMZMbSm5fmpcCchY52Vz1iatiVnvQy4Qu4rvypWy6jpAYYkhiGxmYwd+fIZpBQpZYjx
         AfVyZXss0vPbKzsamMhbNitljtTh6QhaWiFuAkr7lODUWPlTj0rwkgHk519SqGxeu92H
         pL4XSyC19KV7fRQmPXDBL0KaMS05s29ui0qjjOl50/JMtYoi4Azt//h6V5I5gpmnaWYG
         3ZqPR/rmj+R05BNE9tgXzZfRYisnfSRmPwPGI3P9WZEkM3TYHIgUQDR4FD2jBG6oS310
         O3Hw==
X-Forwarded-Encrypted: i=1; AJvYcCUicYLkEDxpHxmPNp+SyQk13m0dN/zNhWUiJv/Q2c3Nz/+Cpk0XPlMdKpF6+gP/ZDnotSBYwisL/QvM@vger.kernel.org
X-Gm-Message-State: AOJu0YzS5p0L6n3cuxegEQXU4KYZZiFRY1K88BH+3irq5xDzf9FXoloc
	i83g58apiJerFI4IK10uJOVuxWcb7YqOn0xemUI67q5nTdxTxHuFYRQh
X-Gm-Gg: ATEYQzzTWrln2/QykqrISY7TQKychBdwUGaFz/hoddKDCpldlezFr+3PszkVZkmmV0R
	00aEj5tXq4sie6hfG4zUZku1EZiTtUANE6PnzEtB5tDX848IjEJqeY2mL3VXFMOIuuNkhNu1Q58
	lKSLMNnAPs/X9dRym/Nt87AOKRkvKSgXVvV+y87HyHl8JrIev00BzPZktIFKV4bjpkdUxkBJsBM
	qU+qRGpo/XIcAjwfUfPKwlH0xBWX85XaCNVSJM4HgCkFVS0/6LbxW5Iy11kyjdDoYFR0ZqH5Ab5
	g+t7AAIzajJJJguQZjmJvmk/wZWcD5flcWqNdOuibk2ShAgWuV/VSPbLbuCUe+iTjKtc+WcXHLI
	rYhgwbA5mI46e4ADBseoZ20lAHB+Nve2JOTrw7pcwHeZAjlET4DzOF3vJglSgFh3Y/EcXQ/OCOd
	UPBpmwGZr1U+s0BNjXOrrXuVRnTbvE0p10nygMwqPerRbyPVH4aYJ9
X-Received: by 2002:a05:6a21:102:b0:38e:87b7:5f88 with SMTP id adf61e73a8af0-39b99d4c7a7mr6720256637.27.1773920346247;
        Thu, 19 Mar 2026 04:39:06 -0700 (PDT)
Received: from ubuntu.localdomain ([27.217.83.168])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e545d38sm4985706a12.19.2026.03.19.04.39.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2026 04:39:06 -0700 (PDT)
From: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
To: linux@roeck-us.net
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaixiang.xu.dev@gmail.com
Subject: [PATCH v2 2/3] dt-bindings: hwmon: Add Sensirion SHT3x and GXCAS GXHT30
Date: Thu, 19 Mar 2026 19:38:33 +0800
Message-Id: <1773920314-17755-3-git-send-email-zaixiang.xu.dev@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1773920314-17755-1-git-send-email-zaixiang.xu.dev@gmail.com>
References: <1773920314-17755-1-git-send-email-zaixiang.xu.dev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_NEQ_ENVFROM(0.00)[zaixiangxudev@gmail.com,devicetree@vger.kernel.org];
	TO_DN_NONE(0.00)[];
	TAGGED_FROM(0.00)[bounces-277736-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.944];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,0.0.0.44:email]
X-Rspamd-Queue-Id: 05C472CA8C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add YAML devicetree binding schema for Sensirion SHT3x series and GXCAS GXHT30 humidity and temperature sensors.

Signed-off-by: Zaixiang Xu <zaixiang.xu.dev@gmail.com>
---
 .../bindings/hwmon/sensirion,sht3x.yaml       | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml b/Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml
new file mode 100644
index 000000000000..47dbb743e2ee
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/sensirion,sht3x.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/sensirion,sht3x.yaml#
+$schema: http://devicetree.org/meta-schema.yaml#
+
+title: Sensirion SHT3x Humidity and Temperature Sensor
+
+maintainers:
+  - Zaixiang Xu <zaixiang.xu.dev@gmail.com>
+
+description: |
+  The SHT3x series is a family of humidity and temperature sensors by Sensirion.
+  It also includes compatible sensors like GXCAS GXHT30.
+
+properties:
+  compatible:
+    enum:
+      - sensirion,sht3x
+      - sensirion,sts3x
+      - sensirion,sht85
+      - gxcas,gxht30
+
+  reg:
+    maxItems: 1
+    description: I2C address (usually 0x44 or 0x45)
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
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        sensor@44 {
+            compatible = "gxcas,gxht30";
+            reg = <0x44>;
+        };
+    };
\ No newline at end of file
-- 
2.34.1



Return-Path: <devicetree+bounces-309966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oj/fCjqWKWqzaAMAu9opvQ
	(envelope-from <devicetree+bounces-309966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:52:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A2666BB15
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:52:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jXpOAphG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309966-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309966-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 208BA308FCBB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56913D5C1E;
	Wed, 10 Jun 2026 16:44:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B985349CCB
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 16:44:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781109899; cv=none; b=EKhbPfRSOxh7qR1iQgtbddkr3LAhLxl1XBC9qvf0m0aFoVHiUCdHUsw7J+zTDOY9z8vamH60CXrhWhb+u7kkrsphvj5/YFqsUlynG2eeZqDdrPBFMLhBcXLXYLc88pUHyxeYwWVP6XJ70EPe/OUPSf3Cfy2H6bs+QNCflD/Aai8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781109899; c=relaxed/simple;
	bh=i99QJJEfLIl+HarmNlAekyCQxiEou8WYmgUcjldqOx4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iU3Yq6DWKd6/Ktlppo1zcQtU0/j8+QOr3feRfVz07hOaIGNwxKL6y5IH/KnsqDLSYkd11hhFiuw8GC3KqLBkFpyXjEbFbcLoXuIcYys85l1Qw7ejYqcIvRqyCvgjlnVPJw47ZzuRXoA5JI6NY6gzhyWXQgXbazPoHTgZe9jK0Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jXpOAphG; arc=none smtp.client-ip=209.85.221.53
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-45ef1198766so43074f8f.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781109897; x=1781714697; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7tuZU5chW129Gn+ZceSGJIAdU7Oe7M+OtmrZzZzJOnc=;
        b=jXpOAphG/wLafYbdzcjW0+Q1B2IjA+gHkqYq0jp25Sb5oCaBhm8f5XqkLyN/WEGtGv
         +2Vxtd8h3UbJquqDxyrS3ycMvzz9sUe0RRrFRKRV1oU5tmE2D3VQxKfpSsNYr2y4I+pD
         Fmjq3GlZZxrF3/7iKQ+zfZIX3vbLyB3dSFDzexfvoDFl7DVQNI1NmVgiuO/BRg5ZJQSi
         n2UpbS2PMuANsb2fjDpWR4S7jH8BgUVcFQiy5u9YODC9RUMzIpNLEkoViLS7HBMJrpb6
         A7ETJjCaSm8D7e42fY2L4yR2PTWs+BO4yu8w+eObnwCPbzYssURUPLAgd36EPTEKijzb
         GFdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781109897; x=1781714697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7tuZU5chW129Gn+ZceSGJIAdU7Oe7M+OtmrZzZzJOnc=;
        b=BAr/1kmLFLDhn7uBruoTzOetmiygUbwO3kezqGBNcsYLibXMCLb8HMdqodT1TJe4Jh
         7WG3+dxdVKFRmtnOEinc568PIEb7CDLDyw/iOtu3RnK5nEF96W5aDCJE/6UwsiqdYPrO
         A/ly34yVOEFR5OQcitzY9JWyGxQRxfMPwl0mu8kxA6j7W59r+d74qFYpHKcefVsTgrGv
         2faIfYkhIIBaIvLgwTnyaHRW02DfHv5s31IUEggS2ntGpfwBFqcedEKl/FfYa8LXHOtD
         plOIrLKbsocK7DqdeajCBxOZcT2SZ3zRF02zj2ZyBegMlwk7e/GQ1KVUl9MXdBAYOtqS
         hIdg==
X-Forwarded-Encrypted: i=1; AFNElJ+6kwYJ9UwiQw1SDnbgRekkibqrZXL1zfXKXVKtKSNix6buNjcodC3N/KKY94cvYv2NUovYg44D+upc@vger.kernel.org
X-Gm-Message-State: AOJu0YxX4Dtnq8bImFR+IlOT1/VNpRiLKpClhZfgQjgjavGx83s76/Cs
	7Am31j/OVRulOPc0Zetu0f5cFPnTjENpQNgAC4eIDbEtR8HoCLtAbCLa
X-Gm-Gg: Acq92OFzAkBnfRCNt/nNAeMS+3LXJJL52pCwVwH4y+d1r4Oi4NZXJf7mF3O20eyB0hE
	2EqjtemM3BcyHmk8dGq+UWfjV2J33QgO0G8f4YRg6m3tZKBTyn1i7Ctq5tcVxqcRNutsl8psMRH
	eVxb5uFsWMBZF2+PMqiEFHy//r/f8b/wjbjrba4X7cYYq3yyalZmWlwB0DbWGKypRamTIugEiWY
	2Raczl4/hOAx99TbNeD+m+w41iwSqlpXR7K7MYlhx1ogFr07eCPh32n+jmHAe6i3e00FFbGf1hl
	GD0mTAWxy9NqCcRrVwQ03IOg1lKv37GTB6dfM6T7pmCa+rDgI+n/0Zscg6jOVXdwFTbZkiPzKHZ
	8zasuSwBlxpbVIOoLbPicF2rRNJe45vJ+JesTpZ5XlawwGOm5uaSVbTAJzDkpM4YuFhkLXBuH/k
	31GT/VaHk3GzUgxDx+ePVDySqK2YOBSLjV8rg+BOflt9s1WNA5Jo0=
X-Received: by 2002:a05:6000:1785:b0:45e:daa9:f34c with SMTP id ffacd0b85a97d-46032dce5d3mr37114605f8f.26.1781109896641;
        Wed, 10 Jun 2026 09:44:56 -0700 (PDT)
Received: from anthony ([2a06:c701:9cfb:2900:12ff:e0ff:fea5:3d2e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46028a6dcbdsm61156733f8f.7.2026.06.10.09.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 09:44:55 -0700 (PDT)
From: Amit Barzilai <amit.barzilai22@gmail.com>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch
Cc: javierm@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Amit Barzilai <amit.barzilai22@gmail.com>
Subject: [PATCH 1/2] dt-bindings: display: Add Solomon SSD1351 OLED controller
Date: Wed, 10 Jun 2026 19:44:27 +0300
Message-ID: <20260610164428.180091-2-amit.barzilai22@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260610164428.180091-1-amit.barzilai22@gmail.com>
References: <20260610164428.180091-1-amit.barzilai22@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-309966-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:javierm@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:amit.barzilai22@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:amitbarzilai22@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[amitbarzilai22@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,lists.freedesktop.org,vger.kernel.org,gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amitbarzilai22@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93A2666BB15

Add a device tree binding for the Solomon SSD1351, a 128x128 65k-color
RGB OLED display controller driven over a 4-wire SPI bus. The binding
builds on the shared solomon,ssd-common.yaml properties already used by
the other Solomon display controllers.

Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Amit Barzilai <amit.barzilai22@gmail.com>
---
 .../bindings/display/solomon,ssd1351.yaml     | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd1351.yaml

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1351.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1351.yaml
new file mode 100644
index 000000000000..a7d77132faa6
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/solomon,ssd1351.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/solomon,ssd1351.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Solomon SSD1351 OLED Display Controller
+
+maintainers:
+  - Amit Barzilai <amit.barzilai22@gmail.com>
+
+allOf:
+  - $ref: solomon,ssd-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - solomon,ssd1351
+
+  solomon,width:
+    default: 128
+
+  solomon,height:
+    default: 128
+
+  rotation: true
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        oled@0 {
+            compatible = "solomon,ssd1351";
+            reg = <0x0>;
+            reset-gpios = <&gpio2 7>;
+            dc-gpios = <&gpio2 8>;
+            spi-max-frequency = <10000000>;
+        };
+    };
-- 
2.54.0



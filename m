Return-Path: <devicetree+bounces-306565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +I8eEWrgIGoc8wAAu9opvQ
	(envelope-from <devicetree+bounces-306565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:18:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BE763C738
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 04:18:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306565-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306565-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16F3B3043FA1
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 02:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30982E888A;
	Thu,  4 Jun 2026 02:12:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C2412DEA8C;
	Thu,  4 Jun 2026 02:12:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780539125; cv=none; b=d9H+O81m2xktrgMQ7k9uoSv7Wyfp66vVbReFH0fGLyFpPx1MOt+C6L8NG/4IoeWpkaEds+uSaB6yEFB5WB0Epf/2xt8W9Di25uLpreF9rKYOPhpWoLddPwpMpLU8KF+xMb04wSWvsVnOPk5Rdm+I1jHbBQObps7J3XnOArKgpZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780539125; c=relaxed/simple;
	bh=ubKUIVApfhJKZsctF/X0ULl7CaqPMXDoGhV1X6v2PZU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lP/ATx97u5vs5ypgFv8o0YImDvE45TNZHOQAxhi83m8roFDSP0qnzsjL70DKLpIefMaV5thWcxyOmb1dC5vQ+pj8uiHGx3PjIDClXGFx55ight2sVUlvBTMmxHBjvptDihjhW24hLcAy+Mzp4k6TKmJG2OW6fIrXbgxJnCQqRW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Received: from loongson.cn (unknown [223.64.68.59])
	by gateway (Coremail) with SMTP id _____8Dxhunx3iBqYmEQAA--.45510S3;
	Thu, 04 Jun 2026 10:12:01 +0800 (CST)
Received: from kernelserver (unknown [223.64.68.59])
	by front1 (Coremail) with SMTP id qMiowJCxGODr3iBq5EabAA--.32358S4;
	Thu, 04 Jun 2026 10:11:58 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v2 6/7] ASoC: dt-bindings: loongson,ls-audio-card: Add ATK-DL2K0300B compatible
Date: Thu,  4 Jun 2026 10:11:46 +0800
Message-ID: <c03b86a9318cffe69ecf8d5c14543fc5948ab2c7.1780538113.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1780538113.git.zhoubinbin@loongson.cn>
References: <cover.1780538113.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJCxGODr3iBq5EabAA--.32358S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/1tbiAQEICGofwl8ZawAAsa
X-Coremail-Antispam: 1Uk129KBj93XoW7ZF4fZw1DuF48CryfWryfuFX_yoW8ur1kp3
	s3CasxGrWxtw13A3s8XFyxAw4fW3s3AFsrJF42qw1fGan8Kw4Yqw45K3WUWay3ArWvqFW7
	Wr95Kr48CF9rAwbCm3ZEXasCq-sJn29KB7ZKAUJUUUU7529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBvb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1a6r1DM28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26F4j6r4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAF
	wI0_Gr1j6F4UJwAaw2AFwI0_Jrv_JF1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2
	xF0cIa020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_
	Wrv_ZF1lYx0Ex4A2jsIE14v26F4j6r4UJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2
	Ij64vIr41lc7CjxVAaw2AFwI0_JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Y
	z7v_Jr0_Gr1l4IxYO2xFxVAFwI0_Jrv_JF1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x
	8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE
	2Ix0cI8IcVAFwI0_Ar0_tr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26F4j6r4UJwCI42IY6x
	AIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Cr0_Gr1UMIIF0xvEx4A2jsIE
	c7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07jbTmhUUUUU=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306565-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[loongson.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhoubb.aaron@gmail.com,m:chenhuacai@loongson.cn,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:chenhuacai@kernel.org,m:kernel@xen0n.name,m:loongarch@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-sound@vger.kernel.org,m:zhoubinbin@loongson.cn,m:zhoubbaaron@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[zhoubinbin@loongson.cn,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,loongson.cn,kernel.org,perex.cz,suse.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubinbin@loongson.cn,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,loongson.cn:mid,loongson.cn:from_mime,loongson.cn:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90BE763C738

Add new compatible for the ATK-DL2K0300B development board based on
Loongson-2K0300.

Unlike others, this board features GPIO-controlled headphone detection,
headphone mute, and speaker enable.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 .../sound/loongson,ls-audio-card.yaml         | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/loongson,ls-audio-card.yaml b/Documentation/devicetree/bindings/sound/loongson,ls-audio-card.yaml
index 8c214e5d04b1..e9b248e8246c 100644
--- a/Documentation/devicetree/bindings/sound/loongson,ls-audio-card.yaml
+++ b/Documentation/devicetree/bindings/sound/loongson,ls-audio-card.yaml
@@ -23,6 +23,7 @@ properties:
     enum:
       - loongson,ls-audio-card  # Loongson-2K1000/Loongson-2K2000/LS7A
       - loongson,ls2k0300-forever-pi-audio-card # CTCISZ Forever Pi
+      - loongson,ls2k0300-dl2k0300b-audio-card # ATK-DL2K0300B
 
   mclk-fs:
     $ref: simple-card.yaml#/definitions/mclk-fs
@@ -47,6 +48,18 @@ properties:
     required:
       - sound-dai
 
+  loongson,spkr-en-gpios:
+    maxItems: 1
+    description: The GPIO that enables the speakers
+
+  loongson,hp-mute-gpios:
+    maxItems: 1
+    description: The GPIO that mutes the headphones
+
+  loongson,hp-det-gpios:
+    maxItems: 1
+    description: The GPIO that detect headphones are plugged in
+
 required:
   - compatible
   - mclk-fs
@@ -69,3 +82,27 @@ examples:
              sound-dai = <&es8323>;
         };
     };
+
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    sound {
+        compatible = "loongson,ls2k0300-dl2k0300b-audio-card";
+        model = "loongson-audio";
+        mclk-fs = <512>;
+        loongson,hp-det-gpios = <&gpio 81 GPIO_ACTIVE_HIGH>;
+        loongson,spkr-en-gpios = <&gpio 86 GPIO_ACTIVE_HIGH>;
+        loongson,hp-mute-gpios = <&gpio 87 GPIO_ACTIVE_HIGH>;
+        audio-routing =
+                      "Headphone", "LOUT1",
+                      "Headphone", "ROUT1",
+                      "Speaker", "LOUT2",
+                      "Speaker", "ROUT2";
+
+        cpu {
+            sound-dai = <&i2s>;
+        };
+        codec {
+             sound-dai = <&es8388>;
+        };
+    };
-- 
2.52.0



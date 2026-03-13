Return-Path: <devicetree+bounces-275154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sG1LLc/3s2nYdgAAu9opvQ
	(envelope-from <devicetree+bounces-275154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:41:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F2F2825C6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E990332315EC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43A6236B06D;
	Fri, 13 Mar 2026 11:38:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B593603D7
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 11:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773401905; cv=none; b=Ks6rBEMCXYf4MJw5Lp/K+ZT3+GZ+OqOfAp3gSsnFTozFJynZU8eSML83WcvWKK9dhLwYIUPivTK0KgzjribnLQ/qO7TCvDxF9G0PnqJm4SZYArWtZPUVgGK270Cw29+rE7Az6Ll1YPp6atP3oZXf5eNT8/Xuhz7qn74ciXAd4Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773401905; c=relaxed/simple;
	bh=2L06vfLE0v6zHOIyvLLt10JdcVy2F2e9l4L3BNu+844=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VYxQsgyva7eu5uD4Kvv9vfc5MRi4LzVqao3gqWPqjxdvmHfUgON94p60RYTrIrn7jwgnCpi6KTMa1CGVX9u+SlpyhMiyfYVvyb/OizWfLlXXaRukat8Lnt8hjyhm5p0gbXDJCn1tXZfkXx6991F2aQBDtusqqRHFxhnMDG3clMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c73bc3dd25fso816524a12.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 04:38:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773401903; x=1774006703;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=siAP7fGXMH2PyAde+5dOSRsHXBAV9rPfbB3DM9LuN3Y=;
        b=FQapUku4bdGp45mPAp69VzEsnkQ35sG9EOkOIk45dW2QD/rfhCFHYX1vfmwh8rL2cu
         dRCGZuf74XsrrSZaL8Wdm/ZlIEJA82crsWUgPXT7uqtpx9PBm51dfQkZMPb3vgEG6lYL
         0LTXnF4zq5j6EHFSG3fsZ8q/mNyc/JmNhHnV8CrxNOz+dPWk+7ct4sMPsGZmBnTYawfP
         tJaZU4OflufsL/JJ4mC+ixYrSXzQ98AzWlBF9Rj3gYVs6EuCar8MIjzrqXgW80leMgXz
         68VAWyL1IA5rcfkn1NixrvBz7B97W1EEB/bm8lM6+faj5do4RHa7CCLFIZUpNkxdiXus
         W97A==
X-Forwarded-Encrypted: i=1; AJvYcCU1NeYw2yz7zrXor2xqJoxKk3UzAxNBRZvLFkwUWL9xvFf7E04WsQGF94z+QVOaeP/16qoWGJHwpHPV@vger.kernel.org
X-Gm-Message-State: AOJu0YyGzdBTpK5wBODyXHp7Q9+1FSAx+LrFoyZWSgz8mlpOvgX1a/ss
	arBrNBxi0z412iTd3NjUow8fReDb0crZ+C4Lc6Jm8DJvtFXMR9TV65y9
X-Gm-Gg: ATEYQzwwEKKTqKLF/HS8N2Bw+7xwNyjMSHApa8irxxMGeCvDsHYsIAwmfFUwAr2ViaN
	r6oIP11fidKrtH38t7j1uAOIMHUPGoMtLyYyhbNYrz5n7rVBrtrOcZsU88dJIFfhmTkwxIzbVJQ
	K+t8p+K4DWJOxurK+YZUDMKD4B2gzhJzGrAWFi3lT9OfvcnH24p+XuVY4tTR7eA4zBowUL6iPZM
	OzOCzHeT+hnxKdfqAms4myVyUFope2DDTq66/RwMfM47XEd5285GrkldwWACnEdGa8CtFZhhZ+I
	psBedQEW8r8Q/4K6Q5h5cCFbzg/eeXws/JwLI7u41M2fQ2lg2IG0mBWm81LuwJxdtxW1P39PS/y
	5xCKoe5BDKIfX8dHtIF6TkCuA5uFl7idEQBK7YIhL/+Hja2ILceW2MiwP9yxAHIa9779BC57KKc
	wkfj4iycBC8cfikzGXqUxkL+XVA69ZHwqYPby3eTX58yHnO2W2+tka2mu4x+5ZCxdFSstApWfSA
	6qUkBg0rFydJw==
X-Received: by 2002:a05:6a20:2588:b0:398:962e:83d7 with SMTP id adf61e73a8af0-398ecd32e67mr2778377637.43.1773401903176;
        Fri, 13 Mar 2026 04:38:23 -0700 (PDT)
Received: from archlinux ([103.135.252.26])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73ebb75624sm1669419a12.24.2026.03.13.04.38.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 04:38:22 -0700 (PDT)
From: Siratul Islam <email@sirat.me>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 1/2] dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
Date: Fri, 13 Mar 2026 17:37:17 +0600
Message-ID: <20260313113737.151881-2-email@sirat.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313113737.151881-1-email@sirat.me>
References: <20260313113737.151881-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275154-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[sirat.me];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,sirat.me:email,sirat.me:mid,devicetree.org:url]
X-Rspamd-Queue-Id: 33F2F2825C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree binding documentation for the STMicroelectronics
VL53L1X Time-of-Flight ranging sensor connected via I2C.

Signed-off-by: Siratul Islam <email@sirat.me>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/proximity/st,vl53l0x.yaml      | 7 +++++--
 MAINTAINERS                                                | 6 ++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
index 322befc41de6..0852259754f5 100644
--- a/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
@@ -4,14 +4,17 @@
 $id: http://devicetree.org/schemas/iio/proximity/st,vl53l0x.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: ST VL53L0X ToF ranging sensor
+title: ST VL53L0X/VL53L1X ToF ranging sensor
 
 maintainers:
   - Song Qiang <songqiang1304521@gmail.com>
+  - Siratul Islam <email@sirat.me>
 
 properties:
   compatible:
-    const: st,vl53l0x
+    enum:
+      - st,vl53l0x
+      - st,vl53l1x
 
   reg:
     maxItems: 1
diff --git a/MAINTAINERS b/MAINTAINERS
index 61bf550fd37c..a142a97be4cb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25093,6 +25093,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
 F:	drivers/iio/proximity/vl53l0x-i2c.c
 
+ST VL53L1X ToF RANGER(I2C) IIO DRIVER
+M:	Siratul Islam <email@sirat.me>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/proximity/st,vl53l0x.yaml
+
 STABLE BRANCH
 M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
 M:	Sasha Levin <sashal@kernel.org>
-- 
2.53.0



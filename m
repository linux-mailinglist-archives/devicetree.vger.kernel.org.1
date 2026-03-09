Return-Path: <devicetree+bounces-272653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFejGHkOrmnh/AEAu9opvQ
	(envelope-from <devicetree+bounces-272653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 01:04:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D86C4232D2F
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 01:04:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 77576301CFC0
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 00:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C76B134CF;
	Mon,  9 Mar 2026 00:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YsmNw0g5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F793A1B5
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773014635; cv=none; b=pA3ddYz7r905Vw1hiMwTPUB4Xsf5fw62+0iT5gX5+eolwbsgasny4uBcxBghBiYwwgMi2Yx4BuOu6PrMWzIuCaJj+LdpWWKtxevaIxJNzdNPcMVQDE8v4NFy9I2LL0tXw4Fu/BhhqlC8WHo8aqmP3YCPu2ffXpRPNbkTJzRkp2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773014635; c=relaxed/simple;
	bh=h4gOd+UQkfsuU8dfRXEsm3/VN4Iz5YJm2OLlL8dMYmM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uA8S9bo5ReXZitKBss0nrZ+BmDMKCNInu3GQu8+IBbXmp4/HDhLGtTZkEUTNQDlouFFo/YQaBY6Ql15GiYnykNY+DSR2W2V82eyUx9kXB8mQPLTfcfi3eXcYAJRDsXS7YS4uOff3qZWoEVz1BfxKq9tOdriw7USxTHLrrentueM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YsmNw0g5; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-354bc7c2c46so6544897a91.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 17:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773014633; x=1773619433; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWAv+cXchBb/HIG329G/h7rJcEkvvlkIxA/O7EdGmJQ=;
        b=YsmNw0g5ICHBXp1wi5KxzxBt95g/1+5cEyynOYoRw5Tf8fx8kdcmLlOL61ir1AuT8B
         RKI50BPJsI2zY2m4YTEIqhn0B9ahZE0s0xavyGlpGQHgexB9Tr6FwsN8oBI2YyURp8X2
         RRTKHe6MewKGrGDtHBzujx26nM2oXWXktHp7sRj+nXwKbF5qPMKVzvPAOqmxqgPwlVSB
         YECHRjfQxyvywrpomw8B4dt4RuDN0omld2wx9Bd7oHbhyjz4Mqfdk/HmtaWbrPW7YRim
         tVgIV+hmhNSPyb9zQ2C/UIwXyBI3g+sGi8EQ/GEKA5VXi5IzlKTWM7esW1s/Q70H861Y
         o5Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773014633; x=1773619433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eWAv+cXchBb/HIG329G/h7rJcEkvvlkIxA/O7EdGmJQ=;
        b=fvmpoiwW1Ghk99/asD1Q9B3COG5JdFPa3H4Xszty+x7kLzCbNkhTVvEZrDWAWHx2LV
         MybTIFKXFVoD8XWpZ79411inG/OF9D4XXS9cvJFo02hc7OvBdU99ktcC8zJS+04ZA1l4
         cp6mUqew8DA36kTukjGDxtjdanHQpqi0off5nMfM4JKI5Oc9zOmPpQrUItPZguSO0J5a
         D4EYbPRuLuojtffc60mGRpxPlA7j8OodspKQuJSntdjYmW4k/aWVEPR409hTMxIyYsCD
         iQZCqeS3UD3DdPE0uuYY8t/OYbltmM6We6HpFBW8IGFQqZPRW8msDIosJILixlo1Cltz
         f/ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbrxdytNHJ+hP7dr0MwV4jIOhTux8DFea+GWluP2puDyXzU3xD9daa2YWxu+K3t+uoZmpoXcdrOiix@vger.kernel.org
X-Gm-Message-State: AOJu0YyT6EXJ0lEwV1H6B4CktALC25QpUMY3tp46uspBqsy9rBfA/tzG
	PKE3g6ZjJ7AN/iI0uf4nYOsDJ7/EJyo7Ec3yv9WnTwOKYr8/rtVd7QBr
X-Gm-Gg: ATEYQzwSkqw6W5OAK6YLaLmSn2HzFsGg75jL/+MZR5Nfc4CMccGhaGVI6ny+UPj/czG
	gp8lgPtBJLBEG4NcXL5XCmNccpsH7OUkFOq2N9mGkSzeVAa/JUz1j75su1kA0E8OwBsNRm6pIvL
	ApvEl8L+BSBisxgbgqlvHKG84PsamjxjpzPPXJ0AF9/bW7Vqhng2D+TynTgoDIaIbqu/6RaO4xt
	HGaZo5XAeAWt5iTBphVAD67KpE6OvCdNBVYbJ1E4tCnYjNGJ47r/PnGKwkAJ52oMaPyFKS8qgml
	ZghLM1X6DkAFAb/X2hmlT271k9KWte4AUkvxAw0ehTng5uaTEH/foRx5TEitKjXK1vSWop9q2cj
	nuo4oMFDYy/KrQd2cWw2ivbxsuTtKS/ACZcQpm/FoDdsvzMvz98qF5F7YwbePONkyHgUZP0I/gd
	aZ75Z1OBaP3dC7JAzO4H3IQvMtjK/isQjDVE3vYtVaBgeej/iY/TQ18aKZv6HCdcClNMf9
X-Received: by 2002:a17:903:ac4:b0:2ad:c66d:ad06 with SMTP id d9443c01a7336-2ae8249420dmr91012115ad.47.1773014633289;
        Sun, 08 Mar 2026 17:03:53 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e9b9c6sm104845405ad.29.2026.03.08.17.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 17:03:52 -0700 (PDT)
From: phucduc.bui@gmail.com
To: krzk+dt@kernel.org,
	geert+renesas@glider.be
Cc: krzk@kernel.org,
	krzysztof.kozlowski@oss.qualcomm.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	hechtb@gmail.com,
	javier.carrasco@wolfvision.net,
	jeff@labundy.com,
	phucduc.bui@gmail.com,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	robh@kernel.org,
	wsa+renesas@sang-engineering.com
Subject: [PATCH v4 1/2] dt-bindings: input: touchscreen: sitronix,st1232: Add wakeup-source
Date: Mon,  9 Mar 2026 07:03:18 +0700
Message-ID: <20260309000319.74880-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260309000319.74880-1-phucduc.bui@gmail.com>
References: <20260309000319.74880-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D86C4232D2F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,vger.kernel.org,gmail.com,wolfvision.net,labundy.com,sang-engineering.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-272653-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

Document the 'wakeup-source' property for Sitronix ST1232 touchscreen
controllers to allow the device to wake the system from suspend.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 .../bindings/input/touchscreen/sitronix,st1232.yaml           | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml b/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml
index 978afaa4fcef..fe1fa217d842 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/sitronix,st1232.yaml
@@ -32,6 +32,9 @@ properties:
     description: A phandle to the reset GPIO
     maxItems: 1
 
+  wakeup-source:
+    type: boolean
+
 required:
   - compatible
   - reg
@@ -51,6 +54,7 @@ examples:
                     reg = <0x55>;
                     interrupts = <2 0>;
                     gpios = <&gpio1 166 0>;
+                    wakeup-source;
 
                     touch-overlay {
                             segment-0 {
-- 
2.43.0



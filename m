Return-Path: <devicetree+bounces-267218-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNHgOfLgm2kp8wMAu9opvQ
	(envelope-from <devicetree+bounces-267218-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:09:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1B9171DE5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65374300EA9C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 05:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD847344D83;
	Mon, 23 Feb 2026 05:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IyDQUyrs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FFD31690A
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771823317; cv=none; b=H88qA/pzaqa4JaWLQomUyVeyUYbRP5ercm45dQjC7BOrDmjIfyLNklTb6eImoLwlu2sCjSYnJPl8cy7cOg/6iiaR2/aMuXv9lcMGCSg6mJActWuLUbYGDLohZ0FP39EAxrRZonUP+T8Mau28JIH4l4IIPihjAcxdNj91KBFMdvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771823317; c=relaxed/simple;
	bh=ErS3wJTAyTaQRYawS6VwyuFEeddf9rFQGTo3AZ++III=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j1cJqZlSI+8SyAMY3jqUARHRl6SJd0etnlHdwsQRrUgyxiNaYHnTUKeqM49qF2kZYE9+e7gI8ZMFOUX9Ktw0XAMALm2O2hQoDgIUL3b4FN4U7OUY5z5AEUP+ovCRMiwilj72CZXfbHAKrBR5cP2oL5Ib5UGoB/xKR/ZBTKBKHd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IyDQUyrs; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-824ba8f0acaso2233121b3a.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771823316; x=1772428116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SIriBNBZ/cMMJ/jUXL45O4yEu1LeY7GdlDxQ1g/V6qY=;
        b=IyDQUyrsGNTk8YIMhTAPp02dKY2P32m4IuizsnGNTjRtimSmomGQ50L7WloxTkPnJ/
         ygrU34Rg6H4hmnSh7b7Ee5abFBpVXTicTLoi0kskm59xNxMwi/NZ27TRZgvTfFVrijUM
         tXipBMod2nmwnLPjIzDV7V+vs3YH2ZypzYf7BCQo6gqj7MHsuylmmH7WrnEQth3/1P2O
         cbmLsD6o27eQzxzgx+kqQm2qpoT6o9/b2jnT78k/ihYb+qf66AuaGS1CnRqUTVgl981D
         uoM203nkr8pcUvygC31Vtr0HLiu5N4VWVVG4tYif+YThQ1hgYatEbLkJGOVZnc2Kruyt
         n7sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771823316; x=1772428116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SIriBNBZ/cMMJ/jUXL45O4yEu1LeY7GdlDxQ1g/V6qY=;
        b=pz78IyPix9osur6uhQz9B36V6PNXuHE2Eu7fgzwOtS8O4wQXu0K2p315LAZMcUsE67
         L/ugCgT+8gfzGXWqzyuY1aTxX8JRPWsNoveEANRBxCuvAKpWp0ahIAJythoBnX86mB07
         XLoJWuTSt6qlx4TMRMsgPW7Sc+kYhb60rnr2GcPcjYnj0KbqkcrduaOMFmeCuw48cYam
         bTmdwaUwc7BX3rmwJR0yTv+0wrFzlIHlABgyeerOUY4A+4HUcsGLJQStcE4MLzzrwOKj
         +pV+KgaAYreMd0IQZJaPGMNUJ4CEAiitzJOvo04X7qmgz75Vh8PciR1WICC0mXnJC+pa
         9/Hg==
X-Forwarded-Encrypted: i=1; AJvYcCXbIjMIbN02PZk10z5K1R6bObApIVDyLI4g7eOG8/iQWReEZL/h3VKA6emmHLxryQEedJSt0/iraTEg@vger.kernel.org
X-Gm-Message-State: AOJu0YzIfRZbY5VXC1yiuNCvkmWEZ9nyg0pX8lm4oU/32sKF1eAqGS0V
	gahRnzo3znsuWAcOz5PEJBy30Do7A9HAPf/NvAN6Ijc/NBaiGoxR0rGI
X-Gm-Gg: AZuq6aKuZF0vm1c1xRE0LgGFcF3ot/plYP/JUlUa66TwyF3j3xZeLAIvR6+1BYZsoee
	x9dfFWhMK16hJCjHtISOqTORR5FICYpggXy+t3oPo1X6DpH33gamX29yGjnpVrluS28IRsBtfay
	i4S76DCBSkBCuKhVtvYinC6cQhQ/tl4qS+AekgqK3cJ/I3A8NSuD3ASglW+7ykRL3ahvnLIDBhG
	AOj94NRS/eC3LxXJ4Xp6JPx31zQ2mZEsg8cCB22OOagDAdOHN5QzBF8nxe2v6BMYZYGMWjulFZH
	ArRJFvJml3trZBE5+Nb94cjHIZiF7T+UwcWGfi/y0r7RMAqMFz96Cm3ojV3Zwkz/ASsAMUCK6uS
	ZvxJmWDFsI2+zOkCmRj03FHAKL/3aZoynmKqAzyvklMdee7+zfoqQliCor7U9samn6Sj7uaxpgD
	fxsJYGoOJ+qXfreSCTdCp1g0oP6nkIVflKY2KjnplUAB7n0Q==
X-Received: by 2002:a05:6a00:3c8d:b0:822:7fd8:ffbd with SMTP id d2e1a72fcca58-826daa89442mr7723707b3a.59.1771823316079;
        Sun, 22 Feb 2026 21:08:36 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:93aa:64a5:666f:7ac0:de3b:1659])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8bf9besm7502022b3a.55.2026.02.22.21.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 21:08:35 -0800 (PST)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: [PATCH v3 1/3] dt-bindings: trivial-devices: Add support for XDPE1A2G5B/7B
Date: Mon, 23 Feb 2026 10:38:02 +0530
Message-Id: <20260223050804.4287-2-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260223050804.4287-1-Ashish.Yadav@infineon.com>
References: <20260223050804.4287-1-Ashish.Yadav@infineon.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267218-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,infineon.com:mid,infineon.com:email]
X-Rspamd-Queue-Id: 4A1B9171DE5
X-Rspamd-Action: no action

From: Ashish Yadav <ashish.yadav@infineon.com>

Add Infineon Digital Multi-phase XDPE1A2G5B and XDPE1A2G7B
Controllers to trivial devices.

Signed-off-by: Ashish Yadav <ashish.yadav@infineon.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index a482aeadcd44..343f1e62c373 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -157,6 +157,9 @@ properties:
           - infineon,xdpe15284
             # Infineon Multi-phase Digital VR Controller xdpe152c4
           - infineon,xdpe152c4
+            # Infineon Multi-phase Digital VR Controller xdpe1a2g7b
+          - infineon,xdpe1a2g5b
+          - infineon,xdpe1a2g7b
             # Injoinic IP5108 2.0A Power Bank IC with I2C
           - injoinic,ip5108
             # Injoinic IP5109 2.1A Power Bank IC with I2C
-- 
2.39.5



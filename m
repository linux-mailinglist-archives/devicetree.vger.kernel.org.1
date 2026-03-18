Return-Path: <devicetree+bounces-277026-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEagHTJkumklWAIAu9opvQ
	(envelope-from <devicetree+bounces-277026-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:37:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AA52B828F
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:37:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4C72314414B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1826E381B1C;
	Wed, 18 Mar 2026 08:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hoZAx2mR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11913815CC
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773822713; cv=none; b=T/h8e77ZbGS2QK14LdqLs47p0b3+Uo4alNJP3mC6b1TB1eplK9Mj939ZvTbhn9NF8ERk1LKRe2EKPCS9i863ECmbERoduRcIAdZTgtIZmMVghLP/FLGsn2u13iROpsrRTyMzfuc/QR2jqBaWkBPDl/KJjjT4g9NVNylGxTQ+Twk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773822713; c=relaxed/simple;
	bh=XHnB+mK6xGRUI/1P4LOs4QVdLEWard9D2s8tWWJqkKU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UI8YzEZWU5LY/8mSc5+4eKhftNIuLg2EAcsHvA6dmZFCvp08spA9hZWCLFf+rKT9fdqdt8mtwvBMh3dV7fS8ifly3fHnR+DOxZGoUJ1thQZqkFva4wefXRaFx5bFL5uD/dDHwkGfNp+PoSCWaFZ+NegHmtcqe94pPuuExq6AH6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hoZAx2mR; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-82a15b44c3cso2734262b3a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773822711; x=1774427511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=klbyuhxtyqmgcbtWm671qhdJGBO8PRmtUd+eMK0w1Ho=;
        b=hoZAx2mR8E2ire7IG5+lIrpFPYe0PmnV+6mHumZk3d4JhRVPHG9Zv58fzgnoG3x8Dh
         r6c/7XEu2j+oKE6Hwp+9S1c9kuNCXZD9snT1rAZ+jNiv7Two1H9QwhSBJYOTajZhFleJ
         fpkhE6coKZR6QyQvK2U3cJJ5owOOdE/RI37LAjCTJTrx29DhtBe+uQ7OfIWzoWMMHTDZ
         5OckJtF6asHq/XRtbNFJEE5eq4NwY16eDV8Rf9/zy2BaAw/g3hiV8Oypfsb8Vw+R9i8z
         sEZtyuSwAPOJ51LsRmSutPALJ6if1swNIpVIDk8Zxeu61VqIrlJJUxyg2mmsEcq5ZiOm
         UMrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773822711; x=1774427511;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=klbyuhxtyqmgcbtWm671qhdJGBO8PRmtUd+eMK0w1Ho=;
        b=OMFKENMZq4OqP9UmIsl6aIDWjqCHAUkUKI4rIYsyMP2CfPQ4i3WodvGvLckSrdtqaR
         ldrw24fYbqoaInIryDdyvBVVQ64zPtURr5t07IrxhRoIGiWkGdQODDwDcS4zTdifw9dV
         eubTCso1nN7lyBppvGvAsHtpLuaJGDYaybiWZAc4VNwtEnTgc6Qq1llEZE6DdjcASP9y
         abEhkDC9WrOorPJZfRBRgPBZOl7TJBmoUL0vO2j2c4nNQtcMqEL5fSJbG38ZphlV28mT
         SFZpdy7tlRj3xLkG0ACWdfb3xyZw6Mu9Xt9SCGTCmP1gYMHK67XelB/AvPA9gbLExSe4
         4RnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVL1VcBVJFnvDobID/QWWnRk89BuqpRGMklNMaeLziNhmnZ8GhGfHdRNlQkD+BrSh1XkAfmPPk6wUav@vger.kernel.org
X-Gm-Message-State: AOJu0YzIAXTF39wARVtz9uE0KNW4kkAPaT0RjE0YOAnCHfuWzuE5NLdz
	ufITI9tiRoQFau5GZ5AnRte4Ui67cMQNqeuBo953Lpj5sM51Tn1EYBM7
X-Gm-Gg: ATEYQzyeKo0n8SKTjuYBJTPj99TsRRFKxCtz9g41CmuBVYvQeMaQHDcqpOL0VJm6UR/
	R/5MKbxMga8rs6PC7A1jvHx//atfurAb0dVQrPIGi5Ni4GpATOS7zmOv2AyKbBC+l7h004ICuzA
	LZKFKZavO3iq0vxkoOqO3XlwVd47/BJabGwYNQVlo/9ebAzhdAOXNSsyqCvSnjHnoUkm7xZ61MK
	Hk2cUzDRKCTxi0z0ytUc49vNeC7vOgZisx/oRIK1+gu0i5kwx5lN/awgZwn3RqxWeeyqxSYQIUE
	R7A4NceY/GiczpjfK7bwMr6uLLswC5yVjA0ph1QulIopeNHdSdgEPKCHEPi6Jj3voQGTkkE2iKO
	qqxmhHHvoKmf+r0MAvYbTmgFY1ECSgkxTyORi3IPaNhE4/heGw3L2caEIX8Qs/GGTFdGVxJ3bn0
	Z3zKKbw8fYe+Afn7UdqT34VNtZYP4xHQGXf6VB97Rg0zPEP+lOTu/2B1saow==
X-Received: by 2002:a05:6a00:1702:b0:82a:60ad:87e with SMTP id d2e1a72fcca58-82a6adff9e8mr2364033b3a.19.1773822711265;
        Wed, 18 Mar 2026 01:31:51 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6bbe5ea9sm1794663b3a.45.2026.03.18.01.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 01:31:50 -0700 (PDT)
From: phucduc.bui@gmail.com
To: conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Cc: conor@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	krzk@kernel.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	marex@denx.de,
	mingo@kernel.org,
	tglx@kernel.org,
	phucduc.bui@gmail.com
Subject: [PATCH v3] dt-bindings: input: touchscreen: ti,tsc2005: Add wakeup-source
Date: Wed, 18 Mar 2026 15:31:24 +0700
Message-ID: <20260318083124.21793-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277026-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,denx.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NO_DN(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 20AA52B828F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: bui duc phuc <phucduc.bui@gmail.com>

Document the "wakeup-source" property for the ti,tsc2005 touchscreen
controllers to allow the device to wake the system from suspend.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

changes:
v3: Remove blank lines
v2: Revise the commit content and remove patch1 related to I2C and SPI 
wakeup handling

 .../devicetree/bindings/input/touchscreen/ti,tsc2005.yaml    | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
index 7187c390b2f5..a9842509c1fe 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
@@ -55,6 +55,9 @@ properties:
   touchscreen-size-x: true
   touchscreen-size-y: true
 
+  wakeup-source:
+    type: boolean
+
 allOf:
   - $ref: touchscreen.yaml#
   - if:
@@ -97,6 +100,7 @@ examples:
 
             ti,x-plate-ohms = <280>;
             ti,esd-recovery-timeout-ms = <8000>;
+            wakeup-source;
         };
     };
   - |
@@ -124,5 +128,6 @@ examples:
 
             ti,x-plate-ohms = <280>;
             ti,esd-recovery-timeout-ms = <8000>;
+            wakeup-source;
         };
     };
-- 
2.43.0



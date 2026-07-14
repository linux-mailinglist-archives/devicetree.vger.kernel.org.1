Return-Path: <devicetree+bounces-325888-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X2BfO6/KVWpvtQAAu9opvQ
	(envelope-from <devicetree+bounces-325888-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:35:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D686C751300
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:35:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=RZTNf36b;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325888-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325888-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 282373020670
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 05:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6131033FE02;
	Tue, 14 Jul 2026 05:35:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2716033E34E
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 05:35:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784007312; cv=none; b=Zq+oK3odWDA7p3lL4vIkLH114s+BtJizH/Hc7UEcmUjlfSAKoa2GoQ+nCE50+T762droN2YLk58WTOf7dJ7BNA4jsY8ilZIq/IamE668DrF/oDuZasI17/7GbY2NknJa9HQqwmA5MAkSdyqnN4QP0qS6ivsnjBt7ADVV1v+YVkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784007312; c=relaxed/simple;
	bh=PjeAyVzdrmEPvru5WSS2hywp+olcq5EiYjAbVoPzIDc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NiyTKT3H6koSCu9l7onpY6p4OAykwMwk1PBJZuLSePlvYFesHcQFvjFMak0U0rUyi+2yR3uCCvXomzrkzZLshV8TL88VDFnIcUFqCl+3Lmq9pR6GSHBGJgJ7DdhJvRfH3oK8nC9kPiNvEZHdrgh4JN+1XLAAleFbAZLGJl1uZm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RZTNf36b; arc=none smtp.client-ip=209.85.215.169
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-ca12086c06eso3285067a12.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 22:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784007310; x=1784612110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=RZTNf36bzVV34bUarTbZEgXeW8RY2aEnXtNgZ3vbrxMGSoRCdKNXOa1TinlJXi5CIi
         hxNfLMwRznky0odQRiygs6gMpun2kUZrE8p4EWcShl9krYoEPNvz/pVltQy0ILa9TepE
         aolis5kN2TRYnmFRCmCAg/9xFF1fE4tVcnHwRCBGe1+ObM8LysrYkZpLtMAmKgpjmC97
         xvqFfo/vSWy8Mh+66QMnAhYj9Pm4Gh5ywq4t6AozZsjtfxiRiWvo3t9BMX+YH1b3dCqZ
         bRILKm4hlnz5z/sdrdLxwisD0tr81r+LS01Rp05zZW10gPT00JSa1IwaQKsl/3i9ndic
         J5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784007311; x=1784612111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=Nk38joTJlSkoxOxfmq77QOcTJcOq/9rV7doarFpzs+okbuYMJWIkMiqdCSZFBhPwbj
         Ob89nDKot/htakf2uqB0BIwMAB9JynfjWTEeQYieRW+mvx/fGDCEqAZk6NnZRhpKeXo7
         8bJwjLgXqQMjPhavAvjc80F3LjoJ9egiMsjjETHkry6YIYjhNA6YJJwh1btvEEoYI6p6
         7i5bDDfAu7SAppDo1rZnHqlz+FylmhfolvhLVA0MKi7Z/8u0M4NHnKlT1bvZCCwO3AYf
         9rE/kp85KvpYWvw05SUTqJ0i5aLdjV5F/C+TUAI0l4ipDMb7ki7zkSl90xZAT9T506Cf
         8jqQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr0YIBtZQVzJJMEEZU3aNlsDgoH38JCQgDpzyTrR2dnvzDfJxgqvEvk93TlAQbCnQYlXRrsHbj2n9b5@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsa5KVElg74ppqIvzrTnFx0XQs/2g2FgUzxIVc94AV7GoQ4vd+
	3w+YRw9xDvLVK8WPm3xkZqTEiSORmD28Z+K47gr7UY8sU6WiFWN487Sl
X-Gm-Gg: AfdE7cmNNRGEuIrtJqtoUnKfyJv4TlNwYnRZkR3YuyXA2kyZ4wxCu3guaYmsclsqN05
	c6t066foHAIj+OjaLVS/1cLtXczJyrRm0CbFOcnfnX6fmZxEjnH+wTsb7tUfSdjSNP5bzRGvHuC
	GeCX0udHczhJh7UJ56IznGaZzi5qasrMD7Ljdm3sdPKMnAaxzyVZaaYNWJeQwu1Y5NBQpfzf6yA
	lWBkB2XtiH5+fiXpJ+Yw55vB6FuzawRefOPjrKqw2Mz8h2NUmxpw+HX4MFvByJN465Es6C0JWkm
	qNlOOBF5aZYxwvJb6nSDzSdLhK1/sBircHvaGwQv5fGzmpVb76didG68cFIVKTKFTrj/qXIFIK8
	ICdsklcjTBH0vHaGz/s/GhOe97iheHlcgSqf1PtrSH/wn5s5i/5mmGeRZq5WkzrF2ggb34STBam
	MwgwdXF7Y1EtVvNHxOB+i6
X-Received: by 2002:a05:6a21:9f17:b0:3c0:9c19:65c4 with SMTP id adf61e73a8af0-3c110aaff03mr14840300637.76.1784007310615;
        Mon, 13 Jul 2026 22:35:10 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b659d8da9sm131882715c88.14.2026.07.13.22.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:35:10 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Tue, 14 Jul 2026 11:04:41 +0530
Message-ID: <20260714053442.265587-5-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714053442.265587-1-hrushirajg23@gmail.com>
References: <20260714053442.265587-1-hrushirajg23@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[sntech.de,kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325888-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-rockchip@lists.infradead.org,m:heiko@sntech.de,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:hrushirajg23@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hrushirajg23@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D686C751300

Add device tree binding documentation for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b023d4cc9842..b5a43fd5e546 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1311,6 +1311,11 @@ properties:
           - const: vicharak,axon
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman2
+        items:
+          - const: vicharak,vaaman2
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3



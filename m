Return-Path: <devicetree+bounces-271030-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OH6FGWwuqGlPpQAAu9opvQ
	(envelope-from <devicetree+bounces-271030-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:06:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9602000CF
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:06:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E27AC307F009
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0BA26F291;
	Wed,  4 Mar 2026 13:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LRi2JNPs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B7D26D4F9
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629563; cv=none; b=E5v701AeOM7yur+ouOj2uJ1PFUldSIz/Hv/4GybYt2Ku3OpOG6hPbQpekBFvLmix6buRPp90ojrtzuecjRmq2LR8kkLc/Vqu0QYi2f1YjhM2IpzTohNyETZYguhosYyWVyDuRLIYyoKCtkBz+ALCHpfp4mqS0g4cv1cfhRzJVFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629563; c=relaxed/simple;
	bh=ZM0UeGckLgWfb8A9LZDrdGuBcoOBBI4fXdeLoyxc1d8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qvYJ11Xf5VGZ4er0qlzUN9k+aNx1EkLXNZhEmqqkLWQb1SFJBxQ8X7M8DT1cJPeyAnT1qoU6u7kjzOzAZT671uzIPpolj3lmFbbXyPpvjZUmvRqN0XH+0gWjBIziFmEtEeKU8AZj8LDDBaIYnbU7RW7cBoYYI0CLCsXpeDjCceE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LRi2JNPs; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b8f92f3db6fso1005381666b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772629560; x=1773234360; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=veByMjsGeeA2OCIj+ldV0X1YxNMqgif+fScGvqauuiw=;
        b=LRi2JNPsiCwXgXWe1nSNyi/QM2eibEn8Jr5R3iZ+D95JlNsX9HtnrkeRHB53JltBOi
         Z8+MeHDzA5fwmKc3rJs6om64IjxgsUy6H2KXH2k59QueGwsSbx0cuXEkhoOBBOSrqWRC
         i4DORbINR5Fzimm7sMxPmPSPV68KYHiWSN3c62c7v/tk5P0U28TJA5oKLlgySERVZLzw
         xfMyB4c3ZMdl6IH7dytJjxXzE2B0dxg4Fpr5Bax6QVZDcAa7ArUXKjhXFRaCpBmQtE9S
         oKkzsyH4tIz6mEQ7qyJOqwWwFtbiavcruKASu9/WL9plyc935RCXbmmfub3bWgFtmfgH
         HHyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629560; x=1773234360;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=veByMjsGeeA2OCIj+ldV0X1YxNMqgif+fScGvqauuiw=;
        b=CCcx1yNR86bbuhrSObYENDBVlFWJPow3IXvKCVh/0DfyVUemIa2Cs2Te1j6hnyfb0s
         3a2JtY0oDo1+TmvyQ7E7m43nI2IW2xbE4/UrSVEeMz3sJi0i0OsD87bqYJqxQNkqzizv
         X3NFu+SxTrLkh3GPQojEV4Z71uMcXke2vvRZzWItXmbVMuMOgmzGHFjLdcY+WA4lrsD5
         o+j3bHxONSUrKeclzxwCkmoEUBvwvNe/ou/GbFk3/khnh/6pHiKgrX1wu7hg6A9+0EYb
         KojSNYp8Tj9vCOttmM4jtHqkX+05Qh/C39MdRYfQ+E5Q0CNZlsy/lmvypHBB5LtcGFM8
         NlqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeyNIHWEfihFX2MhQIAfXvqh0sgDRZp4YUltzcwWypI1LzWYaZDkLeTVnnZP44tOumRFScOc5mrjlQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4ssFs6sccUi/Mgdi/jyPPQ7CTlX7H0PwXgVem/zENWLjvWdYF
	HO+5axdTFj8c052cpK9lUZOVB+8Mv4FyPU4J5T4i3c2vxD0uO5mQaGbr
X-Gm-Gg: ATEYQzzOGV8ER1MURRXFR3dMvV9bAFghzmCsAMGhawRIGvJXNlhxohC0gSVe+utzuoS
	k3X3HiWQ2oco+YCV+gtyG06eCsTdoycIXuX8VUDzUY+TThpiaOUsvTbIeCnzFTjioQL67mBB5f8
	t/bCjJ7mH08aS3uWtbF65hBn7+2ehnSx08IrspzeSrydcTkGTcc2vP6a61fntiM8twWlVyZKDr3
	61paB6tMuG/HpkscowAWl4L21uRaaX9LnDCmfsr0UadA0QHQu5cJ0ebYiakjQH5/g84CQYsOGnG
	wQSO6RZeNLYojH8qQOISDY0mAhuK06GmotbjX0jyByeM9B5SkI/thgYQDGuHXUjC6rc2BC+qfFQ
	jJFGu3AFX4Tf854E5dywhJcOnB/KoU6+/UkQK+/YsaoPzVUYmIF4nF6sySFrr24KgtZd7XXPUnm
	CmWx9sKBdGp7xieotsK/yMhzSmKgB98WbqEK7VE+kt4sLPlywDpfc4gZPZHgDSqvNXVCOV8+kKK
	b+PefUU1W65MtdJ/raBdZQ4zvAq1AN5nSGYYsCVykKpqZEuWo0LhXZzTSeKlorPl+upunnIvjBf
	1wVUMUHUuzySLdbl+aDmt8xT3c8=
X-Received: by 2002:a17:907:d16:b0:b8e:2a8a:4312 with SMTP id a640c23a62f3a-b93f14b31b9mr131153766b.28.1772629559982;
        Wed, 04 Mar 2026 05:05:59 -0800 (PST)
Received: from DESKTOP-JNMGKT5.residents.sin.openfiber.nl ([88.202.160.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ae613ddsm739559266b.33.2026.03.04.05.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:05:59 -0800 (PST)
From: Alexandru Hossu <hossu.alexandru@gmail.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Alexandru Hossu <hossu.alexandru@gmail.com>
Subject: [PATCH v3] dt-bindings: misc: xlnx,axi-fifo-mm-s: fix interrupt-parent property
Date: Wed,  4 Mar 2026 14:05:56 +0100
Message-ID: <20260304130556.37311-1-hossu.alexandru@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: EA9602000CF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271030-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,vger.kernel.org,lists.linux.dev,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hossualexandru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,43c00000:email]
X-Rspamd-Action: no action

Signed-off-by: Alexandru Hossu <hossu.alexandru@gmail.com>
---
 .../devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml   | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
index 6d1cd651e..cdc295f2d 100644
--- a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
+++ b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
@@ -31,8 +31,6 @@ properties:
     items:
       - const: interrupt
 
-  interrupt-parent: true
-
   xlnx,use-rx-data:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [0, 1]
@@ -56,7 +54,6 @@ required:
   - reg
   - interrupts
   - interrupt-names
-  - interrupt-parent
   - xlnx,use-rx-data
   - xlnx,use-tx-data
 
@@ -64,11 +61,16 @@ additionalProperties: true
 
 examples:
   - |
+    intc: interrupt-controller {
+      interrupt-controller;
+      #interrupt-cells = <1>;
+    };
+
     axi_fifo_mm_s_0: axi_fifo_mm_s@43c00000 {
       compatible = "xlnx,axi-fifo-mm-s-4.1";
       interrupt-names = "interrupt";
       interrupt-parent = <&intc>;
-      interrupts = <0 29 4>;
+      interrupts = <29>;
       reg = <0x43c00000 0x10000>;
       xlnx,use-rx-data = <0x0>;
       xlnx,use-tx-data = <0x1>;
-- 
2.43.0



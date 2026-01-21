Return-Path: <devicetree+bounces-258020-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AjMGdz/cGmgbAAAu9opvQ
	(envelope-from <devicetree+bounces-258020-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:33:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F9159F25
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 17:33:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AF8B0ACEA88
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 15:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7567E34E767;
	Wed, 21 Jan 2026 15:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AleF6Kuh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91BA342535
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 15:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769008519; cv=none; b=PHEdOZAtcpglWDz+qbj+ONVQa4eu2KHi6BsZ3mBgZpK1o877ekItd/Dl2m6FKSSlIFBxwHZW6BgCEQKJlCTV6tDaKAbV4ccFjeIQaCiwG9VfskWoUaYQeImPyEP7skaO1hESr17kQJLKQuzN40LKM3OLALjH+pxWmfmdq4NAg6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769008519; c=relaxed/simple;
	bh=FTEwGErBLHqKunY94YRfmnEFJcgED1VQR5css/VjSvA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gjtHB8L58tqToDxlaCUxj4qe/QOOKckopKNyyp6zDBFddoPpLi9S5gmXGzhFJG8/Xan7kq9wW7ZqcmptaTmriSXkP4cHuxjcfCrm28Q+ho3FuVPlorAXgvGO7saSmHfaaHM+4qPlPqX5b3d2yHpaB6D7HZfpul9FnSzZwW9e6fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AleF6Kuh; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4801c731d0aso41561645e9.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 07:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769008516; x=1769613316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ShDd3bg/yye6DPfyO0pVq34E+Bi6k81pmGsR4VGz0/w=;
        b=AleF6KuhtvQMngsaSizIeoTiBAYQtxQUi/URhYBUAnqb62kpsLu0MYkk3WrahRbAQM
         xyRdcnTfKJltjiPCeHz6mmgR4CHWTjViu1lBufyRlGzKgUkssNNKNujrfmKjhusFIcKq
         eiU3Pxq6degVb0E4k5tdZHfdzkLmJEd0qXtz+mT90zOatyVigds8mLF+h9PIhI/2737p
         NdZWZrnJXloP5uu4e/g4vC4sbgoli1QimxGJ8nAQB0QJGOleE9NwkUTGX4MoXePoir9N
         UO82bVP9ak9mbl1YeWiNWaC5sthA/IEsbeC2MqmL6Los6zYE4ZIiQfp8JTF7hq7m4Ed6
         Txmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769008516; x=1769613316;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ShDd3bg/yye6DPfyO0pVq34E+Bi6k81pmGsR4VGz0/w=;
        b=ufIWy4PogczwYzkgjV6ignmuHjpNP7YntHzjH3rUYnsGRfjvniCNekR1QIoAuZwNc3
         hdHo+Ml3i4iFZu+36hwzVweQv0k0+ylnzqG5nc7y6W6qkqKXZW+ZGUlTKFCKfmlyDKfg
         SZ2k7yXgxyO2IrklN3go135GtNYSbM47SOBitIa9mnHx3O+CFAr9t9DihcCNpWkigSUz
         cUEvF2cJTIjL1QCo+kmDWhXKe4xUdyIJvK351v/ezhjbDSMss/vr9PwyUF0YWwPxn0b4
         7WuIb6AEsAGMA0X1IPuiTd22IpTT5nHH2QyTZxzlqD1WfCIlA48sI3aQEaBLPu+w64+a
         Ynug==
X-Forwarded-Encrypted: i=1; AJvYcCWJDhtqqfRv9fk14nMLcR2yZN/WqehvtqE+BZ4pjvxwH6YKJjhZk81MRhhnVVXWqXQltwJx+1PQDAmj@vger.kernel.org
X-Gm-Message-State: AOJu0YwmVwp83WWGYkBW8bV3DjAClcFHe13fQzc/LBwmurvLX5MYEnp9
	1Triy5zt0CR6dp4znwhCgGLE3o0vDSSFxwzeEJYv0sRxiO5D+kj2Ku4I
X-Gm-Gg: AZuq6aJkZcAJiun8GfSQRtMojOuEi+3vPP4siOxtE5x//1sbLA/Z8N2Zu5j9Lp/kbw2
	TxdniMB3KjJDOZ2aHfnvLYMdxnGqVYjpocxCkXfjPRcWYhCGVxNCMxJAKMkaRAEbNt3xhedWH1w
	2NCFKLtCCqxBmaUqlpNTM/F7a74VdHvtm7X9A/ZJc7jraRIj/+2uhzsjNCH2dq3wfsSKHGMfmMZ
	GNv6AoymRJdgF3O6N+ZUQHpebF/UPwvdleKhMUWDNMEEpwca8g17uMsmyTay676rtJcRQJnjrib
	S4U82q2/FJDAEo+zXYxs38nQUM840TbNe8pR6gNZUqPc4eTLuKNxC4v9P/uOd3zda1dMSjTCMct
	m/uS1f3CasrLmBEdYQKmsDa7Kvs2iSqEHdVgf+VtCmA0lchsxvtW9M2Y5LAoVR2OBUudsNRsJoC
	eiP3KHRcUBCBE=
X-Received: by 2002:a05:600c:1f8e:b0:47b:df60:8a14 with SMTP id 5b1f17b1804b1-4801e30ef39mr244009195e9.9.1769008515786;
        Wed, 21 Jan 2026 07:15:15 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435924ae6f1sm10534349f8f.33.2026.01.21.07.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 07:15:15 -0800 (PST)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH v2 1/4] dt-bindings: net: realtek,rtl82xx: add a property to set MDI order
Date: Wed, 21 Jan 2026 16:15:03 +0100
Message-ID: <20260121151506.813783-1-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,kernel.org,redhat.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-258020-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: E7F9159F25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

MDI pair order reversal is usually configured by the bootloader.
However, on some design the configuration is left untouched during boot
and needs to be set by the driver.

Add the property 'realtek,mdi-cfg-order' to allow forcing normal or
reverse order of the MDI pairs.

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
---
 Documentation/devicetree/bindings/net/realtek,rtl82xx.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/realtek,rtl82xx.yaml b/Documentation/devicetree/bindings/net/realtek,rtl82xx.yaml
index 2b5697bd7c5d..c4ced671ecb8 100644
--- a/Documentation/devicetree/bindings/net/realtek,rtl82xx.yaml
+++ b/Documentation/devicetree/bindings/net/realtek,rtl82xx.yaml
@@ -55,6 +55,12 @@ properties:
     description:
       Enable Wake-on-LAN support for the RTL8211F PHY.
 
+  realtek,mdi-cfg-order:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description:
+      Force normal (0) or reverse (1) order of MDI pairs.
+
 unevaluatedProperties: false
 
 allOf:
@@ -79,5 +85,6 @@ examples:
                 reg = <1>;
                 realtek,clkout-disable;
                 realtek,aldps-enable;
+                realtek,mdi-cfg-order = <1>;
         };
     };

base-commit: 983d014aafb14ee5e4915465bf8948e8f3a723b5
-- 
2.47.3



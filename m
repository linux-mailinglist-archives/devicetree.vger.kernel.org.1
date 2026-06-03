Return-Path: <devicetree+bounces-306048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nkkTBrLjH2p5rwAAu9opvQ
	(envelope-from <devicetree+bounces-306048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 10:20:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FE0635A11
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 10:20:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=WMssYIAu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306048-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-306048-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5059B30C165E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 07:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D7583FE64A;
	Wed,  3 Jun 2026 07:43:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498953FD122
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 07:43:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780472599; cv=none; b=jpiqV/6z13Ok/5uEuz21eFc3tCdNtP5EUudhNq6XapZXKEXcTHU+9UqE1OmeR9YyIf/64zOTjqBIUqFk0B7InSt994sacfrtS8fitACunGUDgYlF1XbplQ9+qiWUQRbmPAy11HhWyc6LviwEwCYI3vCTJjLvytnVu0lonPqr4es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780472599; c=relaxed/simple;
	bh=6AV0nIhgZ8zQkjouvyZf3fqFVoDFcv/rGTOI4S00IJc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aXu8FFbql1oY8EP0oZvxtq5iINCA9u/ApPmwV8+e4qmV7P8HQf7zhjWMzV757fO40MiBvGZxeds4jfyX2Y6bUCcxWUB8vUBjTfiXTRHjM44kkziGRusO6qYjTnwUIvIcLNpIjZEpVE/XLCB7DM9usQZYcOIBHfIYODCUgIqjlrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jms.id.au; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WMssYIAu; arc=none smtp.client-ip=209.85.210.180
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-8424b00710aso1997069b3a.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 00:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780472597; x=1781077397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JjWZny3fo/wBnNwX/9+lDVbtn9cYqFM4uHEPeKu4K6A=;
        b=WMssYIAugVVbSitRDEAwKKnpPjHIdWpYqQ5yuyD95WM0jgAhZCr1IXQey8m7XZ75RA
         RGH8Tq0DYRZJpJqVSMno5uP/MW72HnI3KoNMW3mUXE3/UO33I6itOAoMHhVI2m+yERtc
         2Po6/VwFyp9D0z6CiIFcCPvx8xK5BTAlNyljrBXm6iDHSj1KRPpHTCFppoxys7M2zUwR
         Imta7ovwKPw9wbn0VyXs2gaUKUDWHCjgkiEA+Cm1rFOdR2B29mubKVbBq3/LjJN6B/d4
         wJJ7B/t+1e+p1tbrcEqRnDTjP6KYEu0FWbKZNjanZ8lf8mB0GFoVPoSByG23CvVLXObj
         gzvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780472597; x=1781077397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JjWZny3fo/wBnNwX/9+lDVbtn9cYqFM4uHEPeKu4K6A=;
        b=cGB92qo6jso+qv76iAV9Z1HkaORvkJ70oLLt7V5t6XR8Q+rPWcTb1RAPyCglFvVT2O
         ynp28lNZenCB8A08khd95eio2eONZ003OreW72XQWXiejHvOGCFNsOHHvZlxCYkOkLD+
         0tu9jIPV8vflNtnozXf0bs7AdBWt1IHspAP8wN+1OyKjsfNHrAiMMGuQmMwyxAG4TPVV
         fiFvlh5YR4QS0/Qn2Evg9lkg6+7/wJKQ86CNHel7+Ar2PKUup3pkzGv5Nhl4dT1U/Teo
         kUOerlp+6Y2O0eO+gLMQlKhG5BBVbpHrVMiyQeZOvCWKnwfKPm+pTyXKQRazM4D2JHJo
         6+IA==
X-Forwarded-Encrypted: i=1; AFNElJ8z4ql9Q8ejlWk+e2gXyqOJKJNscjWctQXJIxh+/rRKLdQi93a+etgbAJwiy0K/l2z20Vl9RLqO1zUv@vger.kernel.org
X-Gm-Message-State: AOJu0YxRPCD4fleWlAO7jBF8CJR96LZ2CGUR21IMhL8b7w4Chi8hXMMm
	QIzIt/UfeP9W/XWAqALE8Q9bf6bly45ryRI2bqGDU+UDmlDdFMsFsuz9
X-Gm-Gg: Acq92OETBrfhMTBJJEiWZwIfzLECeEzk8uFsd6q1viV/toDLQErgExRHHbJu99zaAhT
	AA6xDDXsEv/zWisbLN1J6fcf02kJdw7BGPy8L6oGbu4eeM0BTK30dEpvTWnStUKC2NGMWwEUtcm
	jhhBKbTXFkdq39OFHtdfOQrF89VKoFcnxlPfcfZFZXlQetDU2bWAygyK03PeGwKTRQbHs70a3IA
	/t0SrcAsseiQoQcp4DYiOk0oYDZdOovmK6kaWlaeNFHRf4iK7fKDlWSuktPFy1OgcMncVtJrram
	uwz3NCH+n6WiXMDFq5qtxCJrwkhgbRllCPlUjE8pTaSY2XyWJAa5iTKIwhNHpIVSChf3OYFr/Ch
	s1b0TVFZezh6Slho5M0iLjWFPRNMyYaUMmSW0bXnuNmwa2tIvApA6MyhJPX1ZStAlBz54I7KWve
	PZtLoyFikROckCiZ7KuwbiyfptDsOQc55KAHq65gvjJSUbmWivwtCWqdcLfKO0mWMPn/j2Thwiw
	Gu3BqVNezR7i8lumr1LXVxjsbpGeggFCd8yVIxTIhILc5ho8ZBRa0YmHxoIfBMR
X-Received: by 2002:a05:6a00:288c:b0:842:6e9f:9cd with SMTP id d2e1a72fcca58-84284fafa22mr2316123b3a.49.1780472597647;
        Wed, 03 Jun 2026 00:43:17 -0700 (PDT)
Received: from donnager-debian.. ([45.124.203.15])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842828daf76sm2161223b3a.42.2026.06.03.00.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 00:43:17 -0700 (PDT)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From: Joel Stanley <joel@jms.id.au>
To: Paul Walmsley <pjw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>
Cc: Drew Fustini <fustini@kernel.org>,
	Anup Patel <anup@brainfault.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 5/7] dt-bindings: riscv: add Smrnmi extension description
Date: Wed,  3 Jun 2026 17:12:17 +0930
Message-ID: <20260603074222.593243-6-joel@jms.id.au>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260603074222.593243-1-joel@jms.id.au>
References: <20260603074222.593243-1-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306048-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[joel@jms.id.au,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:fustini@kernel.org,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[jms.id.au];
	FREEMAIL_CC(0.00)[kernel.org,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joel@jms.id.au,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,jms.id.au:mid,jms.id.au:from_mime,jms.id.au:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 02FE0635A11

From: Drew Fustini <fustini@kernel.org>

Add description for the Smrnmi extension (Resumable Non-Maskable
Interrupts) as ratified in 35eb3948bf0b ("Merge pull request #1492 from
riscv/smrnmi-ratified") of the riscv-isa-manual.

Signed-off-by: Drew Fustini <fustini@kernel.org>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 2b0a8a93bb21..3e3b4481724f 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -193,6 +193,12 @@ properties:
             ratified at commit d70011dde6c2 ("Update to ratified state")
             of riscv-j-extension.
 
+        - const: smrnmi
+          description: |
+            The standard Smrnmi extension for Resumable Non-Maskable Interrupts
+            as ratified in commit 35eb3948bf0b ("Merge pull request #1492 from
+            riscv/smrnmi-ratified") of the riscv-isa-manual.
+
         - const: smstateen
           description: |
             The standard Smstateen extension for controlling access to CSRs
-- 
2.47.3



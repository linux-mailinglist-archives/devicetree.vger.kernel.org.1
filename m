Return-Path: <devicetree+bounces-267384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNerE4NAnGmxCQQAu9opvQ
	(envelope-from <devicetree+bounces-267384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:56:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E13D1175C50
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:56:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4206303CC3C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD3883659E7;
	Mon, 23 Feb 2026 11:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KxM/iGMz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE77364E88
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771847673; cv=none; b=N4IkoEC/YUC+VsK08jUgDqvbZ0BQa1Y4g5uhE400pVVU5c6F6HejWMugJiLV5c/bcXoGiNaJgTnGxc81CEhmuIMkOLyq+CIb9iDFoNBmeip+CiKfPCrBZtjAYI96X/aLuWb0f0Q8d16l80Cocy7Z6W9fHwmTTkzeAPF9IzSeXYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771847673; c=relaxed/simple;
	bh=uxs/O1t4MJgE83VLwLmZ5lLCdtI8c+c02jiKLX03oek=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Hee3pZIWahdDEcfvcKKJPgSCBTtFt6ezpSm+AcesgLjhcWGKKB9Wjy6oMUCbepu095oGg5j70Ii0fM2o+G1+01j3oxygH3QxO6HZLh52ijNwLkvOemNqJiQgygRL5tVzaAgkvFZn47sCdhX3BAuBljF4DsJfgoifo7LR/z9Q07c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KxM/iGMz; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4359a316d89so3880979f8f.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771847670; x=1772452470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ruQhGiuF9FhysktRv+P3PWPBS4mTnGG0CPJP27Fqqnc=;
        b=KxM/iGMzgwXL8s/ade6h8ZkXQehyLDIrxRSAJC8mXMnbQEHY8jRQoOBEFtSmvwxszZ
         /6jFqZjre5NvhPW58nl3GmNP+LDqEGQ+4C8TC7jpZ4GGO4yuMUAxdNCVYED5Yquh4w2H
         o92PNyIpXycPgWXQyjcd0/DmXn09HsribWm+avamosx5ovlbkHcVo8hCbHa+z+BJRBfA
         fV23F5lK3+7Hw+xHeDLMx37RsOVDN9F4QhHIpK3O3OoLtEbL8g48m2a+ywFezHtjS5Gm
         t0fChT4LO6XlkOPgLB+WZqDXgCiGGCqYZi3cEKLgOgUOJ71vw+vu8XbGOwvclsJ+MvTH
         5kqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771847670; x=1772452470;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ruQhGiuF9FhysktRv+P3PWPBS4mTnGG0CPJP27Fqqnc=;
        b=l/Jkgk7cGxpFzK9Kom4HMqPJmuqLSd7cEUsDauAHtskoYxiw18ntLfAgKilnGsQR1d
         WpjEXqt/4ERJGNdD2g5So+06w/S9+xIIe0DYfM8zPWjpm7tCrqBkzTHMK6A9H/5gxDbg
         Btj9SbMBr5MB3+rY73489ch6lJ+mwDj1zFYZtiXhW46fvyAqC/OwU+hosSJT0IzxgAhV
         /h5U4+p+UHGrDZxryc1gK00kWMFlP9KXeA+ww8dY5wz0FHL3m5lYUe8l2+xpaWDj7F9z
         yEpPBb63peG57ybTJBI9nUtV3zwAbUX379ZI9P5dCLdMsstfQ4WaBcUVA4tBT+P30kL4
         FmXw==
X-Forwarded-Encrypted: i=1; AJvYcCW2egPt4PsldWytJeXfBxifrd6od8lN7mMyxGWQH8qnowuK2BsooQFjHf4w5A4TexHYNSupKVKuJHVc@vger.kernel.org
X-Gm-Message-State: AOJu0YyVQPG318wHXESYGT2kQWBsd8zDHGtwdXM15FlFWkRgiIDjHCLK
	DItHPfYA70mIbsb8JYCXnI5ZW7DWrLnV4q6aRxYzf3P9VhX7CK7yvVHM
X-Gm-Gg: ATEYQzxFUoHuaEb/RYPIq6GN2rPPJjEY+RQHYp44el52+lqG+Qy6TwtGpygE6jMKOvC
	BLJkQzGZf2DMzLXt1b+YYdNrhjzL8EN/XGSVnJ58HaGmMvvUQ/nGYF16gdJ81QKoeJKp1jQ0rao
	YOapjesRM5OExVjUOLwfjtc8qnBvji9czZqqc6n1/L41MZf71qPCaHdf0z8tpHlvtcs2JRTmy8x
	koz5kjxfanZN3i8CsXZdoSIZRWPBuqpzJdAHOw0ZQBoMkdR9HtRQLm3X7q9ILLnkDOEL6ios9er
	L5lTJz/SjAcu92F1L6//DYVvklPoyAh024+k73pYegcN5DqwYSjMHvsM+N4MUoYx+xpV4q2I42w
	Gv9HQM/WOJXww059AzfsthdnkidqC1Cj/n9d63vLMeKoT3j5TjM6BLbWiM0j3K9mwYy9A/597hx
	ihBNjwtJTH8rxPzzGxfZZ5U1mWxUNaykyspxy9I8lMM9Ry9IQFexbnRaqVax6r/kZbzd7jQTAcF
	JF4wUkQZASgiaWxCzUn3nYnSOEQKUntjv3VDM+c
X-Received: by 2002:a05:6000:4381:b0:435:96b7:e0db with SMTP id ffacd0b85a97d-4396f153a34mr13314214f8f.17.1771847670129;
        Mon, 23 Feb 2026 03:54:30 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970c00e8bsm15675668f8f.15.2026.02.23.03.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:54:29 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-bluetooth@vger.kernel.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <david@lechnology.com>
Subject: [PATCH v1 1/2] dt-bindings: net: bluetooth: ti: Add property for enhanced SCO setup erratum
Date: Mon, 23 Feb 2026 12:52:55 +0100
Message-ID: <db4c7eab9d0c2f71eb61baff240957596f099401.1771847350.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1771847350.git.stefano.r@variscite.com>
References: <cover.1771847350.git.stefano.r@variscite.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267384-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[variscite.com,holtmann.org,gmail.com,kernel.org,lechnology.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,variscite.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E13D1175C50
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

Some Bluetooth controller/firmware combinations advertise support for the
HCI Enhanced Setup Synchronous Connection command but do not handle it
correctly for SCO setup in certain configurations (e.g.
BT_VOICE_TRANSPARENT/mSBC). This results in SCO audio not working unless
the enhanced setup path is avoided.

Add an optional boolean property, ti,no-enhanced-setup-sync-conn, to
describe this controller limitation.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 .../devicetree/bindings/net/bluetooth/ti,bluetooth.yaml    | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/ti,bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/ti,bluetooth.yaml
index 290abc22e18a..92ed443cb427 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/ti,bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/ti,bluetooth.yaml
@@ -71,6 +71,13 @@ properties:
     items:
       - const: bd-address
 
+  ti,no-enhanced-setup-sync-conn:
+    type: boolean
+    description:
+      Indicates that the Bluetooth controller/firmware does not correctly
+      handle the HCI Enhanced Setup Synchronous Connection command for SCO
+      setup, despite advertising support for it.
+
 required:
   - compatible
 
-- 
2.47.3



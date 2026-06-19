Return-Path: <devicetree+bounces-313732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qlQ/DMEaNWo0nAYAu9opvQ
	(envelope-from <devicetree+bounces-313732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 12:32:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9765F6A53B4
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 12:32:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ZFR7WXAJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313732-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313732-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7E8AD3007654
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 10:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7F83749E5;
	Fri, 19 Jun 2026 10:32:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F23373C0B
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 10:32:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781865148; cv=none; b=UOy7J+OuRfEqjFbsNNK5ckT4Frfhdz7vRRJN2vatfaIdnXHuFy0WAuLQXvCF+wqm81hCpAxkgXNlOI4Y88LwsugKN36p/6L8cT2Ge2UUbVImdS94Y6Yr/eVjabFrrK88Ddzwm5P8/i6BpXYW97C6tV0TNe3icEt6KfXWOHAv34g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781865148; c=relaxed/simple;
	bh=VEnQVtwZkIU7RBSHiSyT7NGob5OOuJi2SIKdnJrA1CE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=D+NQsrNmhQjOXl706rVus/PuXtbgJZW6Z2DXXqP/Lr6EW4t96NgMAWinLn9S0j0kpykRRvQzqSGgtjEozObHC+gB//D/7iS2TD7rsATq5HRf58Foxqh/B8IGCOAlEkaNNtMLx+cOpfPeeF3DRi2QDupeymd4RAyPCqGRPm09Gwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZFR7WXAJ; arc=none smtp.client-ip=209.85.218.52
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-c07a6520cafso210205966b.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 03:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781865145; x=1782469945; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yWdatNxPt/OSZnGzSt5RKlWyXLWzuEupMhedHxPLM4I=;
        b=ZFR7WXAJpO6xikfbQnyaz4HBl9CSM5PhdFfUa1IhzVoR2UW3hMt8Xgwgzc5BFayI2S
         cUXt6o0NKBrdSeKOZ1j1mpBDKYI0DTb3WKZ3cJZY/H8VWAjymYAsk2ziN2SXJzZuY6AQ
         fDsNvhIDBhl8sZounmG3rQ2xjaRC5h5KmZtu/kvcyZGEfewsh3beTUZTw4Q3Drzxoln2
         xxwJLTSLjpLYOTd9sQt4eKG9FBeWn6bWbISIknWXrmJulbV5oZQsI0H4vq4WIY/70RyH
         dCYFfY5h3CJ6qvZtxsa7A1RpCc0HIOUkf2mT8io5KIUKYt50XtTXlzHuEvbZVLfaymF/
         x4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781865145; x=1782469945;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yWdatNxPt/OSZnGzSt5RKlWyXLWzuEupMhedHxPLM4I=;
        b=IyCHLUc6nw2vhMc4l33jvNoCHShXm7OJ9NpdetpmCToomR1aBT/bFlV4bAHFSwpgNm
         SiFVEOMqIL7He2W1VB+OqdYNtCrbl6VIqTm4QGpqGnDUBfq3U/J2nkmLz3OUJ8bA3PbP
         Oz3LiNfPc0Ky7a4axcdTFhd8Ht4JWYEmNGgRCc40tflweG73/TB9BzJm9YESZeFLDxo+
         xSipndoXM6ID2mmnyoNiCNBiHwbQ2brC8aj7JgsfGMqUqgSmr4n+vY5t8pZac039LA8X
         wmCCRcXKrTCBfugQbTH4I1pezcGz78LcT2j3K0F70Sw2BG/DnYTdKcqZZRlRUjNFOTfo
         Jm9Q==
X-Forwarded-Encrypted: i=1; AFNElJ/UWB3iuYytYUsE0KZ0eqVwXbl8zT5xrM6Htr6BHQ29agC21eYd7xn5GeLvEwW8Mb0EeMMg6FGhEpHP@vger.kernel.org
X-Gm-Message-State: AOJu0YwIExwhWldpRzeJHYxM2QRFQsDWf2oq9qIcHZY64LmjAeGMB6Xr
	fVBUkH6Itw2jke/VfzZbYvmxF9tAPLI/oxz7MvIqX+8QAt70uLIlpGUG
X-Gm-Gg: AfdE7cnljZMCsoYxa4nV07f2ywMtV9mXCegf4K9IJ9e56haHVU2l9q/3vDzmTFP4lJx
	N2sysBnpEvchOz+cvUjNymPFVXKcYawpgL0+pZ6QMGXfssVOrjbGdyFgNw89ktHGJXnr+lN0fhH
	xB7baMqLFFLhRx3pXYKm9du3AwhM3n0un+xjKIW4d2lh7PoZ3FBl4C5kQamkW+X4Oqe+A4RfoF6
	i7sX9DO5uX++1xvrNh7RH+BJEj6hihcm308LhFk5GgBesCXWekK3CThrxop82k32auaEsh33dZA
	3vbbJalWn5k1YniJBB3xPS4eBjq+R+rrCJa5+8hZmh7ayFdhVIuCzpkI6ZCwsQK2+yrdfpWZ4Ix
	X7ZYew1vKbaySlUjPyA7aJcWoPAc5USKgAFcMXuOCqL81dcXtrD0WBk5jbVCa5J0wyZsVAgnsww
	eR7smbdxqNxGzZ+Fpqd/T1eI9Pe9Q9t9U+yg==
X-Received: by 2002:a17:907:9302:b0:c07:5319:4c32 with SMTP id a640c23a62f3a-c097ae487b4mr145500666b.8.1781865144713;
        Fri, 19 Jun 2026 03:32:24 -0700 (PDT)
Received: from xeon ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0a8490cd59sm76702466b.16.2026.06.19.03.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2026 03:32:24 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] hwmon: emc1403: Convert to use OF bindings and add regulator support
Date: Fri, 19 Jun 2026 13:31:50 +0300
Message-ID: <20260619103153.216444-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313732-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[suse.com,roeck-us.net,kernel.org,gmail.com];
	FORGED_SENDER(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jdelvare@suse.com,m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:clamor95@gmail.com,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9765F6A53B4

Document, add OF and regulator support to EMC14XX thermal sensor family.

Schema file was separated from LM90 since according to Guenter Roeck[1]
these sensors are incompatible with LM90. Proposed schema has basic
hardware description. All registers Guenter Roeck mentioned may be added
later on, when/if driver would need to work with them. As for now driver
successfully works as is.

[1] https://lore.kernel.org/lkml/a0c5c1e8-9a36-4835-a5d9-7bafda79c36f@roeck-us.net/

---
Changes in v2:
- schema separated into a dedicated file
- dropped chip id check
- fixed match data casting
- adjusted regulator name
---

Jonas Schwöbel (1):
  hwmon: (emc1403) Convert to use OF bindings

Svyatoslav Ryhel (2):
  dt-bindings: hwmon: Document SMSC EMC1402/1403/1404/1428
  hwmon: (emc1403) Add regulator support

 .../bindings/hwmon/smsc,emc1403.yaml          | 191 ++++++++++++++++++
 drivers/hwmon/emc1403.c                       |  23 ++-
 2 files changed, 212 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/smsc,emc1403.yaml

-- 
2.53.0



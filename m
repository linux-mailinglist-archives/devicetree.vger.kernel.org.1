Return-Path: <devicetree+bounces-267361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKm5NV03nGnsBQQAu9opvQ
	(envelope-from <devicetree+bounces-267361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:17:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BF11755BD
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E12AE30379B3
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C61C535D604;
	Mon, 23 Feb 2026 11:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fRWZhudf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5B134D926
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845460; cv=none; b=qTsvc6xJKZcma1n0WWXQrzWoCYEBAWVfchjse1VaJtm3Hc0D5YP09DDqIPJf/zT6Fu9f1Ymldtpo18jlCkNbQGiU/TEFS6dOLwSWbtn6EXMjQxJa31ptDjU0Z5wcfZgavR7PH5l1yvfDeXdXHrPbt/GNJYTVJaR28GyIy607Kqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845460; c=relaxed/simple;
	bh=sn95Kmv45LT872ri2FvDg858dufHQIsNYNwjQItqP04=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RMN92Q+VIph9lq+b4OXg5ezl9iVH6Qv+iC6GedldUTQ2llAhTc9S03VIZPWB2yXtoXMmvwIsJWudFPCqfytxgRZ0hGpUeIoyKixgKwBiErzFdIENbgascJchuaDuVOJXAQF7UG82S2U/Hn/RaBfFqI5HU2r2lnPJNuSg1QohWJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fRWZhudf; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-c6e734ba92bso2039984a12.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771845459; x=1772450259; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w2fDgtw5Km3aQZsh4vi4EMsTjWhe4lzXuaMoNrX1ecI=;
        b=fRWZhudf0iB9ZsBbZUZ5QJsVy2HMpf3Lj1iky1MIsi83WIgEqnNT1NDGyb3Y0L8fMt
         zzS7o0kQHBORKKOZRVnp7kTUgCRDvPQWZnBoQPuRgwX8cwbGMYH6NevSkR8kxbtEM6UW
         Z6oQtEcrwLyoC1X5t9btalTSA7OKYpcEwQ2cMlgUsj3JgLaAdL4Mdg7tbEnN7sR10B2N
         u9Mwfq4EcRfVFuscxeHWNaJIB9EbN5r/BuprKEsvngB1/WZD1qEBqoickcMETYMHGHKc
         CwhLdfWCPsT4DU52fngjTX4oN90SdS8jB35XK6+bB7JdjITqGy472KFN2MtxzVJ+RlHC
         nI4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771845459; x=1772450259;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w2fDgtw5Km3aQZsh4vi4EMsTjWhe4lzXuaMoNrX1ecI=;
        b=RorBrP5XfN4sqAwQ2eD5PJpkuZ06z+7ZbEYZZkodTj/N5ojQEwc+HOoNw98w7t0feR
         tQ6QBiqzPzgbmLHRz4joXYoZyBM2w+6QaGgIXVEJMiOFrMq01s3+tACEBv8f9Nozen0w
         k13LLQSZxwVcVQ/B3rYrN8V3bajyg8wED9lcFGPcc2ResnyBB/hjY2ap3N+9Z7OKtNdC
         pTwzg64Ojt4FnyEG1GJMxzT7RSwNphcaG81bB1IbvYWKoS7Vxg0BGL4o0gSiCl7ZqGPB
         OeKn8L7W+UTteWQcZJTUiOIwAYoAPJQ3pYeSidxFjMhkMh6WWIDUEtsdEgPW9bYPmY7n
         G15Q==
X-Gm-Message-State: AOJu0YxEThM5+faOGqQlRst1EB7yui1W0bTLNmTMk7EIhCZkUHN7pDHG
	eOMS2fzbyJ2foEDMz/kPC6OW+cPRIGAdKqIt3tkrDdzNbLeTg3diiclJ
X-Gm-Gg: ATEYQzzcxYfpXvMrNjbXvICQsK5NqYt/AaqstzWymEElssDVYolQ/P6nhv+ENpb7UU1
	DNGteVC5rbvXpKqQr/J3BQGcQftbNW+m50ZZbfhlhoYyUu7L8iDMO8LC8659WK91A9rK7OTxdPv
	YhkZaleOrzcPTiBy/L+MFGiYu3gY8UsCM6SYQLhjoD+tOiUPaPuvAbN9R9S9vi6uhu3o7PqvHvM
	uCUHmCHClvZ6clIyN9LWJAP79Bhm55gF69NHA8nBE6wtkKnzQmPtRVa1/y/s5ri9jMW/84aVV6u
	XzVLMb2YxNqzSBCYiPlRifOnpEgiHJC33F6RZ/5s2L+0soHTbdShu6D8tFKGJhN0sJTagXpu7Ok
	acLVIkGPL9vSvKrkicW4UD88tvPEj9vNCS95a+RBmZqBsZ22O6bdyHpKLhltWPeV37K5J1ZGoge
	RJ8Z1mCjf61LP1vZy6gr0j6+mtsX7zsikostGf5lpKIedUGYBaKn3DygWssgJuA7mNZPNtZbwV1
	HHxoqZpgCSe3JIZ1bK1cpVv4VJh9GJCPFXEsloCWXYLpX4Pu4OH1jBIkU82WsAybMUcZZkQfDDL
	iT1fvEW7rknFICWQvpVh
X-Received: by 2002:a17:902:da87:b0:2a7:b039:4b52 with SMTP id d9443c01a7336-2ad744556admr77368315ad.1.1771845459054;
        Mon, 23 Feb 2026 03:17:39 -0800 (PST)
Received: from 2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net (2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net. [2001:b400:e3a6:b683:40b:c296:4cb:fbc3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74d36911sm71799335ad.0.2026.02.23.03.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:17:38 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Subject: [PATCH v5 0/8] Revise Meta Yosemite5 devicetree
Date: Mon, 23 Feb 2026 19:17:32 +0800
Message-Id: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEw3nGkC/3XOTQrCMBAF4KtI1kYyk6S1rryHiMTMVANqpZFgK
 b27sSD+FCGbl8n3Jr2I3AaOYjXrRcspxNBccrDzmfBHdzmwDJSzQIUWAJayS3Y3PuQd3aIEZFB
 MVFkqREbXlutwHws325yPId6athv7Ezxv/1YlkErWnoq9MflU5fpwduG08M1ZPKsSfnBUE46ZG
 yqJSwXe7vmX6zdHqCZcZ+4dkHV6iQr0LzcvXuThdLsZt1dojLW1dl+fH4bhAQq6EKZpAQAA
X-Change-ID: 20251118-yv5_revise_dts-12e10edd95d6
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Daniel Hsu <Daniel-Hsu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771845456; l=2248;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=sn95Kmv45LT872ri2FvDg858dufHQIsNYNwjQItqP04=;
 b=v9ocOnlabQ3l+MXROW2xlibhQ+Stuu0mjZuPPNQc9/VkoFtSyBlue6Pb43vEUHQ+dYfMB/lq1
 Z6Ft01u9RMmAL4e3UaGUEgyI6T1earuY4MuQ3GCfeuhDnkhYI3JT6xr
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267361-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 25BF11755BD
X-Rspamd-Action: no action

Summary:
Revise linux device tree entry related to Meta (Facebook) Yosemite5.

Changes in v5:
- Fix host0-ready and add POST end GPIO
- Expand PDB and HSC abbreviations in commit messages
- Use IPMB consistently in subject and description
- Rewrite "Correct power monitor shunt resistor commit" in imperative mood
- Link to v4: https://lore.kernel.org/r/20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com

Changes in v4:
- Add PDB IO expander device node
- Add GPIO to bypass OCP debug card commands
- Expand commit message explaining the shunt resistor correction
- Link to v3: https://lore.kernel.org/r/20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com

Changes in v3:
- Correct power monitor shunt resistor
- Revert the previous SGPIO P0_I3C_APML_ALERT_L renaming change
- Add new SGPIO line names and rename signal
- Retitle Update sensor configuration for more clarity
- Link to v2: https://lore.kernel.org/r/20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com

Changes in v2:
- Add ipmb node for OCP debug card
- Link to v1: https://lore.kernel.org/r/20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com

Changes in v1:
- Increase i2c4/i2c12 bus speed to 400 kHz
- Update sensor configuration
- Rename sgpio P0_I3C_APML_ALERT_L

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
Kevin Tung (8):
      ARM: dts: aspeed: yosemite5: Increase i2c4/i2c12 bus speed to 400 kHz
      ARM: dts: aspeed: yosemite5: Remove ambiguous power monitor DTS nodes
      ARM: dts: aspeed: yosemite5: Add new SGPIO line names and rename signal
      ARM: dts: aspeed: yosemite5: Add IPMB node for OCP debug card
      ARM: dts: aspeed: yosemite5: Correct power monitor shunt resistor
      ARM: dts: aspeed: yosemite5: Add power distribution board IO expanders
      ARM: dts: aspeed: yosemite5: Add debug card bypass GPIO
      ARM: dts: aspeed: yosemite5: Fix host0-ready and add POST end GPIO

 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts   | 117 +++++++++++++++------
 1 file changed, 87 insertions(+), 30 deletions(-)
---
base-commit: 5d1d2ebbfe226540c630e9998374e16dad2779e4
change-id: 20251118-yv5_revise_dts-12e10edd95d6

Best regards,
-- 
Kevin Tung <kevin.tung.openbmc@gmail.com>



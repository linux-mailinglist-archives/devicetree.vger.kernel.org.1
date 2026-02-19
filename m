Return-Path: <devicetree+bounces-266556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIxVB3l9lmkggQIAu9opvQ
	(envelope-from <devicetree+bounces-266556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 04:03:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CF915BCD8
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 04:03:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05A6730238C5
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 03:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD3B92517AF;
	Thu, 19 Feb 2026 03:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PhaRwg70"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1BD1C84C0
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 03:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771470197; cv=none; b=PdFz4B4p1/fqJUDC0YX0JLekZS1Gpu47cCT8MSYClzUgoSAKDKOesRn1PXzRfuJBVaQDsvM4aaR7hhthzbipGgZ2xOUb8JySWEZBIGN0jRe1j1UG9deS3IzalsFQhSdNondrmWynyOt2MRc0RvhgtqLugSEBsXkVeqhsZN1m01Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771470197; c=relaxed/simple;
	bh=od6+EgFNc57+4YlHJcjEKl2xhRALHiNV1wfrRF/JheA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=s5nhJB8kkx/frAMzk8NhNojPMlw6ENF75qNEphjHr+6nLme19UAFfLide5qElXQ2Vp1LMtD9koMkgppBIEKNZIn7VTyO+kctOWl+3rraNdDJRyZ84rlh6FZ/zGZNQWvf+C/TiJjPnehvJklWT6hwIUkk2lC3vIFvaQ3kyP2ls8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PhaRwg70; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8c70ab3b5fcso63181285a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 19:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771470195; x=1772074995; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lUk45RVOcz/5VqwzEe41q8FmdQi2pIya8uE65vlMFtA=;
        b=PhaRwg70q/NsFQ3ZptrgE46JeuoptTt3FwDC8aiYFIwwefyodkxQRt8pV96hGnKlq8
         r1EFZguEV2K9KyEfJ5RE8c5u09faNnyZC+h4SGT/rmC9yxe7P8pV9NiWaVG3jq/7dFkX
         djTheZU35813aw0BLnFKNiSenOhV18Cn5tcDbsrdacqjqDyDcDhJkn2lXSzIJ15gy+p1
         TjOuSPeINBOxqXEnDLYD/wpgHS2fMwxA19I5HSmetGX61LHmwsdG8WZ+/CTJnJs+Vhew
         2Ylt9GuxXqrKwLhxINE+REd7fR/QeNfEPZn2Voci679IF9TdVEpB48Vecz/cykbKMkcr
         84AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771470195; x=1772074995;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lUk45RVOcz/5VqwzEe41q8FmdQi2pIya8uE65vlMFtA=;
        b=ecI1DHEE8Kp2zDm/xzVIXRVVbuJfj8dmkIzdeGHlq+8RKZQof8EYW0/uG58ExKmRiL
         N0wFBo+QAhNkfjpltDCSTlvaRYb5QCfZO85eAGkmjG8ZBeAguZtQvso+5uxOWvILVAK6
         18pPohQWFA5JdeBSYExivz5gnc3wGaHuticfjzn/sXeY9ZrIkLmaihd6LdtQMVp83ULT
         I18p1hPjOSly0hr2CF5Xx2Qx0ApMutFmI3qwIOjBJcpr9JPTlwZS0sOqQ/tA5zjREkmI
         gFIBmCX9ahzHuFnoADZAxlJjTwYKtCXrPxCKpvWTJiTvs9fCmqdFOR/Hc9LYv7lRCNv3
         EAvg==
X-Forwarded-Encrypted: i=1; AJvYcCVGpJuk433xbZZgUjJHJ59AYhly9+InsjJmJ/HHFWRvLDJUVv9vrVc/vEmi3BCyZMtQEKHK5DabOyGP@vger.kernel.org
X-Gm-Message-State: AOJu0YwzgjCqiC6qQ0nh2QRgXF8pVHIzGzyHaqxSZzPuqLcp5pg2698H
	BT5Dc0OS0fDtJMrnbLPAJeLjxmJMvZ8XoFt76+whGBD1snOqorPP6zZXoWGQg7fD
X-Gm-Gg: AZuq6aJBzBNHu88jZLhh4qpKu1qgrJyL/0OlRLjTPYuNnKBYh3vh7KPHpYsmtZTsjRg
	R7Qxbv+tl7T0DhcRTrW5BL9PMSKd0DJ2X0Hh4fmWww+ZmlEU4V+wZZI1ZQF8kBCV/YLJkn2V5Cb
	+f4LZFtlSAaYhhVjreMgEA+TEX1JYbTniTcEnJhlotG6K7Hm0uV1FiG5D0tT2Ihvegk70VyfELa
	9hozuL5fpmcjaT9UyVpbVMgczNUDpIwXM3RsOw/thvNITyeUAe009tD5SdctGKEA0uljI93L5QB
	1fAYwjbKUs/QNnxqW1XuZnPlQmXZldyAb8V73Ee9pVGzWfOZfQBmqySVhb2uAIqgCnpq5UT1mAy
	tYBRfwL/jrJenKClMqo9PEjRw1fC8o8dHJq/XkpIsDEfa1qNK98m6JsDWika0fUOgsCgUFDMHEn
	/Q2r77Qy0ZujhReU1kDLzP81voVG0=
X-Received: by 2002:a05:620a:2953:b0:8c6:af59:5e28 with SMTP id af79cd13be357-8cb4bf96693mr2038341985a.22.1771470195200;
        Wed, 18 Feb 2026 19:03:15 -0800 (PST)
Received: from [172.17.0.2] ([134.128.219.200])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cddc526sm205359896d6.53.2026.02.18.19.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 19:03:14 -0800 (PST)
From: Yuanshen Cao <alex.caoys@gmail.com>
Subject: [PATCH v2 0/2] Add support for Etek ET7304 Controller
Date: Thu, 19 Feb 2026 03:02:50 +0000
Message-Id: <20260219-et7304-v2-0-b2e268494ae8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFp9lmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDIzMDI0NL3dQSc2MDE900Y/MkM0Oz5DSLNGMloOKCotS0zAqwQdGxtbUAmys
 Rk1gAAAA=
X-Change-ID: 20260219-et7304-f37b616cf8f3
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Yuanshen Cao <alex.caoys@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266556-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexcaoys@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	HAS_WP_URI(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,etekmicro.com:url]
X-Rspamd-Queue-Id: 79CF915BCD8
X-Rspamd-Action: no action

The Etek ET7304 is a USB Type-C Port Controller with USB-PD used on
the Radxa Cubie A7Z.
According to the ET7304 datasheet [1] and the vendor BSP source code
provided by Radxa [2], this controller is functionally identical as
Richtek RT1715, with the only difference being the VID.

Add support for the ET7304 by registering its chip info in the driver.
Tested on Radxa Cubie A7Z.

[1] https://www.etekmicro.com/wp-content/uploads/datasheets/ET7304_datasheet.pdf
[2] https://github.com/radxa/allwinner-bsp/commit/156b6578cc173855b41ea311a229403ccbadb17c

Signed-off-by: Yuanshen Cao <alex.caoys@gmail.com>
---
Changes in v2:
- Put dt-bindings Documentation changes in a separate patch
- Add Etek to the vendor prefixes
- Link to v1: https://lore.kernel.org/r/20260217190010.67-1-alex.caoys@gmail.com/

---
Yuanshen Cao (2):
      dt-bindings: usb: document the Etek ET7304 USB
      usb: typec: tcpm: Add vid and chip info for Etek ET7304

 .../devicetree/bindings/usb/richtek,rt1711h.yaml         |  3 ++-
 Documentation/devicetree/bindings/vendor-prefixes.yaml   |  2 ++
 drivers/usb/typec/tcpm/tcpci_rt1711h.c                   | 16 +++++++++++++++-
 3 files changed, 19 insertions(+), 2 deletions(-)
---
base-commit: 956b9cbd7f156c8672dac94a00de3c6a0939c692
change-id: 20260219-et7304-f37b616cf8f3

Best regards,
-- 
Yuanshen Cao <alex.caoys@gmail.com>



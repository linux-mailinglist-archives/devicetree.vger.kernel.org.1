Return-Path: <devicetree+bounces-261112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JNlDsNpfGn+MQIAu9opvQ
	(envelope-from <devicetree+bounces-261112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:20:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2C5B842A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:20:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44D5030078E5
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:20:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D317630DD24;
	Fri, 30 Jan 2026 08:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Euwd7ND6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99B882AEE4
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769761216; cv=none; b=Vg9elaBZiJe1EIflApB+lin39qGKrQpyMSRad11+n3FuNEKRSTOHPxTljuu42OJRbVNEh1rXkPPJ+yZJGpPkVswLpzs5il5Qxfvjx7g4KWWXllDukvlMESqFD9bzNnY9SbMpoHhNtwHDPvSoy2kpUMCNWfJIwFbEGb4t0bXaa1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769761216; c=relaxed/simple;
	bh=Fx+n2x+YlJ0swzNoY2QW+06k5Hll0jZhxlDQqLG+dq0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qVeiv3xhEgyzI6SkFGiYDYe8ZidTR3xkJqQ4EIkhuXguerOCVQdz9ssyALpAYUtiJe8P2YfhBqrF/PcKfV66FT1OloaXXcbkc0HCqGQqaygiX5Tmo02DJ8V8INz1upLeibMZEh8cyozwjYIxqZaGgD2qs2TPuK9ALyQzySE3LGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Euwd7ND6; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-81f39438187so1023659b3a.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769761215; x=1770366015; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hnUz4THRm4aVeJWQLZHQhQHquSXvl8jN1UCodfFTOc4=;
        b=Euwd7ND6ucTQHJp74iJz5BiejMhxB5l77aMZQQs9jgBGQoJdjcuga7twAzdK88g2/T
         wluxLLRu0vIKq2hsuU71IC0TuJyuHFdS52vZPLHN0MXVYghi7xIwwiyJcoHX2n2yAmwi
         ykDTodFzlDW4Cu/A/rDF0Wbl3AWufqDovz1sgX6CRxBeC6SA/iJkdQisspFGf4iaUJYB
         4iG9drYsYWEfAt0gw+cTstQ75O0X8IQCfxvBdhvZ9nYwDMfPvw4pnY5C6j9Rjktme456
         y762VEvoh/3GvIprAZonjqdVQ24RzU95J1HoHFb0JrFdkVaV64OB2DpT7A+UHJqScTra
         syxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769761215; x=1770366015;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hnUz4THRm4aVeJWQLZHQhQHquSXvl8jN1UCodfFTOc4=;
        b=IGSnVrODrBFhINkjXGzDSStOsG78yEKBhQsVVkKAARg//HEWJ5spzq4vWOslPpkHOe
         e/ihb84zBT7jsenNNnxksh3ySDpbJn+mI7gbB6uW49r0O5+wktZ+Q3bS73s3QCz+xoGE
         EX25C6EV9hqU74EO3UjoauhCQ+IXNlaPi4/aqZjqlxpYnxJKHR6a7VyNXVxY6ePsWlfa
         B1phS58PxmlE7/jJ7x38pC6KFsf1R+wLJUETSdVCKr5avr5gaUB/UbhowwEN0Vx3nwvj
         WeNPzxVwnb17ki6q9sUxCBp1oP/ahmQGfMz6kBmnveXSstoZqO51iHHVcq3oXX2TUovO
         sPSg==
X-Gm-Message-State: AOJu0YwGMe1SGXQJApJ+Yo+sFU35qD+GAXMkVoU20nydI2NSmoX0m8FS
	0QZtF4MQVHzZYze7kUnND0rkVsbf/GNchWGaR8zGV+OsKus0lBJRAUYF
X-Gm-Gg: AZuq6aINkYpUMwYoqrRkNiDt0d5wJDcKPRgnnIUly2RD+lEHzLg9Kd3cYrFRUUjcQhR
	I45bFgGsG5SGt3WqWlSFyZB0Ue33swyEO9GQOmWI9fDNpPRAEqObQESIEJKDAirNFEz5jSaX5Dm
	mh3RoCjNeKNdOj7Ew3DDp3A5CEpoNvmIcEVYjpnrwmDRBXCInSHQTJw/4ds60VFMj08oozY2OYM
	xFQC30AuWmGTLi1YxfrbqebB2wWE5oAS18P+zNL0l35KXNVpHQFzsg29gNrQVHIQF6c7ORttQfz
	aJ0APBCZAAV/EMuq0K9N+bZ1mJQ9Z+mSrwVz/OojlO9tlXvUDMFd08d6oIEAdKnhd9az+Gg6gdL
	ybCyrDfb4ilnrsyQMIrqqiDXzQ22OQ9KCl7fdpm1RwsCOvNzuqKmy+nVOGRLCEL6By4kNDo5Vht
	jaCvYOHaEBDUOUnQsmJQ6ULu0ZsycQsHiPMFFo2dZ1tx1Pz9ka+kiu/mjBrxWPP7Wcd5cS/l96p
	kvYbr9kHqqG+EEYyMF8B2CgYgTlIalGEZQwSj1iAbzlslWzup0+5og1Qj0ZzaWYm1g8d5HnQxIH
	/JQrKmLcbREw
X-Received: by 2002:a05:6a00:b47:b0:81c:446d:6bd0 with SMTP id d2e1a72fcca58-823ab670e70mr2254931b3a.23.1769761214995;
        Fri, 30 Jan 2026 00:20:14 -0800 (PST)
Received: from 2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net (2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net. [2001:b400:e3e0:2a58:5bcf:a65d:c80e:2087])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm7866018b3a.40.2026.01.30.00.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 00:20:14 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Subject: [PATCH v4 0/7] Revise Meta Yosemite5 devicetree
Date: Fri, 30 Jan 2026 16:20:08 +0800
Message-Id: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALhpfGkC/3XMTQqDMBCG4auUrJuSicafrnqPUkQzowaqlkRCR
 bx7o5tKpZDNF+Z5Z+bIGnLsepqZJW+cGfow4vOJ6bbsG+IGw2ZSSAUAGZ+8KrZDKnB0HCSBIMR
 cYcICelmqzXsL3h9ht8aNg522vof192/KAxe81phUcRxent6arjTPix46tqa83HEpDlwGHmOKl
 ArQqqJfHn25hPzAo8B1CajKKJMCoj1fluUDzf+/xyoBAAA=
X-Change-ID: 20251118-yv5_revise_dts-12e10edd95d6
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769761212; l=1817;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=Fx+n2x+YlJ0swzNoY2QW+06k5Hll0jZhxlDQqLG+dq0=;
 b=uxTiiyp4e2eQ7rsolNoZYbQNw2OiRXFETD7vDC5ETDemNPxpMWpOJDB8iJNzvmClBi16wpYGL
 YcWVsK9mXiuDA5KFD/opjZtGMxMJlzNiDgqYjO8+xmxxTS7fjaZ0LE4
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
	TAGGED_FROM(0.00)[bounces-261112-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
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
X-Rspamd-Queue-Id: 9B2C5B842A
X-Rspamd-Action: no action

Summary:
Revise linux device tree entry related to Meta (Facebook) Yosemite5.

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
Kevin Tung (7):
      ARM: dts: aspeed: yosemite5: Increase i2c4/i2c12 bus speed to 400 kHz
      ARM: dts: aspeed: yosemite5: Remove ambiguous power monitor DTS nodes
      ARM: dts: aspeed: yosemite5: Add new SGPIO line names and rename signal
      ARM: dts: aspeed: yosemite5: Add ipmb node for OCP debug card
      ARM: dts: aspeed: yosemite5: Correct power monitor shunt resistor
      ARM: dts: aspeed: yosemite5: Add PDB IO expander
      ARM: dts: aspeed: yosemite5: Add debug card bypass GPIO

 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts   | 92 +++++++++++++++-------
 1 file changed, 64 insertions(+), 28 deletions(-)
---
base-commit: 2a6ff9a25bf681302d29ec93c6b90dbe4b3ad591
change-id: 20251118-yv5_revise_dts-12e10edd95d6

Best regards,
-- 
Kevin Tung <kevin.tung.openbmc@gmail.com>



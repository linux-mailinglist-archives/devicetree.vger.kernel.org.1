Return-Path: <devicetree+bounces-307693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vyJ4HjU3JGrC4AEAu9opvQ
	(envelope-from <devicetree+bounces-307693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 17:05:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC25464DC37
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 17:05:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jOTGIjSe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307693-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307693-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9EBEA30136BE
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 15:05:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D7631A567;
	Sat,  6 Jun 2026 15:05:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D043722652D
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 15:05:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780758322; cv=none; b=HdVigsDU7pBtqpNUjohfZxI3l0TeyK2ToRn3dV+2UnGVe3MBNnwWTTcSiS8avB9z/Yt4AdtJBwt5NbdxymDo9BtuEM7biDYWc64DDwIcDGnwK5CiYLR5NrYsNmBibHl1LP1Wpeg80WORxYi8ZSykOI8jk0iKEzt4oSpgCTwuSBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780758322; c=relaxed/simple;
	bh=NjLkm9mYmm8B70ayavRAnDtp5W0P2+QJpDX+0PkbbiI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rWXvPQL29I6gyfgN79JxBrKAn1jVfoWaiV5FnUvPJEih/Scs1i/qQ5lEG2VZeWUrgydNNRE1671pNKSsogd2q+e+vB62/uEb482V+K4zk1Ld7Id231zemrZRS7zy5OV2s5HmE1cEe4Kut00qGErb2dzN3Cm/HVW1LKfnKbA8R1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jOTGIjSe; arc=none smtp.client-ip=74.125.82.49
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-137eb0d76beso2204274c88.0
        for <devicetree@vger.kernel.org>; Sat, 06 Jun 2026 08:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780758321; x=1781363121; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G2TbMHCwcm5U+hLOH+EuDpxcZ8w5TOO6sVqeTTwO0uA=;
        b=jOTGIjSeNCQqklAC/mPGlztmFdHj+ySz602FDdvcNySfnTY38JG3fwXjbYBk0vBx/n
         MD1CdAosigiNbVE/XmansyfpAowUpBFDNCyKt3tVFajA/GDBsQGoxKRSpHruAlkAUwra
         vMaKOlKg2fKlTHw2hjIf2YUKnc/h684kY5smrLSXkJE0FcJ/KyZV3+OC+MpP5bnRL6tJ
         euO2mKpSyM6UalEXqIvmeM9Dn8qh/JzBYTszF1Wb9jfU8wu+uFLZbTITPJG9qDMlgqtl
         7nKpP602zW8szKG1xEj7IYV6FcWuvuzDZP6QEuI5PqpTuncwT61PragDD9WnZCP8pNIp
         486Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780758321; x=1781363121;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G2TbMHCwcm5U+hLOH+EuDpxcZ8w5TOO6sVqeTTwO0uA=;
        b=atFZ2KbRpQxKg0Q8lI/j5GdlxWU4iTAY2A56XugDD9cC9I5SMGp5Bk36cp3tuqIGoi
         WmkYJqD8iUoApHHcU0XnnsrI2SnZndfe9YTuGcjaWQCwaEZnbCNCBwo1kuo+MNzruFjf
         rCBsj3xf4OorL1N3HBCYuN8i7ghKLVCiDqPIh5hxk50VdKKvDh5+7E+HKT5etsBNdgxv
         294mMzVL5frWeI0Q7pVOOCockl3Icba94iopo1UMTVxfozBkfodvU79U8lVFae68ejPP
         6gSX43rpj7CkDseSnV8VbNlWTjOftxCD8kbedzma+ZZ9n3ZWRboakGdsN902nPPJS7GI
         Xy+w==
X-Forwarded-Encrypted: i=1; AFNElJ8x46S8yPEd15F3TPYZusmfLuSWhkPcmYtsohi2buTWTd2sIE0BeGgnRAjqzscxweVe9d3lwHKeDaMj@vger.kernel.org
X-Gm-Message-State: AOJu0YyA0FOXe9uTvlpU6Xhx4Tj+7lAbyk6cz3m1qY13ffnEujlP+TMk
	oy6/AiHjYXFcJVnQB/ynDfToftT9xc4+fkSdbubO7DAUahtT3teRwqZq
X-Gm-Gg: Acq92OGVFXOGQ75r99LhnoT5aI36u+Wvg1uvgFlIJY3H8R1FhGAA2vVKlUEcdAQo/6W
	HIGvkY+3UqetreQsRg0uXHcz0gp9XmX9dkNcFon1o4ERCi5J8ELey5PYObdE82KUqQSzy8Jeg/q
	DK5RylMfDKh/ePu53cURi70f3WnD/XEKOENfEXkiJAWVAXEfk5CRZMk1vpImylrI6zpzIQKN8dF
	wfRhjLSwHXERUyzo2Sz/AMa2B1jPV01sZE0qia8DUFb1TiiHciwcxkcMu9v4Uf2DJY8Ky8tqkj4
	WBd9z7w3H2Z2ncLexGjGZhgH1NeXSVHxghtflracR1N5yC5YGuMtkMFcK9WH6Bd3rltVbSRDu/p
	5U9EN10SNBRvMAdTRHgsVD+/8XVHEbhXAnQEZOI8K1MVKds3+nGbJ3AbCgYpum33N/2XJNFZ92r
	ncRuqn1Gh94L57E8KjLRQq/EXarre7tydo4ww1gaJ/cXOcg3aX4g==
X-Received: by 2002:a05:7022:ea32:b0:12a:6abf:ab1c with SMTP id a92af1059eb24-13807d60704mr4187917c88.11.1780758320900;
        Sat, 06 Jun 2026 08:05:20 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a54:e741:3a5a:3245:d3dc:4b5d])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f5539035sm8415607c88.11.2026.06.06.08.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jun 2026 08:05:20 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/8] Input: cap11xx - Add support for CAP1114
Date: Sat,  6 Jun 2026 23:03:53 +0800
Message-ID: <20260606150458.250606-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-307693-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jerrysteve1101@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC25464DC37

CAP1114 is a 14-channel capacitive touch sensor with 11 LED outputs
and hardware reset support.

PATCH 1~3 mainly focus on cleaning up the driver and dt-bindings.
PATCH 4~5 add reset-gpios support for CAP11xx.
PATCH 6~8 add support for CAP1114.

Jun Yan (8):
  Input: cap11xx - clean up duplicate log and add probe error logs
  Input: cap11xx - remove unused register macros
  dt-bindings: input: microchip,cap11xx: Cleanup and refine LED
    constraints
  dt-bindings: input: microchip,cap11xx: Add reset-gpios property
  Input: cap11xx - add reset gpio support
  Input: cap11xx - refactor code for better CAP1114 support.
  dt-bindings: input: microchip,cap11xx: Add CAP1114 support
  Input: cap11xx - add support for CAP1114

 .../bindings/input/microchip,cap11xx.yaml     |  93 ++++++--
 drivers/input/keyboard/cap11xx.c              | 223 +++++++++++-------
 2 files changed, 215 insertions(+), 101 deletions(-)

-- 
2.54.0



Return-Path: <devicetree+bounces-318273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TTD1EInXRGqm1woAu9opvQ
	(envelope-from <devicetree+bounces-318273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:02:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE2E6EB69A
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:01:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=T3jq6oyI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318273-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318273-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5DC3300D972
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 08:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 409BF3EF0A4;
	Wed,  1 Jul 2026 08:55:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B1E3EE1E0
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 08:55:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782896144; cv=none; b=qhHkUFH2rkZwMALGyIdc90fkkss+rzw2+PvRbSva60hQ9dSaBpsqssLHtNoZDN7DYcro5p6rE1H/HJd30wW5etCHGVnaUfrMTL1Y+HnGISOv7+o+BjUSchh1PwJt8TjzLoRHGPlV+Jhl2BJcLqBEzgyU7pecZ8X+xmsP13mRyJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782896144; c=relaxed/simple;
	bh=faXX874UlTTPY89enPim4EK2NSNqA8OyRAlvkutVWHI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sd98QkyRoDGmU3k47mSR0QPpGWN0EksEBuq7SNYPnTYRfuE+XtgGjir154AzvdmRoLewmKvxg4yyO3l+r169uu8kiZVnksKHBs+BfSUejtWXsLdHkGHPfLOYMcaqV4Vz+CE+k0vE+q4SPHn4IYqW+f2sDtM27ZqHAGZ8dRk40Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T3jq6oyI; arc=none smtp.client-ip=74.125.82.180
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-30edbb0dc5fso145287eec.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 01:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782896142; x=1783500942; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q063S10IteKsFQ8gNDRLWZuphT5IA1a9z22SHQALedE=;
        b=T3jq6oyIw+S1u46O4vVDQayfgMSSBUZyBnXEkBAh3q/0Qhhcw5hZIgjX7gkAb7BKYS
         m6+5zZiVIbsIiChTpsjd132ICtCgtl/pEzmH+j3ZAHRMIUAlW2L7YRbOe6I8ikaLE7AD
         JpmPG5QMiaFCQe0YvWMtkd692FaVXSCIG1/Nc4Nm+gEqHZp1TY1LQ4ZOwDLbpXLHcioo
         lBjNBlLj7HFTdB+F0TQuAi47LLRVqmUDcNLAplMIlY2h1qZLuvEmlpeE9K4hvy84FTV1
         rlcqTMhF7PEvO3dRKIRMmV4o0Ex32iq3ae2mlniZygzS/o9HGJHwv3BtQuwv9B08KzM7
         OjKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782896142; x=1783500942;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q063S10IteKsFQ8gNDRLWZuphT5IA1a9z22SHQALedE=;
        b=lq0raFiuY8GjWVJHH56UA6A4UfZjUenxj1jEntPA+f8Wm3PSUrlZr5tA3RfeD5mrWl
         8g7Y2GhnLdIPLRAWJ97WiFm58RiWS6OW0J4V+Cqe7CqBIbtIh/pLANRx+XyRPnjA1+QC
         hLs/6EXaYD6dmWXgpsJxtsq72xtm2HHe1yZIp/pP8zCniumw5E0B8wnB7Q8E0odAvdq1
         iIaDZbJi2OQlmQYkC0t8Oz7zPG/RcNYSGolkbI58A43rgAQhmye06USNvGsOs1tD5MRv
         iyMsp6gYbH9dWw2AdbvZPeBU+kA9eicxuHDz8hbmzXdNv3sbqhOFJ7JP0RnYXGd+m76l
         YnZA==
X-Forwarded-Encrypted: i=1; AHgh+RokkzpK/Z/Hr0XXcdQe5px3BnQNPsc1YowQpZx1AlTZCbKav3VpBYsfsYwRKoEAH3hQ4N2KEhw9yEOi@vger.kernel.org
X-Gm-Message-State: AOJu0YxG2frqvS5EQajLXv6Q2CA/Bjj/QfPjbTKJCnJ+BDXBY4FH91H8
	ESmXaHApvqIkRjEWD34bfnZZ3cdvgWabK2v17mX5g5zFraJ0ff8ts0ts
X-Gm-Gg: AfdE7ckWks7H3JugpxZ6GCkKhRfAksQomSC317twMoM2REu9jrMffH6kq+fqR60SYCv
	ML/Lwz+uYojMcdJiZRcvmzy/ee01kVLM5GLHh1oWrGlx6XIJ+OR6zTNY1M6KXkGWG4eaiNzZ4Hl
	NTb+Ey2497j4l2mxINN6z31HyoxaTypJEcp2xDvmmYSQgdKAu1hmzisTWt6bWhMCLfa7HLUvM9/
	ktlaTVWEtzArl7tRckGLkJWeMtIcy/LIyR9cED239SIVVPEnfnJctfj6PRVsoSpgXS08UFQ0z5e
	kdfYyCpH0jz5Iy/eh8vPX2bgK+v7wXBZxgm670/uWk+LVZNVlud7J0ZbTLiGODec3GV2KnCKvQV
	5kAEcBdU7brHBfilKN8/Qx36GpVyUwcOmeav99hOcLWHKehFKles4GmXf9wwMWZfo+NyH7fMZis
	Ybu7cxWuU9iR59bjxTNA==
X-Received: by 2002:a05:7300:cd97:b0:30e:e6d0:e330 with SMTP id 5a478bee46e88-30eff2801afmr880159eec.26.1782896142028;
        Wed, 01 Jul 2026 01:55:42 -0700 (PDT)
Received: from [127.0.1.1] ([2401:4900:8901:272a:9e52:74ee:cc29:fbb8])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee2fbe011sm17797876eec.9.2026.07.01.01.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 01:55:41 -0700 (PDT)
From: Ramshouriesh R <rshouriesh@gmail.com>
Subject: [PATCH 0/2] media: Add Himax HM1092 mono NIR sensor driver
Date: Wed, 01 Jul 2026 14:25:22 +0530
Message-Id: <20260701-hm1092-driver-v1-0-d1bd81e233b5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQ5AMBBA4avIrDVpZ9HgKmJROmUkfjJFJOLui
 uW3eO+CSMIUocouEDo48jInmDyDbnBzT4p9MqBGq60p1DAZXaLywgeJcjagc94H1AZSswoFPr9
 f3fyOeztSt70TuO8Hs5Nhk3EAAAA=
X-Change-ID: 20260618-hm1092-driver-a6f2aaddf201
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Hans Verkuil <hverkuil+cisco@kernel.org>, 
 Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ramshouriesh R <rshouriesh@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1521; i=rshouriesh@gmail.com;
 h=from:subject:message-id; bh=faXX874UlTTPY89enPim4EK2NSNqA8OyRAlvkutVWHI=;
 b=kA0DAAoBFZWKXhEcBd4ByyZiAGpE1geiffouc10V2eyMMEP/zi7lkqDeraB53BzXpZ3W7qyFl
 okCMwQAAQoAHRYhBL/RC7M0pV+9Q2U0CRWVil4RHAXeBQJqRNYHAAoJEBWVil4RHAXe/sMP/RaJ
 hsBNzPkUCDwcSNR0mGiT3m/doK6kW6L1qItSJwwxJ5pfRW5IBHsT3TIkWdelDXxy8u6xrJ+xRwZ
 h7fJgyn2nNsrzhGX/lN9QiCDMiroLuu24hMRDVpexbhIgTCnwSUaMBR30DFqpVU8S2aBtdnMPre
 GAKB5myRMrqUKWpWucHqB+5uFfeHTMWO5UHs5fTfeIe/lViY2994jdbHOUDwC+Wi0mu/NY3EGM/
 I5ZBCOxKLl4p80QYgpp0V+nWWVhEBowofTlVP5pBLhxZLipOJLRHEKzsZcOQ2yqW1MS9QctbJZm
 8Ew3M1iRYIt7/sPrWc2fiSC7LKvxInFRC4EgMzBka1+eVABR15GwIIc3tldHze6ts+BNDYYZtUZ
 PkrMu/6brphed88txymjb8LkiVK7TuPzlzszxB7cLmutTyoW2u1ImCIBDEv/lqVhQhn7zkN+F43
 yfaoIuWG0rALJ/ZOn8GQGGiA2B6aI7QhXqMrj6PwzojVax0qLPDPRdmNNH+Ut7hvLg/ffDXe4wo
 gCzmKCqJbfOcmQ+rLzeAyjfPM5/ErGSWjdRmoI1E662clnlZd9sLLoTetkNw69J0gH+F0R3Bl3C
 Yq2bhzfgDvi4YN9z74DF/qtl99qfhAgXf8eJz5LHa5kDTKbnEXdLSyh8IrJ+bwqBSktl/AZdqXB
 2w3j6
X-Developer-Key: i=rshouriesh@gmail.com; a=openpgp;
 fpr=BFD10BB334A55FBD4365340915958A5E111C05DE
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318273-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab@kernel.org,m:sakari.ailus@linux.intel.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hverkuil+cisco@kernel.org,m:bod@kernel.org,m:vladimir.zapolskiy@linaro.org,m:linux-media@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:rshouriesh@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:hverkuil@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[rshouriesh@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[rshouriesh.gmail.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rshouriesh@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DBE2E6EB69A

This adds a V4L2 subdev driver and DT binding for the Himax HM1092, a
1 megapixel monochrome near-infrared image sensor. On laptops it sits
behind the IR camera used for face unlock. It speaks a single MIPI CSI-2
data lane and outputs 10-bit RAW at 560x360.

The driver exposes that one native mode, a test pattern control and the
standard fwnode properties (orientation, rotation). It has been tested on
real hardware (an ASUS Zenbook A14): the sensor probes, streams, and the
on-chip test pattern comes through the full CSI-2 pipeline.

The sensor driver and its binding are SoC-neutral, so they are sent on
their own through the media tree. The board-level device tree and PHY
work that wires this camera up on the ASUS Zenbook A14 will be sent as
its own series.

Signed-off-by: Ramshouriesh R <rshouriesh@gmail.com>
---
Ramshouriesh R (2):
      media: dt-bindings: Add Himax HM1092 NIR sensor
      media: i2c: hm1092: add Himax HM1092 mono NIR sensor driver

 .../bindings/media/i2c/himax,hm1092.yaml           | 107 +++
 MAINTAINERS                                        |   7 +
 drivers/media/i2c/Kconfig                          |  11 +
 drivers/media/i2c/Makefile                         |   1 +
 drivers/media/i2c/hm1092.c                         | 783 +++++++++++++++++++++
 5 files changed, 909 insertions(+)
---
base-commit: be5c93fa674f0fc3c8f359c2143abce6bbb422e6
change-id: 20260618-hm1092-driver-a6f2aaddf201

Best regards,
--  
Ramshouriesh R <rshouriesh@gmail.com>



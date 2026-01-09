Return-Path: <devicetree+bounces-253084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FB5D07297
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 05:45:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E218C3026AC9
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 04:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C30BF2F0C70;
	Fri,  9 Jan 2026 04:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hh/T7frS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A631F1513
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 04:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767933904; cv=none; b=KE9GgkAablR5htJXtxjMFw3bneuCpCQdSa3uCjpZnjsmFt5140dy3kFEAS2mZ9NXe2evTvoCIP/jlfGUPZqCNW2qiHNPX0sA+SBLY/9GAYvBhKRmxNfZWKLHaS5L0Fj/sdM0kY+Oou+iN18bBwsX9XJge6S0ehUlG9Alacs1qWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767933904; c=relaxed/simple;
	bh=sEmA+zmXqbhJJcmwVsIgmjewBvkIvZr7JnLEOOkLFoM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZYKFyXx6eY3pFgB6kR6OhB8C9aKVJObqEe4qglo2q6D8UBRLo7J5A94O/Wu9v0VxU1L8JFFrJAxhnBgv4TXoyMdwAhF+zj16WOKw/WSp7xWG8MjKVE0pPv1yA/AlFlRKeyYeG5ni3ogBE2SYNTa/TbB/fY8XfUOU39pus2eBvUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hh/T7frS; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-4557f0e5e60so2523722b6e.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 20:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767933901; x=1768538701; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tZp+kfHUaolqheLYLg650A6pQ/r2SBSRElAC2RJMB0s=;
        b=hh/T7frSjeuRndrTwVW/2MyH/xjdCZdc3V81Q+6HiynrO/CYuQUgj5zn146lFSKzGh
         HF+iWt4fsuLqmn+JNYeep2yi1IP2/BChd2Sf2iZPxr9MglcvJPJiUGHY3R4kXS9B/utP
         rNx2FBmiKBioyLSZRvSLXe9UhJrScnH2d5eIMNnf+mjnDo2PJxCOFVOn7r9up1YViWyq
         KRt9Sx6OCNsu43PHRVGj8zQnxhPEUm1M59Poefe61lIE0YdRXArfy0MGsb2bt5TPjtLK
         XIQAkHY7vBlsK3hZ01Tr+YCRduN6hmBOxzAVipifmvAIb2dgyqUoyX5HmKO7OH7e2MgI
         4Ntw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767933901; x=1768538701;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZp+kfHUaolqheLYLg650A6pQ/r2SBSRElAC2RJMB0s=;
        b=rBLOHmKAGWQ24FlP/ERnIJptL9iQQ4adS0v73JO5kHanrpbxQgn6quaMM6PBsYUtCo
         2QJLCuYRsZoGyWT6A3udimq61Qcpt7IdSPXst7Qb2T3m2E8ljIExGkRTiHneZORIf/0W
         dV+3oDs5NqguV5NML4fZ3v0/tc7IgivzH1Mm1boKfwwGtaj7RWp75tuXRq1R2VIsy6Dz
         2w5Bbk2AU8EaTYb06YRAuUMT3D9Z1VD3+7ns9cTrSStqC/Dm94jm708bBNRjut9I5MMT
         Th7S83mbXxYdywSVXNYgkbOcutl/GnyuMKM1SeEH5l5r8FyS39zZob4CCMVELqd+64WX
         jmvA==
X-Forwarded-Encrypted: i=1; AJvYcCWfdomBaGgNHD627xYAwTr0a6xLFo179BOOWIU+i2gjgIxF4w5x17xPOAGZHQ5+qlSnb1SJS2p3oLTP@vger.kernel.org
X-Gm-Message-State: AOJu0YwTRLTiFrO2bQnsVud8ouY+GrxG5QarkfbAtALWQ0W2WdlsHN0l
	KqoEhaVMD7amK3BjEyc+062Gm+9sVd4rW+2pE8pbsfzdjeDg3KvSvYJT
X-Gm-Gg: AY/fxX6Nsqo/uYWYufin4OoWyx0ezGVwK/NNzPmb9CRx9/+nc7FjuExtfmB62md00Ju
	6Ra9LeVenuk9OgKR7VioDWkLPmI/QKiMMbysFSWVh2I6l613tBEzBiKNi1/GW/lhlrN9l02vUli
	0tqxC1X6jJSb3o3PXtD1vG9wNfFc8ObEqsuxD3lpP3uEfQOp6mifZ57YECY17rMUfpd9vPckwip
	VffwED+e8c5giZt29B2fGz8AzCycETh7atpO1Xe1uE1TqVvOKWe0Nqiu11ok0/jJgoM6nLPFAua
	iBkV4Fxi7BgFV8CHFy7d2BjOmTwOsROWjdeXR7l7iZvEOQpPF9AR8wpj6b7Y3Empw7+FNAY1pvW
	ku9Cx4eGhQKDgEq7GlAm56V3XEpLIj4UuGBf3NoMD5obnQVYcK3yyPiI2FGzDd1Qgt1PXJYLRny
	dNHXF6OipBkRm2PR6NMpi9oWT/tfUs3g2QyFImOIMSdlsm9ysaF2hqpso0tEugIxaCbPX3advBr
	lxre3JS09COpojgqM6muAglEE55
X-Google-Smtp-Source: AGHT+IHedFIfG2wReSbPveqXV4uDnobziG+QJflWOiBLTxU7Ae0czMlXONHjUMHL2RQJtC6hSKZYTQ==
X-Received: by 2002:a05:6808:4482:b0:450:10b:a53a with SMTP id 5614622812f47-45a6bee7f84mr4029885b6e.65.1767933901142;
        Thu, 08 Jan 2026 20:45:01 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce47802551sm6683515a34.1.2026.01.08.20.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:44:59 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jjohnson@kernel.org,
	ath11k@lists.infradead.org
Cc: johannes@sipsolutions.net,
	linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v2 0/2] ath11k: support IPQ9574
Date: Thu,  8 Jan 2026 22:44:52 -0600
Message-ID: <20260109044457.3074510-1-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is my attempt to make ath11k work on IPQ9574. IPQ9574 is intended
for wifi-7 devices, so it seems the exception rather than the rule to
pair it with a wifi-6 chip. That's exactly what my Archer BE550 does.

This consists of a wifi-6 (QCN5024) chip connected via PCIe to the
SoC, but exposed to the OS via AHB. The Q6 firmware [4] requires
remoteproc support introduced in a separate series [3]. The QMI
firmware interface is very similar to IPQ6018, such that almost no
new code is needed.

I am not including the wifi@c000000 devicetree node in this series, as
it depends on nodes from the remoteproc series [3].

I have been successfully doogfooding this for a few of weeks in AP mode.
There dependencies to this series. [2] is a compile-time dependency,
whereas [1] and [3] are needed for full functionality. I was adivsed to
leave [1] and [2] as separate patches and not add them to this series.
`

[1] https://lore.kernel.org/ath11k/20251206175829.2573256-1-mr.nuke.me@gmail.com/
[2] https://lore.kernel.org/ath11k/20251228151408.2116108-1-mr.nuke.me@gmail.com/
[3] https://lore.kernel.org/linux-remoteproc/20260109043352.3072933-1-mr.nuke.me@gmail.com/
[4] https://github.com/quic/upstream-wifi-fw

Changes since v1:
 - place compatible strings after instead of before ipq8074

Alexandru Gagniuc (2):
  dt: bindings: net: ath11k: add IPQ9574 compatible
  wifi: ath11k: support ipq9574

 .../bindings/net/wireless/qcom,ath11k.yaml    |  3 +
 drivers/net/wireless/ath/ath11k/ahb.c         |  4 +
 drivers/net/wireless/ath/ath11k/core.c        | 82 +++++++++++++++++++
 drivers/net/wireless/ath/ath11k/core.h        |  1 +
 drivers/net/wireless/ath/ath11k/hw.c          | 51 ++++++++++++
 drivers/net/wireless/ath/ath11k/hw.h          |  1 +
 6 files changed, 142 insertions(+)

--
2.45.1



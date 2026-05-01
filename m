Return-Path: <devicetree+bounces-292100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHFsLyt59GliBgIAu9opvQ
	(envelope-from <devicetree+bounces-292100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 01 May 2026 11:58:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2340D4AB756
	for <lists+devicetree@lfdr.de>; Fri, 01 May 2026 11:58:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 583D93010B8B
	for <lists+devicetree@lfdr.de>; Fri,  1 May 2026 09:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 948AA38229E;
	Fri,  1 May 2026 09:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="pMqGUJlu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C889382F03
	for <devicetree@vger.kernel.org>; Fri,  1 May 2026 09:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777629441; cv=none; b=GXYe5TXXV12mu4VGkfJOFG4xRTVxDHNL6FkETuG8etOL0j98IASlgvjEI9y9lSgu0z8KqmE29nwzDxKXYM3YQWD4vcTsicnndgynHh5MgKjBy1X1qvNE0tapXYegylkl2f2J7sz0Jrbm3Z2E0PZ/T7SiczqwhreZMdmu0FjVyRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777629441; c=relaxed/simple;
	bh=XL4uV6GkgD4RcOl+wpvrwdX7d246PTROEpd1HxkSjpA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BbaDBp1x+VNUvqjECw+TJMnRMugYYqzbSYOozlEzxPhbMX2SIH6I8pLwN0fRynNyT1okVn4ufLbesUk+bIGn0fdV9aYX5cbzoNrbiCKZ2FBYzvtfYb915stGww7mcKyTrW7fJRIjDiVkg8tNdG8nHmj/M4dbEkbcw0hTtYi/RjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pMqGUJlu; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-c6dd5b01e14so689139a12.0
        for <devicetree@vger.kernel.org>; Fri, 01 May 2026 02:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777629437; x=1778234237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KJvh/XpegIBYrHOJk7E96WpmL8EapMHXqu052w960x0=;
        b=pMqGUJlu25T4TEHj0avnhGmcW8vNRkmGZL1ndvRnDk/PNnWBUWCp+Mklf0G3Qa636m
         TBUdiVywJ/VJnQDd7KeX0HCHT3MwNjPATvwH2dzcxllcKjqyZIwpPNFkSgT0B565Q6D/
         GL83D1bh3ZL6/ESrcMPE7+EpiVVdow4KwLwytPwqEKwvOxu12ahZNeptR53zMI32VoQo
         pJf1/H0RHBC16MmHiF25JpghprMHTTvjCO9Kf7fWYhxDfQRowKjKdUl0MdaTks5MDazw
         wadSOViqfHPgHnXbyfvkrIYC5Z6CqFGvs5lP338MaFtN38ATlR3J3L6/nLPnJL15Ob1P
         43Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777629437; x=1778234237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KJvh/XpegIBYrHOJk7E96WpmL8EapMHXqu052w960x0=;
        b=KrbVrsfFu0NOWoDGxldicIkOxgFs8KSPZ4zVlTp0pW7JCB4UKtTmbCZVMj9lNcetOz
         3A8txXomZ8VmO1I5By6XgLB4MLDdLFASOkpxZD1nDJm+NWTfPE96de7hSKGfEFMEE3i6
         tSGnnlhQwwDKXExzhjnTHXeQ2iK6Rvp2IkhEU97BvKn8FhsPt/Zt6S+u89VnWcpyDO2K
         LWL99HyCuBlwWu0m2XsoeAZts82MnkFjujk0bsschZ95I+vOLIhpIkMJO0Tw7MKBT2/f
         bNnWW+/joJqhxU7az/5KzMbuPbPAb7nHGQsxFkCziL2AGcYdLyYqFDwm7I3xSlHhLL2W
         7ztg==
X-Gm-Message-State: AOJu0Yw0Q6ue3Z4j4qKSissGupgVJTodQ2W3aVEpi3n7phAxhHy5Fwss
	sHSdhOTRbVGa0L1p2O1ZHKC9MAoEJ91aINGjYD/mkIQmRswouK3kU/OG
X-Gm-Gg: AeBDietBBkOEmpMiHXy80r0sxOKocSp+QI6CjQAg4A3H44HoxspyErssxv6tvbcssEe
	Fo7hfi5fic1wo+ZfocYpVqVNvnztcEIWoAO1vn8hBAJLbXBpdx+2nnYX4ILImiFnpz5FewYao0g
	3g7YKYKDsSaniakT6OfNI8OanB42vaPpQ15L1bI+HGKIUe/maabqWnkRbTQa1GBZQTXNbKq/ZbR
	ntt+fOUvAVQoPiCzw3gOPzpAivUb5/2KVSAKhofpbavBUjBO0Ny302N5qEauKD4MC8USWiJBqvT
	lD3MlTGUp4n1shbIJXMvalzh1z9cp0K/QA2CisFnBWY+RySgDDH6Ebo9YbHr2AsAX5LbSde1PvN
	XOkMsK0wvEMTgX6DKiGPHguefpz30BROzzA/TFxm2EO2GzwCEDwEzaJdCgpH7/lWHewuc7QUNmL
	UP/2csXwZSTzs9SA==
X-Received: by 2002:a05:6a20:6a0b:b0:3a2:c683:fa84 with SMTP id adf61e73a8af0-3a3cf77ba41mr7322916637.27.1777629436989;
        Fri, 01 May 2026 02:57:16 -0700 (PDT)
Received: from nuvole ([2409:8a34:5f36:7c14::f7f])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c7ffbcac2cfsm1731381a12.32.2026.05.01.02.57.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2026 02:57:16 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Martin Kepplinger-Novakovic <martink@posteo.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@kernel.org>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH v2 0/4] fix and improve for Hi846
Date: Fri,  1 May 2026 17:54:29 +0800
Message-ID: <20260501095433.1609309-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 2340D4AB756
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-292100-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,linux.intel.com,posteo.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

This series fixes a error blocking Hi846 driver function, fixes
link frequency and supports 6MP and 8MP modes on Hi846.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
Changes in v2:
- remove uncessary `else` (Sakari)
- fix link frequency (Sakari)
- correct link frequency for DT
- Link to v1: https://lore.kernel.org/linux-media/20260429070351.1307204-1-mitltlatltl@gmail.com

Pengyu Luo (4):
  media: hi846: fix hi846_write_reg_16 handling
  media: hi846: fix link frequency handling
  media: hi846: Add 6MP and 8MP modes support
  arm64: dts: imx8mq-librem5: Correct link frequency list

 .../boot/dts/freescale/imx8mq-librem5.dtsi    |   2 +-
 drivers/media/i2c/hi846.c                     | 226 +++++++++++++++---
 2 files changed, 190 insertions(+), 38 deletions(-)

-- 
2.54.0



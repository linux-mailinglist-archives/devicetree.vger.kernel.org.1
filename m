Return-Path: <devicetree+bounces-295405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OThMq6jAWpKhAEAu9opvQ
	(envelope-from <devicetree+bounces-295405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:38:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 382E650B104
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 11:38:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65788310280A
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 059E33AA1A1;
	Mon, 11 May 2026 09:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bOjfRu1B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A66377567
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 09:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778490689; cv=none; b=TzSVnbN99s7upLQwQy5kSXB2LPVZcu5Vkjizymv3bjiLMahAWUfmh5q8KeBbehujuFZjHPI+fGLCdsqR/cghab4WWhXDpPkPXoxC9l7Bekgl0BSsD+SRLLCvOH/k91Vam/iPek48xsxKRqgIen0nePLl8QB4p9Szwgn/mLm9L48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778490689; c=relaxed/simple;
	bh=SZ8f9PPqWZU+1cRpq6Zl5ZieD1mgOP9e8yXexQ+jYTs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=g2ov32UxuXjif5rpl+ufbiz8xo5aYpDd8IELHNLNiaO+mQ15WhwvQ4nEuT8r6ZngMfsvKKGjY2ELVsAMkYA4IMbQ6s0o97k0eBsFLpL/5IQPUIIaXQcl/i4nNhkvKUEzrR8SzicWvwdJnpMZuH3CQmCHxyS3yGV7lYt7aBrE+L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bOjfRu1B; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c802803ac17so1716775a12.1
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 02:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778490688; x=1779095488; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XdyyhEj4/v2ra5ngAxTRu5GNOcioukMe9KhLVuT3bms=;
        b=bOjfRu1Bvoe7Wpp3hwGZimC6PCp42e3xybWLG4AqTD9bxCi6UZbQ3Bh/8RuoAxhuBi
         Dxr8w+nArST6TcjRlLY/CWG2sVLbQYHSPcPhWXq1juGXRkLwPILNS6QwdkiLeqrCtkFO
         6l5XdQEURkX3xywRMxt49zaacUlg1qdpivScUdMpGE+BDa8kCodONSkO01QEn+Ew1O0u
         mZJvnMUujtfpZvQfQac5SruDN3opssBguusEf5eh6tHoc1pMnweXs/sIMWb5ZtoFk9o2
         +BFSYDD2dIfr/o58LHdxRqCcgxMUsXCWo21nnANyumOof11tfoiqhASZEORm29cZc38i
         KhDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778490688; x=1779095488;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XdyyhEj4/v2ra5ngAxTRu5GNOcioukMe9KhLVuT3bms=;
        b=dEa5Xnd/2iJy9TIqwf3RxQl6NdyZlW1YJ95LDQOiFEqQ9nYf4oWJ5nWYK/hX0YwEHe
         s/ucgVBza2V+hcCzXJj060wachBgTVndt1l3IqlqZyBMsItP9e0QD+PAn3DDaLTPbfMP
         BcOQSgh418Iv7e6r4mh1e+lqTPrQmN83okzQpFBJwROqRG6yWmwEMGvBJ9/dcT0Yww5P
         p7cD1xjLcvvR7Z4cySdN03X6Kg93l+l0Xrv36fQQZiMWxTrBNClHApodBAZhJzZuXwIX
         MzHycwLbwYbq/a2YACAOrdHdLR4mZbyx5zQaCYVyJxwtKqQRr9cj5L8lMe+11nokwnDu
         NoHQ==
X-Gm-Message-State: AOJu0YzII1pPRi+Jecq7qoDVoEma/K0LudKY5jplEXybyAGMn24IK/LP
	XPkwakFpzWQUlpbBRjWesQ/EGRwnV7x0UPAHJb9TkFlOWCgUOotVVOE8
X-Gm-Gg: Acq92OFM1FkHyCb1EUfxWFaq/abIML2OtxT1C9+DDdyAywi/5zvOHy6lq7FO/krGuwu
	8jw2ECoBZ27oldSa9meMd53cYIWKuOpXvwrV9cta+g8r10a5/jON8MRtMzJZluVEInGboPJ06Lm
	TjgVL98oenjcRG94lhE/dpggv6lPfJSKTD398zFojs1at/JXxY2RQ3z7zVwLCI1jjBhMI4qjimF
	KTnTkvimo7+k6WY+ZW3P7JTHjHQgWU9/Q2m7m4kA6Z0BiOe208MLKh/Ha7D5dNyHaqclYMxyssL
	eGg+7dGcNRpTVOidBjOhnjjBaMJYOD5IN6UIrTAVoa0lqUmOeMj1VndV99L7GMmB8aVbWEQK+Jq
	DeJ2oRuHA0Mpe1NY1jcN7eG6sGKgF3sbuleC79pCwxtFTigN5SmPL2PU0dd0yK396WNUP6f1p9U
	+C61Q9kJEWMTZClgmbyFT5iY4=
X-Received: by 2002:a05:6a00:2d96:b0:837:acd7:a78 with SMTP id d2e1a72fcca58-83a5b9d8131mr21057954b3a.16.1778490687914;
        Mon, 11 May 2026 02:11:27 -0700 (PDT)
Received: from nuvole ([2409:8a34:5f37:1974:abc5:99cd:a924:4e86])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8396563f11csm24775517b3a.3.2026.05.11.02.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 02:11:27 -0700 (PDT)
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
	Hans Verkuil <hverkuil@kernel.org>,
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH v3 0/5] fix and improve for Hi846
Date: Mon, 11 May 2026 17:09:19 +0800
Message-ID: <20260511090924.269106-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 382E650B104
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
	TAGGED_FROM(0.00)[bounces-295405-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,linux.intel.com,posteo.de,puri.sm];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.956];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

This series fixes errors blocking Hi846 driver function, fixes
link frequency and supports 6MP and 8MP modes on Hi846.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
Changes in v3:
- fix modes handling for different lane cases (Sebastian)
- fix header missing (the Media CI robot)
- Link to v2: https://lore.kernel.org/linux-media/20260501095433.1609309-1-mitltlatltl@gmail.com

Changes in v2:
- remove uncessary `else` (Sakari)
- fix link frequency (Sakari)
- correct link frequency for DT
- Link to v1: https://lore.kernel.org/linux-media/20260429070351.1307204-1-mitltlatltl@gmail.com

Pengyu Luo (5):
  media: hi846: fix hi846_write_reg_16 handling
  media: hi846: fix link frequency handling
  media: hi846: fix modes handling for different lane cases
  media: hi846: Add 6MP and 8MP modes support
  arm64: dts: imx8mq-librem5: Correct link frequency list

 .../boot/dts/freescale/imx8mq-librem5.dtsi    |   2 +-
 drivers/media/i2c/hi846.c                     | 251 +++++++++++++++---
 2 files changed, 210 insertions(+), 43 deletions(-)

-- 
2.54.0



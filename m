Return-Path: <devicetree+bounces-205721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EABAB29DD3
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 11:29:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ABEC01962B6F
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 09:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E42530E0FB;
	Mon, 18 Aug 2025 09:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="DfTXIdLD"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649B230DEC8
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755509277; cv=none; b=K5Gzb7kIJPaEjj28i+BQuNsr1kj4g0tc2u2vMUMmbgATToSTJURq4jM6FOHAiPq9swVdL+quFuETKs2F2UgsnYghH52INMPxpdBBLzghKZjabzWHzIarZNrna8mzluh6LGB09rS7C32wIUgh/wQestt5xrOc5VmemHYQ/4l24ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755509277; c=relaxed/simple;
	bh=ENtF9dMmAFLBKN2RSrXhoJle/KDo1PSoRLO/+5jvepw=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=se7OvssCM6YBfy0QRMA/gF8C8zHrgMpPGRPZxwrMR/OcVLMLcTWU4ljI2y+uCCfqh+W0974jZkVgfxZQI8Yhd5lDlKZgeCtSY0kTLn1S0J/B8u7IzazN2D3+xl1d0cBSyVAoyJHKrZWESOwhsKFbe2ayeSn19q4R45m89oGwfkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=DfTXIdLD; arc=none smtp.client-ip=212.227.17.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1755509246; x=1756114046;
	i=markus.stockhausen@gmx.de;
	bh=ENtF9dMmAFLBKN2RSrXhoJle/KDo1PSoRLO/+5jvepw=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=DfTXIdLDXrZBX7161x1GjDS0vudkmrm8U2iXUKHXxF6/vlE/CINl7A3UE259eU+2
	 kbcgpDUcv7I8xNPLv9ZH7ptvdpas5ZlSQB2cJGZx50FX4G5jrGmk+biRJaQ+BwX4n
	 HSjm8+XwIcIsVJXvk1/rsOM7tG84kGr9m7bcg2lNljYtx+hv6ze1egSQngqTNNUx6
	 GYvyNC/vWI77JOLXOjCduvSzK/Lgg6n9GnBlFatYMwqHUpZMEYAi9UiBjrYIKN5iw
	 MeIivV/WsGLQRoGtjV8hYAfHl1M2ryb+/ztEdELxFCopkCpGIsilMLAk2J01xf2vw
	 KUGkNzGt+v2eKJTcJw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MO9z7-1vCKcJ2Fk9-00UdjQ; Mon, 18
 Aug 2025 11:27:26 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: miquel.raynal@bootlin.com,
	richard@nod.at,
	vigneshr@ti.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] Realtek ECC engine
Date: Mon, 18 Aug 2025 05:27:23 -0400
Message-ID: <20250818092725.1977105-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:mceeLN1aac/JoXUH4+uQSlXHbKTZQkx3mjtVw1YXXWujzN0Yq+K
 kBUg72YRbTYmHv61hudCqwwO3fonsFqw8O2olfgavts9H15+XB2qWluXP3dmwGfRZCgODE6
 zRduqT0kpM4S37FEziVlXlNiV/o9g+m8b0+RR03q1BDcDKmnOQYAhxGHG8IjHwBmLUhTPWx
 GIhJ4qIvjYjLtWobz1FHQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:/AV2CQt64Gg=;9mr8AF7FRRdDNAB8w2yPv3FU715
 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
 1qcg==

This series adds support for the ECC engine on Realtek RTL93xx switch SoCs.




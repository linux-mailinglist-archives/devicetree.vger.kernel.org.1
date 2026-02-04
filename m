Return-Path: <devicetree+bounces-262738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCl9FAt9g2nyngMAu9opvQ
	(envelope-from <devicetree+bounces-262738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:08:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CF5EAD23
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:08:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A4DB7300DD68
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E769347FDE;
	Wed,  4 Feb 2026 17:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lNQVaAR8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0920B347FC4
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770224732; cv=none; b=eLYF8MHeuvrjMKHdpJxAMF22wImiZUnNOkfQp240q1g7XMWYuP7CbyDqGNYPVm1sgiiZY4P178qIevfJTpwdIk/HgBWr0jMv5ezrglLXLW/GfkII+nckniH/MJ6e5NwVT+WpK+fXfKCsM88umsuNprqmyeUl2M7chQMUvslyf9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770224732; c=relaxed/simple;
	bh=lleOIIrkEM6FB+pXJ1Razl4FkfUSxwLS7fdsMrD/1L0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TcBsvermvfYjmuJI7yRJV3JJwceK9dW6kS58ZHL2c95ARldKl+r7yPaDv5pq9juzMJ5zq4m3PriEVcX+0QuICJZwPCtJHcDu44sM+7CAl1zzIj+brMVo3X5NnIF0v3YipHZbUwhByB8m0on4JYlmTkPGCqXmKlWQmfdgLYWEAXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lNQVaAR8; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so182065e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770224730; x=1770829530; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qMd6eVgyTaMp2dz0Bmva0s1vsJYaGNF3GbW8MNURkF8=;
        b=lNQVaAR8FFmHxAWrfAmX5FgtvU4/PsHQKDpR+CVc0L6phCZ79o5aCAxLO5LC/dt4ks
         MqVDO97Z7TmGzWlZoqFFrXCqXiHTVXRuOBknlpitYpKOUEJfjwAaKNHevJFgnAtdL9sX
         1Z1s/b5fWOZFrQo9TbWGTW8z7pXEiSDcCzmPQkU2q2oG1XF9dzpRPVx2HiiLOi+XK7ya
         TWn+K52vUtxOQENgPbb1QqTQnYkl3tG/Z7mNp+/vLAJGcGDkfiStn2wLqGkmpem9BSq/
         nAEpHNNTRXs3p4ljBYFOL1ah6logBbAJq/qpDfLcppPQiT3SfksS61AnwPAakOJJhrw+
         5bVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770224730; x=1770829530;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qMd6eVgyTaMp2dz0Bmva0s1vsJYaGNF3GbW8MNURkF8=;
        b=bn/QnUbOfOJ/ihbbvKWTUk9RC2XQD4TvnyGBWPwkqrrc5kl/NPSqSHUZimeCnhUohV
         4BseS0bEDJRscIm0bRnoRvNJQbR+7gexAI0pzklfbMieCNWNmVXr1eQpZM+hauLFvE4k
         WT6AFMPK4OZhhN+dIKWMWV7PbDcKujMQ/3RXDrKwfd8nlvzNnHiHYIWyerifQsPdktD2
         TRQ1Tkb28H+drfjLAZ9YgPXqw7wZXbgGQUJqh0N7Fr1g7cJiLVkjPnld4tLdIE5sIAXi
         mz7j/8khUqo2rDz5EIuVfaclvWNGp6kBEo7EJa4UehgFPK+uxijoZ7H06X9zvr3h+S5P
         GJcA==
X-Forwarded-Encrypted: i=1; AJvYcCWDOsGKIQ4KivnvCznANmyGQmTZGOEIscColv4Oe2ewUs+ArEkE4Zve2v5AiJmlduLow4GYOtpz4lR/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6D2mg1bvjh0xVKmASzCwRkiP9PG8DqLQyPl1oQ4HnrYfJ3NqF
	IFzXr13XGOUu/mcs5EbZJW6yVdsuu+KT4xFF1isZV4b4egxyQbgYBZHc
X-Gm-Gg: AZuq6aIv19qI9eBYLcgKKp4aLWtZDgW+gGXt+qHG79jc3kt+sOOjKmaCVp268Y9G0VX
	TftH61YkzrlEeSEKgV38hTvLwo+W+3zN8w4puL60YEbRkEgiWQI0InbsjMOMf8AjZ+q5n48KQ/+
	3B/eRCdzSTC6DFaIiolsnMFb0R7F4k+mbIFglHew1asLXJ42PBGJoGt6luSaCGL/8+E8CGZZhXs
	zyJsZgZE7oF1k7sdzANMTHu7jGAb8BZdUYY+0smCh5SGYKhOzQGLx3Bn29D/Ce3dklZ7TW1V0/V
	AesnLPLymzz9tytBorX3UyQD+9hS1phTcg6VhTbhakre/QRv3JKY1T/ylyUeHVHgs7KbVuuUWbx
	D1iWLnlf8G1bb4qWD1Wfy0kMCTlQsPBf5F1thZw570NejnEwk6nNUWbngtYW93s3jHWFelSgwDH
	CgcWE0JUVFaG8PGVZCErnE1pbkEXFSBYqpsj40Jf/LU3ffFPQDBsFcdc4fRln966blyOuWoY2an
	GDMD9TSEiyfHaXnFhLdmX9OVS1c
X-Received: by 2002:a05:600c:680a:b0:480:6c75:ddce with SMTP id 5b1f17b1804b1-4830e9a9b17mr51563435e9.33.1770224730178;
        Wed, 04 Feb 2026 09:05:30 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830ec10011sm38044465e9.0.2026.02.04.09.05.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 09:05:29 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com,
	primoz.fiser@norik.com,
	Markus.Niebel@tq-group.com,
	y.moog@phytec.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	maudspierings@gocontroll.com,
	Stefano Radaelli <stefano.r@variscite.com>
Subject: [PATCH v1 0/3] Add support for Variscite DART-MX91 and Sonata board
Date: Wed,  4 Feb 2026 18:03:53 +0100
Message-ID: <20260204170356.35169-1-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,gocontroll.com,variscite.com];
	TAGGED_FROM(0.00)[bounces-262738-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: E3CF5EAD23
X-Rspamd-Action: no action

This patch series adds support for the Variscite DART-MX91 system on
module and the Sonata carrier board.

The series includes:
- Device tree bindings documentation for both SOM and carrier board
- SOM device tree with on-module peripherals
- Sonata carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

Stefano Radaelli (3):
  dt-bindings: arm: fsl: add Variscite DART-MX91 Boards
  arm64: dts: freescale: Add support for Variscite DART-MX91
  arm64: dts: imx91-var-dart: Add support for Variscite Sonata board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx91-var-dart-sonata.dts   | 498 ++++++++++++++++++
 .../boot/dts/freescale/imx91-var-dart.dtsi    | 468 ++++++++++++++++
 4 files changed, 973 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart.dtsi


base-commit: 18f7fcd5e69a04df57b563360b88be72471d6b62
-- 
2.47.3



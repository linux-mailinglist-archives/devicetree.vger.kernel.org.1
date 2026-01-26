Return-Path: <devicetree+bounces-259477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMGgKIxad2maeQEAu9opvQ
	(envelope-from <devicetree+bounces-259477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:14:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F030B88136
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:14:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89EBD301FF96
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 12:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0C2B334C3B;
	Mon, 26 Jan 2026 12:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KNWjDBcx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E06332EB5
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 12:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769429614; cv=none; b=DiUg02PzKKLy/+wrNrsg5jWrGXFyiQuW/Fmr0D0r8mf4f0nMFzvkg7AmMx+8cl4JdJkoMYrTUmzhbh7+k7NdG/FxvqFfQlSPB70kPwpObdYLfqxBkyzVhNOKpCAxPGfd6tGy20ktWrbqJPGrxoRCOM1pQyp9a03xj5dhLyU9TaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769429614; c=relaxed/simple;
	bh=DyQH4ywLrrIHN2z3rMqKzOJqNYnPWFFSFzfKYpb57a0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QgXSPmY5I7DJ86XCn4A0HzTJgnKqQdItMqLz5kPKYDNi7Hy4UaW4/ArWUOgaihh37vuSFPTOLfRaTqZiS72f6PJN7o7DZvoIzZWTwEOvGM8fRj49vKjd4CpSkIYhgZRNKK83w/7HAXguO7ZJrUYY9g9sOwYwfbR95VVc0yrP4ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KNWjDBcx; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b8715a4d9fdso545240966b.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 04:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769429612; x=1770034412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o+Czkgnrv85D+TUfJ4B21xJ9SxwxHnvyV++qaoDyGlo=;
        b=KNWjDBcxpL4g31eZETOHTqxgvFmDKTpfXlPjjC/On3j50l3Pvu7S7rbJFHWEayJTaR
         xChkL5D7l2lfufTisVNcfOoYXrmxq/DZr/rwxM4zg4HT2REmht5MHW496vCQMR2LXG+O
         j2y3+6X0VGByCJAy0n4qy6IWYnb1PjRIgf7B3ChW4fZ9b3XlHM/r0aq7KPyP7ZFiOPGo
         TQd6Vqo6it8ly6xEeTBywixT2rSEOC37IPomesvctj/OEu0MrkeNJibubGGnzZ8urCx+
         rSpU5qkjm/oCXmGyN6bUXSaRFaTKGh+VLfV0bLaskf48OBdVXuowi0Nh+DXWjLYwsMfd
         QWVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769429612; x=1770034412;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o+Czkgnrv85D+TUfJ4B21xJ9SxwxHnvyV++qaoDyGlo=;
        b=eQ1Ua4URzELLY6cmH3wXgO1BgYLpEjipF4PqYCKfi9NSOTvR6eLQeY4awK5/P27y+8
         LOalMAMv/YWYg9zwaVuiEBNPpsB76GA+Rt9NQPgRsZQDr+U/GgedfjzyXiP8iGRLafPI
         cNLlSfWNFT8G/n3JTueskJZWMUJXyWuzjZ2caiPqSYvskgNB/lC/qCCyjygjFAXX5WN3
         XS5ew/zTXoWKjNv/k2NiN8JONQvai6g+mVEwfB3lqGc373iVDcVDmKsAVkOgHgxxOCCQ
         B+aVv4enS3MrF05ddF+N7HFyidlZ+whK8dPM9h1jzryshK/JoCsASOqdA8jrP44AdQ42
         2cCw==
X-Gm-Message-State: AOJu0YwV8qHDUl7TJTAC/ejTxrShfjux6wz8l9REsry5LS4ztnhTAeze
	PeoGnbKKWYRCgGIv2q15+WGyDZ8omJK2dur1KjfPyJGsDRV7X3czxx1Hle15Hw==
X-Gm-Gg: AZuq6aJYAkykGIEtbmAVoCoZBkY7OZwGHUZuRut6vsjnMht2XF3Ge5iiOdphCbwPCTu
	fF6jUO7EhYmqTdGOziiZH82f9TBvUTLl76NmCIbD3rkwlgp0sBbRTDTc5ZA0k95654utcaG2EQ7
	fxU0kBAjYBF5ozYOWBewrN+WQ7ImtaQe4ExzvKATdJoNq8Y9Nezf4coBDM+T+69tFc0E0clomi1
	PYR5CTSzlmtC+LmT1AGFtqNll9yRlg9EIEl+b907BeNktLVH9nD3bjktODye4V748fNNi2MmRjq
	FA88nUoyCjO8tY0bKxowO2VJIPPMXVQEt9bs64wkqIecrSY6A6K32g5HddfVCLy4mR1gkH5QiSY
	/jFrRptOcOJjV2Pt3oWDC0mTyJsiQPbbN/lqdrL2TLj6nciHQMya6adX3hJVlgxp0STeuFy6pYM
	um
X-Received: by 2002:a05:600c:1909:b0:480:1d16:2538 with SMTP id 5b1f17b1804b1-4805cf67512mr71970965e9.23.1769422508913;
        Mon, 26 Jan 2026 02:15:08 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d8a5c32sm319771795e9.11.2026.01.26.02.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 02:15:08 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] ARM: tegra: lg-x3: add missing nodes
Date: Mon, 26 Jan 2026 12:10:14 +0200
Message-ID: <20260126101018.24450-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[bounces-259477-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com,yahoo.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F030B88136
X-Rspamd-Action: no action

With the recent kernel updates, Tegra30-based LG smartphones now support
several additional features, including an RGB-DSI bridge, DSI panels,
MUIC, a charger, a battery temperature sensor, OTG mode, and capacitive
buttons on the P895. Add required nodes to device trees.

---
Changes in v2:
- fixed dw9714 and tx13d100vm0eaa nodes
- added video device pipes graph

Regarding CHECK_DTBS output in v2:
- nvidia,tegra30-pcie, nvidia,tegra30-gmi, nvidia,tegra30-kbc,
  nvidia,tegra20-kbc, nvidia,tegra30-ahub are not documented yet
- nvidia,tegra30-vi was adjusted and applied, change did not apper yet
  (https://lore.kernel.org/lkml/176860988748.1688420.11717122647073678.b4-ty@nvidia.com/)
- st,m24c08 appers undocumented though it seems to be different from
  st,24c08, at least they google as separate devices. atmel,24c08 is not
  documented, though it is widey used in linux device trees and is
  supported by driver. Here is one of examples:
  https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm/boot/dts/allwinner/sun7i-a20-linutronix-testbox-v2.dts?h=next-20260123#n33
- onnn,mt9m114 does not have 'orientation' property, though it should
  include it since it is generic for camera devices
- ti,lp8720 and maxim,max77663 have txt documentation and are not yet
  converted to DT schema
- backlight in panel nodes was not added since lm3533 has no DT support
- missing '#io-channel-cells' in ti,tsc2007 addressed in
  https://lore.kernel.org/lkml/20260122193549.29858-2-clamor95@gmail.com/
- missing dsi controller properties of ssd2825 addressed in
  https://lore.kernel.org/lkml/20260123073411.7736-2-clamor95@gmail.com/
- missing '#io-channel-cells' in generic-adc-thermal was proposed in but rejected
  https://lore.kernel.org/lkml/20250310075638.6979-2-clamor95@gmail.com/
---

Svyatoslav Ryhel (4):
  ARM: tegra: lg-x3: add panel and bridge nodes
  ARM: tegra: lg-x3: add USB and power related nodes
  ARM: tegra: lg-x3: add node for capacitive buttons
  ARM: tegra: lg-x3: complete video device graph

 arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts |  39 +++
 arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts |  79 +++++
 arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi  | 328 ++++++++++++++++++-
 3 files changed, 429 insertions(+), 17 deletions(-)

-- 
2.51.0



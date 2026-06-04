Return-Path: <devicetree+bounces-306941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jG5BKTCdIWoFKAEAu9opvQ
	(envelope-from <devicetree+bounces-306941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 17:43:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A830F6418AA
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 17:43:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=o2JuDYDM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306941-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306941-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3DB7A308D278
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 15:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FFE33F598;
	Thu,  4 Jun 2026 15:19:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860DB31D381
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 15:19:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780586342; cv=none; b=kvBlwlUa6ucJKQy3ekPFdumrnudtZrV6PWwe7z7g+OO/kNlbivWiOVYKX/H+oDp6iU/UAC5/w0SE+rvsTkcq/Iji4pOeyB6JaT2WMPqY3GNhgwI2qnT+ZEqplfj3Z+isp1CXmdtAKbWI549ammX7InAO/tnrUULIfvnRrWbE02g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780586342; c=relaxed/simple;
	bh=FsJzusXRvjkVBK8CC4DoLzl0EEg02IPeRG+NSu1x/s8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IS5cH34DaEv9vcA6nvwXeeXSqEUsSvhOdvWPSw6SDHgWHzrtdOEWOuWXn+7ly60ivCTX2XRZpfu9YEyLATOsC8iJKyqgsClH9Tn/w4s9ApyFmzUBD28zEIeUsMtIztKIVv6I+6XrMtdrCCNGGuBnWt+dMpKES48KfTaSc5G1lNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=o2JuDYDM; arc=none smtp.client-ip=209.85.128.48
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-490b9318997so6427325e9.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 08:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780586339; x=1781191139; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v5Yo1OVsaBzd6nBAtTG4s9KPM7zpBpOTGHL8RzytDbE=;
        b=o2JuDYDMnnaKL72OufOMaJTrWIxe8MvV4t7cgEQWQ0sKAoOm3mGDKWFc0X4mc/uBbm
         feD0ngnBXt7RUBGIvaP7dVcLILHn5waHybtPpBSSERJsBDZvFRrL/VXuml5DYPjVMTpe
         rITvAW8Zi+c91u48xon3sO/w1L9+fYfqjYpMi/hc6e1329JV9RqW0dlnSxwEiPdjo6Ju
         LAcSm5cMteooyViGW0jjeG5+fuc/joiSuWhRflTg+D5sgPpIRT/wjgBhnHUcTe07svVp
         KHgrlUPQJYlP6PXy3oDdb5PEXex3qNBF5goUM8PNIZU+gKVhOO54ef1hoA0xQ3NI8sGn
         ewaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780586339; x=1781191139;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v5Yo1OVsaBzd6nBAtTG4s9KPM7zpBpOTGHL8RzytDbE=;
        b=lDgnR3s9wocLgxdNeiQ7hOfWMmOEAt3NLS1M8PvMl3TneFsyTMmoyMK0HBH+pajOpj
         w7e7N5O6TKm7J9PsPCEk8YN0LyZaZND1JMWBRvTQ5J9huqz0lPoBhHzjhzfE3tKECanS
         99ysjYNsOVt+wkUJF6Wko5lXYvwKByjDOr1W0uSvDbWsxPMKaDTT7F+2+qMAH/5JpmR7
         24rCpfjJxpjMak1b0vyLaaMSfhjBUO6IvMCKVc7jO8G1mxYnQ+t/hKQnHBfvNLxf3NcU
         gG0w5mRpJ5NL5Hqnc5bvxsCcvQjhgjBITXI4yz5V1VERe0uvfCNX0Vjih5YFrSWJqOic
         10CA==
X-Forwarded-Encrypted: i=1; AFNElJ/5LJb449hATO0yAqrH9gtCChWDXPB6ZUWAlFBbKYJwUq/X1SKUyDKA0axOSYUqGFZ7ZxkYYHyFbHcI@vger.kernel.org
X-Gm-Message-State: AOJu0YwCxLnCuW54xHAbFD7AdU2UqKyKTHbk9IpFl8TbmTJZR7LrmwWU
	leY8hcvFESDRhQ6pj/NPOGrg1cpQPuaXwtDt7tHtta0QgxZuiV8JcvZA
X-Gm-Gg: Acq92OE7qD8yO7oYVpJ98RHtALvuywC6cIhA4MKJjEtDHZ/HPwh5g9/viDJfQJenmZy
	RHs0tvF67yWla605zy0XpN8GXVGzDwHTV6jahZsDRgg555GFk2hq40a5iJKtf0Ib/5s/PShAW1U
	e131y5cIO1u1uVyobIvNHjrgR4wGFloNNS4iwDRF0GcYIniy/n3z8Jd4eiR0AD9sz/OPgMIsJET
	OFZki60puDDwmFsThMkmF71pYZMyRAzQXH+8JeMkc5RNSTRJYAJMK1mSmCLQ5QGseV5RPr6i8wk
	NMjx50RlXJ3+5uMwsoALnWWHo0592RxjK0idgEZ/YQU5qGTbwUGEyMs14g8dJZPcgnvZmtu+3Ch
	cmvDfEJR7hU7eO2uivqdZnDL7QKAQpH4ijVH7dI/8bkempxsnSvXykFjYTvTVIgv+C6SbFRT1iC
	hTgecyRW9rrvkRQlbMnVHWPIrxVeMQ/PCcP6Ztu4hEqbGa4Bg3mbmmFsClctw=
X-Received: by 2002:a05:600c:470e:b0:490:601f:d775 with SMTP id 5b1f17b1804b1-490b5e83527mr132886395e9.5.1780586338813;
        Thu, 04 Jun 2026 08:18:58 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a700:7301:1615:3574:e0c0:837d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc3b5b82sm82776805e9.1.2026.06.04.08.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 08:18:58 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Brian Masney <bmasney@redhat.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 0/3] Add GFX support for RZ/G3L SoC
Date: Thu,  4 Jun 2026 16:18:48 +0100
Message-ID: <20260604151855.307772-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306941-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:mturquette@baylibre.com,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sboyd@kernel.org,m:biju.das.jz@bp.renesas.com,m:bmasney@redhat.com,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:biju.das.au@gmail.com,m:geert@glider.be,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:bijudasau@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,baylibre.com,gmail.com,kernel.org];
	FREEMAIL_CC(0.00)[bp.renesas.com,redhat.com,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A830F6418AA

From: Biju Das <biju.das.jz@bp.renesas.com>

Hi all,

This patch series aims to add GFX support for RZ/G3L SoC

This patch series depend upon[1] for clk and dtsi patches
[1] https://lore.kernel.org/all/20260603065731.93243-1-biju.das.jz@bp.renesas.com/

Biju Das (3):
  clk: renesas: r9a08g046: Add clock and reset entries for GE3D
  arm64: dts: renesas: r9a08g046: Add Mali-G31 GPU node
  arm64: dts: renesas: rzg3l-smarc-som: Enable Mali-G31

 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    | 126 ++++++++++++++++++
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     |  14 ++
 drivers/clk/renesas/r9a08g046-cpg.c           |  23 ++++
 3 files changed, 163 insertions(+)

-- 
2.43.0



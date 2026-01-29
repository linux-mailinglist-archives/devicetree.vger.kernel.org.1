Return-Path: <devicetree+bounces-260847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLYdFhdAe2mNCwIAu9opvQ
	(envelope-from <devicetree+bounces-260847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:10:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED273AF722
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:10:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50234306A74E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7556E3859DB;
	Thu, 29 Jan 2026 11:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DhrFlayv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA16F3859CA
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769684665; cv=none; b=CIO4rivmUqtw+PUu3NHzwGfYHjMENgEH+FSTlVyTuwnG2LhceFsguz26ljh2AL1ZM7xd3/X4wH/1cuUz39RZGwhyCgFH1rd8cRnHl1FLl78UHN0pNxoVbDbmh1fxyA6M3eCUgbdQ4RETADqM7miKcQ+gTM4zPShSbfZrwIue4QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769684665; c=relaxed/simple;
	bh=I38MUjkcoH9V79CpUKSDz1OC341UmQxGErHv0ex1jmw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=mLnj+RyM0B4cNOK1LxHQE/oRcnM0vxyKPKVzS2yQZDOIWl4wqeQDXczshY8HVUgceyM7nlfj4yk9U3Os79ui7LQBm+S/AkL6XTUOGX3lWUiv29YQMVBoNp2fO9/zyBT1ppKB4WeZ09akcp03Pt/x3nEFWPAbQ2E3Kje2HLXXho4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DhrFlayv; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b883c8dfb00so193036566b.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 03:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769684662; x=1770289462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CkBngwJnmvxY2ZcqFRWqtKhnXiiLbRs1c6I12xgJLLE=;
        b=DhrFlayvEO+plEekAjiPwd0W2Q/Z+sEPWc126rNP2MOeEBLvqB00p5WTjKJWh45t11
         fyz5UHiW8olPAtv2lJZ9UF8aaFGu3KO79vDzvQJhKp2aH45V9TlxzJGdKTcUACHI9ce6
         G9xwFP5qromToT6OTKDDbi0R2gbQmW6uUCfOIlQWj93hN2FGXtTQUgY5ZiFTwWOiqV4K
         r6AdrWXMBk4AX9kgnhi83xpansvGofC1oTpLzUsHvDYFEG7rqTPiUaS0AqSVngfx8I9e
         jAKVQBzDxXs+5A280lehrdbpJTkzHC7+1NWTmvQtBvaXKaFfnCTugoU85t3RCafVjudi
         fsKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769684662; x=1770289462;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkBngwJnmvxY2ZcqFRWqtKhnXiiLbRs1c6I12xgJLLE=;
        b=dUdsSXrQYOxmdxWnSJi5jz0i5HhkeRxFiXhfX5IV2nBj8akIpNBXH4YgZldafykWDN
         Wm8OL/vzVVJquDdcjwdwK749wyz/LDsJdQARh/hMPo61sIkXn6RU3gTO7d/654sK6iHv
         Ut8l1tNMyQssS1hYnMUcWqFgjfdLvFjTidSFX0R/kmZTjNcLfAGf/9c/BZy7OaTvx/hS
         RRHfyxYrXIWrsAXHH3BcaTrIfjBA4mY1CHHhbM5AjOnyIODgX//WRzJGRu5Hq4C/aTwn
         Rh+Gra6B9gkcIbkWb8WvPs3S94ln/WaA4QDXvlygsTA1+48sXVVbh04fp4SFVMeuFmUk
         ZwnA==
X-Forwarded-Encrypted: i=1; AJvYcCUnzgcTu2w5s8KvCeyrD3NO0l859xKGCN3PYBZ3Musv6x9OQnrA2XhKPvoE5kEZ/bSXr0lwmqOlL7eg@vger.kernel.org
X-Gm-Message-State: AOJu0YxzVes9APvBUK5LZrWMIvXnJwpmUhco7V3QLShgZHAqnRDTTII9
	IYR4QVkVh5qVvQPpS4GgFnVcIjca+lRZz6b0aSzvoqCvUh8GvRX0theOndzSqg==
X-Gm-Gg: AZuq6aJJU+JA+QK7o/QxLuJNficy/jg1gRN/HyP1hEGzbH8iBx2c2EIkHWgMRPau+bW
	aCyGn1i3eupLrG+YNtr2b+iLybyvvzWU+ItAu2ey+ssl18m9nBqdvFSXMrHdkMBLUraQCvNBEuv
	zxsxQKn81twRxB+kbKF07g7kQNQUsaGRYEUf1Vw96uCOH9oJZ0DaFJYHHv8SBLLm3RqZ28rttd5
	1tn69BhFuw/7gULtiWPRx+cN+aYFMhFvn+BG6mWKkAWhvTa17WG+QfAeY4UGB07IsEJCWUwkHOz
	FUOrv49fiiR1oNK+lvWbI3yZ4jxvLKZYLEZ2wNZ8qVW0BcDFjzVy2cE7ith6fFHlNguAS7cBIAB
	p3FNgEJFF9iQdzAI7uCB0QdQXDUYjhF6bngbH1OTDYzndXhDDxrTPYx0O0rQDHGVJhcUrI2pshM
	kOoMmFghlncl3juz8M/2BhI2RBgRo=
X-Received: by 2002:a05:600c:468f:b0:477:a9e:859a with SMTP id 5b1f17b1804b1-48069c6948fmr113671415e9.22.1769678710765;
        Thu, 29 Jan 2026 01:25:10 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:5792:2065:403:a80b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806ce56068sm109580735e9.13.2026.01.29.01.25.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 01:25:10 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 0/9] Add Renesas RZ/G3L PINCONTROL support
Date: Thu, 29 Jan 2026 09:24:57 +0000
Message-ID: <20260129092504.95418-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260847-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[glider.be,kernel.org,baylibre.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ED273AF722
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Hi All,

This patch series aims to add basic pincontrol support for RZ/G3L SoC. The
RZ/G3L pinctrl has OTHER_POC register compared to other SoCs for setting
IO domain volage for AWO, ISO and WDT.

Document the reset-names as all SOCs has multiple resets.

Document the bindings for RZ/G3L SOC and add pinctrl definitions in
driver.

Add pincontrol device node and add pincontrol support for SCIF0 and GBETH
nodes.

Note:
Some IPs needs to set the register IPCONT_SEL_CLONECH in SYSC to control
the clone channel of the IP. Plan to add clone channel control support
later. The IP's involing clone channel needs to do the setup as per the
below flow

(1) Set SYS_IPCONT_SEL_CLONECH register as necessary
(2) Set the PWPR register to allow writing to the PFC_m register.
    After setting the PWPR.B0WI bit to “0” (initial value = 1), 
    set the PWPR.PFCWE bit to “1” (initial value = 0).
    Select the required function from Functions 0-15.
    (Hereafter, Function1 setting example)
(3) Set PFC_m = 0001b and switch to Function1.
(4) Set the PMC_m register to “1” (initial value = 0).
(5) Set the PFC_m register to write-protected. After setting
    the PWPR.PFCWE bit to “0”, set the PWPR.B0WI bit to “1”.

The clock and dtsi/dts patches depend upon [1]
[1] https://lore.kernel.org/all/20260128125850.425264-1-biju.das.jz@bp.renesas.com/

Biju Das (9):
  dt-bindings: pinctrl: renesas: Document reset-names
  dt-bindings: pinctrl: renesas: Document RZ/G3L SoC
  clk: renesas: r9a08g046: Add GPIO clocks/resets
  pinctrl: renesas: rzg2l: Add support for selecting power source for
    {WDT,AWO,ISO}
  pinctrl: renesas: rzg2l: Add OEN support for RZ/G3L
  pinctrl: renesas: rzg2l: Add support for RZ/G3L SoC
  arm64: dts: renesas: r9a08g046: Add pincontrol node
  arm64: dts: renesas: r9a08g046l48-smarc: Add SCIF0 pincontrol
  arm64: dts: renesas: rzg3l-smarc-som: Enable eth1 (GBETH1) interface

 .../pinctrl/renesas,rzg2l-pinctrl.yaml        |  16 +
 arch/arm64/boot/dts/renesas/r9a07g043.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    |  10 +
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   |  13 +
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi    |   1 +
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     |  92 ++++++
 drivers/clk/renesas/r9a08g046-cpg.c           |   6 +
 drivers/pinctrl/renesas/pinctrl-rzg2l.c       | 285 +++++++++++++++++-
 .../pinctrl/renesas,r9a08g046-pinctrl.h       |  39 +++
 14 files changed, 465 insertions(+), 3 deletions(-)
 create mode 100644 include/dt-bindings/pinctrl/renesas,r9a08g046-pinctrl.h

-- 
2.43.0



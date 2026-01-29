Return-Path: <devicetree+bounces-260862-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cB1BDLNMe2n9DgIAu9opvQ
	(envelope-from <devicetree+bounces-260862-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:04:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7586BAFDBB
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:04:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE32D301690C
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54C234FF78;
	Thu, 29 Jan 2026 12:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gDycEDVB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C77F2EE607
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 12:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769688239; cv=none; b=mHGe79znD6MVqYb72s2FtQMedH5+jb4LnuozAajiVNHVtN9T+ebJ5aHKKztLo4+YeWsync+903kfNHZ+B5bz/j6Nf9HiLnMH+a8CzcXwtBTis5CtGwxVXqdjnY9RwPvV4L07ymiooz4DLg2LifE+c4DIIaHhaV1mH1CH1iPCAms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769688239; c=relaxed/simple;
	bh=I38MUjkcoH9V79CpUKSDz1OC341UmQxGErHv0ex1jmw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LcxWAo6CMyEOdfJajnwPaRjTZiihxTpVqbhN95A8UjssASr++bJNo9caFK2PICuReotPCdWEcv3ZMMvM5U3jplMNIYoZkK7zexunLVYmL8dyxY+1pckU8dfQUHdOgrUb0mWa6WY56DAoLWZCWO+3jCPELO2lTP8NBnKcuNwOjVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gDycEDVB; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b8876d1a39bso130144166b.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 04:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769688236; x=1770293036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkBngwJnmvxY2ZcqFRWqtKhnXiiLbRs1c6I12xgJLLE=;
        b=gDycEDVB4B6baXI+S1e2w77YChm2zCRnIdpx7B0N4ChLrSgklEJmi24b6GjBYEreBX
         RvT4X37QqsYvHejCXHaUT07RA8mY7iCXck+vg1r1NUSWERpYtJk4WlYJkL5KonAlNm8c
         fh8oUaLYPPgusz2qr+ruKZEnrb2M+paxE02jVXTz5+9AehGWjlnzj7L1CciyJf44ME4A
         PsM75mTqaJzu+RLhGe1mETlFZa6C1YwjieFYsSSXuyku3gO1rc2dwfMh361/OPF8wEjI
         x+KsmHdGX1NtooHhJgEr1bd4jJ51y+BQiKjvBmV7iugPp3KIGHCoX1K+QtHwF/8SEHir
         Hiqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769688236; x=1770293036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CkBngwJnmvxY2ZcqFRWqtKhnXiiLbRs1c6I12xgJLLE=;
        b=FAtNL7Vdna97NhbK2qsPOLjkUbm69oI5sXeTNRKqm/lb0jdInEyQKxQ5wlXiYLh7vc
         jKb5DfZvh3l9SCecDP0ybOFulaxk49m7pHqEeD0ym3rnsC/R696XKHlbYZfaa9iH54nx
         nxHnu+H2ze6MvKdrw72iW4UYOqj4brWxUaFn8BR/Vy/ELDSGelJny4FKm7BPk8FEnw5G
         G9P7D0bdHY6oiP3d1ElPozP/RT8lGxG4RkHaQTMJdCazwi7gwccBrSoyW91/fcK25JMv
         TugLv5EeRuuW/DhdxiUF0FNmg6zZqPzgjc2roHENLMZJF3TuoRmeynj2zbs7bgQE6hIg
         N/vQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnj5XGvDZ3U+97cbCDmpJaM31BEqPltjCZ20BONI/sAzZHMpBJoeaTExIZuH1OIqyYlWZO4NBjphvJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxjfDNWMngQ8K5cJhXkZblki6RJYzXqwGtIJoJ5YzIolrSJos2l
	YsZpswYlYTlrm3wcTAiebWJIuFaBIRVZdcyv1liDsP27WzeY4pgMPcz/wxdJJw==
X-Gm-Gg: AZuq6aLDPTIuvpJ+QEIHFBrgdAZipX84OKjnECzYE6EdpGkqoWcWr+RMr+VRyg8NxkT
	fddVUi/J2tpbEuOfpIm/O5D24IzhpW6bq5+3DSvS6BjFvIrTA2e4EHyLjrN9BuidwEhkcaPoC1b
	bjieGU5uCegChQ+Xd1ZO55JvTfKY0ZnXVukxIEAL5ywCUbNPB+SyseAWwtOgRFBU4RWEzmL5hWf
	XUcEJNnrkZjRqkLbMnzkHnv6Ey7IbouPipsCaw0YvIu8+3sxOKQ1kZveJ8uY9QtD4/1TP3AXX/O
	AdUaDR6RjD24LapYktXcB9uV+RAHBkynPIb3dnDVMsHiJy0d0XPUr7RtmCTrneTX83o+tzr5wUV
	F0kcGYfGnvmHAOo5m/iEtxAd6iwZTG3UXahvq+vplb6qu2YnwuyPDNSmlzu25bwWOoJFG/rUuWo
	kw1lLqbSOmPgouL3oZ
X-Received: by 2002:a05:600c:524c:b0:477:b0b9:312a with SMTP id 5b1f17b1804b1-48069c2c45amr116529645e9.7.1769680895603;
        Thu, 29 Jan 2026 02:01:35 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:5792:2065:403:a80b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806ce56068sm111543005e9.13.2026.01.29.02.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 02:01:35 -0800 (PST)
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
Date: Thu, 29 Jan 2026 10:01:31 +0000
Message-ID: <20260129100133.95711-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129091108.95277-1-biju.das.jz@bp.renesas.com>
References: <20260129091108.95277-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260862-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[glider.be,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 7586BAFDBB
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



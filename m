Return-Path: <devicetree+bounces-260859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oF+NCXpHe2kdDQIAu9opvQ
	(envelope-from <devicetree+bounces-260859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:41:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78ACDAFBAF
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 303E43013695
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C85FC3859DA;
	Thu, 29 Jan 2026 11:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ns9g5/jD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C06D36604A
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769686903; cv=none; b=SBoRaPRTPN8jIv9HbsZsAUq781/lkCzRRoaSQ2yoJ8BefIwN6XOabzzm2klbDwEmCrpu8o38CinDLvQ1wwbxc6GFfkuhcapR+ki6VAVA1iuT4ed6CM4TfNFMgaQ/6GWWyyFq8XTmq9QGURT2JqFLQdZ6GDjjl42agDy2Fgu2zqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769686903; c=relaxed/simple;
	bh=I38MUjkcoH9V79CpUKSDz1OC341UmQxGErHv0ex1jmw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n1/tFGyvp7ERMJRk6Vw7V5LmWBhSnFxQKgQtYFIXzT67ypsaM1OsrUVmd+aUAdwJl6GV1nH0vSL/y4d/MaJQ8iFNVBf3/K3JRzxqVM+bHUmWGhVZPujBQBStCa4b7ynskS6MIWWtTpo58jFb9SwbrhH0cf+ciQe5oHu8D7laqMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ns9g5/jD; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-385c6c727fcso8319351fa.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 03:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769686900; x=1770291700; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkBngwJnmvxY2ZcqFRWqtKhnXiiLbRs1c6I12xgJLLE=;
        b=Ns9g5/jDqXbgMkfQCY3CRpm4tMRMxq1PUyfwetGEklG5OuXOXtJhgU9L2VVOSfmnMC
         p2bCh/ShB1462FpAJXPh1dkHn72tbaXjy+AYtZZXuJi7stMSYVL3rXFSMju4BrVrRsUh
         VxkKH4kkonucFDrOqF/qkadRYwTgxwzOvO0eC62iOkj3CsWm8RHK0BHPjeK4A+tf0wZo
         blHH7u6BIoK7Vqbx16WH9Ztvz5LIflBbzprdQx2WC5/ae+NE4f7iMgRYhyWkJPR+APAc
         EhdnTPAH5Daxg+SjDvPm6TfnIe1gwW7lnPq2IBjJATKvarDEI9m5f9oPvxqK7vaA8CUn
         mlWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769686900; x=1770291700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CkBngwJnmvxY2ZcqFRWqtKhnXiiLbRs1c6I12xgJLLE=;
        b=dUMhfnMaYlgoxuPQTppgndgxuyavU+/FUt+hLuGqz2pK6Z0nfXUrrOzC9bwUGLAHX1
         PVMFmHBrrw8qUTOTqFjwofcTAHXVW15Rjox1w3LS4jp0Ist3EsaRAH0dWc6JlV5UtGMG
         5SD0Yuf16AWq8R18c0XIu+aRh/ku3/+EXJIwO489ftIOFYSaPRGG14a6lC+4yEi7Zymj
         EzHZ1DTt2Ei26j283GaSrnyCK15y/tmiflUzNqv4rwy3J8S5LmqzYuHHVNFUYq20bJaH
         X0gzrvRpePdaUnyxX+K0BK+RK3P7kD1Wgfn8HCJX0X4V6lwX+XjLhIlTuKub9xa/nd7f
         0FvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVsP0tG1TW5rNPnktAJ8/ub+Q12gH4BnPkMucljT1MHBfZEw+ABlX/Q90GGiTutKYm4kER2gwkZ1NDm@vger.kernel.org
X-Gm-Message-State: AOJu0YxwBBjgA7Szrl9MjJTpeTAv3P9CnkMH2HQCzHZskCNXrlV3pLVo
	Xsqd8d0ArfCrs6PBm1GR9TRfaS0FQyOp0ncfCNf4b8NNNJDFyKBG3CQ+a1s9jA==
X-Gm-Gg: AZuq6aJvm+Rk539fO9p1U/4FC57KmRG+F//InDRoJkM2fwXjCfAutnPMjDf+9+WtuDb
	k3uG2iljrPbKTMIiYJmvnIc1wKLObcEhigsnnrTm6nxEY4AXNCB+5Ta+8+8ey2/V34JPBR9HwK2
	H+L07nMKELzcpLrZ9ZfniG3+oCZGlMT5wmGUSYnV60174m+LVD5O8oy0xsyJjd+RAj4yUWDUkXr
	6OpGJZ+0bYGePZWtNHlXg2s3Z+NR5vxN3WkyPOjBBMBNA7XdO+9l3TfNK3aMbo1AZegGoaEeSta
	SZjHO8TjMgLgP3/EuzfzVzrux1LtnDTJYiLed2ImBtMQi97z/l+xN8QlwOKV8LSvmxAJADRHfXI
	NKocPubOjRnrsRB444cVpk6+RylcVj84r62CbWqJZA7Dhp6LMjV7foguczRdduE7CT2klMNetjv
	ZuDcum9+QI/24mlOAc
X-Received: by 2002:a05:6000:428a:b0:435:91b6:f53 with SMTP id ffacd0b85a97d-435dd02450fmr10964058f8f.8.1769680573611;
        Thu, 29 Jan 2026 01:56:13 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:5792:2065:403:a80b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132303fsm13285141f8f.36.2026.01.29.01.56.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 01:56:13 -0800 (PST)
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
Date: Thu, 29 Jan 2026 09:56:09 +0000
Message-ID: <20260129095611.95622-1-biju.das.jz@bp.renesas.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260859-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 78ACDAFBAF
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



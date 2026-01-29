Return-Path: <devicetree+bounces-260838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKvtCrw9e2mNCgIAu9opvQ
	(envelope-from <devicetree+bounces-260838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:00:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 92096AF4CF
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:00:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 887753009F37
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8F53859C5;
	Thu, 29 Jan 2026 11:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fConDqpg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873BD255E43
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769684409; cv=none; b=ipLLFxKdY0+0kL8wQLabl1+t61GdNUdZ9coUcKrFCyT50Enw5b1COMwwXG7ipKUUgP6/4p/O34UyVTIoHUYKq7yX+gGQ0VgumzPRDSxn84w4n7NgfU9D3yDUEI4W+/S1w9Y02o5X49K5acvpmmLi3sYgHnkQ7ERDp3u9UR+Smaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769684409; c=relaxed/simple;
	bh=I38MUjkcoH9V79CpUKSDz1OC341UmQxGErHv0ex1jmw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Ikd26gpwvJPzIfgU+fHlAimIxUyy5k1jJ5mhPn2XhxRkY5GVYCvyOaFsR6DY+d0NRIY5ZAS3UBfSkhCuoN3NtpGuxaUJ91TK5pCVv07ls8yJbYEmrsoMdoVLJrKJKyzA8I5A3i13HC+yViO36trZPFySNuz3VB4MehU1JZOW49g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fConDqpg; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b883c8dfb00so191993166b.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 03:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769684407; x=1770289207; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CkBngwJnmvxY2ZcqFRWqtKhnXiiLbRs1c6I12xgJLLE=;
        b=fConDqpgri77wi4CzaZVhbWtLxSFrNwDr0r1d+3xs5XBuZjYJ5DmbfL0M1wqxuFrmW
         y/Ra1PyEwUHG2GMJpTqYyWF9zBkCCctYF7TfDbiAGMIBaAoP3F6630w9RYqHrgqc3gsT
         hfIT3LSAZQHxfFbENRh7feVQSaLnmvkADFhV7Xo0fg+geN+jdT7GF75Q1kUqOnLqXXMo
         suUpFYcjazqVQCej4Q+gjWGZdanipmhfgkfa7dS9uCO9TOfnBEvym44nJwruiovZpV0+
         j+A0lHCVKePDooEaSIfGiowwsx7Knm+Ecib0+yIoiLf3jMWguvmREnem03KJn95vZb7a
         r/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769684407; x=1770289207;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkBngwJnmvxY2ZcqFRWqtKhnXiiLbRs1c6I12xgJLLE=;
        b=QNYS2NbeyumcJ7d/TGzxQ5VeZuU8zcAHeV8neAEALgw+svUFUx/JasGnuj2Etxxwr4
         ZFxtKt2a9EiAXSYvXIwD2xrz8Z6rQ+ZY84Z85ozXmJpgitGj3cu0ie7bdCFhj80garS3
         e1sR0kEA+lcJ51MAyNCSxfed8RZQOCUoW2Yq84JDPCvYskJ6uGwB7FgVMy7Vi9wGi7yc
         ZyoWQcRAHcOA9CbYoN/Shp+6llxLeSwGaMGfv3q5pp4Ij8eLN0rj0HKTnfcJKAWr4/9G
         BU7iMUpUPRv07RGi58K0GI0H2Roy5FMluuQH84FkCqoe4becDzVU/AVSSzGEz8zex6X6
         PRbg==
X-Forwarded-Encrypted: i=1; AJvYcCXDSUkJtWPLWP0ypujAcjvvPPf0SwDlDP/gXAh+RERzu5Y2OZpFJvm5GEy8uWKp6iPVOcdor0y9UeUz@vger.kernel.org
X-Gm-Message-State: AOJu0YyulLm9cktfhRa9FQhx9NEJR+jhFTQxwAEAR/q8eR9CjXSX3GLV
	5QxPydEQmfzt51BcQVAAYIyIdFVpmQOvK+TZ8JAQUomHMca9snkyZJMZQXoSbA==
X-Gm-Gg: AZuq6aJjzx4HNIdUA6nC56Almsfgbw2QTiE9FxM95Fq7C4Jkb+5IXQXFeL6iEeI+aaC
	NlxtacM10YpArrreyI4i3qvnl9/a3/EBLN9UdqrIcNxV6zUN8m8WyhFQ2bGMAW/pgud575NUFPT
	CbNGfddGlxOqrP7efwemCmHC/4FWQ4gX9Hjgx95gVPwH8VuUjdrI3//bu/tNUyzxFWZUx8vv8QZ
	WlyBOvLrlH+7bEnDauRbOhPdYRoz2exVXKMgKCstM4jssnJ7a2HUaOpQdxcRqhLKJkQ7myA+us+
	S26Q2R4sYUEs93hImMdlx3sQnj5n7Em9uujvOkWuOuqxNxwq59elWoMDlEd1oXMyDUuqIbmMF3C
	pvfTXO3JUu6Swh6vXcw2cOaewrFGDin+ISloLdBvl3UzTt/Zhs71+CuyuYPoLnanKc2NiJrdCRG
	cyqHjoNje/nyPOTyUt
X-Received: by 2002:a05:600c:8b61:b0:477:9a28:b0a4 with SMTP id 5b1f17b1804b1-48069babf02mr104749815e9.0.1769678490897;
        Thu, 29 Jan 2026 01:21:30 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:5792:2065:403:a80b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131cf16sm13999753f8f.22.2026.01.29.01.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 01:21:30 -0800 (PST)
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
Date: Thu, 29 Jan 2026 09:21:24 +0000
Message-ID: <20260129092127.95378-1-biju.das.jz@bp.renesas.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260838-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 92096AF4CF
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



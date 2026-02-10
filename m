Return-Path: <devicetree+bounces-264521-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8InGIxCIi2lWVgAAu9opvQ
	(envelope-from <devicetree+bounces-264521-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:33:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D535F11EA69
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:33:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A4D4302494C
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 19:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF782EE268;
	Tue, 10 Feb 2026 19:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wk09pqbM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E2628F50F
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 19:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770752013; cv=none; b=TpcBDLo7v5TCFJjvCt9eRxXgT+sc/EszI5Lph+RdaocRSmTDjvf9FX0rWd1KaiejP1GzSfmzWpxV8fY0qjmWmoD7Zn6/qiqQwlrAZVHZnNGurUADK/eHBV4bdXH3NyCxXmfTkYxD8XPRyhDLSuNVRf4eKH0d9WxABVRQCrjaBCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770752013; c=relaxed/simple;
	bh=IykiMd2uZZOX44SXwVXRT6KB2qguUas2yNtgMqjletA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Y1M6kDv2srJOm73TyK+x7Y8yUqkeor2NdMq/twF12G1fL/cNiyPGpoZJvW+lZLNLVL6aZ84BHOoGdaYGXSLX4VjWNuhzyG8pn65iy09EHCwSkMJboSMS1GVs2RQaVHAwYFw8kwb0ipEQ5RMzWyIAuHOrFLaVH7PBWMnu07MkdMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wk09pqbM; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-4359249bbacso115550f8f.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 11:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770752010; x=1771356810; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=erTmcC4BRsN72TnU7ILsQhSKr9ooULobI3aSeUy7isI=;
        b=Wk09pqbMcfRZCpdChrelCQQEQjYQWbEmzuX/zD58jsbgYP8mImXezw+ulU32e2dyei
         xyB6MCaN5A0Rn+8OLpLzzsITtRrTdC4oc89SeJig58WZkcldXpf8ff0XbBadVn6cIlGD
         CgvzY84hLiADNuMManHQTZK9iTK7H/6dTBV2zZylsD1BRHusRJIxysSpV3yGydmjy2A0
         AurjJvR8uIUSyxT73S6WWzgvyIIFPyuPZFkHwnf8fQ48klgEWsASqqTVc37sV8Cy/EqF
         l1e6UoLlXxXRj/7ky5CUBzToRZIjx17nhiMkjgrn3+o6zau9Z15fl1nl1z7kP73g7dbi
         xb7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770752010; x=1771356810;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=erTmcC4BRsN72TnU7ILsQhSKr9ooULobI3aSeUy7isI=;
        b=TCtpN8JmmYk9ntZe4FsCGR7qjFX+W4LKaW8qohnvfMn2DEZ87yXLNOJgZck5fFgb5K
         FrISrB0lZcGfcIt5cAstBbr3ELSCycHf8YtnFY15scPHAUY8DGEYhld4psaX0fZNZH40
         srUdjAFCb3U4dXjXZeH4Ny8XwJ9XRm/b1XWRj8S/R2WAACwyvBCGYyzZbrd4aU2O1QEa
         RPg79Nr8Pg4m5P4gmLFyDDYqfoLHvpH1hnDWVtgFoir6n0IJYUu3B0LRDM21GzzGyccy
         Y8BS3XeWE13N6nRLcPs1Etejy45gtRGYwXu1AgjqiNhbsxe7094R1iUoNaUSR/9hF+Wk
         3i7A==
X-Forwarded-Encrypted: i=1; AJvYcCVLN2wTNubiMKbLTK4AiiGZHaLNLTBCdJSm2RxmDDdabb4Y4AiQ9fXcw5mAcAGQBT8ujPIFjti+/jrj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1Z6Ovg7jWNL7d6sBoB93+XFCKsgObXojtS7IqaH1CJs9W6J4T
	+7Ulnil/N/OY+Gy0U9ZChlOyNPAkibSUHt2ez5UakxiRACrr3UtwZBpv
X-Gm-Gg: AZuq6aKeMwMij2OjG5lTSCJVxLluXrpHMX0KHU3HKSvVfauWpK5xbAOMEpCNgWGCIba
	MG+H3mKqzIGIqLl2bxbZuiTCLJwIGsTQtlqjc/PyM6MZuBwt/xX9DxUuJX6UI/KIRFUljbpmJsU
	1Eo+Yyah0eUgsDzIE8ro3HgKQn/5swoPncnsf6m1tB2IE4Af/TKacaGGWFh1TPyudNw003HmIzC
	l+vNLFMEmg3J8rNq9dxFrCy9ZsR5CvVPaeMGYXqaKXbGChKK36UyE6cOcooYddtms6cSM4fkGkn
	mQUYFxtHFyGBuXH7323uJBWjrXJwAR24yI+EGO84YLPm7lWQUwnyC6IcED9MI5n1BCr+JOZQBIv
	5S06F0pQ/5hxEFujU+c7A1e9y8DJ061pTcXAuAzcTM/c7qBZ8Me5ZfvLlNLnvJgZbczMhZgV9P3
	GFKDB99I3DbORIVjRm9iCUjFlsQFEODbc6aUDYTcXtDb7DEWag
X-Received: by 2002:a05:6000:1847:b0:435:8dd5:ad4f with SMTP id ffacd0b85a97d-43779e433b6mr5594134f8f.9.1770752010474;
        Tue, 10 Feb 2026 11:33:30 -0800 (PST)
Received: from localhost (39.31.66.37.rev.sfr.net. [37.66.31.39])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4362972fc26sm34029966f8f.22.2026.02.10.11.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 11:33:30 -0800 (PST)
From: =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
Subject: [PATCH v9 0/3] Register the STM32MP25 RCC driver as an access
 controller.
Date: Tue, 10 Feb 2026 20:32:51 +0100
Message-Id: <20260210-b4-rcc-upstream-v9-0-17ca1db7613f@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/2WPQW7DIBBFr2KxLhVgwGOveo+qiwGGBCmOU3DcV
 pHvXmovainLP9J7evNghXKiwobmwTItqaTpWkf/0jB/xuuJeAp1MyWUEb203Gmevef3W5kz4cg
 BgbDFaFEEVqlbppi+N+P7x74zfd6reN6PzGEh7qdxTPPQCBM7gh5d37XSWBMAraLWmSDJK2E1G
 CInHDsGDc0xJ6ZMX3i5/DeFSGAAUMkIwwLsr+Ocyjzln+3RpdtCdolSTz8tHRdcheg1CQlRi7f
 TiOnyWqM3V1UeeP3MQ+Vdq4K2sZPYwpFf1/UXYDjcDnYBAAA=
X-Change-ID: 20250916-b4-rcc-upstream-8a8ea3af6a0d
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>, 
 =?utf-8?q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
X-Mailer: b4 0.15-dev-47773
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264521-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,gmail.com,foss.st.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[legofficclement@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,gmail.com,foss.st.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D535F11EA69
X-Rspamd-Action: no action

The STM32MP25 RCC peripheral as an access controller is allowed to know
whether the clocks are secured or not.
The STM32MP25 RCC peripheral knows about the clock secure configuration
of all non RIF-aware peripheral.
In parallel all the RIF-aware peripheral configuration information
are known by the RIFSC peripheral which is already an access
controller.

Changes in v9:
- Rebase on v6.19.0
- Add Gabriel Fernandez's Reviewed-by
- Link to v8: https://lore.kernel.org/r/20250924-b4-rcc-upstream-v8-0-b32d46f71a38@gmail.com

Changes in v8:
- Use uppercase for peripheral name in commit message
- Add the '#access-controller-cells' property to the RCC in
  stm32mp231.dtsi
- Link to v7: https://lore.kernel.org/r/20250922-b4-rcc-upstream-v7-0-2dfc4e018f40@gmail.com

The v7 is a subset of the v6 and other prior versions, split to simplify
the review and merging process.

Changes in v7:
- None
- Link to v6: https://lore.kernel.org/all/20250909-b4-ddrperfm-upstream-v6-2-ce082cc801b5@gmail.com/

Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
---
Clément Le Goffic (3):
      dt-bindings: stm32: stm32mp25: add `#access-controller-cells` property
      clk: stm32mp25: add firewall grant_access ops
      arm64: dts: st: set RCC as an access-controller

 .../bindings/clock/st,stm32mp25-rcc.yaml           |  7 ++++
 arch/arm64/boot/dts/st/stm32mp231.dtsi             |  1 +
 arch/arm64/boot/dts/st/stm32mp251.dtsi             |  1 +
 drivers/clk/stm32/clk-stm32mp25.c                  | 40 +++++++++++++++++++++-
 4 files changed, 48 insertions(+), 1 deletion(-)
---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20250916-b4-rcc-upstream-8a8ea3af6a0d
prerequisite-change-id: 20250916-b4-firewall-upstream-dfe8588a21f8:v8
prerequisite-patch-id: e4a708d9c6df5725c9598fbd2169636e4e7dc46b

Best regards,
--  
Clément Le Goffic <legoffic.clement@gmail.com>



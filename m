Return-Path: <devicetree+bounces-243416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B16C9781F
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B2CD3343FF9
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF023313524;
	Mon,  1 Dec 2025 13:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lO+COmcK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D43311955
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764594502; cv=none; b=Vx4qNyPs0DVjB41j+vfER5wC92EWi86hXLn5DiHdhJQaCXGzB2BTSPrtbYhJWofL5K51ve3Kf5527Bh/fi5LyZEJSEacCEGkWBhYStvyiRhp5nTDJcGHFXiDJ+KkeKiQDal2ZanslnS5mHmEd9zy8gOmcxoL4fgivSidUddmQsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764594502; c=relaxed/simple;
	bh=1jljBYnLYrj5OzlfckI0vPQHKYIf0MNNW7lVPMiJMvU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=UTeJCTH98jAxc6aYmU5OjijYfWm3iHzI0OktiA11++AanaKfJNVY4E6v4IzgPl0PygY98b0E5gglLacBHK3sBwn6AyPpq/IPRa0ZS2IEaQJXyM9AztHUrN4Q1tKRM8BsO1tc7OC0K5Fw93apUzVPnD5G0x+6VPTlVGkXU91zYKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lO+COmcK; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b7373fba6d1so655138466b.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764594499; x=1765199299; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jmWOE8tsVdZV+/3MWOEyJyy+ZPffvlIHcvjJiju9iok=;
        b=lO+COmcKvnJhcrxFanTFpDbzru4ALcUnWfCnrg+XyGCRdvOv9jfwwZsQJx7i3CoU7G
         jfoT3GA8lSYP8e7R6+odB1SOzBywspxQDRGiVAErl0h4TMpBt6FH2mmiSndG75dWm+JY
         7N5YSso6MhvnEOVtIx93jnLjsWQ5LRQQ4RrYw+Lin2mWYg3QEp20sjS+/rbUJl7hPihM
         dtDsN2hSFJgE0fh/+umpEdYz3DA/IZyfhP5BWI7INgooht9X9jpAQbiPz2d1VRgaR7xE
         DaFz+29UmRZkznM/QAOwEJW5SMMnBLydRsDt1FrIVuVJrGe+ajbUsoXRjBrU4EwWhyHg
         d0TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764594499; x=1765199299;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jmWOE8tsVdZV+/3MWOEyJyy+ZPffvlIHcvjJiju9iok=;
        b=FMMo4jYcf+lgx1RRg6652Zxgcz3rLijnzRu/SlNVJaa8zto0cRZz9bBzX+qt5xdbs1
         HEPT1lHKnXEiTEWloBsH/szIXVGCJqCcIfqforsF7dDgN2E9B8vw1leTLKWhSHyInqWx
         u53TAVcy029zZKfC9wPXabB2jZtEHIRuzuaqYmRJ5UrwjY+Ht0EXOdehGC03wUEveaI/
         MRm5azFrU2JwauoytKfzPEsRE/PJppKVIih9qedmZHE6k6wIKmXp7ryqasaPDhcyY6nr
         5ADJk0pd6/P51vu8x1+pL29ZU2UVqaeNNlqbWJKQ+kB3WSfTme7DUbsozBJ4klwWi7lQ
         rnJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjCEASrV8xg51DexFzZCwwRuKzLV26Hfu90OSsuIKV1TabWxjpDlL7e+0zHwYz1xZRHu2g8wt6WmcS@vger.kernel.org
X-Gm-Message-State: AOJu0YyQb+5E5b2pldAMlHysvZO3ZC84bzTICnvdOcRd9xcvnffWbCg1
	Rw2IoGQoMcso7VfhHnMULiskHr/osiqvZwIpy40otDwaCR02PGCWRLVb8pRahiIfc4c=
X-Gm-Gg: ASbGncs8DhMhy5q+xlvKxJNLHC9ewETPTxhYx6nRJ5TRU1BmlaG2UThzumdIdhffzVy
	1lY/yzbMsi6POetNBDC4IbN4qpJNSxiaWHqqmo9dQTCITcio2zM11s5l+DJOY3BTb8Ib+705gE6
	nZNORJfOPvyGlpGS4WstKJy1rnruoSi2nrtQy7HtHvAXHGxSN3B2UlEdvLvKGWcIzD/i9Sz/9rj
	B/xD5s/3e45o8CurX4iw0+VPzf5HCN9bNNfzJDC+rUChKzaDqc99hGfd4A8prYxFXLisgoRTphJ
	MeOC1Z9kV+NYyKWRr/6xxyFBIuJF+kneDW19telRDWpKu6sIta/iXtI9u0fcrRlVtVUDWWjPH4V
	gBD4s9gfuwzf3OkB5gYVvL1/V7LinlHCXIMs1PzhfnV9He4anqp0nPIBuvzp8luDEX1JQnH64JU
	OiqDrUDelmA0HjU4YO
X-Google-Smtp-Source: AGHT+IG+9MCSjBtPt6W2+zBUhes3WpovLtX4vLeIrokTyK95t4Xc4QrjoCg1IRxwpvpD0DbH6J0bKQ==
X-Received: by 2002:a17:907:e8c:b0:b72:eaba:aac2 with SMTP id a640c23a62f3a-b767173c3f7mr4361122366b.26.1764594498454;
        Mon, 01 Dec 2025 05:08:18 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b76f59aecd4sm1238751566b.44.2025.12.01.05.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 05:08:17 -0800 (PST)
Date: Mon, 1 Dec 2025 16:08:14 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chester Lin <chester62515@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@google.com>,
	Fabio Estevam <festevam@gmail.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	imx@lists.linux.dev, Jakub Kicinski <kuba@kernel.org>,
	Jan Petrous <jan.petrous@oss.nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Matthias Brugger <mbrugger@suse.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	NXP S32 Linux Team <s32@nxp.com>, Paolo Abeni <pabeni@redhat.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, linaro-s32@linaro.org
Subject: [PATCH 0/4] s32g: Use a syscon for GPR
Message-ID: <cover.1764592300.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

*** BLURB HERE ***

Dan Carpenter (4):
  net: stmmac: s32: use the syscon interface PHY_INTF_SEL_RGMII
  dt-bindings: mfd: syscon: Document the GPR syscon for the NXP S32 SoCs
  dt-bindings: net: nxp,s32-dwmac: Use the GPR syscon
  dts: s32g: Add GPR syscon region

 .../devicetree/bindings/mfd/syscon.yaml       |  2 ++
 .../bindings/net/nxp,s32-dwmac.yaml           |  6 +++++
 arch/arm64/boot/dts/freescale/s32g2.dtsi      |  8 +++++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi      |  8 +++++++
 .../net/ethernet/stmicro/stmmac/dwmac-s32.c   | 23 +++++++++++++++----
 5 files changed, 42 insertions(+), 5 deletions(-)

-- 
2.51.0



Return-Path: <devicetree+bounces-259401-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNKgMEIyd2mrdAEAu9opvQ
	(envelope-from <devicetree+bounces-259401-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:22:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AB485F20
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:22:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D408430015BA
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14C3122FDEA;
	Mon, 26 Jan 2026 09:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nA8P/tAq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963792F745B
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769419324; cv=none; b=hYAz60+9A1Y1PwhpM9+y8iZ5AtaC3pRsS2Fx5mNt/UMgCjG+or6V7Lg0s9uWawRGmpbsJwdCcxhwXUGYIACI0x/wVZzX1Oq9/RjIM8bsh9n4N6AanLHoFp/p9kPwHMsI8yDf6mOkNE8WhGW6Ax5fgNpbvb2e8mqdZRMWu++3Mwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769419324; c=relaxed/simple;
	bh=XqY+3z3lFInRtiA1QaY9W5BxS5LDXpmS9hDw92iiPFQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cMmkXOS6pEy6HatJHBaF5CqdViXJFsEnF+qNJZgMST4MU4RHxfpqMS5HlYeRt3yDQUKbJIlwIeE4iZLL2Rt2Crke8P0ReQOwa3UA9R3DcnIIQOokESueVFucwU9BXETo5gxWxyR8ktxt5Xfv/bieU13/Q+Q3x4IN8nYSqj+68ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nA8P/tAq; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47ee3a63300so48609785e9.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769419321; x=1770024121; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OI5Ny9D74Cc/ioYhww8l8XjzBGWxzHq8lI7GocImLIY=;
        b=nA8P/tAqBS8QIwVUh9KL7pudBL+LnlYlUIC3mQ1n0a/rQ5o7BExap0X1pH8GZWLNFd
         4pgJygDrfnGYHRyOXP8mBoWkvXi2L8aH/wPELsy9eBwWKUEvK4K8MTey8W19soyZC7Jy
         2U38Is2vnvebLcbj+7JgPNSgq01TXuNg7mH6s5yZ6TxD5ft7hv7cVD2gGdIA+fev/+Wl
         IFTvdXuhnPr+wTfblAe/tCqPptck07SmGLBJVgwY5gHXT4+jP7QtMa7fItz1/wau1t/F
         iNNeu9Nzplj0yhe0k8fURGydwGiVKJaVKfYU4t/HUV7lA/m8IpOpqI5p1PrK0HQNiDed
         kZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769419321; x=1770024121;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OI5Ny9D74Cc/ioYhww8l8XjzBGWxzHq8lI7GocImLIY=;
        b=SZCFg0wcR4LgZL0LOPY6A6v2UdIGW4Wpeq0kFeXM7q8H+z9bISBn+Myp9+eNmeS6fU
         5YZaYW3zq/RQOgDcOznZaGtxGBxyUX7AbAtx1knkf870P5C8hs4x8JKTqsbGP8kFRqTl
         IQBnIF2/WZjkLPAojKirjZSzJa1s1M+P4G/x0C2Y/kF/k0x6TsV2ydZrLs9/cCCLti1R
         hf6kDW66RRA6+qvibU9xJFX/EUbGCZy8s+uchFBwv1tmMRl6sbGpOyC+5vaVuG3SoeMk
         Nj+ORRjCJe5yHM7pvDPh5VJiENj+kBbz7OaFLTG+a0b/c4o1XHSvddRsl+rPy+G/dC35
         PsrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsoHJ4xCXionTJ6yHhCAGtCEuaJJAA57kHFHNkx6zO7j8XYOg6Xnv1r7fUK9X6FFDsDdwqpjh9b79W@vger.kernel.org
X-Gm-Message-State: AOJu0YwmtpajFpfSIUvpYnai4alSKyTQlqAJJ38LF4TGmzIHlS7d8dlv
	+h7uXXQqhL0NDDF3s/5F7y0SRKfyilS6uGE6kLGUSWjRDE0lGN/YjADy0n5QZbZjKoc=
X-Gm-Gg: AZuq6aI1RE1BvsncEecnih6FrjFDF0ajjAo451JTOaEF3E0Q4I96VEgtBZUkKyfEbxT
	MBKcwUjjmzpFwlym7eSnT01R8AAVFpX4LgzliGoU2rs2WXZbKs1leM+dtZV2lC1VNmsp9s4yIy6
	sMXWzEBxfBtMoOmYjVwovrBrheqdJ46lA2eaZvXiH4of16U28goezWh3aQVNNvOElm1vq+pWkGj
	5diF0Xkzd8Iqmhm6T7f23BvZGDmvbtiIduHyc0QHjyB11/lzwkgyhYAKVxIC9MNPlX5jEK4Efrt
	Qe3mJ/oJt7BJfeaq+wexi9Sd+yMxP/S439uefqsJxs9ImABnRd2UnmvbpDEl0Au1ky4MZiA1K9v
	uMSj8wJppvLo2Ja9yBJBXtPCx8TUe1c2ofl2BkgbQaXK0vSnlzln7m5Rs6VrHP3V74ttbYZ7OSF
	tDrxLz+I8drd1u+nKDc1Q=
X-Received: by 2002:a05:600c:3b17:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-4805d06616fmr56869205e9.29.1769419320889;
        Mon, 26 Jan 2026 01:22:00 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:e270:a43a:f2fa:900a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cf1acsm346669855e9.14.2026.01.26.01.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 01:22:00 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com,
	s32@nxp.com,
	p.zabel@pengutronix.de,
	linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com,
	bogdan-gabriel.roman@nxp.com,
	Ionut.Vicovan@nxp.com,
	alexandru-catalin.ionita@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 0/4] Serdes: s32g: Add support for serdes subsystem
Date: Mon, 26 Jan 2026 10:21:55 +0100
Message-ID: <20260126092159.815968-1-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259401-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: E0AB485F20
X-Rspamd-Action: no action

s32g SoC family includes 2 serdes subsystems which are made of one PCIe
controller, 2 XPCS and a shared Phy. The Phy got 2 lanes that can be
configured to output PCIe lanes and/or SGMII.
    
Implement PCIe phy and XPCS support.
    
Vincent Guittot (4):
  dt-bindings: serdes: s32g: Add NXP serdes subsystem
  phy: s32g: Add serdes subsystem phy
  phy: s32g: Add serdes xpcs subsystem
  MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver

 .../bindings/phy/nxp,s32g-serdes.yaml         |  154 +++
 MAINTAINERS                                   |    9 +
 drivers/phy/freescale/Kconfig                 |   10 +
 drivers/phy/freescale/Makefile                |    1 +
 drivers/phy/freescale/phy-nxp-s32g-serdes.c   |  926 ++++++++++++++
 drivers/phy/freescale/phy-nxp-s32g-xpcs.c     | 1082 +++++++++++++++++
 drivers/phy/freescale/phy-nxp-s32g-xpcs.h     |   47 +
 include/linux/pcs/pcs-nxp-xpcs.h              |   13 +
 8 files changed, 2242 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
 create mode 100644 drivers/phy/freescale/phy-nxp-s32g-serdes.c
 create mode 100644 drivers/phy/freescale/phy-nxp-s32g-xpcs.c
 create mode 100644 drivers/phy/freescale/phy-nxp-s32g-xpcs.h
 create mode 100644 include/linux/pcs/pcs-nxp-xpcs.h

-- 
2.43.0



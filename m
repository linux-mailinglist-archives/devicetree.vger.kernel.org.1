Return-Path: <devicetree+bounces-262324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNPqFfshgmmQPgMAu9opvQ
	(envelope-from <devicetree+bounces-262324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:27:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF27DBF11
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 17:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2E563153BB3
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 16:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FF573D1CD0;
	Tue,  3 Feb 2026 16:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kCgA07oR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EDA22B594
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 16:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770135562; cv=none; b=BySLxT6fULyUfuhro1bevyGAufL6bx8ncDA4rzCQJtnkBt37mXS4NEDHfFimZJklE0a15Isejw+iZdxoaVPw/aL0ks1Rh7cGMHUflLjj742OrgstF43ZNBS3f413MiiuM4qTZ6PYtaX0rB6UU3Buu+EhzUzpn0cx+vcdBWy5v8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770135562; c=relaxed/simple;
	bh=IRP8FUXHNCOXetO0nh4WY/k/t263xs9goMo60b8/iLU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=olGIGNEibNOUMYl7S1NXZ9v0nSsY8cwtIik0Z4aQSeAcWSANu8Q4lqX3shCjsrgax3NEWqDqEG/7YGpyQAh26KtTp6qK5CL3e1n2pkHue6H66WxzffL9wxNkTGzUdoMWY5khi7KXzgn732HnLmUrlb+Q1m+stMN88+gzC6zqV6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kCgA07oR; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so78100025e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 08:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770135559; x=1770740359; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mjxVuWnk5B9RXCQZJmoomXjLkYn+5cEbj6Ic+qFTg0A=;
        b=kCgA07oRU9vgzob5VyeLeD6JrazvrwEc3bsT+35mQRHrFdkswZaSqdLjDGxU0DtnU3
         HFvkc1bxTGt5G++dt817W0H0yQUrN+ToZWDo32vGl9S4IW/x4EcT8Fm1AzGROgXEuc0P
         5d8xKvfBWbjY8rQtyDqIYv1Zfq8vGkep/V95voKxqQM9Li1zCC5Qs5yUobyFAqyNr8Ya
         kqntfAPrjHyzx1cPlVvD22stxXj82iRbVkz35QxanH/tGLOBo9GRoA6SOnYYxOn7ZDaW
         I1WX3zYOJ+B8lg0MCRm/5/BO/6CC+bWxusR0xZXNZiLM609I2salArecP77jnUi/XanC
         qCnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770135559; x=1770740359;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjxVuWnk5B9RXCQZJmoomXjLkYn+5cEbj6Ic+qFTg0A=;
        b=JdFxlOPjCnnZ4P6opSKMTaEhU+/nBUU8uNJCcL+KuDM/k2vKNCddsGZoaoyxry+DC4
         1l3L52HRcIAoKxzhhHxA7zy5IvPhZgjbNVkOE2RhR1aam0ik6AenMMMNB7hKBEa230vv
         1JgvlCnpQ+ywYjDfFcOEwpR4bSbCjVwSQn1ZrRivX6AqOmp/KPtUPiYrkew4OL8LYxRo
         UPZw0Mtvg0ZAzA2lusH/jZ3f70VzA+zHHTFbn9b7uEHeUG0ClEfUrGDpL0HK1iDvp061
         b9Lq1cZQfVfyGvsDokr7RHPvddzZMw9miAiLYPdObP02Q4OA2l14rY/w3Ga6QZoMpsIH
         gwpA==
X-Forwarded-Encrypted: i=1; AJvYcCVeW0uE/4umD5JcyYftspDU+fVSy0IoI+woFVsJncUM40YtLoIGB/6ntEO0aPXe3OqJxAL6cFDIHMiZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyfFT/F8cFhLUlwzCswKknP1W25j+WnmVWVMV2dRXRu7JftCIaC
	+QhhFWpRWQ3xeOKZwPxXK2KmvfPdiijomK3S/+/duRj6d8LBZDHSj+R2UWa+aBRAxDI=
X-Gm-Gg: AZuq6aKb0Nk8rwjAwbIlh/F4Q4zxySHbZh5E0ZGtRNtdUHbQ1xMMmZ3mcaDQQcmqDgk
	cwAL4wXaV8o6zFdHAPKSu6dKPFpL4GmznzhbywHS8lyjGQUe4bJni5P26ZYuL0PbNNA4B38Aha4
	LkNjujayD5WtDSAoCwFMQZvegXxYSmnBvlF5I1orHJtjR4JJiyRjz4bY5grEzAL2+o56AyXdpLS
	52PY3NKiKTaMg901T7HXgeAB71y9EsdiGX2eoNCipj1KFcg5e9unpUkUgDcEcsKBU3Qc76RtUBe
	d0OzBA1gLTxQKDjH0HWH6rV1QNYRd+YB3tSMXuAIrNGRySrZoj5rSbB+/n+upUL0ijHyBNbtuwW
	AMZj6qB3LWiRRuqZMvw3dGJdCvOIC4DfzMF3mqHk+E68Yx9Gu8A15PcA3gl0n49rInm+PjcP7ES
	dfZzLMdRb9XAip6vPR16ggK6NusNsTTQ==
X-Received: by 2002:a05:600c:a00b:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-4830e971be8mr1908985e9.29.1770135558650;
        Tue, 03 Feb 2026 08:19:18 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:81d1:b874:c1dc:42e5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dbd21f5dsm144120785e9.8.2026.02.03.08.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 08:19:17 -0800 (PST)
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
	Ionut.Vicovan@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	horms@kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 0/4 v2] Serdes: s32g: Add support for serdes subsystem
Date: Tue,  3 Feb 2026 17:19:13 +0100
Message-ID: <20260203161917.1666696-1-vincent.guittot@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262324-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: DBF27DBF11
X-Rspamd-Action: no action

s32g SoC family includes 2 serdes subsystems which are made of one PCIe
controller, 2 XPCS and a shared Phy. The Phy got 2 lanes that can be
configured to output PCIe lanes and/or SGMII.
    
Implement PCIe phy and XPCS support.
    
Change since v1:
- Fix compile_test
- Use devm_reset_control_get_exclusive()
- Fix s32g_serdes_phy_set_mode_ext()
- Manage devm_clk_bulk_get_all() returns 0
- Fix s32g_serdes_parse_lanes() error management
- Move xpcs filein drivers/net/pcs/
- Add pcs_inband_caps()
- Fix functions in phylink_pcs_ops
- Fix MAINTAINERS


Vincent Guittot (4):
  dt-bindings: serdes: s32g: Add NXP serdes subsystem
  phy: s32g: Add serdes subsystem phy
  phy: s32g: Add serdes xpcs subsystem
  MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver

 .../bindings/phy/nxp,s32g-serdes.yaml         |  154 +++
 MAINTAINERS                                   |   10 +
 drivers/net/pcs/Makefile                      |    1 +
 drivers/net/pcs/pcs-nxp-s32g-xpcs.c           | 1006 +++++++++++++++++
 drivers/phy/freescale/Kconfig                 |   10 +
 drivers/phy/freescale/Makefile                |    1 +
 drivers/phy/freescale/phy-nxp-s32g-serdes.c   |  953 ++++++++++++++++
 include/linux/pcs/pcs-nxp-s32g-xpcs.h         |   50 +
 8 files changed, 2185 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
 create mode 100644 drivers/net/pcs/pcs-nxp-s32g-xpcs.c
 create mode 100644 drivers/phy/freescale/phy-nxp-s32g-serdes.c
 create mode 100644 include/linux/pcs/pcs-nxp-s32g-xpcs.h

-- 
2.43.0



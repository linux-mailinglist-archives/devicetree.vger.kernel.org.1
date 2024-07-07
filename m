Return-Path: <devicetree+bounces-83715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91272929A2E
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 01:15:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF4BB1C20810
	for <lists+devicetree@lfdr.de>; Sun,  7 Jul 2024 23:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11AF0768EE;
	Sun,  7 Jul 2024 23:14:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="ewPYXFJN"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F4C74076
	for <devicetree@vger.kernel.org>; Sun,  7 Jul 2024 23:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720394099; cv=none; b=RL6FEqCjYvsh+sW4cDqXqP7oVtHSNxOKgJtVZhot+6cU9WhhZqrGkaXcgBJdbRSYiISe0QrfNHos+MAjrvBzZBUR7EN6WHl5NmPxIDtfr+Cg8bxZKlFFCQ1dIZZPES2atauhcyTJDdSrBy4yMonDeIf4JQLHLU+ZiaBd84nvTEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720394099; c=relaxed/simple;
	bh=yZFi5pZp1oW2G21fgSpuRhjj3/eB4Licw18NvLGQj9w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 References; b=nYRFR3Y+fhfEBCiQ4X1nbEmCdkbbVEeq3iFjrXNnRkeTbbn7nsnG03w0jZwLQXbXy5EOXZ9Z7CgMPooIAjyVj9Ef3dWH/xhsYlFJxG+/6/HGPK71qEEIreOFqYMp3qgj0ecJPStzO/htvlEUAmBtTiUre+SGySVDpIfF9up1cxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=ewPYXFJN; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20240707231446epoutp04c4f49a068652ccf21d55da6cc5a8f8fa~gEU6B36t61042110421epoutp04M
	for <devicetree@vger.kernel.org>; Sun,  7 Jul 2024 23:14:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20240707231446epoutp04c4f49a068652ccf21d55da6cc5a8f8fa~gEU6B36t61042110421epoutp04M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1720394086;
	bh=xobr6YQ7biIVxx8NmpBX4wCIJtyvphHRZQs6WlydlXM=;
	h=From:To:Cc:Subject:Date:References:From;
	b=ewPYXFJNRJXakvseyCbF9fBxdqjokH8pOGhTZmJc8E625CdkXr/qBNdDhnbIzTALx
	 wuJz9Xnel1C5idT/BbKOohxPShTdjSC0wgbjqIbk1ipHhKyFlgUzbDXEF6p7Wd/NoJ
	 F0yKfxBirpRAqXcM2c8OMAlEZoHu805l/wsI0Y2g=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p4.samsung.com (KnoxPortal) with ESMTP id
	20240707231445epcas2p4d25d4a8236afdfea8cce9eb73a8c6a36~gEU5gwPzC3192831928epcas2p4g;
	Sun,  7 Jul 2024 23:14:45 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.99]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4WHNPd4Xs8z4x9Pv; Sun,  7 Jul
	2024 23:14:45 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	EA.35.09485.5612B866; Mon,  8 Jul 2024 08:14:45 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20240707231444epcas2p3f30eb5ec7aaef0315e135782b817b6e0~gEU4ab2ey0334303343epcas2p3T;
	Sun,  7 Jul 2024 23:14:44 +0000 (GMT)
Received: from epsmgmcp1.samsung.com (unknown [182.195.42.82]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20240707231444epsmtrp2b4f63e9f9d3c3e4163111f9a565828f3~gEU4Zp_qu1206812068epsmtrp2r;
	Sun,  7 Jul 2024 23:14:44 +0000 (GMT)
X-AuditID: b6c32a46-19bfa7000000250d-f3-668b2165d265
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgmcp1.samsung.com (Symantec Messaging Gateway) with SMTP id
	2F.A8.18846.4612B866; Mon,  8 Jul 2024 08:14:44 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.60]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20240707231444epsmtip1b0fe213ac55b0abf59f9d69b5fd7522b~gEU4M9gYA2495624956epsmtip1e;
	Sun,  7 Jul 2024 23:14:44 +0000 (GMT)
From: Sunyeal Hong <sunyeal.hong@samsung.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Sylwester Nawrocki
	<s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar
	<alim.akhtar@samsung.com>, Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Sunyeal Hong <sunyeal.hong@samsung.com>
Subject: [PATCH v2 0/4] initial clock support for exynosauto v920 SoC
Date: Mon,  8 Jul 2024 08:13:27 +0900
Message-ID: <20240707231331.3433340-1-sunyeal.hong@samsung.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPJsWRmVeSWpSXmKPExsWy7bCmhW6qYneawdITwhYP5m1js1iz9xyT
	xfUvz1kt5h85x2px/vwGdotNj6+xWnzsucdqcXnXHDaLGef3MVlcPOVq8X/PDnaLw2/aWS3+
	XdvIYtG0bD2TA5/H+xut7B6bVnWyeWxeUu/Rt2UVo8fnTXIBrFHZNhmpiSmpRQqpecn5KZl5
	6bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAdyoplCXmlAKFAhKLi5X07WyK8ktL
	UhUy8otLbJVSC1JyCswL9IoTc4tL89L18lJLrAwNDIxMgQoTsjM+NrYzF0zjrthx/hBLA+MD
	ji5GTg4JAROJeSePsXQxcnEICexglFi79B4rSEJI4BOjxOX3MhAJIHvfviZmmI7Oy3NZIRI7
	GSVa92xmh3A+MkpMmf8CaBYHB5uArsSffw4gcRGBPUwSW84vYQJxmAXOMkrcnbOAHWSUsICr
	xPXmvWA2i4CqxLc9O8FW8ArYS2z92MsCsU5e4uKa52wQcUGJkzOfgMWZgeLNW2czgwyVEGjk
	kHh7dgYTRIOLxKS7m6FsYYlXx7ewQ9hSEp/f7WWDsPMlJl9/ywTR3MAoce1fN9Rz9hKLzvxk
	B3mBWUBTYv0ufRBTQkBZ4sgtqL18Eh2H/7JDhHklOtqEIBrVJD5duQw1REbi2IlnzBAlHhLt
	bzxBTCGBWIlvJ1QmMMrPQvLLLCS/zELYuoCReRWjWGpBcW56arFRgRE8TpPzczcxglOqltsO
	xilvP+gdYmTiYDzEKMHBrCTCe/pxe5oQb0piZVVqUX58UWlOavEhRlNg6E5klhJNzgcm9byS
	eEMTSwMTMzNDcyNTA3Mlcd57rXNThATSE0tSs1NTC1KLYPqYODilGphqy6Ybp9xOClu8VX2R
	aartLwX7rKviN2MNSromBf+aLHwjyp/zbdHk1/fZ5uy6dUxBimn9sTnPX4jJvGiKMU043Fue
	2lHS2xs98fL2W+vOtzY9uqz5f8/9q3ueswg5Kzteqcs9cUPntoVoiA+395/MP3/2eMRsXJH0
	JNbxb7XQ7sP9Tz93Whc+Vjv46If6kuNhsXOc7m/tSdzu0qD3+t12WSG2L2EKb7yt7ibvM8ha
	ZJKjdFqidcaz3kli8az3Dyu7tmlNY3hk3n95k/AKp7kaD66dlHq70C2m40H4jc8XtzzWiXvg
	ybqy/TZv+pdjX3uufHZeek1zk9wx27vLfu76emb25IQZSzpvr971QXTpFCWW4oxEQy3mouJE
	ABX/9LwyBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDLMWRmVeSWpSXmKPExsWy7bCSnG6KYneawbXl2hYP5m1js1iz9xyT
	xfUvz1kt5h85x2px/vwGdotNj6+xWnzsucdqcXnXHDaLGef3MVlcPOVq8X/PDnaLw2/aWS3+
	XdvIYtG0bD2TA5/H+xut7B6bVnWyeWxeUu/Rt2UVo8fnTXIBrFFcNimpOZllqUX6dglcGR8b
	25kLpnFX7Dh/iKWB8QFHFyMnh4SAiUTn5bmsXYxcHEIC2xklHj/dzwqRkJHY2PCfHcIWlrjf
	cgQsLiTwnlHi0NmILkYODjYBXYk//xxAekUEDjFJTPz8lAXEYRa4zChx7O5kZpAGYQFXievN
	e8EGsQioSnzbsxMszitgL7H1Yy8LxAJ5iYtrnrNBxAUlTs58AhZnBoo3b53NPIGRbxaS1Cwk
	qQWMTKsYRVMLinPTc5MLDPWKE3OLS/PS9ZLzczcxggNcK2gH47L1f/UOMTJxMB5ilOBgVhLh
	Pf24PU2INyWxsiq1KD++qDQntfgQozQHi5I4r3JOZ4qQQHpiSWp2ampBahFMlomDU6qByaDx
	XZje+f+fzz6wNk3zmNu/e6HLy1/awg+Ou/3bYnkyS8ZxyrE75cylz/ntvxZtLmc96WO6MUPl
	6YfnWnMtVv7+9D/Pedeb91U/7A7Irrt97tFzlmkv5N7w7BPm+2V+OehKiiXjeUaOzZ0BB29b
	qnUxmvkzSndV9ARamx3y5U7gNzthsXJRU+Tay0YLZpxfYSLKXLbvwSW+WRsKbZfNN69N+ZTa
	aDfxhIxK0rpw2RLxJbXN8yoeMhzSiLu6Mu/qwaofB7Zf57bJs2jR6/7avJux9/FtyY36Kl4F
	C08c1Zm2q9+j7+3C9xdkr/AZezyed/Gwxf3mjwuruNg4b86fk+uyM/XN+mc7v/o9KmeM+6jE
	UpyRaKjFXFScCAAWrRyE3wIAAA==
X-CMS-MailID: 20240707231444epcas2p3f30eb5ec7aaef0315e135782b817b6e0
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20240707231444epcas2p3f30eb5ec7aaef0315e135782b817b6e0
References: <CGME20240707231444epcas2p3f30eb5ec7aaef0315e135782b817b6e0@epcas2p3.samsung.com>

This patchset adds initial clock driver support for Exynos Auto v920 SoC.
This driver uses HW Auto Clock gating. So all gate clocks did not register.

Below CMU blocks are supported in this patchset and remains will be
implemented later.

- CMU_TOP
- CMU_PERIC0

Changes in v2:
 - Fix typo from v209 to v920
 - Change USI clock to appropriate
 - Merge headers into binding patches
 - Change clock-name to the recommended name

Sunyeal Hong (4):
  dt-bindings: clock: add Exynos Auto v920 SoC CMU bindings
  arm64: dts: exynos: add initial CMU clock nodes in Exynos Auto v920
  clk: samsung: clk-pll: Add support for pll_531x
  clk: samsung: add top clock support for Exynos Auto v920 SoC

 .../clock/samsung,exynosautov920-clock.yaml   |  115 ++
 .../arm64/boot/dts/exynos/exynosautov920.dtsi |   40 +-
 drivers/clk/samsung/Makefile                  |    1 +
 drivers/clk/samsung/clk-exynosautov920.c      | 1173 +++++++++++++++++
 drivers/clk/samsung/clk-pll.c                 |   45 +
 drivers/clk/samsung/clk-pll.h                 |    1 +
 .../clock/samsung,exynosautov920.h            |  191 +++
 7 files changed, 1553 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/samsung,exynosautov920-clock.yaml
 create mode 100644 drivers/clk/samsung/clk-exynosautov920.c
 create mode 100644 include/dt-bindings/clock/samsung,exynosautov920.h

-- 
2.45.2



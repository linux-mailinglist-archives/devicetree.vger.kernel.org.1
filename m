Return-Path: <devicetree+bounces-13124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 978B07DC9FB
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:50:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 385BAB20E39
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880A0179B9;
	Tue, 31 Oct 2023 09:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="VWT1jiYv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA731802A
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:50:46 +0000 (UTC)
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C4061BD
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 02:50:40 -0700 (PDT)
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20231031095022epoutp01a396d57114b33c8e17fcd8f8e381f11d~TKFM1hoW70894808948epoutp01M
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:50:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20231031095022epoutp01a396d57114b33c8e17fcd8f8e381f11d~TKFM1hoW70894808948epoutp01M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1698745822;
	bh=B+5v5F2JOOqOrd5gw6gtlehZc1Hm1qkQF/xdN2ruII4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VWT1jiYvK90URdRXscT95fYkgYHLJXFEZSCCpN17JO/CYJ+qZAy/pn2+eZxSLCX6l
	 RGLtI3PinoK6qNf4XfpAi/wwGoXIZLPcb+8YtFS9cm1n4fbOUtZS1CSzUaxna/kqnS
	 dWjtQegHDObEOyjzvGsZFWtdP8bFAJsuz3wq43WI=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20231031095021epcas2p38487b5fa743e7f2fa93a14840c314631~TKFMQ-gFq1121511215epcas2p3G;
	Tue, 31 Oct 2023 09:50:21 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.100]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4SKQNs0ktxz4x9Px; Tue, 31 Oct
	2023 09:50:21 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	0C.1E.10022.CDDC0456; Tue, 31 Oct 2023 18:50:20 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
	20231031095020epcas2p1b72264a38832dc2fcb9df8e6b968770f~TKFLTJd7M2926329263epcas2p1R;
	Tue, 31 Oct 2023 09:50:20 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20231031095020epsmtrp259e02aed1437c19019e7a84076e031b0~TKFLRHmSi1473914739epsmtrp2G;
	Tue, 31 Oct 2023 09:50:20 +0000 (GMT)
X-AuditID: b6c32a47-9a3ff70000002726-30-6540cddc0f89
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	C0.21.08817.CDDC0456; Tue, 31 Oct 2023 18:50:20 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.55]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20231031095019epsmtip14215fc8c0abd0124137d6b5d91a71163~TKFKmSILj2330523305epsmtip1L;
	Tue, 31 Oct 2023 09:50:19 +0000 (GMT)
From: Jaewon Kim <jaewon02.kim@samsung.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Alim Akhtar
	<alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, Sylwester
	Nawrocki <s.nawrocki@samsung.com>, Linus Walleij <linus.walleij@linaro.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, Greg
	Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
	<jirislaby@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org,
	linux-serial@vger.kernel.org, Jaewon Kim <jaewon02.kim@samsung.com>
Subject: [PATCH 07/10] soc: samsung: exynos-chipid: add exynosautov920 SoC
 support
Date: Tue, 31 Oct 2023 18:47:49 +0900
Message-ID: <20231031094852.118677-8-jaewon02.kim@samsung.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231031094852.118677-1-jaewon02.kim@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCJsWRmVeSWpSXmKPExsWy7bCmqe6dsw6pBvObrC0ezNvGZrFm7zkm
	i/lHzrFaNC9ez2axo+EIq8W7uTIWe19vZbeY8mc5k8Wmx9dYLTbP/8NocXnXHDaLu3dXMVrM
	OL+PyeLM4l52i9a9R9gtDr9pZ7X4uWsei8WqXUB1tydOZnQQ9tg56y67x6ZVnWwed67tYfPY
	P3cNu8fmJfUe/X8NPPq2rGL0+LxJLoAjKtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTMwFDX
	0NLCXEkhLzE31VbJxSdA1y0zB+gdJYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpBSk6B
	eYFecWJucWleul5eaomVoYGBkSlQYUJ2xpvt29kKrrFWNLxaxNLA+Jyli5GTQ0LAROLQn8lA
	NheHkMAORoltj08xgySEBD4xSrRezoRIfGOU2Ll0ESNMx+6rv5ghEnsZJbqOnmWFcD4ySrz8
	dwOsik1AW+L7+sWsILaIwBdmiemPqkGKmAXamSTmfXsJtlxYIERi/Zv37CA2i4CqRPu1R2DN
	vAJ2Er2rr0EdKC+xZ9F3JhCbU8BeYmdPE1SNoMTJmU/AapiBapq3zgY7SULgDIdE/8mDzBDN
	LhKHJzRB2cISr45vYYewpSQ+v9vLBmFnS7RP/8MKYVdIXNwwGypuLDHrWTvQMg6gBZoS63fp
	g5gSAsoSR25BreWT6Dj8lx0izCvR0SYE0agmcX/qOaghMhKTjqxkgrA9JGZtnQYNq0mMEn/P
	3maawKgwC8k3s5B8Mwth8QJG5lWMYqkFxbnpqcVGBcbwGE7Oz93ECE7eWu47GGe8/aB3iJGJ
	g/EQowQHs5II72FTh1Qh3pTEyqrUovz4otKc1OJDjKbAsJ7ILCWanA/MH3kl8YYmlgYmZmaG
	5kamBuZK4rz3WuemCAmkJ5akZqemFqQWwfQxcXBKNTD1PWLg37VFJOp7pZGj5nbJI0s2LfyY
	oDPvtnzHzHldq7t5918S/2n1UbDj6M/f53XDX7Ctsep6aeW93T6Me/XDtO83WkoeNIhK5t0K
	Dpy7Q2P7yfPfv27aWylS99xG7+2F5UrM0+wKVMvdJ+3an++8lPmQdwa/yFEBFfM5BvVne5dk
	PGXW738aIezK7H815uns8/H/2EXLVHT6Hk2+qavEX8B3/lBP2+fvmoeT3h10FOJZqs3RfPi4
	kLKp4V+Dh3uNJqyxmf2UL7jk49ppk8zO93tylYs1HFo24/U8LoEJgdJ1FxeGFpZPvy1j7xu7
	V007ofvX01gH1+q9XhNN++T/+fT5P9S/2NL67O/63EQlluKMREMt5qLiRACqy2ugZwQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAIsWRmVeSWpSXmKPExsWy7bCSnO6dsw6pBp8uKlo8mLeNzWLN3nNM
	FvOPnGO1aF68ns1iR8MRVot3c2Us9r7eym4x5c9yJotNj6+xWmye/4fR4vKuOWwWd++uYrSY
	cX4fk8WZxb3sFq17j7BbHH7Tzmrxc9c8FotVu4Dqbk+czOgg7LFz1l12j02rOtk87lzbw+ax
	f+4ado/NS+o9+v8aePRtWcXo8XmTXABHFJdNSmpOZllqkb5dAlfGm+3b2QqusVY0vFrE0sD4
	nKWLkZNDQsBEYvfVX8xdjFwcQgK7GSWe7p7ABJGQkVj+rI8NwhaWuN9yhBWi6D2jxPaXS8G6
	2QS0Jb6vXwyWEBH4xSyxe8JdRpAEs0A/k8T1TQkgtrBAkMTue01gU1kEVCXarz0Cq+EVsJPo
	XX0N6gx5iT2LvoPVcArYS+zsaQKrEQKqubjhJhNEvaDEyZlPWCDmy0s0b53NPIFRYBaS1Cwk
	qQWMTKsYJVMLinPTc4sNC4zyUsv1ihNzi0vz0vWS83M3MYIjTUtrB+OeVR/0DjEycTAeYpTg
	YFYS4T1s6pAqxJuSWFmVWpQfX1Sak1p8iFGag0VJnPfb694UIYH0xJLU7NTUgtQimCwTB6dU
	A5NzRfTF4vTiSSzbs/NmzHtZ+2Xz+ceP11mu5GDRWRXzJGeG5Nk+4RfiYinieuermLRTA/ZJ
	bFh5222pxRz3y3MP7vv/Q+nY33dTNCbPzvcQ5xJXZXgg9Ljf8I5oyXJBkR/8O75V+er2ZnFP
	aSs05ps729wztlnE9JzIYwOfy4vYb9b05BjqXrcXK51e5tWrWBgmodyueaH0/tuDrduY2srq
	u9es/vf8ye/qn7N9zGbFb218E9BwmyUgyOTx6TvPxa3O1a3XubplymYd8ZiD85P9Y04yJHLP
	VIm1X8chILKh1+U5S8dsgfofZz9pey4O2H/O/DhD2YwXHrWCmucnWJ7s7rMtTv605NXsL7p5
	f5RYijMSDbWYi4oTAbMzgVkjAwAA
X-CMS-MailID: 20231031095020epcas2p1b72264a38832dc2fcb9df8e6b968770f
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20231031095020epcas2p1b72264a38832dc2fcb9df8e6b968770f
References: <20231031094852.118677-1-jaewon02.kim@samsung.com>
	<CGME20231031095020epcas2p1b72264a38832dc2fcb9df8e6b968770f@epcas2p1.samsung.com>

Add EXYNOSAUTOV920 information to soc_ids tables. This SoC product id
is "0x0A920000".

Signed-off-by: Jaewon Kim <jaewon02.kim@samsung.com>
---
 drivers/soc/samsung/exynos-chipid.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 7ba45c4aff97..3ee554595e49 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -59,6 +59,7 @@ static const struct exynos_soc_id {
 	{ "EXYNOS7885", 0xE7885000 },
 	{ "EXYNOS850", 0xE3830000 },
 	{ "EXYNOSAUTOV9", 0xAAA80000 },
+	{ "EXYNOSAUTOV920", 0x0A920000 },
 };
 
 static const char *product_id_to_soc_id(unsigned int product_id)
-- 
2.42.0



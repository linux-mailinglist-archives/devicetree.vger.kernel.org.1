Return-Path: <devicetree+bounces-13117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5327DC9F3
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 38C90B20E57
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2201179B5;
	Tue, 31 Oct 2023 09:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="QAbTs/Ix"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4355ED28F
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:50:34 +0000 (UTC)
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77D81103
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 02:50:28 -0700 (PDT)
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20231031095019epoutp0285d758f1a1798dfafdf6f0ab9e1557bd~TKFJ93zbM0879308793epoutp02T
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:50:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20231031095019epoutp0285d758f1a1798dfafdf6f0ab9e1557bd~TKFJ93zbM0879308793epoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1698745819;
	bh=9YWPFY7JgZXACYhzmZ79M5/fzKfIrMVEDb25WlOqPkI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QAbTs/IxL6vlzXnNAXKa1MuL1xQET63PhbBJ4dw4ET8E0ocVi+kkD6dSV+LjiMD52
	 XSuhqFFwt7SmYC7u6gAoqh6jToDKDTO2NWhi3uT+VmrOeypid3esGIwWNUzw918kwO
	 E7Vdm5LK2QaZdySRUv+tY8skuAhHo8S6kQpSBgag=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20231031095018epcas2p2bafafe9b08f1524a5f2fb6b0750b2c65~TKFJb3SH11547915479epcas2p2q;
	Tue, 31 Oct 2023 09:50:18 +0000 (GMT)
Received: from epsmgec2p1-new.samsung.com (unknown [182.195.36.92]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4SKQNp24qPz4x9Q1; Tue, 31 Oct
	2023 09:50:18 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmgec2p1-new.samsung.com (Symantec Messaging Gateway) with SMTP id
	1E.7B.18994.ADDC0456; Tue, 31 Oct 2023 18:50:18 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20231031095017epcas2p306a504619cbaf1fc260f6c46f8b75dd8~TKFIvZJzZ0127001270epcas2p32;
	Tue, 31 Oct 2023 09:50:17 +0000 (GMT)
Received: from epsmgmc1p1new.samsung.com (unknown [182.195.42.40]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20231031095017epsmtrp29e336deb23c4bc0eb956d645d253fe77~TKFIuiTFe1473414734epsmtrp2J;
	Tue, 31 Oct 2023 09:50:17 +0000 (GMT)
X-AuditID: b6c32a4d-743ff70000004a32-00-6540cddabf7a
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgmc1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	41.42.07368.9DDC0456; Tue, 31 Oct 2023 18:50:17 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.55]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20231031095016epsmtip198044db94405101d0236281ec5b4e9ec~TKFHzz4KI2328423284epsmtip1j;
	Tue, 31 Oct 2023 09:50:16 +0000 (GMT)
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
Subject: [PATCH 04/10] dt-bindings: pwm: samsung: add exynosautov9
 compatible
Date: Tue, 31 Oct 2023 18:47:46 +0900
Message-ID: <20231031094852.118677-5-jaewon02.kim@samsung.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231031094852.118677-1-jaewon02.kim@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKJsWRmVeSWpSXmKPExsWy7bCmhe6tsw6pBjcb+SwezNvGZrFm7zkm
	i/lHzrFaNC9ez2axo+EIq8W7uTIWe19vZbeY8mc5k8Wmx9dYLTbP/8NocXnXHDaLu3dXMVrM
	OL+PyeLM4l52i9a9R9gtDr9pZ7X4uWsei8WqXUB1tydOZnQQ9tg56y67x6ZVnWwed67tYfPY
	P3cNu8fmJfUe/X8NPPq2rGL0+LxJLoAjKtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTMwFDX
	0NLCXEkhLzE31VbJxSdA1y0zB+gdJYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpBSk6B
	eYFecWJucWleul5eaomVoYGBkSlQYUJ2xsQzOgVvWCsuv3nO1sB4j6WLkZNDQsBE4t3fz2C2
	kMAeRomtk6K6GLmA7E+MEq1HP7JCON8YJU79X8cI0/F7awMjRMdeRolPO3ghij4ySty8vIUZ
	JMEmoC3xff1iVhBbROALs8T0R9UgRcwC7UwS8769BNrHwSEs4C/x534sSA2LgKrEpsMLmEBs
	XgE7ic0L2pkglslL7Fn0HczmFLCX2NnTxAhRIyhxcuYTsLOZgWqat85mBpkvIXCBQ+L7xN9Q
	l7pIXDjfzgZhC0u8Or6FHcKWkvj8bi9UPFuiffofVgi7QuLihtlQcWOJWc/aGUHuZBbQlFi/
	Sx/ElBBQljhyC2otn0TH4b/sEGFeiY42IYhGNYn7U89BDZGRmHRkJdQnHhKTb7YyQYJqEqPE
	hdf32CcwKsxC8s0sJN/MQli8gJF5FaNUakFxbnpqslGBoW5eajk8ipPzczcxgtO3lu8Oxtfr
	/+odYmTiYDzEKMHBrCTCe9jUIVWINyWxsiq1KD++qDQntfgQoykwvCcyS4km5wMzSF5JvKGJ
	pYGJmZmhuZGpgbmSOO+91rkpQgLpiSWp2ampBalFMH1MHJxSDUzcn5VNJzhNWxTH8PoHl2HD
	Pd9dFz2558h68Gk8mDV1qb2EuijfrlxPlt/+8+v0VZUq/1pZ361TzTCS/3nW4Oayl94BDf/K
	VjqHJNiZht9VK3I+c6K0KzZ89md5rTuGu79/O1W56lXcj6bPAXM8zfqsuDK6Av8Uvp8V8DmX
	Mzh91Tptlkt163eu6zJcn/rwu/4J31kPFXfx9Z2T9f3RvD5i3bTGLJOUAx82P5/v/yLiNFOD
	ZBSHXCqPTbXsljv7Xm0xlwmxdw/s3PD8m765ufaHLTPZfKanu4V2fFAVeH0xcEni9MUZD3OX
	F126I39SQLbApVHjgLrUw7dnjrkfSXY8sCbx9zM1pgBuhgkedkosxRmJhlrMRcWJACe53jlo
	BAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupjkeLIzCtJLcpLzFFi42LZdlhJTvfmWYdUg9WrjCwezNvGZrFm7zkm
	i/lHzrFaNC9ez2axo+EIq8W7uTIWe19vZbeY8mc5k8Wmx9dYLTbP/8NocXnXHDaLu3dXMVrM
	OL+PyeLM4l52i9a9R9gtDr9pZ7X4uWsei8WqXUB1tydOZnQQ9tg56y67x6ZVnWwed67tYfPY
	P3cNu8fmJfUe/X8NPPq2rGL0+LxJLoAjissmJTUnsyy1SN8ugStj4hmdgjesFZffPGdrYLzH
	0sXIySEhYCLxe2sDYxcjF4eQwG5Gidv3n7FCJGQklj/rY4OwhSXutxxhhSh6zyhx8nEDM0iC
	TUBb4vv6xWAJEYFfzBK7J9xlBEkwC/QzSVzflNDFyMEhLOArcWehNUiYRUBVYtPhBUwgNq+A
	ncTmBe1MEAvkJfYs+g5mcwrYS+zsaQIbIwRUc3HDTah6QYmTM5+wQIyXl2jeOpt5AqPALCSp
	WUhSCxiZVjFKphYU56bnJhsWGOallusVJ+YWl+al6yXn525iBEeZlsYOxnvz/+kdYmTiYDzE
	KMHBrCTCe9jUIVWINyWxsiq1KD++qDQntfgQozQHi5I4r+GM2SlCAumJJanZqakFqUUwWSYO
	TqkGJlnTKe9v1E3tiLx3P72xskXqpN/dXOvSZ6whFxllJu+MS6270igxPfJcw9GSd/y/TxhW
	vWwLcP3ldOD/I96f2bLJ91deuSW48/rh0rWKmqHdVRlqpaszGDcY9MxtELqdWVfDMqXXzWFC
	xd9OzlmeznIBl9uLZR46Mvy/uP7XH55te3v+ZK94eui35JwFc9/NOLn2XucX1Qmsyjqf9iqd
	fGLL31vKyXLRY6dbWWR/uPqJLqvkG9xO0qEeR9wuJ96+Y9CT/DPq+rdHv5xWvlh/VCNPYpKb
	ruDL3R+W7JBoCsg7veKWwJ+oOeUsPNJOmT43wqJ+h0x7JiJ3IPsBa9FLeXnGimkqd3ODfj5O
	6jgSocRSnJFoqMVcVJwIAH074ZMhAwAA
X-CMS-MailID: 20231031095017epcas2p306a504619cbaf1fc260f6c46f8b75dd8
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20231031095017epcas2p306a504619cbaf1fc260f6c46f8b75dd8
References: <20231031094852.118677-1-jaewon02.kim@samsung.com>
	<CGME20231031095017epcas2p306a504619cbaf1fc260f6c46f8b75dd8@epcas2p3.samsung.com>

Add samsung,exynosautov920-pwm compatible string to binding document.

Signed-off-by: Jaewon Kim <jaewon02.kim@samsung.com>
---
 Documentation/devicetree/bindings/pwm/pwm-samsung.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
index 2162f661ed5a..b6beca2ae81e 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
@@ -30,6 +30,7 @@ properties:
       - items:
           - enum:
               - samsung,exynosautov9-pwm
+              - samsung,exynosautov920-pwm
           - const: samsung,exynos4210-pwm
 
   reg:
-- 
2.42.0



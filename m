Return-Path: <devicetree+bounces-13118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 180957DC9F2
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 10:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37FAC1C20C00
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 09:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 906171802B;
	Tue, 31 Oct 2023 09:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="cf+Pf6ws"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F55F168B8
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:50:34 +0000 (UTC)
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77ADF102
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 02:50:28 -0700 (PDT)
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20231031095017epoutp03510bd8bf4f1029932dc591c5bcb43dfb~TKFIlMzG-1157811578epoutp03f
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 09:50:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20231031095017epoutp03510bd8bf4f1029932dc591c5bcb43dfb~TKFIlMzG-1157811578epoutp03f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1698745817;
	bh=eOhbQnixpywDBOeQrZG9d5vfu8B1cL+FT4u1kXE+tKY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cf+Pf6wssoO3rQhjgqWLfY7kv7XFfHzwFIUdCeYv4Io4IdTsJvJ5tITjf5pt5kmUI
	 HA3u3i10G3UQ/+rPE3RRhi+6AeoW84nHzOOEl9lL+d0r9QRyC53Px9vV7pU8fbLKWq
	 ypV5T5KwrXZ+ZmoyZ2D2TZNebIZpxBXYZP4tAp6Q=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20231031095017epcas2p10ff62e450e1cecafcddce0583bd2efdc~TKFH_ivC71231312313epcas2p1Z;
	Tue, 31 Oct 2023 09:50:17 +0000 (GMT)
Received: from epsmgec2p1-new.samsung.com (unknown [182.195.36.102]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4SKQNm59SXz4x9Pv; Tue, 31 Oct
	2023 09:50:16 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmgec2p1-new.samsung.com (Symantec Messaging Gateway) with SMTP id
	0A.7B.18994.8DDC0456; Tue, 31 Oct 2023 18:50:16 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20231031095016epcas2p341141f6354ee083be8d95d615c7a63dd~TKFHKt0l60127001270epcas2p3t;
	Tue, 31 Oct 2023 09:50:16 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20231031095016epsmtrp2ef7eebfac8a5c08e3249d809b4a70360~TKFHIm3rX1473914739epsmtrp23;
	Tue, 31 Oct 2023 09:50:16 +0000 (GMT)
X-AuditID: b6c32a4d-9f7ff70000004a32-fb-6540cdd80bc4
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	6C.11.08817.8DDC0456; Tue, 31 Oct 2023 18:50:16 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.55]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20231031095015epsmtip124afb19201f08ee7b8bd1c2a9bbd30fa~TKFGXM-lf2325323253epsmtip1o;
	Tue, 31 Oct 2023 09:50:15 +0000 (GMT)
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
Subject: [PATCH 02/10] dt-bindings: soc: samsung: usi: add
 exynosautov920-usi compatible
Date: Tue, 31 Oct 2023 18:47:44 +0900
Message-ID: <20231031094852.118677-3-jaewon02.kim@samsung.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231031094852.118677-1-jaewon02.kim@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGJsWRmVeSWpSXmKPExsWy7bCmhe6Nsw6pBktOq1s8mLeNzWLN3nNM
	FvOPnGO1aF68ns1iR8MRVot3c2Us9r7eym4x5c9yJotNj6+xWmye/4fR4vKuOWwWd++uYrSY
	cX4fk8WZxb3sFq17j7BbHH7Tzmrxc9c8FotVu4Dqbk+czOgg7LFz1l12j02rOtk87lzbw+ax
	f+4ado/NS+o9+v8aePRtWcXo8XmTXABHVLZNRmpiSmqRQmpecn5KZl66rZJ3cLxzvKmZgaGu
	oaWFuZJCXmJuqq2Si0+ArltmDtA7SgpliTmlQKGAxOJiJX07m6L80pJUhYz84hJbpdSClJwC
	8wK94sTc4tK8dL281BIrQwMDI1OgwoTsjC0rNrAWrGev+PM8sIHxM2sXIyeHhICJxPZ3O5m6
	GLk4hAT2MEos6V7ADuF8YpRo6vrHBuF8Y5R49HMOM0xL88oZLBCJvYwSJxc3sIMkhAQ+Mkpc
	OcYIYrMJaEt8X78YbIeIwBdmiemPqkEamAXamSTmfXsJ1M3BISwQJfGpVRGkhkVAVWLbovtg
	vbwCdhKPXv5khFgmL7Fn0XcmEJtTwF5iZ08TVI2gxMmZT1hAbGagmuats5lB5ksIXOCQ6F51
	Heo5F4nZrdfYIGxhiVfHt7BD2FISn9/thYpnS7RP/wNVXyFxccNsqLixxKxn7YwgdzILaEqs
	36UPYkoIKEscuQW1lk+i4/Bfdogwr0RHmxBEo5rE/annoIbISEw6spIJwvaQeHToBjSkJzFK
	/Hy6mG0Co8IsJN/MQvLNLITFCxiZVzFKpRYU56anJhsVGOrmpZbD4zg5P3cTIziBa/nuYHy9
	/q/eIUYmDsZDjBIczEoivIdNHVKFeFMSK6tSi/Lji0pzUosPMZoCw3sis5Rocj4wh+SVxBua
	WBqYmJkZmhuZGpgrifPea52bIiSQnliSmp2aWpBaBNPHxMEp1cCU7uSdNOU18xEP5Yrn38x8
	vk+4/HidtUFGxApBJalvb5avWxqzpr/g8ds7Ch8FLhZMS27beNBox4EzPWnttckL7szxmBjk
	/X7PmzWpa92WCBxdLJ2/Yb+1QLH1scUPPu08Ybfkm9XkrKM3HzovXOdw+VGuyK9NP3imP31V
	+nybxT3WqTXNy5Nmbb7wPLmt6njKxtu3V7hlqdjcSPbp2fP3+dXpkjMfdj+4Y/MrruaK35EP
	Dz94dktEtJ1VqxOd5rZ8t7WI4FtDjYSo7wednk5ZdURr82Nj8cb22FsiO19WLTjD0/2x0W/F
	4hVTnkyesfwOy62EYHkBrq5pbOcDL5n5bkzrtsvfVa25N8c95+XzxJtKLMUZiYZazEXFiQAS
	+L0laQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupjkeLIzCtJLcpLzFFi42LZdlhJTvfGWYdUg+kfWC0ezNvGZrFm7zkm
	i/lHzrFaNC9ez2axo+EIq8W7uTIWe19vZbeY8mc5k8Wmx9dYLTbP/8NocXnXHDaLu3dXMVrM
	OL+PyeLM4l52i9a9R9gtDr9pZ7X4uWsei8WqXUB1tydOZnQQ9tg56y67x6ZVnWwed67tYfPY
	P3cNu8fmJfUe/X8NPPq2rGL0+LxJLoAjissmJTUnsyy1SN8ugStjy4oNrAXr2Sv+PA9sYPzM
	2sXIySEhYCLRvHIGSxcjF4eQwG5GiR0/2hkhEjISy5/1sUHYwhL3W46ANQgJvGeUuHnZA8Rm
	E9CW+L5+MStIs4jAL2aJ3RPugjUzC/QzSVzflABiCwtESKx5vYgJxGYRUJXYtug+WA2vgJ3E
	o5c/oZbJS+xZ9B2shlPAXmJnTxMjxDI7iYsbbjJB1AtKnJz5hAVivrxE89bZzBMYBWYhSc1C
	klrAyLSKUTK1oDg3PbfYsMAoL7Vcrzgxt7g0L10vOT93EyM4yrS0djDuWfVB7xAjEwfjIUYJ
	DmYlEd7Dpg6pQrwpiZVVqUX58UWlOanFhxilOViUxHm/ve5NERJITyxJzU5NLUgtgskycXBK
	NTCdv3RuQs9aPtHCLXlF1dHrvcOnaqbPzdHSPlX6XsggV2eD69pvc1V/3mPk8XvIWc9eFlfZ
	XyEyYW37v+ubJ69pstgU+qRR3anCq7TnttyNT+s/3vGSuFDomnDufB3bXs0CK/lHXp7mV45d
	X/vzYHjWH7H7XD+44iY+C/ZZXrhozvPQ0qIJ7YyBUT7v3li+2MWf5frwMsf1++2c9VVREkIH
	ep92dPTMWqTmI9/8l20Fs5SafuHvq4su5r8WExNIdQurKfs3KdP4ZM3up3P+e96qPszA/0U0
	5zpDffWKTewf3Oqe3G/Iu3nwTnPmwpo5+6PT91/bsNnzibPg1Ti+oGJJnw8cmXOiLYquMh5Y
	nqrEUpyRaKjFXFScCAAlyC3xIQMAAA==
X-CMS-MailID: 20231031095016epcas2p341141f6354ee083be8d95d615c7a63dd
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20231031095016epcas2p341141f6354ee083be8d95d615c7a63dd
References: <20231031094852.118677-1-jaewon02.kim@samsung.com>
	<CGME20231031095016epcas2p341141f6354ee083be8d95d615c7a63dd@epcas2p3.samsung.com>

Add samsung,exynosautov920-usi dedicated compatible for representing USI
of ExynosAutoV920 SoC.

Signed-off-by: Jaewon Kim <jaewon02.kim@samsung.com>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
index a6836904a4f8..70735d188a2e 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
@@ -24,7 +24,9 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: samsung,exynosautov9-usi
+          - enum:
+              - samsung,exynosautov9-usi
+              - samsung,exynosautov920-usi
           - const: samsung,exynos850-usi
       - enum:
           - samsung,exynos850-usi
-- 
2.42.0



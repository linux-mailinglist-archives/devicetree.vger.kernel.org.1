Return-Path: <devicetree+bounces-11772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7ED7D68DA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:36:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D02E1C20D91
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D5B7266B5;
	Wed, 25 Oct 2023 10:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="WoC82qUs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7E9266D8
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:36:41 +0000 (UTC)
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ED2A2691
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 03:36:04 -0700 (PDT)
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20231025103602epoutp04da83bb3156f8b874d70cc5ac37355f68~RU1Xc4_d_2407524075epoutp04_
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:36:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20231025103602epoutp04da83bb3156f8b874d70cc5ac37355f68~RU1Xc4_d_2407524075epoutp04_
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1698230162;
	bh=+x6yojYyzNKCsIaMP7898lID8CLuKYiuQY7ljeq0fqU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WoC82qUs0CI92ZZLOfFOrRkkpFKpf7CWRTx9XY98EMOQDwCimTE79M9l8TCxzwDnA
	 pV1BUQLGhbsR++XhIm0BBu9inbZ3DOeyD2qedK2vG/tIEieV9HzEe0BfcyFLrUjwxy
	 EEqkCCId7rDPnmTNox1IlSbsjk8Cz6vqC7zz6jZo=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTP id
	20231025103601epcas5p43587c89fb37bb4a22434c20415e4f899~RU1WwaTG72289122891epcas5p48;
	Wed, 25 Oct 2023 10:36:01 +0000 (GMT)
Received: from epsmgec5p1-new.samsung.com (unknown [182.195.38.177]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4SFlhJ1kqtz4x9Pp; Wed, 25 Oct
	2023 10:36:00 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
	epsmgec5p1-new.samsung.com (Symantec Messaging Gateway) with SMTP id
	C0.CC.19369.09FE8356; Wed, 25 Oct 2023 19:36:00 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20231025102300epcas5p2c266a078b70614dc948b0e47cd5cf788~RUp-JfHRP0482304823epcas5p2a;
	Wed, 25 Oct 2023 10:23:00 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20231025102300epsmtrp2ac1cb7b53daf69d576ee2e85a097407d~RUp-IazN_0878508785epsmtrp2k;
	Wed, 25 Oct 2023 10:23:00 +0000 (GMT)
X-AuditID: b6c32a50-c99ff70000004ba9-39-6538ef9015ec
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	B2.D0.08817.48CE8356; Wed, 25 Oct 2023 19:23:00 +0900 (KST)
Received: from cheetah.sa.corp.samsungelectronics.net (unknown
	[107.109.115.53]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20231025102257epsmtip12448a7fd69bb19bf8b5e3a484c5b7857~RUp7-8Iat0719907199epsmtip1B;
	Wed, 25 Oct 2023 10:22:57 +0000 (GMT)
From: Aakarsh Jain <aakarsh.jain@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: m.szyprowski@samsung.com, andrzej.hajda@intel.com, mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl, krzysztof.kozlowski+dt@linaro.org,
	dillon.minfei@gmail.com, david.plowman@raspberrypi.com,
	mark.rutland@arm.com, robh+dt@kernel.org, conor+dt@kernel.org,
	linux-samsung-soc@vger.kernel.org, andi@etezian.org, gost.dev@samsung.com,
	alim.akhtar@samsung.com, aswani.reddy@samsung.com, pankaj.dubey@samsung.com,
	ajaykumar.rs@samsung.com, aakarsh.jain@samsung.com, linux-fsd@tesla.com,
	Smitha T Murthy <smithatmurthy@gmail.com>
Subject: [Patch v4 09/11] media: s5p-mfc: Load firmware for each run in
 MFCv12.
Date: Wed, 25 Oct 2023 15:52:14 +0530
Message-Id: <20231025102216.50480-10-aakarsh.jain@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231025102216.50480-1-aakarsh.jain@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VTfUxbVRTffe+1r6BdmjLmTeOQ1LCEaaFlpbtdYNMxzZtjWoefGIYNfSmE
	9rXph24zCx1aHbghMDeBQYd8NSsIyDdIt8IgTMgGZBMcgoCdzmEYgQISGNOWMv3vd37nd+75
	nXPv5eD8UbaAk8aYaAOj1AjZgUTL9fBwUe4cosWuqkD0e1shC7nmugg0ZWtho/KV+xiaLPcQ
	qLuxmUQ1zlsYsve5WOhyzy0Wau36jUB3Xe0YGi6cIFDOn9M4anCPsND0zLvodkcxG52tb2ah
	gsGrGPquZ4JElaPDGKpqeIShsuZFElmdPST67HQF6yVI1dhqADVasYBT7UUTJFXe+QCjGhxZ
	bGp8pJNNNVZkUNbeVYLKaXIA6nFmCUl5GkKo/iUPqXg6MT0mlVaqaEMozaToVGmMOlZ4OCE5
	LjlaJpaIJHK0RxjKKLV0rPBgvEL0aprGO7ww9COlxuylFEqjURi5L8agM5vo0FSd0RQrpPUq
	jV6qjzAqtUYzo45gaNNeiVgcFe0Vfpie2mz5laVfJo8PrV/GLOAXdjbgcCBPCi9lRWSDQA6f
	1wngYlU25g8WACxuv0v6g2UAH91rBNkgYKOitsvG8iecAJZ1LBH+wIpBh7sQ+M5l80TwZqvG
	V7CNdxpA9xmTT4PzviGgu9ZD+hJBvDdh70wO5sMELww6R85u8FzePni738nyd3sOVte7cB8O
	8PKly5kbliBvkQOdj//B/aKDsKDzJuHHQXCmr4n0YwH0PHSy/TgFussebOo1sK7z6039fui6
	U0z4TOO8cFjXEemnd8AL/bUb3nDeVnhu7R7m57mwzfYE74TF4yubPp+F16srNzdEwV77FNu/
	lDwAs1yV7FwQUvR/i1IAHEBA641aNZ0SrZeIGPrj/64tRadtABsvfJeiDVTXr0d0A4wDugHk
	4MJt3PfjEc3nqpQnTtIGXbLBrKGN3SDau8E8XBCcovN+EcaULJHKxVKZTCaV75ZJhM9w/7KW
	qPg8tdJEp9O0njY8qcM4AQIL9vwXGXlhnqfyL3XNfzlfGvWt6s6Vw1kTzUkZ+9Hf8MSh8JM/
	37dXyY8eaeOk/WBbilqYLel7Y6Jj+8Ln/GsffN+fEVfxlXXPwO5Wq12xg8UAsqaJL4rUbp/Z
	+YI53fLeOzO5ghF5XEI8PLIyG/LyoPpM3U+OBLv2xcSkvZYdD89PxlqKxnqkx7FTs0NFP35S
	2RtcIK1fnxvair99rC7sQOJbpdMtisBjN64k0a8F5Z93wAH1/NHAP2Y/PXXBbVuNyO3jLh84
	57qxpt5yEQtmVq/hOXJuvkw4uVRpF2emDg++Evp6ddfY4DTIrWfFrF2cGiu2GAaiK5ieNMZp
	dmwZX7maLySMqUrJLtxgVP4LAGqLImoEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAAzWRfSzUcRzHfX/PjtNvx+pHxVwPN9fIqeY7Kz1srV9bjWXpma78OnUPrjup
	9Ecitatj3XpYxBF6ktBx5yF0dGmzpFiuJ0lm1PUgF5kVeaj/Xp/3wz5/vClUkIn5UAdViZxG
	JVUICR5meST0DTz9BXLBeqM/7KvOwqH1eyMGPxgtBCwc7Udgd6ETg00VZhKW1D9D4K0nVhzm
	2Z7hsKrxIwZfW2sQ+CKrC4OZAz0oNPV24rDn8zbYUZtDQH25GYdX2xoQeM/WRcIb9hcIvGn6
	jcAC808SptfbSHj6VBG+hmFLjCWAtRcNoWxNdhfJFtZ9QlhTsY5g33XWEWxF0Uk2/fEYxmZW
	FgN2PDWXZJ0mX7Zl2ElGuu/krYzjFAeTOM3S8L28eHPKe1w9Qh57/icPSQFviXPAlWLo5Uxp
	oxE/B3iUgH4AmIqX7fiMMY+ZONNMzrAnc2e8n5wJpSGMo9cw2aYogg5kWqsUU7oXnQ4Y+x0d
	MnWgdBnG2MqLptuedATj6PiJTDFGL2LqO/XTOp8OZzpa6v9982PullvRKXad1PNHUqczAnoV
	0909Ci4Aj3zgUgy8ObVWKVNqJeoQFXc0SCtVao+oZEH7E5QmMD2ZWFwN6ooHg5oAQoEmwFCo
	0Iu/YxPkBPw46fFkTpMQqzmi4LRNYC6FCefwRxwZcQJaJk3k5Byn5jT/XYRy9UlB5LvyY1nJ
	6KzMh4Y9sTpNWGRf1uakgkNrw7x2vhZd6ndrla/pzqn03UREb5XVoFFJLaJru25fbIvpQrcc
	TzjrHZwaWdYekRE2GLCRNfxYIjf/Clk12Ov9KtgWLYm21zU7j9l0foh/0jeTaJm9nPD0s0Vl
	Ye6K68ZPof1Xcmu3B8qAfwV9sl3V/OPNxPhg6P7VlhV+J1phzOH81bV5kiqfywEPdI730Qfs
	4vul9y/I226E9pkHDBvjx4YKDluiZqu30gMhbtm6RBO+D/EYbW0YHnJtE63n5SxcMP8rZ7A0
	XM19ni5L2+CB4y7rRMrzKbvZAlnyUzlf7wh0imXfFwsxbbxUIkY1WulfZgAelyEDAAA=
X-CMS-MailID: 20231025102300epcas5p2c266a078b70614dc948b0e47cd5cf788
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20231025102300epcas5p2c266a078b70614dc948b0e47cd5cf788
References: <20231025102216.50480-1-aakarsh.jain@samsung.com>
	<CGME20231025102300epcas5p2c266a078b70614dc948b0e47cd5cf788@epcas5p2.samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

In MFCv12, some section of firmware gets updated at each MFC run.
Hence we need to reload original firmware for each run at the start.

Cc: linux-fsd@tesla.com
Signed-off-by: Smitha T Murthy <smithatmurthy@gmail.com>
Signed-off-by: Aakarsh Jain <aakarsh.jain@samsung.com>
---
 drivers/media/platform/samsung/s5p-mfc/s5p_mfc_ctrl.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_ctrl.c b/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_ctrl.c
index b49159142c53..057088b9d327 100644
--- a/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_ctrl.c
+++ b/drivers/media/platform/samsung/s5p-mfc/s5p_mfc_ctrl.c
@@ -51,8 +51,9 @@ int s5p_mfc_load_firmware(struct s5p_mfc_dev *dev)
 	 * into kernel. */
 	mfc_debug_enter();
 
-	if (dev->fw_get_done)
-		return 0;
+	if (!IS_MFCV12(dev))
+		if (dev->fw_get_done)
+			return 0;
 
 	for (i = MFC_FW_MAX_VERSIONS - 1; i >= 0; i--) {
 		if (!dev->variant->fw_name[i])
-- 
2.17.1



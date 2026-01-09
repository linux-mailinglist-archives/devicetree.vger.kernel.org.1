Return-Path: <devicetree+bounces-253379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C497D0B77A
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 18:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 44AE6302CA88
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 17:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3E0E36999C;
	Fri,  9 Jan 2026 16:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pSOEp4FN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="km+ENz1e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A67E369228
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 16:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767977929; cv=none; b=OorbVtIS8F1et0FyZ/eBMlBSLiNNyWI7Ge6/tVdMYmlEL9Vj49bEuO+ZFngf6M2JB6ahxzSb1NaEvzBlKucmISWboYq1FV+YtFJQ1p2MJSKHxWLkL1FZ3cbHerpfbSTKJ7QQPL3GJcUND2Uv8adNwS6P2YxktxtHHEi0N/adCZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767977929; c=relaxed/simple;
	bh=46+dN1Wr2iW0/BK6fG/zPk6hr7jUd2kTZ1jgEalx+Y8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SDHTkwt1kzXwSuJ0Je3m9c0GV5yYBIVsNspWvb/soNO9K5egD+eakfefSVrJyhIuxr9+2nISoJQjrdFZ923NeeDYUzazvYJdr+fGIVcO2mUidyDrLooD1ufZ3TmugXr6f9hnntVcWSRnLc64jhy6LznQD0G52dhd2KZB6Z9BCbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pSOEp4FN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=km+ENz1e; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 609GOKG11638082
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 16:58:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ms6tRibMZn/vZL9r+qf7/fS0pNW7QVbS6EPzdsel7IY=; b=pSOEp4FNvNGihwit
	ifEoYbdVK9KNCWJHNFjGj4HSDMB0kqe14DD7PZBtal9hywH9N/t9TeCZzLggsMPE
	8nAih9mBcRGHGGZpImSouDQOK8+CAt3Ia2cjY9FkKaSRypGnhO48lWNFFoP9yBnx
	G5JNfUvzgcwtdh9VewMhUVNWZHg9D78gO8rGwImgVcgieqFotWx7aOiCRYdLOb04
	mZm1Ni/HADOBx2Zjgo6DHWCiiOZBXljnGJlvHa6P+M95dTsjLA+HNy+KcSi1qDOs
	Uwj71sgo65zs/u9S82UoD5o2O6nbC6pis1eh8wzAm5l0Zym1459LRbLRlymzIEso
	BX24FA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bk55kr2ve-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 16:58:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c38129a433so1096418085a.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 08:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767977919; x=1768582719; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ms6tRibMZn/vZL9r+qf7/fS0pNW7QVbS6EPzdsel7IY=;
        b=km+ENz1e/5wUsbjUrCEByC1veHQiv2/ZG7E0Zx/C66TNZVJcz1fzDpWVVKE5FEObj6
         b8Rg/OiZMxOcM6+JfOuEVuq1ptVdHVPimx63d+lkMqo3ElCDBA2qS6nFkQmqKMzHhbUI
         6dvYQCD40GPOJfI+NIMb3lFvcKEENPItUC0w8w3hyLFu8qd7NcmxwVOTpp3V7Hs/AoY7
         qTufdbvhMw3wn9MKE2KtjKR7UqN/mpBnKR84JrtQVdRHLQ2Ey6ALNSklnITm/n1/DqH/
         XN8deyAJqGAVa51r6f2AWooGFNpSbMcPT0bdg3m4JAHq/HUz8X7BRxXp5yhXVcrfALbg
         PPhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767977919; x=1768582719;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ms6tRibMZn/vZL9r+qf7/fS0pNW7QVbS6EPzdsel7IY=;
        b=MtHBzjoKCLatX7QfEm/oqp4S1N5F4tk1Qt1p68pVu27QZBU8MdmVBsjLXgAZdY5Esl
         oxhWfha9CxvUsn2cHBs3BJrXgObUAEIvCyRMrakyaCn4fuUpTfvqFYZm8d4SPTkWVKhE
         5ixcmjZIpGy9eNtW/Io5BTFa/f/KwWhp6ReNzi0n1R4ZZnGBuiwKGY2uf2UX18+tjqOR
         B8mulukCkxES+1YtLsTBkztwyl5xYum4ulmc2vOsUTiayKd6BWDthcsbg+OgunPANwb/
         jcAjFWxhC+LZQk1bHHvh/oGgZDhwvlHM8LpmflzBFrjkt0R6rlmxw/XqUsHZKAKAJucI
         SMeA==
X-Forwarded-Encrypted: i=1; AJvYcCUGQ2Zh16tZj49Y1gucyRirZMdW3E6PIp2dw81s+HTLY4XMbxlzvV9Zr7zANfFOuUM/tM9f73cQE5x9@vger.kernel.org
X-Gm-Message-State: AOJu0YzdfjALMwubkFQiwXaxG+MTtS9l0SHYUmibpWzDo0cuf/9hYKfU
	5tNaNkSPMU4PJ3udeq3r1RMx3qBJgVyXYOmSw/Ile1iD6KyDVQkMZf9YT/fT5hLnO3SpBZwjDf3
	9uRUjmCAalQFFaFB+ZYeNony5Cz9okxqLyrVmj1SF59PIMrIG0bzSF2Tfxat3xAGl
X-Gm-Gg: AY/fxX78lNBI43vX+VYeu9KaAOgemLRPSQ1JVic8Ur3IAN2BSwFEZb+DoFOb0Mw28hL
	IYwEye3BLrdK0eWM3nVw/j5hgLEgaenMW2d3x1eL5fT42JAYgSWSEztKfa72SRr3XlXN0ERrET0
	c5STRUVQVUGvBifo2nLsqIZi/qfAu1hx/JFwkHZUWzhD5GhOHr3aJj/TcKtEfSaYwsKKQBQhSwe
	7BuIignctXkwc4Au/A5eX61H99PmB5BFfQVbaTRcEwbmr0GtzIn+u+dx3eVyTcTjaLjexE8mUW3
	0OF5oFW3+vlXQZoaxFVGG97BnL0yJKmwBpeHW2m98wq4VEui+lADdowzXabnED6kbOf5/P/dpc1
	nwCzPMXubV8gC5hX5csSBI5LKxPE322BYzg==
X-Received: by 2002:a05:620a:410e:b0:8b2:e9d2:9c69 with SMTP id af79cd13be357-8c389392416mr1382473785a.22.1767977919124;
        Fri, 09 Jan 2026 08:58:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwg753kf5uZPuL/ts3/1VM0NbhxSNDo5KXXx8Nlx3hwU9BTSSZmTTpcwzS9dlUqhVQ3PB/Ug==
X-Received: by 2002:a05:620a:410e:b0:8b2:e9d2:9c69 with SMTP id af79cd13be357-8c389392416mr1382467785a.22.1767977918488;
        Fri, 09 Jan 2026 08:58:38 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee243sm23231784f8f.31.2026.01.09.08.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 08:58:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 09 Jan 2026 17:57:56 +0100
Subject: [PATCH v3 12/12] media: samsung: exynos4-is: Simplify with scoped
 for each OF child loop
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260109-of-for-each-compatible-scoped-v3-12-c22fa2c0749a@oss.qualcomm.com>
References: <20260109-of-for-each-compatible-scoped-v3-0-c22fa2c0749a@oss.qualcomm.com>
In-Reply-To: <20260109-of-for-each-compatible-scoped-v3-0-c22fa2c0749a@oss.qualcomm.com>
To: Miguel Ojeda <ojeda@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@google.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
        Bill Wendling <morbo@google.com>,
        Justin Stitt <justinstitt@google.com>,
        Russell King <linux@armlinux.org.uk>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Madhavan Srinivasan <maddy@linux.ibm.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Nipun Gupta <nipun.gupta@amd.com>,
        Nikhil Agarwal <nikhil.agarwal@amd.com>,
        Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Vinod Koul <vkoul@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        llvm@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        linux-clk@vger.kernel.org, imx@lists.linux.dev,
        dmaengine@vger.kernel.org, linux-media@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1568;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=46+dN1Wr2iW0/BK6fG/zPk6hr7jUd2kTZ1jgEalx+Y8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpYTOaXjxvTt/ySukjArTvuXv0saPpVyuR5oc3G
 Bq6+PS/Rd6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWEzmgAKCRDBN2bmhouD
 11AHD/43uD+XZcx4LF4NkQnOa9Yvx0EAGD+NHIwK5BMG2xh/33lfGTAvbYPAoBQJNjzwRJ6JVbq
 FRbVqXrKSCuIx23a7i5XeOKdUk0ztOsgM/Tw0rHVz7Tzb2dBHVMvhGD8fa8pulvSCwlEcBmcmOQ
 6yJ6YEBd6dCgCJaSSBVJyYxgKyQh9W0ti47PLPQuXlvxj+L1bcd5V8jWs5oIxrDZ5oDHzKtkyzM
 oSmvu5pl08Lzx8YtTlr/mFnscu9VJ7H1RrRVvS0vnXXCBKb9aGjOsse0VhzamJSO4iVjCOEJgB7
 pUCe/pX1YrxgSpphl6c79yovha3c+H0ywy63/9Baptla7q2QlSQAmh9Ki/hcnWcrsmoiRLknL2j
 UbzhioQQFfU9661sn9HXpMJiqRcpPqWKjWZ8hhnJ+otzp24g1576RS4q6mfFZH85nXd8KV5fNmj
 okEbo+acC1XOnnJ9mm5dIa2DxxIyPdRwno6ntvIPDeZXVUlwgfQWbQnPxF5MGaqkI58Y/52z4La
 dpT4NWWyI/PDm8q8a0iyYkMTG/awTyRAsMpMKcfQqb/qhi2J9GfDi1dgeAAT/lS3ZugrLhDtHhL
 YdmfOJh4JzvbmTNjwM03w8eHgw2xZHAXdy9QTgaZlaMW9No0RFEU0jQiSaPB2S5FCrctBttK2oa
 mjpJLQG4T1vyVew==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=cpCWUl4i c=1 sm=1 tr=0 ts=696133c0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=i0EeH86SAAAA:8
 a=2mm1MoeH4kfNTzOWiPUA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: t7HGy8aZuHM9zOmi1MAiXsSKabMv8gmK
X-Proofpoint-ORIG-GUID: t7HGy8aZuHM9zOmi1MAiXsSKabMv8gmK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDEyOCBTYWx0ZWRfX8LZR6PeoKsyU
 G05ouf359PiNTYScZeXQpE0oGSTBvnac5gzAobLTdFkPqzHOtVHqAmsY25H5OiwvO/RZgGU4zV8
 YEheuBmWs324yKfCKSAwt+RSO+TdFJWLRguoXUx7BtK4MUcxSp68vdLjiuTkQlunr3J7U7nNzXp
 fjFrZb0hlDaV85SsnUlwzd6m06oC8VtQV3Opkh0SN89fxFF530c2/fpbCndvv9kQVUW2WA3wBAC
 zIcE6RuhZPJbBZ7oJm3J6a844DLdTgAQrh1JMFrsMdGKqvYHuBjcsLD7Qz3F4+DQEbG7ofZ1xsh
 hnHW61CMrJo8pG6LBhYSJrKBs3chfYCGsaffOugFvyaEGImzZSJgFSp5w/ww7nmEcGTuAn62tmn
 tnLEo+3v+LRUiAfQiShFbI0XW5C4pto6HQbulk3Y/X0EUnRVEwaVIn7OS/Ml5Yx2lWss+Ss2WRw
 uW3RqrjOF47jgfQGKMA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_05,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 clxscore=1015 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090128

Use scoped for_each_compatible_node_scoped() loop when iterating over
device nodes to make code a bit simpler.

Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

Depends on the first patch and on:
https://lore.kernel.org/all/20260102124955.64904-2-krzysztof.kozlowski@oss.qualcomm.com/
---
 drivers/media/platform/samsung/exynos4-is/fimc-is.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/samsung/exynos4-is/fimc-is.c b/drivers/media/platform/samsung/exynos4-is/fimc-is.c
index 14d84cc96831..b7d9bfedd590 100644
--- a/drivers/media/platform/samsung/exynos4-is/fimc-is.c
+++ b/drivers/media/platform/samsung/exynos4-is/fimc-is.c
@@ -200,21 +200,19 @@ static int fimc_is_parse_sensor_config(struct fimc_is *is, unsigned int index,
 
 static int fimc_is_register_subdevs(struct fimc_is *is)
 {
-	struct device_node *i2c_bus;
 	int ret, index = 0;
 
 	ret = fimc_isp_subdev_create(&is->isp);
 	if (ret < 0)
 		return ret;
 
-	for_each_compatible_node(i2c_bus, NULL, "samsung,exynos4212-i2c-isp") {
+	for_each_compatible_node_scoped(i2c_bus, NULL, "samsung,exynos4212-i2c-isp") {
 		for_each_available_child_of_node_scoped(i2c_bus, child) {
 			ret = fimc_is_parse_sensor_config(is, index, child);
 
-			if (ret < 0 || index >= FIMC_IS_SENSORS_NUM) {
-				of_node_put(i2c_bus);
+			if (ret < 0 || index >= FIMC_IS_SENSORS_NUM)
 				return ret;
-			}
+
 			index++;
 		}
 	}

-- 
2.51.0



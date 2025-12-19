Return-Path: <devicetree+bounces-248182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FA9CCFA6D
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:47:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8DD830D0E16
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF5D322B8B;
	Fri, 19 Dec 2025 11:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B3F+9YN+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V43qshir"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD02B320CC9
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766144585; cv=none; b=iTRmv6PqztyQVtlxZFesKFkfVrZ6a0b7aVyWuCDKcgjbAx35vpyKujkCLVhUQBpVWky8zY7/wwIqSeSIK1SZl70+gxu3ePEpZ4ZKZVxYqJN0/C7d2Z74HbOCb9cq8YQPS66UIRLTtSuHjb5BKDRVrDUKyfMlECWhMmgqtCZxzYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766144585; c=relaxed/simple;
	bh=0xsYNaey6JAOZlOGT4ZeTLf/86/izfxYeYtsk5mB/FY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=olKdcB9T79AAVtyuUyzVXUcTFtw6E56Fig1viTWH6Kdc1lTDe4XxXNhZFvK4FPWT2aS+W/IIO7btXHiOIYH+gsHQ0fy4N/xbCSxC1khgUC4D8OBgi5SstuR2FSKeZI3cA9fSAIboLIOpGCDbR+ulkc0luw+66OvfdMu/2fptfCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B3F+9YN+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V43qshir; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cN0k3700872
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:43:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	toP+4hHDSoxB8780ojreFhm/a4J1ZHDTB+HRCD79Zhc=; b=B3F+9YN+jWefr77j
	h+kL+X0o5z72id6q20kST95IstYJSgUswHV+udx4ZeilOqbX5rZpNWghQJK0DNei
	Nl/qpIX9KMz2CG5ue4C8W/Vk/bks1+lK56bNIp3kgcwXu8K88gXDorG80Eu38B/8
	OHlhdAV5Fqauq1nm1Y4y81nxFim9rsnXpIKJifkwe3Nj/RWYV6OXuDmGNPCDwx/Y
	5WLejG9/EF8di+1ix+rl2VsdwXH1EBeGMqzuOdrmmYpQ4cp+DUkkfpNgDMKg01XG
	leRxEKGtZpaKvvrX3ZfqELd5bX84kSsIsEv/991WlY0HXMWnapOMPSSTX/P0Kyf7
	sUU8GQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2ejetm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:43:01 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0995fa85so42837031cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766144581; x=1766749381; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=toP+4hHDSoxB8780ojreFhm/a4J1ZHDTB+HRCD79Zhc=;
        b=V43qshirdHnITyDXBWkUIDt91OvOSYwJjtGplSn345HEcIV3SU32N6mbQUmYY7gRUK
         n12OjwCrert70Z93uSDQTd/KcOV7PBSdzQ+VLcVRU9LuQdzDhX+O7nSZI05rOz9jFjQW
         tG+GGA24ONqXNDZPhbd0Iz+c01SK/UqH5LtsFpPYCerQtiXy8qL9lLUhxNbHupWhkQfW
         Xn8akPytmbX6r93H1OZXqSPT7MdqlpD0hCPjakPoAQdohHWyK6fyd/Xbzl6imlUE2Iz0
         WScdJG8L64pwJ3R6eC41xpfJPa0usqJ5GYiez9iPrCI1puKbdmw7679F3hKeemgiRibb
         LzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766144581; x=1766749381;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=toP+4hHDSoxB8780ojreFhm/a4J1ZHDTB+HRCD79Zhc=;
        b=Qdv+t3P+3RqF6zBWEJbwnauSWjCCCn5ZsZRFY/mCQBcnIb8UhlLkMcYlUASlvenRwX
         Ipaz/yTJQp0MrrQdIFsS77Yh9NeRbrTtWLmOHoJ+m0jlSxm6cNF1/iSywWAoIddv9kPt
         1ML3zUaK63dh5C98XdPfDUzez4VgqP9a8EkwVgs3EdvMz90ncYxfmOCR72SOmFG3+8Hq
         hbQMTENk2EUc0WVU56JEMz7EPHD+g/eSHcKthA4RTz2tOGHn+RTeFdVKgPsIZ8qX9npf
         Zi+8WC90gj7/KW2tO2P4VbczdDUD/qAW3WDciTNJvCj7w1nANrdhfGaybBPV5Yk3Chun
         ooEA==
X-Forwarded-Encrypted: i=1; AJvYcCUlU76NZtVYJrUiaFS4rGM2WysvscAbdBctkdKBpAYIe9h+/HdeJw1DcF18XO7GmAECN0ReoiWYTxhW@vger.kernel.org
X-Gm-Message-State: AOJu0YyFRwR6xe+tNwRfY9sNekF/ubtg/pqn95w2eaHU5HZ5eF15qmAI
	WCyZxUKOb6g31TlKqa3Tfwm3kCBFQc2OTXp28U7HpHmZ9SCJ/boSXeZM2B5uttR/yAT1TU+XaZm
	1DF71F/aQRUsn50LjTkRcCdC/LN6pqnDprijO9FrNhZBDzxOaSYsiFgcfQOYpr//S
X-Gm-Gg: AY/fxX5VWPJTFvnHk3+3qwJ3SB8cCR3XneK4zbPoxOXuP+1tYjfnSfnQuPtcpm4OQdb
	hNmFMBelnD2W1QTpAUCLcnsp79JPpA6GRxSSR21AJvQjrBblyu5Aaw/g6CWfi5qtDUEiEZTQ2+R
	E/R/FrKbLLrHFXiDlI2I6dEpyIiTUsyU6Ud3uq+MjV951ByTrgfuO5Jjnr/OJH6nJ3YgS6QNS9L
	9TUH5CRY+DMI1AuaIeICWmZWJm761tHJ5BzTCsYqkWuJvJiCHwqBAWihXggJf8tz/wtD2JOYbg4
	+S/GAOz0I2UJPqvl3nM9nWHfE37MJY5anhrvjfdGjrXXpTBkvzf91Vuo5ywL/91mOPZQSoGRAZN
	HXtKRCKhA/C6juP7pHztkaElF4xBqmDldEfw5W2E=
X-Received: by 2002:a05:622a:2cb:b0:4ec:f31a:1496 with SMTP id d75a77b69052e-4f4abd8e7f8mr33969171cf.56.1766144581152;
        Fri, 19 Dec 2025 03:43:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5jbLqM0SggQoZoqxYXl/yWMOKAuP4NS3/zbdcovR8zaHbvZkAv+xrhVScVhbR/IDMWeLfLA==
X-Received: by 2002:a05:622a:2cb:b0:4ec:f31a:1496 with SMTP id d75a77b69052e-4f4abd8e7f8mr33968661cf.56.1766144580591;
        Fri, 19 Dec 2025 03:43:00 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:d857:5c4e:6d25:707c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193d4f09sm41134425e9.12.2025.12.19.03.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 03:43:00 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 12:42:21 +0100
Subject: [PATCH v6 6/7] net: stmmac: qcom-ethqos: define a callback for
 setting the serdes speed
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-qcom-sa8255p-emac-v6-6-487f1082461e@oss.qualcomm.com>
References: <20251219-qcom-sa8255p-emac-v6-0-487f1082461e@oss.qualcomm.com>
In-Reply-To: <20251219-qcom-sa8255p-emac-v6-0-487f1082461e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vinod Koul <vkoul@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Jose Abreu <joabreu@synopsys.com>, Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Matthew Gerlach <matthew.gerlach@altera.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Keguang Zhang <keguang.zhang@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com,
        Romain Gantois <romain.gantois@bootlin.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Heiko Stuebner <heiko@sntech.de>, Chen Wang <unicorn_wang@outlook.com>,
        Inochi Amaoto <inochiama@gmail.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Minda Chen <minda.chen@starfivetech.com>,
        Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>,
        Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Shuang Liang <liangshuang@eswincomputing.com>,
        Zhi Li <lizhi2@eswincomputing.com>,
        Shangjuan Wei <weishangjuan@eswincomputing.com>,
        "G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>,
        Clark Wang <xiaoning.wang@nxp.com>, Linux Team <linux-imx@nxp.com>,
        Frank Li <Frank.Li@nxp.com>, David Wu <david.wu@rock-chips.com>,
        Samin Guo <samin.guo@starfivetech.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Swathi K S <swathi.ks@samsung.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1933;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=/9AVH+OLPVBYkTZnu8Dy/MAFFgxoNMd7J+eOs2UC7Uk=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpRTovz4KhkkaA0q1/bxvZ0VVJsd0md/pcMO4QP
 6kalt0ntniJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaUU6LwAKCRAFnS7L/zaE
 w3Y7EACiTaf/AxXHvCBwgf5ZWLPoK5VqY6uMwyZrsrZsZ0H/zZOzbpz39hwncnMmgUTNBortv61
 rMYaV+GDCW0TLkw9TQxq4PUztMvCVNSWom3cT0srO/GBBaVIPCSS4IhTXusjmAh/XWoGs3h726Z
 2zqrpzLp+onwSvqpm175NpEcjzNBAbCIsb6YzwYRBF8AbY4y4uxhUIjTL4TpAURdV23fpTsCYzY
 TZ6jYK4S8BsJZc+1LhTqVWxyzkjz36VFUMzRhx9Qpu7DQaniKas6+NmVKgLY+ayc58FKnlyuOJr
 uGLNis71NNRkltPgJdx3HZm+yq9V3w4DdgAZurF9+498tKvBKGDmgoo26mqtdZStrHJJ0WnXJz+
 wmrcYMRFFBrIh9UNWqH2atCmsJpTmHzskAWR1hBdO/0jgw6fiIMsYX8kvbXSBzkKVIXOk8WoFtg
 UldB9/qaWJ7Nwkn3zPy8DTaFuMCNwb+WQA8IgGRVxO6Mh6YLnR4tP2H0hktD1UpcGYOYDyYFUJX
 40LfNVv5YUh7zMhcXlX/1k7r3PuC4KYTfLDDviob4nKo3xWfl87Rlv8U39PGwEr7qxFXv74g4jH
 x6XsiMfIoF/Vux1BLfET/tuwxNXCrTHEOnlJGQSb5vqEcNm8iMHrpwMi4kGouyL8U738LKYcOHY
 2L9+//6O4WaTsFg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: 6YxHgCujCiK7GwvX9QLZlEOkF8ivTgzN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA5NiBTYWx0ZWRfXyvv0iPrKGDNk
 ln7j9POYfxi0WEUT341RwMdmCYr60kJQ8lkoJeRR9knFkCHtKFn6tbKQHRZk2pPo6mgrQWh6MRW
 MNoqqbeDmNyTugu449K/bQT7mKxqx1SOg+1ydsr0xlAcCTWO1pn9RsDfQj1ZUcMPhofQDpoMobe
 ZCcFxz43hFKI5LRIcDmfgWT6d00qq4uSkq+alq24dT0yWOFOJ9ojOp75uMMj9XjkeqgJkvum/NB
 ZLUoZ0s8IWEp/+DlWJIf1nPcs24Q1iAAeyXNZWYr4xvwxjDq9jYpAFUVrgKG7GA561uDahVtLfp
 k4aceB/E+XEhmVpz+moncBf+Hdu80S5Sb4dk1miZRJRaoJaNWDFcnf/0UfyBj2rjImbmS8leyvC
 BN7JUlFOrCIOCUW61zQVkg8hqlhEd7qFibyLa5uWv3SkgQHZkUTOX9hMBYufPXTMW553X4Qqjmn
 4n3bWanSxmMyQNYsqig==
X-Proofpoint-ORIG-GUID: 6YxHgCujCiK7GwvX9QLZlEOkF8ivTgzN
X-Authority-Analysis: v=2.4 cv=EabFgfmC c=1 sm=1 tr=0 ts=69453a45 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=0aI5G4bYpHrJQa0XwroA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190096

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Ahead of adding support for firmware driven power management, let's
allow different ways of setting the PHY speed. To that end create a
callback with a single implementation for now, that will be extended
later.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 856fa2c7c896..8ba57bba3f2e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -120,6 +120,7 @@ struct qcom_ethqos {
 	struct ethqos_emac_pm_ctx pm;
 	phy_interface_t phy_mode;
 	int serdes_speed;
+	int (*set_serdes_speed)(struct qcom_ethqos *ethqos);
 
 	const struct ethqos_emac_por *por;
 	unsigned int num_por;
@@ -617,11 +618,16 @@ static int ethqos_configure_rgmii(struct qcom_ethqos *ethqos, int speed)
 	return 0;
 }
 
+static int ethqos_set_serdes_speed_phy(struct qcom_ethqos *ethqos)
+{
+	return phy_set_speed(ethqos->pm.serdes_phy, ethqos->serdes_speed);
+}
+
 static void ethqos_set_serdes_speed(struct qcom_ethqos *ethqos, int speed)
 {
 	if (ethqos->serdes_speed != speed) {
-		phy_set_speed(ethqos->pm.serdes_phy, speed);
 		ethqos->serdes_speed = speed;
+		ethqos->set_serdes_speed(ethqos);
 	}
 }
 
@@ -838,6 +844,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(ethqos->pm.serdes_phy),
 				     "Failed to get serdes phy\n");
 
+	ethqos->set_serdes_speed = ethqos_set_serdes_speed_phy;
 	ethqos->serdes_speed = SPEED_1000;
 	ethqos_update_link_clk(ethqos, SPEED_1000);
 	ethqos_set_func_clk_en(ethqos);

-- 
2.47.3



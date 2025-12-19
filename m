Return-Path: <devicetree+bounces-248178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA95CCCFA37
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:44:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3544308E169
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A49B631CA50;
	Fri, 19 Dec 2025 11:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="baVyyRmV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mv0grMH2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD0331AF1F
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766144576; cv=none; b=s9cEiulCdp6/3MyHbatGOm+/VtdeImKLNr8j9ZgkN8UX8n+7wmIYtbJBPXR57jcELLoIhzj049EsdTb3UnhnEYXmXjeUe5gR0zuL21cAJTDdZ+Gox2q0dv89JsH1ntCiNmsuiPmIPbrcqoFQMjeLm4VY8SkGjJCK/cLeV/dVzoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766144576; c=relaxed/simple;
	bh=vz55WKLv9MqMj6ZaZ4o/dBsGV4xMVrdFm05O4/d4K9g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nHdWtN8g4tAY+inV6YQZAoVFHgkbO86agGbrtYrsdXLKzGNJMpE9/jv5LC4gEkb978yZRFxDXBCvkVvEKaCKXOI3j5feRI2i1UJ5WHYJzjiSYpuvBICbhNIpku6fwX6iSbRbA/UZFHw+3UeDt6/A9+Nae+JITAa7FfBafZVO9TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=baVyyRmV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mv0grMH2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cUS43700913
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:42:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K9hvV8W0Fs1uVguUAxm1aJsUfmJwU3xS8/jxABF3lgY=; b=baVyyRmVfe9qj4sa
	pHFnT1QI9blnNeCFEOBU09p93csi463TZABWAaQSphX+XMncivwy66FwbkZaU0+Y
	I4Xn4T73pBN8ObNTB+GTaNBOsOqX6iAkRXPUf/14XVNVDXPq58JfQUHE2BWOKKSL
	4CPL4kOqBvLufXbmohZ72SvWZNI/NySIicIsk3zVfShhBWrgonVBq6y/9OhHXvmm
	N+UGWI2y78BXM679V/tboUk+GSFVKfcA9puMmdV+M/Qf8OW+oEBK797+PGZVvyi2
	hEKYdPo0Ysc0H2zSiH1beqFimry66v0UpCHbyGyKdw+3h+uwBgRvFVm4u7N8WuxQ
	Togz7w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2ejese-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:42:50 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4eff973c491so37354821cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766144570; x=1766749370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K9hvV8W0Fs1uVguUAxm1aJsUfmJwU3xS8/jxABF3lgY=;
        b=Mv0grMH2iNyYsXsGzToq9n2IEE5acg+QeFDHuW5FsYYm4AxoVLr4TY7diYao0Vou1g
         5T1POeo1wEuBTuvMqeoYx+vtuWS6GvgvZDf4zow7om3Ow6olQZcocAjMInXDjc8uoOwm
         VW6hbVHDPZSBFuyDzxCLJUksVBDPf1PxtgZvxkjoAOEw8mxQk95AMYsuH8bAPefcGWPw
         3yJQvv0d2mU8RJCPZtga8Zl0Ah+eeVNKzKXnMljJnGHHV3b0Y5AXo6Qc8yd95585YtIW
         PA1V0ffsXPKXlSB+XSdPL6JDdEYdb9+dRw3CqkQOLTnDHENdTkWbN+VDO14RbbcEs3cU
         km9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766144570; x=1766749370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K9hvV8W0Fs1uVguUAxm1aJsUfmJwU3xS8/jxABF3lgY=;
        b=KvMTdB1MRbD3YAy5neeV56I39G2KDgwQuhTYVb3kATW03NzeegY0We200SeS2dJLy+
         nPgpoFZLbACET+BZ+K80sQQ78tYiMIbwboO8Q22spQBWwur5YpM5hKpqBmvR8YgbrTsH
         EoLWoJKdPeZLC3PgAbxzwz3dMd71z6g8s0P7JYUJUoobbb7zwaIIUS/oBuEo/Fech56n
         PPCTbHvXR2WnSPOk6fTUZmnG42EvSUOV5Xid5KTK6yVsxkETrCJ0Dub64Udpwrxxazsv
         mMbCAA3esUa8A+mbIKZmEtIsavq2kv7u1OYR/XN4izMxnHqStjYD10GnjZ9bAg248ACE
         sOwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVa9SallqV0nKwrFXVFaH8GI6ePa1AlL1ugMlihgGxL77STPkaeYoscu7tt22sJF2Th7gdzHDfC7lo3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5URnRe9XOcSTgfnSucy2ldq5/id0soXoccXcYooMXDLkTQHHU
	fWI+RvCNbksGBWasA+CnocxEKF9yvrRsLU5r30DQmsFdV4MfBUOr0RIV6NZWMvQGudOxBzVVQyN
	yDbKCN7QOvhpDCYRrOk9TtyAYTv3PCmNEda2fJ2lNFUrsfzWLETZmsniFPRU+zH6V
X-Gm-Gg: AY/fxX5Ou0CtjgJaIwefxDRgm5+J/KDZRo89jR/183cY/XtHip3GNkYUQywiwvMqwKf
	gfpd0eTvXBQG9nrM5od8ugQ5fdhtJpd3ctUOPq+A2btb9cQJyPVeV32g+xpCpr/1FpJzXPBvABs
	mi26KVUxUlooS3KHTh6k2o10SeEfjP6CQY676m1G4cQnnC+zQe6Ff+0qfHIXr5RS70ERlIri1dk
	9VD21IpthKLV96vAniFnUq7xF5U492GokiYncK+soIf1hMZEKjpWIeoslJLh7oPcewa/dt7ZFMq
	oFhPqrYkXvad9Bj58lQv0mWrwfFzhDfG96DrGECO4V69ThilKxHWS4AuDTGQg7oKdx+bmoieoZv
	ilnzVzxuljCHaqpyfL/0qWhBlxmcny3b8v2nwiCE=
X-Received: by 2002:a05:622a:180b:b0:4f3:58e4:a35a with SMTP id d75a77b69052e-4f4abde3e12mr32877821cf.76.1766144570071;
        Fri, 19 Dec 2025 03:42:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECiVptxgXjkIKJmiC4JmYWvSqGKkOWSJZ9Q21CIYcj007Vfa/jr3CTRomRkZ9N2QHy8fFZnA==
X-Received: by 2002:a05:622a:180b:b0:4f3:58e4:a35a with SMTP id d75a77b69052e-4f4abde3e12mr32877161cf.76.1766144569549;
        Fri, 19 Dec 2025 03:42:49 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:d857:5c4e:6d25:707c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193d4f09sm41134425e9.12.2025.12.19.03.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 03:42:49 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 12:42:17 +0100
Subject: [PATCH v6 2/7] net: stmmac: qcom-ethqos: use generic device
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-qcom-sa8255p-emac-v6-2-487f1082461e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2859;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=knjXZj6R/hueaGnR6/EXXoMJkQxuh7Sk2qPaMWFoa38=;
 b=owEBbAKT/ZANAwAKAQWdLsv/NoTDAcsmYgBpRToqOS8oyUwzdZ6bFwCOj8uhGQOQzcwFVxmQ3
 nVgvnnvtpCJAjIEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaUU6KgAKCRAFnS7L/zaE
 w91BD/Y+GeL1VbPY7IpcOD77EGxUIV7J9nZjHIfpW/lrdgeZuAYZCJoFR8yeKeZNZm+sC7Pf3WG
 DWsngV3W6tkRAbNKdIhbE+SwFne8d/w+C2SbN/tFi7w9galITpYTIo86czSnZRxJFGw/eHAa2j3
 estndX0VbgY+KAY37zDxHrDSmaI3rHv+nXx8YWLL+hL0ZWrK2qNNBb5q+m4vg42btlEt+9009Te
 4dx2Zfj7sH2I9+Q19A64leq0U9B9YekTPUDlhDfJ6E09jx5FM1csMFiaik0chB6DtiQ1/+mg6X+
 Hl9UB2Ihg93Smwu/8qJfKhL/4CQynSGGdzO6MTZJ0CBfyEkdR12eIzT20VNQ0Hv4aa6bktCbIiV
 bf5tMHkgVGpGNGx92Shhsd0IR5KTANJlOAxIw6BYqLepW8xFZStepSwM+gl02XYUjtWnbkgnQMe
 kZGEJbKYUnK+xRKz66PmMd+FEG5PBO/AasDrchuQYEAqxg8+GThb83raYr8aPfTjpEtxqcUvyRV
 k7qPoi7ufE/94WUtbC6VC8oXOO5np41VDm0Dq11txOLEHQUVidpxRkH7Fg61mG/qW4LIWpUNUqx
 Wm1v7aok+LcMIRPnPokWeXU+V8m1JdsjneNGv31WchSnoyXsDBwiVevbXHuv4+2C2UQ3pHXT4Fx
 Djn1tdjEHMc+S
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: WXaLGHX3mwgTfGuhLd_rE_UF8R0hmaWa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA5NiBTYWx0ZWRfXzn0iEYxoNEDY
 T1it/ryuegqeMeo0LZnp7bb724GgtXbaNtvv80RfXAa1wgRERwLBHItm8ALntH5EuUjHq4YE1EA
 oZ/wAB5ipOfN+/O70CU3t0t8jjhFYEUtGyLIXuLHw2i7L6GbXF74asunyC30CeMZ/I5pBIgZg88
 XodoPKskVIsfCMAmHzxJsnWB1MQZC9N3iDap26ICIlys811j4cG0kDhgGsthGfhTHMInakQJYSV
 2EEQMAX8MjJp5lWeufbhu3/wMuYbfCMO8N8nkONBa9aTtwaK5gSrrUWAgoYHrn07kZrqREnSBUL
 fy355fMok3Z8TmKMYPuaSlGgBD3dDYApjTL4r/KRHb3BqAyAPAqPuFARfhk17pcu3Heq0Vgkdhd
 wic7TAoN0jPFN4EnODgR1O57UcPEoLu8DGbHD1XPMu+FY+wJJss/8lHuIEujB/PmNH5fG73cpxH
 HQZmXFVlIaMPFBfONyQ==
X-Proofpoint-ORIG-GUID: WXaLGHX3mwgTfGuhLd_rE_UF8R0hmaWa
X-Authority-Analysis: v=2.4 cv=EabFgfmC c=1 sm=1 tr=0 ts=69453a3a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=aGGWjMbO5e2og8PNdkwA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190096

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

In order to drop the dependency on CONFIG_OF, convert all device property
getters from OF-specific to generic device properties and stop pulling
in any linux/of.h symbols.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig             | 2 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index 907fe2e927f0..1310312e3e09 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -135,7 +135,7 @@ config DWMAC_MESON
 config DWMAC_QCOM_ETHQOS
 	tristate "Qualcomm ETHQOS support"
 	default ARCH_QCOM
-	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on ARCH_QCOM || COMPILE_TEST
 	help
 	  Support for the Qualcomm ETHQOS core.
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 0826a7bd32ff..457748e57812 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2018-19, Linaro Limited
 
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of.h>
 #include <linux/of_net.h>
 #include <linux/platform_device.h>
 #include <linux/phy.h>
@@ -723,7 +723,6 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
 	const struct ethqos_emac_driver_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
@@ -774,7 +773,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 	ethqos->mac_base = stmmac_res.addr;
 
-	data = of_device_get_match_data(dev);
+	data = device_get_match_data(dev);
 	ethqos->por = data->por;
 	ethqos->num_por = data->num_por;
 	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
@@ -811,9 +810,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (ethqos->has_emac_ge_3)
 		plat_dat->dwmac4_addrs = &data->dwmac4_addrs;
 	plat_dat->pmt = 1;
-	if (of_property_read_bool(np, "snps,tso"))
+	if (device_property_present(dev, "snps,tso"))
 		plat_dat->flags |= STMMAC_FLAG_TSO_EN;
-	if (of_device_is_compatible(np, "qcom,qcs404-ethqos"))
+	if (device_is_compatible(dev, "qcom,qcs404-ethqos"))
 		plat_dat->flags |= STMMAC_FLAG_RX_CLK_RUNS_IN_LPI;
 	if (data->dma_addr_width)
 		plat_dat->host_dma_width = data->dma_addr_width;

-- 
2.47.3



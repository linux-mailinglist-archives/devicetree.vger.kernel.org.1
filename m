Return-Path: <devicetree+bounces-253831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4C4D11D0F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:22:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CA3830B9B8B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:16:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBFD72D0601;
	Mon, 12 Jan 2026 10:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LzKp1vd3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M8QgQphr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D8C30C602
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768213004; cv=none; b=Eb552pwso6uyioc9PgFzruFoW3MXH9erpdXvDo2ydvFjuElyKjYX5I/fCiV/r62NMlXNUfvcN9dJWO+MJcXAxjwm4LKFn3WvTBUolfEuAdnsVd0T9l9x24iAqZ6Hy1rygLGlZ0qyWjFZawFH0I54zRZyBxh32P3CZ9hxuPhnw9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768213004; c=relaxed/simple;
	bh=JYkNUFnUX+YJ4qIOtVGY9FUGSmu6nxkSmB9958/UxOs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jhos6Zev5ngisZsm2KonJAhy4jZX8otSkpvx+xt3MGxQu3CHnxA+61CdF7eCxhQi+9hDWWCPT9gVYw6nrMQDoa206mWjCEGOtDdZPAETThX7fWPR0XjpOpVSrdrBfrtgY3kEEotnxSgF7lALeciLd3OHFACulXrQlW2csoSdE/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LzKp1vd3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M8QgQphr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C8rsIU675693
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:16:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1mI+SoGu++t5t8DDdzkiN7FdMcg5cRsj8gUxzvIA8wg=; b=LzKp1vd3CVvTxyrg
	891A3N3bCDhSzqosNgMudxdOkCW1ACjnF4NR0tLDYL/hiQZMP8SdOTJrz5Fy/HRO
	yPL2rU5xEtH6ftkYw2tfao85xbkTcIvVQVdx822EppUHSztYV4ng7eioRQKX9D1T
	MqFI85XMf5BeOnF3EbDWdn97v3LYIvQ1AHzbJKZUxzzal3t+klOneF0eAIUsHp+L
	/iR4mjt0DYwO2ZtQ+g5Vb0ZhNpV+4VwJ6E/TDQcLmBDy/mdCTCrD1Ty8Sf4M2jCE
	JbJ+YMLhA56yzDQE6HtIRGZdx7inIh7ykX/eb/jGtFF2XUN2PajYZ4/3o0T0PZAy
	EoxMBg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmwur8942-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:16:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bb6a7fea4dso1529747885a.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768212999; x=1768817799; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1mI+SoGu++t5t8DDdzkiN7FdMcg5cRsj8gUxzvIA8wg=;
        b=M8QgQphrDZdrMcGGf103fUnqTqxG9yrcbK7lly32NYZegiMduD26HtUUV1TwVraV6T
         r03FHBdeaFhfpJMGmLu9v4ZJ0SeQVgSTx+wu63Pq6VkJlsYBTIEon1hRuPMWlX0kxWD7
         sspl27/uFE9g+V+8itUubUAhB778fOWgVdYpEH3+472COUb1fT8koUtTdObuozcayJPX
         n5r+kTMl5T9rdBFCRs07A0tceLf50A2vj0R+I2pVFyF8Qe0bBzE5cvaIRUQhMfr5oCzj
         Zxqtf7EdSrl6dNiQ4v3fPF5Ys2aSTVXGFqjEu2mJbNpNESKyoAmaVzlAvxnrxXCbjBw9
         TS+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768212999; x=1768817799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1mI+SoGu++t5t8DDdzkiN7FdMcg5cRsj8gUxzvIA8wg=;
        b=nBoLcSnn9Zc0TwN4aFuEDEQXnK7z38tulck5rwiBxgCiErYBmA6lKFOEve04Qejd+j
         jFxmhyfdTyMF8EI5SdpovjNVoqAZ3RQKUs/9MtYqwgA9pR5QiCM5bP1YJfQKcM/R1LbM
         q6P/kc+dXkc0eQEI95jm4zRlYOry2pDWjPgRYLothMybSviDNseBZLyW04u0tOa6hzLT
         G6rjJ56uSr+ns8CEAlc/+x53yjEgkaMLD1CkmSMzdBmb09jXUFWzduN8P4ta8G2tTm/B
         fkCwq6AmOBiQ0/Ynuu/VoeZCFAeWH8/TcbnPxsJEMjfJwX8wluVhiHbtUbQqtJ2sGTWq
         wSBg==
X-Forwarded-Encrypted: i=1; AJvYcCWKB2zvaB5icp91FZ7y4niqgwDf3vTFwBLyzGXgHAbwILo9pDvmtGTTrjVnKWAAciO0aJkmgwwVs/qL@vger.kernel.org
X-Gm-Message-State: AOJu0YxqMMPVP22UZ3k759QG9LL/vstUaSXPFEC2EXHzQDHYrY2dgsBY
	bxXofxWt7XdZRrRFI/F5PkAYntnV4ut2nVOds7mQ8tlkzPzlxBGiLh1IIOKx9Ia4TgLSPEVBcmJ
	cNlmSCXLOi0Aeh7++B+WWaH1jGq91Gp4M3rBD/h539hR782J8KbbIllV+cY4sx4dH
X-Gm-Gg: AY/fxX7KQOuh6FVFMZKcOixLmdoW5s4/6ZUogZWyhrGFc2ybCdcXx4V8gGZ0qZCGVvr
	3q1chLjOqE2JRcd/A25BP/n8TwERxekwyHZ5IZkEHQhqtSLvXatbJgPh11yY3P7MFI/BSv8ynJ/
	cAZuh4DrFzbztMdg//mM0EblwgsTHSANkqbS58sbk6SVNOKECoE2Ivchtq5ZwOuBBU/j7bCcrdQ
	TKlHsoxPiDhBHpOUQ7bu0tFfto8SAPwLAx/gv4LVJefNy5sPDGFwyyzcmZjpW2bkvYvjIDQ0qEP
	pO+or9Qxdockf9/mhZZKI5YYA7LZYRBxZpsFMlbRvsffQiBy/HRXV3madtI65/T5bJVLm8CzZQN
	2uiSAlJH3idbQVwKCK4c4yu7BIiaN2jrngKuhsX0j
X-Received: by 2002:a05:620a:258c:b0:88f:c0e1:ec2 with SMTP id af79cd13be357-8c3893f7e49mr2354234585a.60.1768212999130;
        Mon, 12 Jan 2026 02:16:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHChba9lYARVO8Wf79JzkrcaWw0Ivu8ZXpRcyXcwijI59hBIn5H5xOpL1yFSlfcxTqLJoYP2A==
X-Received: by 2002:a05:620a:258c:b0:88f:c0e1:ec2 with SMTP id af79cd13be357-8c3893f7e49mr2354228485a.60.1768212998603;
        Mon, 12 Jan 2026 02:16:38 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:eb74:bf66:83a8:4e98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d865f0cf2sm126530355e9.3.2026.01.12.02.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 02:16:38 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:15:45 +0100
Subject: [PATCH RESEND net-next v6 6/7] net: stmmac: qcom-ethqos: define a
 callback for setting the serdes speed
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-qcom-sa8255p-emac-v6-6-86a3d4b2ad83@oss.qualcomm.com>
References: <20260112-qcom-sa8255p-emac-v6-0-86a3d4b2ad83@oss.qualcomm.com>
In-Reply-To: <20260112-qcom-sa8255p-emac-v6-0-86a3d4b2ad83@oss.qualcomm.com>
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
        Swathi K S <swathi.ks@samsung.com>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev,
        linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
        linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev,
        linux-riscv@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1989;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=XhZwpSvJ7UE7PtdunInQMevxaiqF8VYCYkdOSwXLngk=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBpZMns4kbe8XUdsvQKvrAsOQ1wzF3np1c8DjUeM
 3bh/6KE3EuJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaWTJ7AAKCRAFnS7L/zaE
 w1PtD/9zyqAcP4ZgryRKibjlq5X13bpzu6/2kJ2pincj0K2b7lSUuzwczycjHuQLc4wndagggJI
 mvPxyLijrA2tCDAsMbbEJTrsy3HO/XOrXt6K/p1RZF+4zCSaNoP/Wzl4CASdrJx7/F1fA3CD8Hi
 r6nRm2l8eVWqVGMp1pbwIXpPhpLTq+8+rMhN5ir2pVHvlI6SYkkmiuc8CDM2ZuOTsXvChwftKHF
 e6OCAd2Qj5Klg5RP+WWiIEN+0/W1djw0WlLbm18SOKfPFiyo70K7BMaBRQDDV131rekfqUQqUKr
 IbsKs+nUHGj7WVpyrvYkBzvBSsPGfRyu6pqo/d9tayimwvMPzjLzgRoGpH9+a0381KriRGPc2Z1
 qe/mpz/jcm1tdaZj+PlLSYkNr6Dspjo3qLeUNRC/ZFhpKcFZolv8fIjq4V7ZuXPFy6Jlk1Sa9ed
 SkRit3Olz1XtMYdgD2Szhu5MA5NdZS6REnVyeQh7CcCuj4jl+i5e2YKpn3aiKkrDSO5QEi/8TyK
 2hsl7l0BxZnaelZxdzMsUV0ycXT3EniRqFjaNyrDtSzrtbS3wl9cN3/kuPx/2UMnxRf/PEFNf6A
 9tSHg0ZQVON4XnXyYSUSBdVRe3ZyL1Eo3Gec5MXfbhQ/AJAl8OHmy76nwzI86ZhuM2Hunxq7DV3
 qakjiD2YLFuHwwA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4MSBTYWx0ZWRfXykJjOjYfNUpD
 IwTvzEpQVyOSV2Jr7nGzChkGDXI7CqOzNyi0kt6W1UBofU4Dv4SL6ei62w5oQkO/ghpjrh2QvA/
 fk4LB9xENXrpy+Ld/R0i2XyA3+VdlTKD84pofG7mL7R+sH/b79XG/saYxx9xc8Fyk+l5uQv0Zbm
 bSSTXfVPGrYhF8IGYNxFZPwNV0ac9L+hTr/awkukENRFzlQu3prFHPY7wuemp1yzMvLE03jltxk
 udC9ssYc1Mc0sqMH/Dlx5uzwKuoEN/fAAmrhYhpzizv7BkCVn/4uqkjQQnJrOlgf68RtyVm1UfD
 zssMjC4jBvAOMOWCUGzM4oF/iEzw4LqpOm6/kB4DcwVpUyduxFfvmH/GGAxD1ffJQ6VHcSCDptF
 ug9yZKw25Borj3QM2TnIrWDJ/xD7VyUB3PF/D+BbNtjawHcNvbDG6QhV01vkcP+fxTebRlOTlcY
 +41ojEDyGmTCqXOhZtQ==
X-Authority-Analysis: v=2.4 cv=HrJ72kTS c=1 sm=1 tr=0 ts=6964ca08 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=pVQroq3X6MeQavp43gIA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: OSLPZCfF3dDQG49rXEU1HJ-1qIir9OM9
X-Proofpoint-ORIG-GUID: OSLPZCfF3dDQG49rXEU1HJ-1qIir9OM9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120081

From: Bartosz Golaszewski <brgl@kernel.org>

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
index 856fa2c7c896ea3068ac38d9ee71b4173edce80b..8ba57bba3f2eebe9e44964f9e6c7c67e46ccb02d 100644
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



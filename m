Return-Path: <devicetree+bounces-321180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 77cjNuSmS2qpXwEAu9opvQ
	(envelope-from <devicetree+bounces-321180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 15:00:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FA3710ECB
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 15:00:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=GUx5BzmG;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="W/xxKhTt";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321180-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321180-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9F7331C8CA8
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 12:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0957D4D8DAB;
	Mon,  6 Jul 2026 12:45:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D074DA547
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 12:45:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783341951; cv=none; b=rRLAblSsVqwwt/TL41BDeNF9CmCfgtvGu2K+TS92XE6ebjx2Wy8CwEd+8oFsC74nF3zNkTE9IYxMlTacrZm5kK6IEqt5e+Cpj3Q74aQBICRKhtTKkpL1M3IqAihdJyR8z7TbzhY1EjzTHDI/GmTW8pdFmfgEM8gRp77yLmPoJDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783341951; c=relaxed/simple;
	bh=NdHbJPjvsu2u7F3hdYrPvFRlBpPy98KniXg8xIhSKCg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CbkKdhn6QXlyZZcHvZmfwitKkaU82+xpK3iJbSvrv4KmNisuH0fvcluf/h4dHALJ/XNjkhWuc/undYgmOIIq08rtVY7FeNQPPW5N78l+3F9Dw/tjBAQ5C8PwFHFPeTt3hDMVbphw/Bl8ivPMy1FX48tYcGNeCK9wuaR0uPpsyH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GUx5BzmG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W/xxKhTt; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666AxAKg391078
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 12:45:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	POK9tIxGCiwp0V/tTMSRyw6r6KDPw5Ng8BAFX9Ifcc0=; b=GUx5BzmGdeI3Evy4
	TAdA/IjbYevjVSOOVEM/jHBANLO/MzvCLIDPyIiN9HGOV3lzrtsxDYh2CWy24aEK
	e5pwxDyUvASqAikj67tpYkJEHSqpVZx3/eXDlvj8KZ4YJmq04TuS4yBAg4Qm/eRM
	ZEODUiB8+by0n15kbnlqjOE9269w5Ym9DK32zJnFCj0bqmMBm70riK2KGmEZoCu8
	JkOkwNLn1fuC88jPUs0mvgPD+1NSV/SEeU+G8k2TrSp+bpuv33JoNGSTFOPm26k0
	myU/VmbL6eCNFjIuinle8aMsQaDP1VEBKYV0quH0XkvrWv1IekNPOEs/A387VrsR
	n2AyQg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f89kgrrh7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 12:45:34 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92e695a3b28so387874185a.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 05:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783341933; x=1783946733; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POK9tIxGCiwp0V/tTMSRyw6r6KDPw5Ng8BAFX9Ifcc0=;
        b=W/xxKhTtQrNrmSVK8gPzwLzTHOiTtjTkQq01dH1LjU3+tAB2N2sKjqpienwhBepvqf
         rgljMNHFobpfTwrVn0OvpdIuCTupp+MoRMuafPTgGOdii/THENeSNlslXXvpt87P+9/y
         zeeZyrwUuUDBPAX4XjZxHzXSDL13CFg0By6Ts/u17xnxxZcW2vAPZnuoHq5uYmu1NEnm
         ADGJLR6ACphQdCqwU7RXp9NRH1T4SO0zgmkdDmr96UYHm4R7yn88P9Bc/U/361FIZXKi
         cxDKgNlWuWTTnF69SeTRUOFryW7fVCi0URnEBBo3DWWRQEh6xcTQc1ifmcUG8etXd/RJ
         ui4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783341933; x=1783946733;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=POK9tIxGCiwp0V/tTMSRyw6r6KDPw5Ng8BAFX9Ifcc0=;
        b=RFmvHFkNzVCSAQd8zLCxeuSgYdOh/d3uVu08y5yq85hHUtjSy85Isgfc4dWPScLkYs
         TMJVBmm2JW3280ahfpt5DA2kYzUo0NzhYL1WhU4OW8/qiHXOJ+Csb3e2aKcFMqArTesO
         MAUv69s0vUHXknSrhYy50Mpfkp7vVWp729P74v3T1P63occQz0gwL5cRA6YmmNN03wv8
         CtGo179sLKYzj9/CXBy0TXczoEtw0ZXljoSlJ9Z6OWipTSCbAAtWKnj7y03NWhutptXy
         U2sgt7jen5LeO5cZDzfldh9dXDLdeoDFrOX6QQovsuBB9zaEhiyCZ/y37qTQlwIMDT+Z
         G5mQ==
X-Forwarded-Encrypted: i=1; AHgh+RqMELg/oed42V97f3sa/yn78FJsVHxDVrEiGkeUlQmtYpdTAYl6ipGzvivVROnbQuVUwRA03XB79jul@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0udx1cFmEtzBhdxTNFXEjN36khaFg+mX+eiGgwgIYTcQ4aAE/
	hjFvgw+bgCA69PMlT1d/NZU9LtNJtfswUw09VOta7UEtoIg+VYOmmzMh8SyjIMkYyrO5/79DBPI
	tnDZ08kQ96igUsdN3LvqGwr6sXW3WDwu5Y2bwEAlNrkbpesoZHypGf9nsn2E8xGZd
X-Gm-Gg: AfdE7clM9JCoRTY/m8HOPfOlg+bFiCGQdzfqAK8QzyoVxPHwDNJyqIsbN/CvSlVs3+k
	heKTCcQ0RkQfNhdyK1BdYldZ7hYeXhP9JAJ1dVgTfiz2PJEwpcH3HCukyKj+EA0SrQzvpD837Qx
	FPaHPeKTXI0t9PH/t8KN0Ma5pVGXAyzRfba4EC5m9/I9E17Rn6Rd/3xJTWz1LLLlYYURq2U9auc
	qE9pNNLRdWa5UhnmreEr5TL5Pf+ki5C9TQKQVb0YTRuz78c/+T0hxJlBDd+8imXkMJ4XID8MIga
	dqyClEib52pUV5oy86SbVrLh4/r3Ns9GjfKL2hxt/RtkWkStF6Gu5e01vQ4CX/rHJ6w3to1e1aI
	G1S2hHtMxgJSRlkxYvgxXL4txeLRFfhiED3V4Ywz6
X-Received: by 2002:a05:620a:630a:20b0:915:9eb1:f08a with SMTP id af79cd13be357-92e9c9bae7bmr762474485a.18.1783341933226;
        Mon, 06 Jul 2026 05:45:33 -0700 (PDT)
X-Received: by 2002:a05:620a:630a:20b0:915:9eb1:f08a with SMTP id af79cd13be357-92e9c9bae7bmr762466885a.18.1783341932688;
        Mon, 06 Jul 2026 05:45:32 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:86f0:c42b:ef4c:d3bb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0a55be4sm22126539f8f.31.2026.07.06.05.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 05:45:31 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 06 Jul 2026 14:44:26 +0200
Subject: [PATCH v3 14/20] net: mv643xx: use platform_device_set_of_node()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-pdev-fwnode-ref-v3-14-1ff028e33779@oss.qualcomm.com>
References: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
In-Reply-To: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>,
        Mark Brown <broonie@opensource.wolfsonmicro.com>,
        Thierry Reding <thierry.reding@avionic-design.de>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Vinod Koul <vkoul@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
        Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>,
        Madhavan Srinivasan <maddy@linux.ibm.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
        Andi Shyti <andi.shyti@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Doug Berger <opendmb@gmail.com>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
        Ulf Hansson <ulfh@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Matthew Brost <matthew.brost@intel.com>,
        =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Peter Chen <peter.chen@kernel.org>,
        Paul Cercueil <paul@crapouillou.net>, Bin Liu <b-liu@ti.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: brgl@kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        driver-core@lists.linux.dev, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-i2c@vger.kernel.org,
        iommu@lists.linux.dev, linux-pm@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, intel-xe@lists.freedesktop.org,
        dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org,
        linux-mips@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        mfd@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1119;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=NdHbJPjvsu2u7F3hdYrPvFRlBpPy98KniXg8xIhSKCg=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqS6M6kp8yOiB9vvJ5zjdHbWe6Po7/EnS4ga+ev
 hCyTVpoxO+JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCakujOgAKCRAFnS7L/zaE
 ww7dD/0amg46FTyYgYW8LYZgcSVagN2XNs/hYCpCDsj0WIQWByz3JPvcwF61FhdVtvUFuUYV+eg
 X7P9kb9yoTHoN1zMJCWDP0kdPaf12F5JdaMy+qsgjzl2P2MgGwuqQQML8cdGlCndeIvBfZzo7nO
 9qijrM7bVX71vT/EpqOJHbzX5gMZmLrDW9GuxO5m4CIjxHImLkOcRCikfjxnV8hepAxrK1AMx6R
 Mc6flJ2X5DdAi7Cru+Q+uLRr4o4JKNA7AxDT5X6V7Ns88ytfrTL5oV6D2eulc/QkqAYGEtknJw6
 chwScCFvjEXtvO9lO7ahl3qlNLbLc+YlVO1T4bKSi285G+axZpIEKet3oauOfTFCM/saAVEif4M
 KuvsN9jfwcJ0xXMRvreW//zyuhY8LNwY3Qn55M1FVhdMhR15xLP9t3gOyKyxu8id1cdmortkJpD
 qrpspj/OgEujquTmIu1nsViAjjB0bI1BWn7odOKePTyRWnujpCUPRgGD9GE6y5D1J3d2h2us/s3
 C+UML2ty3Ar0TmOdfF8nD81xCWgHBwz96BBI0ipfe0fz1VLXXim6Z24Z8Tpg6aFGf6ilHkampD5
 kfVoicCCwzU+89dyn7GdpnULRhUez+rKMA82vKy1zopgY/6h3TvBwUmDbFlk6k9PYM2h/XaSG9p
 jy0y60D4DWCJRkg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: SUdfPMTjcMcrYqt1kaN9gl2owUN9xzVh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDEyOSBTYWx0ZWRfX3RnEAlH4U2ii
 pNq+wQAPVCtVoNVWTRIda5L79RVeNRCaZYdPfXNbPIr/u8Sth1uWaY08KT+8Qzs7iOhV4DmMIRI
 p4+PcOUIIaAJqgp1/iUO1bHjvUcNn2y3SFsLT5q+X6VsyFB4AXDv+OF4Q23v6LdgxBZBxIG6Qqv
 0sqOpWyR9Jf0uMhvtY9AxQsMMtWcWDFIQ2Jz3EQS9jnjiGv/wK7TzwQ1Kt57d3GZXFG6SXfj4Au
 LSfL196TTc0ONB4KpefWHoGOm7wTZ8n7epkpNoD7qZ6D572gtXGJiWugcMikYEr6/CkTKTjUb6G
 EIBWX4n0A/L9Sxg0LlQn7ZQ9j21zWuosObUh0kuSuQiXlFzpYAPm4B/nOoS5Y1XVQB2hCuAMJlp
 fo+swVmvAXaIE6/8wg/XGpTB9NwHdBTnk78MuxHard3VPTF0cyrDrdKWGsK5FNbMR93O1BFbv6N
 GiO3FfhkaX7eXWPFRqA==
X-Proofpoint-ORIG-GUID: SUdfPMTjcMcrYqt1kaN9gl2owUN9xzVh
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDEyOSBTYWx0ZWRfX2ijXgqUi3DC0
 wOp1K0USwg0zjEpzNajzb9VtA2ydSKe7sxrcxw7oo9q9LjNEvRMyyAlqMndxzJ1TTKiHbdJx9hU
 pwuDBW2Tg8y/DWlYezkL83Yeq/W3iH4=
X-Authority-Analysis: v=2.4 cv=c6Sbhx9l c=1 sm=1 tr=0 ts=6a4ba36e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8
 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=KA_NOx0aAURzDPfFvPsA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607060129
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321180-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:broonie@opensource.wolfsonmicro.com,m:thierry.reding@avionic-design.de,m:sebastian.hesselbarth@gmail.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:srini@kernel.org,m:gregkh@linuxfoundation.org,m:vkoul@kernel.org,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:maddy@linux.ibm.com,m:mpe@ellerman.id.au,m:npiggin@gmail.com,m:chleroy@kernel.org,m:andi.shyti@kernel.org,m:andriy.shevchenko@linux.intel.com,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:opendmb@gmail.com,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:ulfh@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:rodrigo.vivi@intel.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:peter.chen@kernel.org,m:paul@crapouillou.net,m:b-liu@ti.com,m:p.zabel
 @pengutronix.de,m:luzmaximilian@gmail.com,m:hansg@kernel.org,m:ilpo.jarvinen@linux.intel.com,m:krzk@kernel.org,m:benh@kernel.crashing.org,m:brgl@kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-sound@vger.kernel.org,m:driver-core@lists.linux.dev,m:devicetree@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:linux-i2c@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-pm@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-usb@vger.kernel.org,m:linux-mips@vger.kernel.org,m:platform-driver-x86@vger.kernel.org,m:mfd@lists.linux.dev,m:bartosz.golaszewski@oss.qualcomm.com,m:sebastianhesselbarth@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,opensource.wolfsonmicro.com,avionic-design.de,gmail.com,lunn.ch,davemloft.net,google.com,redhat.com,linuxfoundation.org,linux.ibm.com,ellerman.id.au,linux.intel.com,8bytes.org,arm.com,broadcom.com,nxp.com,pengutronix.de,intel.com,ffwll.ch,crapouillou.net,ti.com,kernel.crashing.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,vger.kernel.org:from_smtp];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_GT_50(0.00)[67];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1FA3710ECB

Ahead of reworking the reference counting logic for platform devices,
encapsulate the assignment of the OF node for dynamically allocated
platform devices with the provided helper.

Acked-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/net/ethernet/marvell/mv643xx_eth.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/marvell/mv643xx_eth.c b/drivers/net/ethernet/marvell/mv643xx_eth.c
index 1881583be5ce2e972fceb14c2b8348280c49ad1d..9caa1e47c174c9d7a161b7f2e2ee12a829b813d4 100644
--- a/drivers/net/ethernet/marvell/mv643xx_eth.c
+++ b/drivers/net/ethernet/marvell/mv643xx_eth.c
@@ -2780,7 +2780,7 @@ static int mv643xx_eth_shared_of_add_port(struct platform_device *pdev,
 		goto put_err;
 	}
 	ppdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
-	ppdev->dev.of_node = of_node_get(pnp);
+	platform_device_set_of_node(ppdev, pnp);
 
 	ret = platform_device_add_resources(ppdev, &res, 1);
 	if (ret)

-- 
2.47.3



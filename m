Return-Path: <devicetree+bounces-165800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F76EA857C3
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 11:16:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B63F33B26A3
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 09:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FBC4296158;
	Fri, 11 Apr 2025 09:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MfRWrUpW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5189E290083
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 09:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744363001; cv=none; b=DsHuWSsllJoFV6HWmxm9p+15ajIPU++//E/p41wbRjoWWOOH2CsO/mlaHW5x5A3M8WJklHyaov0aIWLo5rqx+6l6q6z38fRZjASLmj/n0cOhTHzq+YmwTGC3pTihaxNNC1gnNCQpDmm4Ah6ry4suc+nF48gqU6qxEDaJ95ARJOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744363001; c=relaxed/simple;
	bh=C+RN3MzxMKy12kB1vgpMBhSAt+yGWRPeVpqXvFuJ8Po=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nR1U6soxWpiOgSwJfJmRaKoA0O6ZNyHMWf95DiIBreu8vyz/f5mwpAbgZc1nS8GcOUac0Cua6xiDnfKyjMBndZn4oqJRZ9XMkNLWMc5ntWoj5olcby2oTVy2RAP/pz+E+7ZK3ZJxpsQhJD66SY0gefwPTYBMpwn03rQQk1sRHBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MfRWrUpW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B5pdiF016300
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 09:16:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ufhmds+kkSlO2rSMDq46DFe1lGxthqem6KM44BdOhnI=; b=MfRWrUpWHKOXgxYd
	tlO/p2GZIa8GpGmxViFMmae42WC/Sm1LQQSfsr1NCsUoMXDIaJcLbGKAHmC/vmO9
	mGCfteziXR1g/s5n4OXVCfBnlE+djitVvKKVaO0PNb1yjIvOk4sXsZyteZl/MXRU
	0u74+JzCVDzaGwOwQK7IzLVuZqj2WT82Y6ZZdVDBWMoTUSpTGWgMQ5JlvvhiEuf2
	Dn04zgeuEvj9ASmeFiha/ItVQzLRwcsdtbbXHHOkdsh+X6zRW5qmMas5wY2VLWDj
	jMR8zbMd2spdPqvT3hrO77tyq2fJSup339513IQbyZBJVJJou3eIdlBUHZjZCLEV
	8A6aGg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twc1sq1t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 09:16:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5ad42d6bcso43538385a.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 02:16:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744362997; x=1744967797;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ufhmds+kkSlO2rSMDq46DFe1lGxthqem6KM44BdOhnI=;
        b=QDzdLl/8+0lznvGnObxm96t8TIZSSvM6Gn8p287HhvMv4Et5PybcEjs4gDZv5R/9Wx
         69GgfNDGOi3iyOzhGJUQCn5rlFaenWVlhoP2tCgLtStYe0+JcVMRSoVW/jz3kI4e5GeE
         mYDuN9WExvY8JPsmFyXs7YmIpmSpBJPoFGaChNtdsVdRrUSGoZtyhS+nkyWD9CCbNuAf
         MfCmP57iHYMlBix2Hr3bKfQuFiSxMyXWGC1PI2zJOpoB012bVc5Tg+Ev3VU5Tc2h+wgF
         PBan0eDp1Y4j3fig2MCr9EKuiaRBxS8oFawoFJznoFZBF9WK2tTkqDmXq5zktdLaz4Rt
         niGQ==
X-Gm-Message-State: AOJu0Yy78jgDGgfrxEe4uiK57lDlHnQrKH/g17Hk5qPYGsFjUWzlf3rA
	G4uMMR84u9Vp7urx/1pbXicmvy+ygXwU8y75BOnYqqq3uPKvaNauVEgikLm9Ab4mj4G0a5WxcQL
	oAFKuVZIO0SGYBjv8/n3/hxcZHoxjIKeJbMjrasRMU24hGH57ipi3fsq7kctz
X-Gm-Gg: ASbGncsPK0ZvXI/D0R9vgDrILLJ8wZ5+AzpUnm0uHUyFL5MrRQJAW3+1uGAky0nkaWP
	sw81N/UHm5GB45adp8NZNZZHWbLW/heXfrNsMfx2eJdHaMNgVLBA4zvXBEJtCzXVvKBjoGz1lwS
	+IE7IiFDZERQcx/Kea/7Y4uxjpXtQNlFQuXGEHEjpRKZhuoLC4qVW8/ogmmHreBEtX7Q5e7PU1o
	vJufhROGCbNwoAIEckQ1KO2aVpMdIXXpoxRU30iCkLkIblivWFspzKiKoRWfrxGEFfF5ls4h+0g
	vB1b7qQzCR0EYolQblH7UgKBVqp6mLOVVwwMQ3xyVXjFveDmR4+dQ6XilhqapUMuJA==
X-Received: by 2002:a05:620a:24d3:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c7b1af7826mr48637585a.14.1744362997396;
        Fri, 11 Apr 2025 02:16:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFk9dXYbzUf6tHquMMviOk/dVPcbI1gX6P3/o7uHdR9WHzJEGAa5g8BLBffgulwxemVb9V1bw==
X-Received: by 2002:a05:620a:24d3:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c7b1af7826mr48635885a.14.1744362997070;
        Fri, 11 Apr 2025 02:16:37 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1be9632sm424190666b.66.2025.04.11.02.16.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 02:16:36 -0700 (PDT)
Message-ID: <d4f29833-a9c3-4942-a333-8ca4e7a8bd97@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 11:16:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/17] arm: dts: qcom: sdx55/sdx65: Fix CPU
 power-domain-names
To: "Rob Herring (Arm)" <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>, Conor Dooley <conor@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, imx@lists.linux.dev,
        linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org,
        linux-renesas-soc@vger.kernel.org, linux-mips@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20250410-dt-cpu-schema-v2-0-63d7dc9ddd0a@kernel.org>
 <20250410-dt-cpu-schema-v2-7-63d7dc9ddd0a@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250410-dt-cpu-schema-v2-7-63d7dc9ddd0a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: P7_zafRrpHsmok_bvYfuO3O4QslYjT1X
X-Authority-Analysis: v=2.4 cv=KtdN2XWN c=1 sm=1 tr=0 ts=67f8ddf6 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=yZJRhKYQK8xzFtgzSFMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: P7_zafRrpHsmok_bvYfuO3O4QslYjT1X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=880 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110057

On 4/10/25 5:47 PM, Rob Herring (Arm) wrote:
> "rpmhpd" is not documented nor used anywhere. The power-domain is used
> for performance scaling (cpufreq), so "perf" is the correct name to use.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


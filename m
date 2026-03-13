Return-Path: <devicetree+bounces-275210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPQOMwcItGlvfwAAu9opvQ
	(envelope-from <devicetree+bounces-275210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:50:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB86628338F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:50:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC01F3264FEC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A3E37F8CA;
	Fri, 13 Mar 2026 12:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jF/YTrUP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dvON8raO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF82737F8B0
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773406124; cv=none; b=S3wAPZ856PhRA/Wr6C7RPvmpowM/WH4JzYHQrc87DUUCH9kq0H0ngGKb9eldxaMuuM86JMUIt+CupB34xzJyTQmHIecDxefw2jI8enhOqkd7dhRkH6CMyWcZOWw9yXd4XEuM78n7uuBVXeq3FzYDKSKt7GGK9yXuHIfZ9t+v5rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773406124; c=relaxed/simple;
	bh=oA1HUDu7J0EzUYqIPlWjTJlNN1Lq2jBhBDyRPjpi30E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fng3VjGqhJ4tVXtXyKsSdTCuGBLUEKKxWL9XVKhtI4WdTVJ2yqFLgsGEAQILbGSFJg9kqWTz86SmX3eVBu2lEwpxDC1KeglRzfM0wnaD9M/ZDo5ukCwuaEAur/XOE2vGj/68JxZkHNa81L3GdYZ8zyWiwfnuzROn/wXNxW+OqpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jF/YTrUP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dvON8raO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D9UHFh1500297
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:48:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4twYBG4FHMotPQHHXZ/srRQ1AVZ46K1zBaAlMYZgtHA=; b=jF/YTrUP03S30P6E
	WMkFd5KiR0wsCCuTuXzyM2xeJGBlBf4rSs5W3L5VWLZtHkh14Oc37tc8jSHQpI1d
	1pa/HmOY1rRsuxKnMiGXEtpU4sOYMTL9uvUJ/MQmIdB/XGx2TBhpr4QO9F5wFFD1
	1hTLFhK80eVCsBNp5d7+TzzAYIbRh209kO5jcsQZnBxpfzyiYbW+WAgfO8i8jy8b
	m7umfWKwjT5K/y+V5OzKdo8nymejCm6rANk/dZ2sPUYtMaloliSkV68ovywhWtuz
	oIX0FX/+IdFPisbzY9idHEmQ8jS5Yf3u1y/Md8ZoXvg/7LdKqRgaoKpFdL/3pgSQ
	aiwVcw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvg0hgkjd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:48:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd84cfae34so93577485a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773406121; x=1774010921; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4twYBG4FHMotPQHHXZ/srRQ1AVZ46K1zBaAlMYZgtHA=;
        b=dvON8raOUPiKITA4a/yGDuGVkts7XVMJlxJpVrpCmEIERVJuVxj0+WIf9e/HjTWler
         38YdBhVhLQMdqq3IWQD3XBl9PwrSafdnKM6+eEJZ03AcMgwZBCGZR+tA/FDXSeRiihLU
         vrTFrwqeyOXJO+9kX2aPhRYmDsTViBiDGOih6YMXA1PVv8dYGUAk7pRWasH1k3SdwPGX
         vWwx0/xgPyHCtczXowxmLe+zfjsoWojCgbE+DSuOWhZWQlUPcWSh9uLjr2IiD6falt8J
         gg2yR/vKcSd1gTKlDXCcmLcrCEeR1oSSNEGamenf97TUEQE6G/Sif93Lum5DNOGanS2Z
         yc+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773406121; x=1774010921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4twYBG4FHMotPQHHXZ/srRQ1AVZ46K1zBaAlMYZgtHA=;
        b=VytFp0IXirtBqW+356j6Q2YAAx5XKOTvhAZeNb1eoBquDvuVwY4FD1e4D1eRT8nOYP
         XXPLQ+I9fkvQum1m4PmEDBxfhgyt5WZxB9lzB4BBYvJoGPByg4A1wgnIGGMwlm+Hag42
         M8BckGrkVQ8KSln1mfWt5/lX/0Sx0hj6axWDQQ7WxQOwu/0pYfqG3Glr9eFG/SP5m9OO
         iayQWMPgXkYTEJy1aHLKosn6zNsTVyb/u5U9a9hni0hBWjJoDJCwa24AbdoMaQdrbMsG
         5kVniVtX1wRZZwMvUGuAuUbcZ9T9DUCEpN7Uu7j0aHZ8YRjgRA3pjNiAmER23F7HnYiE
         bYyw==
X-Forwarded-Encrypted: i=1; AJvYcCW7P0NUH3iesoECiX3EdWudeSD79ZNCY8hk04rn4GfbNP6FZLQL4QsA3sa0IHs8drmtumnJM6M7dfmG@vger.kernel.org
X-Gm-Message-State: AOJu0YxVGPzzckWboyU76H3Tadb5q7KWznEQXIc/QCfS6m+Tx82bVzS9
	whcgUIRmqs1hn2vCtlLJ/6V789aSFFRFCR+2zzCH6m25c4h5JzsFD1piOVsX8ANtg4S2iON0Yy3
	tH58bNiSjzhIQlKJdvCYyqDOOdkwJwIpbR1F5G0R0Xjgx7wgPXfDCGqMxfZaKIQA3
X-Gm-Gg: ATEYQzzH0PXv2cadEQrjydXzIuipr0JqGRVI1vfYsWLpERLXezsAeHvuZ18jGhcWcaL
	fvq2JHlmdwrBsPAWV089BTXGxrrFoVbXRMMfX8A4cLAEd0Lpn+0ZkFtGgjAZNlYSPAmSFILoCsI
	rtqLR4Osq+cpuqTuLXlcJhoAlCIi28EQHtHRbOE7tsr/bhSVgLIiyuEGV4A0SPUxt6ijbPYjP/H
	RReMoG4Eyi57LWLF/I7Y4pvnmJYfgz920K3r1RL/WpBXltf1Jt9TXmEvsXMPsFx3GuPgGfmQJbk
	qL82HkuHoxdAxzM9G3OvK7bHg0oqDednGKsHmIOWWhcJdeeUJXn4bu//lI72IXf1HYrw5Idhvrw
	0dJeCSmx4zkpVlSGMVYResP76Qk9gP2Nm9vUfDyBI5NjCEXHp3Pw/hsdaccMHJP6gdInwIE8lZh
	cgpAo=
X-Received: by 2002:a05:620a:45a7:b0:8cd:933f:d8f6 with SMTP id af79cd13be357-8cdb5a55831mr325142985a.2.1773406120946;
        Fri, 13 Mar 2026 05:48:40 -0700 (PDT)
X-Received: by 2002:a05:620a:45a7:b0:8cd:933f:d8f6 with SMTP id af79cd13be357-8cdb5a55831mr325138985a.2.1773406120424;
        Fri, 13 Mar 2026 05:48:40 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cbf4879sm43253766b.17.2026.03.13.05.48.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:48:39 -0700 (PDT)
Message-ID: <6e33daf1-bb90-47d8-955c-12ccdd30ebce@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:48:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] arm64: dts: qcom: add IPQ5210 SoC and rdp504 board
 support
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linusw@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <20260311-ipq5210_boot_to_shell-v1-8-fe857d68d698@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311-ipq5210_boot_to_shell-v1-8-fe857d68d698@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=T6eBjvKQ c=1 sm=1 tr=0 ts=69b407a9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=tSUffcc-zHVOQOONd6kA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: K7SHsVqhqOz14aTiR-aN_OMWAnojw04-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwMiBTYWx0ZWRfXy7ChRqUaMnnh
 hAo09PS272f410wXxu7QULUo2Htn2BOKzlW3qoFH9l1xHH0ZeRmATfPxitOfCyXh0ZX0g3i30it
 nEtbF1ovypFYptBW9kcxTTc29Tq/5PIamXtnhD06ONeq+7k/bHGSX1zu5pgW1xCN0hqMC5VoWEw
 +FR5YHvrrJsHF9RBpN2Ac8e3+cdiIjyVV8yXJGbmCVJeG5oswwtuPcTad8TsWSgVu2bOWDytkES
 5NFvcGHpo40pgjGtBRert/7cnCIAe9HpIkMNV7XsMRh1Aw+XhsNR3sFap1kCuclzgIgIwmW+ZNN
 35Ujvg80YLsnu5aCEhyRfRG2q4PchZxeqvXPH92hcDBrBZtkuF3QQgYKi2LbSgqKOWxtxciqYR5
 CWOWPZHMHoUzRlV/F+CECa9iHvFmY55N6W6lP8j1iGhITHnM2ZGzmAex7nqVqwbw6Q9Ix2ak4f4
 7OGiJb/8EDQifuvFiZA==
X-Proofpoint-GUID: K7SHsVqhqOz14aTiR-aN_OMWAnojw04-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130102
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275210-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:dkim,qualcomm.com:email,1ac0000:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1a84000:email];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EB86628338F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/11/26 10:45 AM, Kathiravan Thirumoorthy wrote:
> Add initial device tree support for the Qualcomm IPQ5210 SoC and
> rdp504 board.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile           |   1 +
>  arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts |  93 +++++++++
>  arch/arm64/boot/dts/qcom/ipq5210.dtsi       | 304 ++++++++++++++++++++++++++++
>  3 files changed, 398 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 02921a495b2cbabcbacc74fbbb99eafe1f6478ac..e7748af640cccffa5c83ec82c37aa441444c2b13 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -22,6 +22,7 @@ hamoa-iot-evk-el2-dtbs	:= hamoa-iot-evk.dtb x1-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= hamoa-iot-evk-el2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-rdp432-c2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-tplink-archer-ax55-v1.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= ipq5210-rdp504.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5332-rdp441.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5332-rdp442.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5332-rdp468.dtb
> diff --git a/arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts b/arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts
> new file mode 100644
> index 0000000000000000000000000000000000000000..3d95939785bc5bd4f510e2f992f0a1e80848c8de
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/ipq5210-rdp504.dts
> @@ -0,0 +1,93 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +
> +#include "ipq5210.dtsi"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. IPQ5210 RDP504";
> +	compatible = "qcom,ipq5210-rdp504", "qcom,ipq5210";
> +
> +	aliases {
> +		serial0 = &uart1;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0";
> +	};
> +
> +	soc@0 {
> +		qupv3: geniqup@1ac0000 {
> +			status = "okay";
> +
> +			uart1: serial@1a84000 {

Please define this in the SoC DTSI and enable it via a &uart1 {} reference
from the board DT

[...]

> +		xo: xo {

"xo_board" is the convention in other DTs

[...]

> +		L2_0: l2-cache {

labels must apparently be lowercase nowadays

> +			compatible = "cache";
> +			cache-level = <0x2>;

= <2>


> +			cache-unified;
> +		};
> +	};
> +
> +	firmware {
> +		optee {
> +			compatible = "linaro,optee-tz";
> +			method = "smc";
> +		};
> +
> +		scm {
> +			compatible = "qcom,scm-ipq5210", "qcom,scm";
> +		};

OP-TEE *and* SCM? What does the former do?

[...]

> +	soc@0 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0 0 0 0 0x10 0>;

should dma-ranges also be 36-bit?

[...]

> +		qupv3: geniqup@1ac0000 {
> +			compatible = "qcom,geni-se-qup";
> +			reg = <0x0 0x01ac0000 0x0 0x2000>;
> +			clocks = <&gcc GCC_QUPV3_AHB_MST_CLK>,
> +				 <&gcc GCC_QUPV3_AHB_SLV_CLK>;
> +			clock-names = "m-ahb", "s-ahb";
> +			ranges;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +
> +			status = "disabled";

I see there's only a single QUP wrapper - therefore I'm going to assume
there will never be a SoC where this needs to be disabled

[...]

> +
> +			uart1: serial@1a84000 {
> +				compatible = "qcom,geni-debug-uart";
> +				reg = <0x0 0x01a84000 0x0 0x4000>;
> +				clocks = <&gcc GCC_QUPV3_WRAP_SE1_CLK>;
> +				clock-names = "se";
> +				interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
> +				status = "disabled";

Please uniformly keep a \n before status, file-wide

Konrad


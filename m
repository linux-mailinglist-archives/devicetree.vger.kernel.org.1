Return-Path: <devicetree+bounces-221418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FB3B9F6A8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:07:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69D4C1C208AC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49CBD21578D;
	Thu, 25 Sep 2025 13:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZeENdbTf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2AB1212548
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758805621; cv=none; b=Z2KGOwVjMw3Oj4HD9O7RyuqNkMznlbjBGzfV24AzgsiHFSvDeAGc4DaMbLhLSYyrZYiixheqs115t+5VDy0cx7ThVjvS9ExiFXW8WrMhSZz+Nh3Btp6l/t3Yh7MIl2ZASdpmcRBYCJPl82ilFB3uxTmp4X9LaYiXDbcNnHxZWkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758805621; c=relaxed/simple;
	bh=nAK6kdbUzHM4/UGUR3q8N5tZ1hG3tqOpnRJo+Jk09Mw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nHHqrFPREixdHAv12TbJzx3jMLNwJhEd52/d2eKDxajl7GIYGSzArXN9POYLQhNim8mZActL1pFDDJ474D50Q8CXXuaH0xQfVxkXKf4olyJ4Et4FsNY+kE1fvpI2C8DOQm32iZMCPNFl+HZOtLUoEejYr+G2IO9grTxuJAzVhhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZeENdbTf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PBB3Mi029717
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:06:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M8bm1xNryD9JwqI5a8BhCBrryB0+T9GrgctFwTKY2P8=; b=ZeENdbTf3n3sWxBD
	wKPP911mmlSehUBaiz7KQa4aIW2HQD91P/iYpS5E1QzEtgNKb+VxfGMCG0DkqpJK
	KkXXBwwxO20Rv29LpKNW7A7zMXed64xdgE+myvN85o85ry17EtSxMeZ+yGCo48TP
	rYq77292y2djTCFT2BZUZ3gyo9ugoXTXhtmkSlB/qwyoYEpIY+wCFB6GDIlteLW8
	XRPvVAwWKcNGFdgCHrkOi/ZYhqlFHWFRPog13aIMg6OmvNlTeckYlpR0Bn7q8/8N
	pz0A6AG9q+EeMAVDAcM+/TcUJct+XGeTpdhdBg2sAR4KfNLpZu5+fs6sFhkMavwM
	DYmHDg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fr1ry-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:06:58 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d6c3d10716so419291cf.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:06:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758805617; x=1759410417;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M8bm1xNryD9JwqI5a8BhCBrryB0+T9GrgctFwTKY2P8=;
        b=Yqr+cn+GcZAML0/kUUVOqEtU8z+wu1vUreZFtasmUb3h51TCUugEHGDFesH56SYqJZ
         mvVOjW+hUd6dHDYUwmPqba/9LvjiDcPlrlo/4ivIlbby36PVGwL/TdkA+ab7GFeUz/Qu
         K6fzitDdxGQ8LAb75ta7EXUW3QL4orq6gXu6aihc/E8fNyX1PzW5FM3s9Q+jPfvoF5ZL
         zUtjHxlXsbowkdgiYymM8ITlArpBTYkbdX1CIa2r6nFA/PCxYpQo1iCVRHeqEmXCAy8k
         myl9VnTmFX5tRZE/KwhBLIYKLn3uW+jYhdccXjIxe7oFbUdkW/S9frFASG3kx8+FI83F
         OoBg==
X-Gm-Message-State: AOJu0YzXM+q84QxR2KaNlgFHUjOwKEQ6E/nP/Fb5N+lDEauT7uGcLLn6
	bq3G/J/vIK4uBlthO07wZ8dIfXhRZ+YN7ShdI8zMukN6jBW7Z48ipFEzlTVw3tz0c8Uh0Lf1LVu
	qOgd6YaB7ruINhRI5gJgtwRWbXQJX2zdDI/W1wWRrorg9XexLa5+IKuXvsADUGZWcUUtNQaRR
X-Gm-Gg: ASbGncvkFoyS7zLisTnPLQpExuTYfX196dKe3WqDQR1yNe8fgdApaRor6Ro8z+LhUZR
	dWHKTRjjLYfNTwY9Op6Y7AuwryUCVqyJBeMwmEhehnRwrQ1W985Wbh6iA2U3H2OxEhBRE7sxb6S
	8DSEeQ2d4zrm/GU7NEgt1DBte1fLpsIe1dZmDNLOLYuoEMUIlhO6cClDsoQKV9cRnQYRAqnEwxg
	3ONE5XMnROCAfA5A9JX8SwaHkZ8lq2hBrxfOHYJIAT/COasAz97lGGaErbj0PtYhmayX5LwIik1
	j6+3kvKGLKiFoAoR0Gc7ZvlC3wVtIaWWNSiXYp4qMztxMzDvH7T1LKAuK7xNDkcAOTtvf/iFEGT
	WHP4zM8QyeiW9wyonWARAog==
X-Received: by 2002:ac8:44c6:0:b0:4dc:24d3:c70e with SMTP id d75a77b69052e-4dc24d3ce69mr5366511cf.13.1758805616976;
        Thu, 25 Sep 2025 06:06:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwnD/+DBSz4FfSNFmFPTiH1GEY8oMCJCmsKgUxzjNXAh2WUGJd1eXwBf2amv5cSWlKmUN4vw==
X-Received: by 2002:ac8:44c6:0:b0:4dc:24d3:c70e with SMTP id d75a77b69052e-4dc24d3ce69mr5366211cf.13.1758805616340;
        Thu, 25 Sep 2025 06:06:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353efa4c35sm163751566b.26.2025.09.25.06.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 06:06:55 -0700 (PDT)
Message-ID: <53b1a622-3afc-4fd9-98b1-3c166f563ad0@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:06:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: qcom: r0q: enable max77705 PMIC
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-4-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250920014637.38175-4-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: yS7Jcj_Myy2Qcm96wl_lZyEujTIhQE-z
X-Proofpoint-GUID: yS7Jcj_Myy2Qcm96wl_lZyEujTIhQE-z
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d53e72 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=VyAeMZAD-TxZKk8BDF8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX6i0OAXZSwF6D
 6mXCMY8fCxZyH3bvJaUsS12vx4c0JP/z9q/YDB1hZxXNsmFMYYazD6sNlrYCzOWR1zVIuLIGoIy
 pBOWtXJSpCOgw72aGbVCysezBBO1lgW5/2IE4FrVy5/Kuf2UAKwbGfpdDhuntzB4bIzLT2Dm4KK
 OujdQbpXEq36cSBqAJEzg8AXg93YP8+2RYaT4SqGTyLZK07DzdN8+r0Pp2MXuWqttLrL6Eh0o04
 NzHoz8ob+vRUgLst1xh+gaBmSnE+5H7pYwXvVPIOBSDEDzNNsAke9hzA68tn+LmQ5TKhKMHFAlI
 LRIFSmnc2xOwnThBx8RJZkRa8pbGigmLdGtcSw0V3PxmWuO4/m9a705bSHoHAlDkDornLPWcusY
 JK1i+WaP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

On 9/20/25 3:46 AM, Eric Gonçalves wrote:
> The Samsung Galaxy S22 uses max77705 as its charger, fuelgauge and haptic
> PMIC, enable the fuelgauge and charger for now.
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---

[...]

> +&i2c5 {
> +	status = "okay";
> +
> +	max77705_charger: charger@69 {
> +	    compatible = "maxim,max77705-charger";
> +	    reg = <0x69>;

Please use tabs consistently

> +	    monitored-battery = <&battery>;
> +	    interrupt-parent = <&tlmm>;
> +	    interrupts = <5 IRQ_TYPE_LEVEL_LOW>;

interrupts-extended = <&tlmm 5 IRQ...>, here and below

> +	};
> +
> +	fuel-gauge@36 {
> +		reg = <0x36>;

sorting by unit address is welcome

> +		compatible = "maxim,max77705-battery";
> +		power-supplies = <&max77705_charger>;
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
> +	};

These nodes should be children of "maxim,max77705"
(see drivers/mfd/max77705.c)

Konrad


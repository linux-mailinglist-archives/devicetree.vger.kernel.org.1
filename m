Return-Path: <devicetree+bounces-169880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BA1A9886C
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:23:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C4083B178F
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B7B726F444;
	Wed, 23 Apr 2025 11:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SBKh4NWS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D3226D4EF
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745407434; cv=none; b=Kswqh40eK6qBNT/H0ZhtQDbdVZDXiBNLijULZ31kYpyHvvVz1VAGB8hpgrWqn8rgEy+XnJx/l2ZK0QI0/KGybD5nEJ51m4xgB6PJLJ3VWlU9S9s6ifMdiUzQm2eh/kS0oD2rCtHl2jmOfiUIz87Xdj/V6Rrz7wXEtpFeFd2Yhg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745407434; c=relaxed/simple;
	bh=2z6jgr2mydmIuSZkOkN5LFizXc1g8MQjKJz15NS0Gtg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AzcbDMrZCUPzPJGQ9VeohLKNHlsiUEiN1ghJpZ26Fb35xC+o8/RkaP5WaGgjGYfDE6lkbgrCay9Dm/uilbZfrfBRNVelDdq3AFw328vwfr7Vvhto+IhCvgk2Wb5TUk1ifNBpqR0lyPAE1UDvYbIPos+QE6s/a0cyFSJhQKFCDco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SBKh4NWS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAbrv2020411
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:23:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yZ4ckw9phUjE/33TkefvnOiLJnkaspW3ubnn0WXfC08=; b=SBKh4NWSJXTdsQ/x
	R169j8ZWbp3gYKHHMSmHOzPn2rmDMTwDQWkI4cJzvCAcqAhDii1ffZXbOHQYgnMm
	Hn7wb+GpNmwkEQPqzlT/QsbH3Ef9IjmaxjLxD8llKoQY/bishKeZftBAQ/Kos7ug
	qMfljaq1Q2kstPjCwrg+1RRvJmQRpdP+Vd+hTUzPgwRFH5TVusZM2Ei+6D5e5ObQ
	F73kpc4AQfOReVoW4ZTmpK8H6izxkJOjh9eeuQDrjeflKC31xIxDMSnOlwGNoZxM
	syjhvVCQy3r3rqCRRw5WMB4e7UuqW5ocWxoz/Ok68ejDIPOzyizEKRdva2Gk2+CM
	/Vsgmg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh21xpm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:23:52 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c76062c513so121204185a.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 04:23:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745407431; x=1746012231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yZ4ckw9phUjE/33TkefvnOiLJnkaspW3ubnn0WXfC08=;
        b=IswC8vt8j4FnAXpCrlpspd+MbiJbURjwlJ4e0EMnlyWoJnDRcVMuzQG+uplNOvzFl0
         54Q+NRAT0kqYAY5lNQ44cmJAbKaVzAZh4p3jJCz5w1YpUUjjrN+Lgr7ots0ywxA/YSst
         L6oXP8QUziL3X0xdwORtkdR3oSS9/sIKDg0utL3FAm7SB+jVt32rjDi2HNgUzd95JmmE
         qhVZSM7qdT4A5tKMEyxyQMDyO0Jhb8k68vFHB4wkDR3ht80n/kiXQGB7JdOHIqdsCt/1
         spJJh29GfgsCYR+PWoCbUkeO2ZYf07hnU5y/5h4fgGdw8N7EfUWZSXOwpQWNH/o18hC3
         4TxA==
X-Forwarded-Encrypted: i=1; AJvYcCV2ftk5OUS+vfl1MRpwJud6RoWHzXEBbgrd4L4kIPCllSXkE/4lPrYtOHyd3xlxG7MvJZmQhqMQM+NB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxnxwb+2TN2i1tmPyLUDTP1tIlF99G4HsLFQp4kHKwmDPAs+Yvo
	hV42Dxd6CaNFyUl7r0fyA5oWt1ZSs/Bug2AmR5wkfwdM7JrkN1GVoBxo6QFZKo5ZGb/5J7g87mt
	fkhX91yMcm+m+rzcs391QvN41EemMQVStx2lWbInd3Gein5acSKnyS0sASlBJ
X-Gm-Gg: ASbGncuwXl94dGVSfycnWozqKrsMOHXYe5wz8Bi2LQRuHa8Pc5TJ4yung+GxbRKiMvd
	qqfWal9MeSjyIa9zyzQxzDJLvI3IcYkk++K+zKgIsibz0xjIVYegZdIyuaisXLcOYJ1rnQoaXtp
	jjfgFtGn0SpyHNu14ByVyyk7rH8hzOPhirxzvde9+DKcP2zvK+Vv5RaI8XPTPff0cvuT6bUhPKd
	qWcI+HSbLmcRUxxG1iboir1esSi2R23tJmHHFX31kZBROxfbrs2/H6h/bS8r6XoU8n9SDOBcbXK
	U6ISYs/+vRDnLM4TF/JC6tK5/+ElcDYFZQF2Zbx+rNZ6Fp7JU+0H2Qf6fPL0g6J29SA=
X-Received: by 2002:a05:620a:390b:b0:7c3:c814:591d with SMTP id af79cd13be357-7c94d243e9bmr190753885a.1.1745407430785;
        Wed, 23 Apr 2025 04:23:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdIHiXpPDkGGBJDXfBBBsFTvUdPXz6hDe/XrnRasquYh3mWBJjmxvRBRjElMM6IUIxVffCBw==
X-Received: by 2002:a05:620a:390b:b0:7c3:c814:591d with SMTP id af79cd13be357-7c94d243e9bmr190750985a.1.1745407430388;
        Wed, 23 Apr 2025 04:23:50 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec0b1d3sm785726966b.4.2025.04.23.04.23.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 04:23:49 -0700 (PDT)
Message-ID: <fc6b1fe6-7847-4aa8-838a-dbd0ad675412@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 13:23:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sa8775p: Set max link speed to Gen4
 for PCIe EP
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com
References: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
 <20250423-update_phy-v1-2-30eb51703bb8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423-update_phy-v1-2-30eb51703bb8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EtLSrTcA c=1 sm=1 tr=0 ts=6808cdc8 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=iRih2zsw3dMuVQupJ74A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: mQ4ngorWJaS8BpE-CxLo_mFm5NYpZLiO
X-Proofpoint-ORIG-GUID: mQ4ngorWJaS8BpE-CxLo_mFm5NYpZLiO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3OCBTYWx0ZWRfX89jeMTXc5xad P8YdgKWpZZFGqOOpZLtSLR+JJBQERAnaWpjODdpanBoYAVrUyjzBOc0bh4RBQMsfd3w/c0G1ivJ kXGP5gSDxsCaMSbmfy6fU2k075Gu8xCxSdeJScDFCQ6IPuqlwjzw2sO/INvBcgxiZ4U9TyirK8u
 BFunJwuHo+NeKuDYfwIXsSUt4cpiEsdh7qyTLdri1AG62zboq1AxKERa1FWpeUBN1itQA3EwFVB gbtEY6eqdyZAx9zQmBmNTL5/cgEhrpwFd3Xk+YzXYRI42tFsjL7LHEUj4NN4IqfuJ75RyhSHg+O Fxl9nJBgJ7eFViVnQW1sM+2BozLjmDaVvSTW+QMk1uaKtbyHFYzmJzNoRlI+MmRkUkpwPeFL96M
 hZho/63sL0aLV1U0VOaR2AFY1EWFKw7s8CXT0QiB4vdnlcShQmsU4JR8MQNujwtKWOd1haFT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 spamscore=0 mlxlogscore=999
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230078

On 4/23/25 1:15 PM, Mrinmay Sarkar wrote:
> The maximum link speed was previously restricted to Gen3 due to
> the absence of Gen4 equalization support in the driver.
> 
> Add this change to set the maximum link speed to Gen4, as Gen4
> equalization support has now been added into the driver.
> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 5bd0c03476b143444543c68cd1c1d475c3302555..65d9433a298f80eb782439120ad9c3c74025b441 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -6462,7 +6462,7 @@ pcie0_ep: pcie-ep@1c00000 {
>  		power-domains = <&gcc PCIE_0_GDSC>;
>  		phys = <&pcie0_phy>;
>  		phy-names = "pciephy";
> -		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
> +		max-link-speed = <4>;

The property may now be removed, as 4 is the value read out from
the hardware

Konrad


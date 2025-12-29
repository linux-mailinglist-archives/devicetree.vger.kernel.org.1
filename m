Return-Path: <devicetree+bounces-250207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B54F0CE6D2A
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:07:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 447F8300160D
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D1CC30F7ED;
	Mon, 29 Dec 2025 13:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pno9aEyI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DgaKZ7ia"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5023126CB
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767013646; cv=none; b=I8wFF0ynyfYZjxSACYLOvFS8HZ7vKGslyyFGcQg6vXs0XUc7UgM1ED1J9FS8vXaEFnJwZmnjhefKTgrQnb6yuMBqnFGfYMzuo/2GYtBwXT78tw/9x8m9Tz5PyZPJFYsHv21odqAjmzmGbb1p5nRYv842u9TAIhy+rxP2i5I+yuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767013646; c=relaxed/simple;
	bh=zdvJxQzO/rWhAhkyvIdr30asrrQown0e1m4wJJqQ+/I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hRFQ7TDWi/2X6kOoYRxtBq7XTbjZjXlGehA0pv2uoMlxHFsmtur5hHRXxkRDjvm3xzfOBAdp94UaKvlO/PKMPKIgvbnfjobpS7WCdyXJcIjDfgDuuKiAn1eNBQCt/foZyzqKiajxDjeLuw5IoMERR4shR2HWbT91f6uF9NFcfTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pno9aEyI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DgaKZ7ia; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTA008X3821190
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:07:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zdvJxQzO/rWhAhkyvIdr30asrrQown0e1m4wJJqQ+/I=; b=pno9aEyI46qnJwmw
	ktz1Tx1vSLxMdxBhG1OCxH3DPXwNt1swO/qgQqS6wS4VgTMWMNKOAFGiKRMcGhC+
	lFZEKTaUDTpEL4ycRz1/3TyMsf9d4KnO6WC9CJQAVzBZn3bhiqChHBSUNmFzM5fR
	J+6rjteT8TDcwtJL8ts4fb3Q0BdunQXFOl/sNeS++jCOoeRQCAp9SSj5sCPtlgC4
	bfPLemsbAwd3ECeYYIfYxXsxJBRadb6AHHPj3QivQyIyA/WMNFWJK8SAclwLlq1X
	MfU03bz+9rt8Vose9u+0AvMDRKlk9Xy0tEZXR4mU4k79PUZK5QrdNrp+v6psq85r
	DpotRA==
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com [74.125.224.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6dr4g6y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:07:21 +0000 (GMT)
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-63fb6a61e8eso2613632d50.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 05:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767013641; x=1767618441; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zdvJxQzO/rWhAhkyvIdr30asrrQown0e1m4wJJqQ+/I=;
        b=DgaKZ7iakHgAszgqtSsYNcOp005Ehy+OjmPsaOyDSoElmi/mWd5y8BCAtqrF9B4zC2
         XW8u7dHEE5y0v1jVkJSm9F6ToGh1WAMy5t87wLDHvp/RFQoMwYxeTdsdeqfgT6ueV4j0
         Vimd00ZD0dXoVy9T/E3GCR7Ik+TnP02cXwrA5pJLWdueD0nvL+6qKW/AZcufgXZvibav
         hgoM3n5TnHGoxMcUYgvAumb52/jq2WBm88Ywieo/JslOigsecTr+qDawgYZCoFTmgrF6
         cbInWpZv5b9EDKeFbexm/8Ki+oai1eaz5HODlj9BYCUXXwUMC2pHt08VstlfFcvqy6yF
         wVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767013641; x=1767618441;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zdvJxQzO/rWhAhkyvIdr30asrrQown0e1m4wJJqQ+/I=;
        b=adbDCsGp6o1kusxLvCR3kN4fxxkE8swrAuLUqfFdujxWOOG5diCiH+kAPuXg7vTXya
         RnZTX6oGvA3LdWzaUnd/ldQDuvIzi6mTiet5RoC8dggqGvmN216LyPdzCiq/ZDETFI2I
         ZZ80kpxQo8R/7U16m80oaGngjUVrJiP3dJu9+taSafJT1ElCe8cEV8qE8weiLb6iZBtM
         TcUKNDAdolgOEdeknXDczQTg7Se/OPqiWxx55tGf0ry/VG5BlXGPN20WUgMmvUWEOrlV
         tPeDK6P9k+WU5ezeY8FI5zUARYiln4JGYCRK+Uq9B5zOC0rgl8N9Atj79OpVeo1L94BF
         Yfmg==
X-Forwarded-Encrypted: i=1; AJvYcCWuXVQsZeSfj/PFszL3SGUSgQqxfs8tEcWzqwoO4vEdW283VSIPsmR5bkM831kdH0EV/aV9b7PqUARK@vger.kernel.org
X-Gm-Message-State: AOJu0YykSBjXxcaeNNFXwZyDgXsRQj4WFJNqxBRu0w/eFg3B/4oETMXS
	uzYypwyik/CU/WTC4t/8uezNzQujhaBsSTsY1nhf8Nc5IGtAlCEhOQnzgTF3peF5AQYSgzfz/Vd
	eRZvRLAt2bnMZnsWpUj7ny0PuZOcGTdLaHke0r9C/utYeXaICzIrW2+GcXRfO20CP
X-Gm-Gg: AY/fxX7/bFSTNX26VN7TJq2UPm3vMyIEIYEzRcv7mpVPaww1jUuRZutW8zMDFA+46Z/
	YqyjOfHW1inwsDOq5xv2UX+kHmpTJ9CrZtUNSflEuCupDkxGE6WqY4oq/I4Sk+R8wwKzjt4+9U/
	/fOoTz8v+aQmOY6eCMjLHsXfRZFvsdoZFN1m26K/Bi/JbYzPjxFzuNMNoobXR3mq3SjBE72K/yU
	gxgEgqVE2p4GjwErgvqoOyiB5OW8X0642RmDoHjBdSb3Fe3+YcpxupwdfsXnjt9/CUJ2C2Lb7AI
	aYVwJAv2IefbLalcg2cndF+Mw6/8nhA4yJ7/ScZJL6YjiGQU/b2TjkZQeBT16DrCIpqSzhx3YeN
	pP1Vkz8fdbjUT9hgULyzmTYP1+IpD94yHgPjkvZu9R8598pvyzyJCUTmDErfKUb6wNQ==
X-Received: by 2002:a05:690c:e3ec:b0:78f:ca4f:8371 with SMTP id 00721157ae682-78fca4f8bb1mr199181487b3.6.1767013640440;
        Mon, 29 Dec 2025 05:07:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEy3p84RwWWItb1yLlZENCGES09seo7LctTTnqHspSXASL7VcpB3FajKFabINYyB3Yt8fV8og==
X-Received: by 2002:a05:690c:e3ec:b0:78f:ca4f:8371 with SMTP id 00721157ae682-78fca4f8bb1mr199181197b3.6.1767013639787;
        Mon, 29 Dec 2025 05:07:19 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de142csm3264454166b.38.2025.12.29.05.07.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 05:07:19 -0800 (PST)
Message-ID: <10bc67e8-e9e9-491d-9e38-4b55735d42fe@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 14:07:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] remoteproc: qcom_q6v5_mss: Add MSM8917
To: barnabas.czeman@mainlining.org
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251228-mss-v1-0-aeb36b1f7a3f@mainlining.org>
 <20251228-mss-v1-4-aeb36b1f7a3f@mainlining.org> <aVJhH17XH1srlroL@linaro.org>
 <d531f1346b59af06c323f393883b1d13@mainlining.org>
 <2898fde7-2b3b-471b-8f8f-a02cb6953aaf@oss.qualcomm.com>
 <eeda5a8b6f5a9dc5cf5440afc07c40fd@mainlining.org>
 <d3ee6ba3e66706c304ecfe6afc4b75f2@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d3ee6ba3e66706c304ecfe6afc4b75f2@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEyMiBTYWx0ZWRfX8Z1vtUdG+2+Q
 zwFgp7lqCBU8u8ZK5dxbWJY+0E64JGgaxsni2znIHugYX8Z917Hoviu6JB5F55bn61eqid4Przu
 nIlszLloi6kUzhchuFbA3TbCXgh2RC0AofudpAiesfdr9ZLUfOiLGmS2bbEo9W+IzgpARGMbvp8
 +2szxDDGnHCD3qJqn0epK3mWVnxP8bhR45z6Bk0Y3pKTt/+ZTlaUiSIXz3jnDVrzj3QD3T/8dW4
 eye6fBe9S0NcfY4ASc8Mh+u4j52SXDQpTIuO2JCU/95dt3DBPQXC8P7GCh/kahMczolRszrN2E3
 epUlJXg2Nxe6hpPgRalDCHIziSkGWG+7ijfXCLPMbgoYVzoIy8NoX8lQF4GNkqdBbt0mzQRkrwC
 +1J2RZbDnoXBgDru2Y7MPIN3kXQ2+NKVXmWydiwJbcPfATteDUrBMelSVF3voap4Nb6JkTEDc0n
 ZGt6q4O7Pvd/+LVjkvw==
X-Authority-Analysis: v=2.4 cv=VdP6/Vp9 c=1 sm=1 tr=0 ts=69527d09 cx=c_pps
 a=S/uc88zpIJVNbziUnJ6G4Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Oh2cFVv5AAAA:8 a=qC_FGOx9AAAA:8 a=OuZLqq7tAAAA:8
 a=2IBVnRfEnaAdcxqTa4wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=nd2WpGr1bMy9NW-iytEl:22 a=7KeoIwV6GZqOttXkcoxL:22 a=fsdK_YakeE02zTmptMdW:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: 3AG0Gpd81IqZi1ioRRbz1ChTZTdfCL-m
X-Proofpoint-ORIG-GUID: 3AG0Gpd81IqZi1ioRRbz1ChTZTdfCL-m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290122

On 12/29/25 1:59 PM, barnabas.czeman@mainlining.org wrote:
> On 2025-12-29 13:51, barnabas.czeman@mainlining.org wrote:
>> On 2025-12-29 13:40, Konrad Dybcio wrote:
>>> On 12/29/25 1:33 PM, barnabas.czeman@mainlining.org wrote:
>>>> On 2025-12-29 12:08, Stephan Gerhold wrote:
>>>>> On Sun, Dec 28, 2025 at 03:21:54PM +0100, Barnabás Czémán wrote:
>>>>>> Add support for MSM8917 MSS it is similar for MDM9607 MSS
>>>>>> only difference is the mss power domain.
>>>>>>
>>>>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>>>>> ---
>>>>>>  drivers/remoteproc/qcom_q6v5_mss.c | 46 ++++++++++++++++++++++++++++++++++++--
>>>>>>  1 file changed, 44 insertions(+), 2 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
>>>>>> index ffafbe501a05..2579558fb567 100644
>>>>>> --- a/drivers/remoteproc/qcom_q6v5_mss.c
>>>>>> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
>>>>>> @@ -259,6 +259,7 @@ enum {
>>>>>>      MSS_MSM8226,
>>>>>>      MSS_MSM8909,
>>>>>>      MSS_MSM8916,
>>>>>> +    MSS_MSM8917,
>>>>>>      MSS_MSM8926,
>>>>>>      MSS_MSM8953,
>>>>>>      MSS_MSM8974,
>>>>>> @@ -749,13 +750,15 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>>>>>>          goto pbl_wait;
>>>>>>      } else if (qproc->version == MSS_MDM9607 ||
>>>>>>             qproc->version == MSS_MSM8909 ||
>>>>>> +           qproc->version == MSS_MSM8917 ||
>>>>>>             qproc->version == MSS_MSM8953 ||
>>>>>>             qproc->version == MSS_MSM8996 ||
>>>>>>             qproc->version == MSS_MSM8998 ||
>>>>>>             qproc->version == MSS_SDM660) {
>>>>>>
>>>>>>          /* Override the ACC value if required */
>>>>>> -        if (qproc->version == MSS_MDM9607)
>>>>>> +        if (qproc->version == MSS_MDM9607 ||
>>>>>> +            qproc->version == MSS_MSM8917)
>>>>>>              writel(QDSP6SS_ACC_OVERRIDE_VAL_9607,
>>>>>>                     qproc->reg_base + QDSP6SS_STRAP_ACC);
>>>>>>          else if (qproc->version != MSS_MSM8909 &&
>>>>>> @@ -817,6 +820,7 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>>>>>>
>>>>>>              /* Turn on L1, L2, ETB and JU memories 1 at a time */
>>>>>>              if (qproc->version == MSS_MDM9607 ||
>>>>>> +                qproc->version == MSS_MSM8917 ||
>>>>>>                  qproc->version == MSS_MSM8953 ||
>>>>>>                  qproc->version == MSS_MSM8996) {
>>>>>>                  mem_pwr_ctl = QDSP6SS_MEM_PWR_CTL;
>>>>>> @@ -826,7 +830,8 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>>>>>>                   * Set first 5 bits in reverse to avoid
>>>>>>                   * "inrush current" issues.
>>>>>>                   */
>>>>>> -                if (qproc->version == MSS_MDM9607)
>>>>>> +                if (qproc->version == MSS_MDM9607 ||
>>>>>> +                    qproc->version == MSS_MSM8917)
>>>>>>                      reverse = 6;
>>>>>>              } else {
>>>>>>                  /* MSS_MSM8998, MSS_SDM660 */
>>>>>> @@ -2538,6 +2543,42 @@ static const struct rproc_hexagon_res msm8916_mss = {
>>>>>>      .version = MSS_MSM8916,
>>>>>>  };
>>>>>>
>>>>>> +static const struct rproc_hexagon_res msm8917_mss = {
>>>>>> +    .hexagon_mba_image = "mba.mbn",
>>>>>> +    .proxy_supply = (struct qcom_mss_reg_res[]) {
>>>>>> +        {
>>>>>> +            .supply = "pll",
>>>>>> +            .uA = 100000,
>>>>>> +        },
>>>>>> +        {}
>>>>>> +    },
>>>>>> +    .proxy_clk_names = (char*[]){
>>>>>> +        "xo",
>>>>>> +        NULL
>>>>>> +    },
>>>>>> +    .active_clk_names = (char*[]){
>>>>>> +        "iface",
>>>>>> +        "bus",
>>>>>> +        "mem",
>>>>>> +        NULL
>>>>>> +    },
>>>>>> +    .proxy_pd_names = (char*[]) {
>>>>>> +        "cx",
>>>>>> +        "mx",
>>>>>> +        "mss",
>>>>>
>>>>> Are you sure mss/pm8937_s1 also works as a power domain? It seems to be
>>>>> a plain regulator downstream (similar to msm8226/msm8974).
>>>>>
>>>>> Same thing applies to MSM8953 as well though and there we seem to have
>>>>> decided to model it as a power domain ...
>>>> They have this at downstream, i guess this is why handled as a power domain.
>>>> vdd_mss-uV = <RPM_SMD_REGULATOR_LEVEL_TURBO>;
>>>
>>> It seems to be just a normal regulator on both 8917 and 8953
>>>
>>> https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8953-regulator.dtsi
>>> https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8953.dtsi
>>>
>>> https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8917-regulator.dtsi
>>> https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8917.dtsi
>>>
>>> Konrad
>> It is different between 3.18 and 4.9, 3.18 seems simpler and easier to use it as regulator i will change it
>> https://git.codelinaro.org/clo/la/kernel/msm-4.9/-/blob/LA.UM.10.6.2.c26-01500-89xx.0/arch/arm64/boot/dts/qcom/msm8917.dtsi#L1375
>> https://git.codelinaro.org/clo/la/kernel/msm-3.18/-/blob/LA.UM.6.6.c32-05500-89xx.0/arch/arm/boot/dts/qcom/msm8917.dtsi#L1655
> Only question is left what about SDM439 and SDM632? They were introduced at 4.9 maybe that is why it was modified both are inheriting
> MSS bindings from 8953 and 8937.

Seems both are the same too

Konrad



Return-Path: <devicetree+bounces-250630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B950ACEA8E9
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 20:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C39393021E70
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E96AA2EA168;
	Tue, 30 Dec 2025 19:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Iz8qsdEJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H6knnGzd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298A4258CE7
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 19:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767124259; cv=none; b=DKie7KLt/WFBLBr5F8umxhjLZCVUSuP3QCMUF9g35+LMzYuRejngc14TkzmmV9ipLDBSaY75mvaZVgszJZJBUDsI2+qqv+2emR+dalM0QKSaTWfWXsu1nBEGej6sjJjXZEi9q//fw5tOD0oWOXNvxZ/c9fvWrOPujhnHJjbQgsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767124259; c=relaxed/simple;
	bh=jUIrpSR+w8EoqdT33I8iK8pTs/eKtBau6TE8v8X/fPo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vEpTkviNJ048bPGwDNrAzBioYYfVajv0/AK6o9P0D42Q0GjqZfwX1ZhgCPOZmmxYbqA9WsJFQ7mQJCyASwp4XimaiQADSygY7PC5PFC1ym/3Cm7hVvY2gA3ep5y3nQKVZ69T+LvMoiRcpgF/NNGFk/XYykKUpzHmoZM0wUfJAU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Iz8qsdEJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H6knnGzd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUCtXc3714786
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 19:50:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jUIrpSR+w8EoqdT33I8iK8pTs/eKtBau6TE8v8X/fPo=; b=Iz8qsdEJ5ZyFuPYa
	GLBvDbCdjZ38UwFH+wqkJNeZvRH8RLlHkLRXQKubIOiK/prXCIP4wzAQkqeZYW8M
	otWmBG5PsC+ir/X8HOxqS6R1FvG7wyRUK1WkoTLF7KiVCcxROBPsxY+3A25nB5/Y
	A9U1abAIAemYk+JZy0uP2lT9HmluSXxilfXCTh0FKjMReEjbG28eItDqk79vbmI0
	isdoaxbeOLtWwJBkplP2P89yCC1lbBeUIxK/taBpIiR+tYE/4nFMDPBRq9XWBQLa
	RJer55DTui6EIAS7aDgNrh+Lerj3nSMJB9dW3WFOy2DW8jp4EkvIL/cEJDhlVfZY
	EoPV+A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcf5yrw5c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 19:50:55 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso34358051cf.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767124255; x=1767729055; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jUIrpSR+w8EoqdT33I8iK8pTs/eKtBau6TE8v8X/fPo=;
        b=H6knnGzdK/yI1oZB+qeSwKRwaaUnD5+5x6jvT6vMeE/hh+f4Wt3Ltyp9lkiCZEhqNY
         p51IRwyZZrXcIy+enuBEcNIpwyek96zjy0Jvi95RJaxnvPbBmQiyN6PcK/PMebJZuAlb
         MR8P4NCzPp+GLmdtMDsBo3JLKQaIDjpIHBSoSd4xrfOJP+6ns7bJReKwo4wAVAyK9oT0
         oUcAxP8tbeHMuWtQ76iMFDSgOy0caDytQREczAQA1POCR+P4nhdKH0SgQPpNSgqh5ahy
         43YDq9TWt7/i6/XL4klMZ9Q6r4zXB2tXL7crIcrTbv6Et/7PXTNIue93iqXCMCj+gjxo
         uc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767124255; x=1767729055;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jUIrpSR+w8EoqdT33I8iK8pTs/eKtBau6TE8v8X/fPo=;
        b=QpfhhQSQZlwCvLfI/FF0rJWrH36UIw+C4zOZBZIZLEGl4at7uiyCDXdp7wdHiSH8Y3
         4pcyki3cmSON5fnEFPg1SssAfC5VGd58hbxIJwByVepTb/2hLTA108F0lWcC+bEVnenJ
         x8GPuG4UyMF5kG5B+ZRV4VtZM2ePEfa12WoPER1Hj3GaP1KZp9d0o0867X5OvpTW2lSx
         a24EeLsn3Gl1Ce99ESqr7eYJYx5Z6bvdGQvKeYG+hp1VuW5Ija1wMXCv++edTLTRsJWq
         dQyXGbzX8/mQsoM6uq+cF3z5inwtmlyAHKnQzIiP1ctpTcZty0Nw3Dw4iGHpkXPlqJRT
         eKZg==
X-Forwarded-Encrypted: i=1; AJvYcCUk0rwF4nJsseDCKFW6B25Va53CDzCC3X1acaAkPWsC0fG5DuyWJyOGUzPg/hSBAhUZsGMT4JFDuSL4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz87fHupf1EsSpq7XbfxL3l/U07htQwOpp3Yb4Q6m/XXDevTblL
	NB78Xb+iy5ISzBOcFqqwLwopOCAa/tLRqvLi9B1yNx88c8vE64XapJzHvN2cGlkwDOftSSBfB2m
	e109Pkzdyqw3TbUDrccSV9Hw302Ft7FwFd9boGHK0M4Q4fj5GCcwEZ2agzNEpr/gS
X-Gm-Gg: AY/fxX4Jo+g5A5UUQaWqnjITL5cCWZyTH1t9Yqiiv6h881R6t1ER5LYhAKiAHJxVbXH
	N2L5s/lOzJ3w/0WHDcpNkiqS2H6qg9EzfZejk6QsP8AeVwv3v9maNS4T+mRcMYo9ZDLNpZYUUgw
	1G60Q+E3oZts8yveN051HTHIrCg15ZBH+wNxM7rzgeuoevJgZjpGqgp3I4pll9DUAqYrbbgf4cb
	irHWjiiiEkV83mpk3ZVmvpib1A+F6FTcTJ034gE6j+Qj88AzdtzN69m7cLLYY8iEAI19AVdfsjE
	4yip6LpMWBdYY0uBcMudH9Hz1R6juAlmjpIc5R60uoIwRyWCM5+8gP/pN4nCzn6fWIY8xDggK+Y
	17rLqbnT5LvWI88gUcigwtEFQA2RXO2GaIY2V64etacSFAU1gw7Cc9Z3ktzr+jstc3A==
X-Received: by 2002:ac8:5748:0:b0:4e8:a001:226d with SMTP id d75a77b69052e-4f4abda5f11mr405405911cf.7.1767124255254;
        Tue, 30 Dec 2025 11:50:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/+2BBLmMvogsvLxaz1uAXnG0dq24qwFatPrFFRiXFKRpxVhe4TqHPNsbWOT1hDWHyr76UpA==
X-Received: by 2002:ac8:5748:0:b0:4e8:a001:226d with SMTP id d75a77b69052e-4f4abda5f11mr405405541cf.7.1767124254803;
        Tue, 30 Dec 2025 11:50:54 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f3ffbasm3791372266b.61.2025.12.30.11.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 11:50:54 -0800 (PST)
Message-ID: <2b057aa5-4416-4fd4-aeab-6bc23acbb53d@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 20:50:51 +0100
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
 <10bc67e8-e9e9-491d-9e38-4b55735d42fe@oss.qualcomm.com>
 <a142c6c16ff298fe782b3fc80efc4a30@mainlining.org>
 <563ce29d-0a96-42a6-9c05-51cf16244cc9@oss.qualcomm.com>
 <397fc3d6419d1047b5f99dc4b2d02593@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <397fc3d6419d1047b5f99dc4b2d02593@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE3OCBTYWx0ZWRfX72aZVa2Vw3uB
 rUvlWXxpKPz0sHVZIuhDipV7Wubv94XTt9oUCu+P0YU/kC4MgiIpJ5GR0231692vywtGFCHS3LD
 7vKMw2ZGou3KVxrmk2hRvMviP+G2gWF5K6YQK1y19cGKpCjBEaw1lnTXGJJtntC/JSYUmmbwYCh
 6SeNgOybKCh1paShRDPUb9HhyS64qjrDrO2GpYmjciw9b1rmBC2oe0/Zz7kDXVMg1eNCA8mGZiv
 zbmyLCqtvRSZDXmTxR4fkBtgKrA6/w+VgdpvT2ZCCiaM9+mrFlbzpsmDZNZlRzPfK5py2jiypqZ
 XboEvzFb/iCmLvoKQvWb2DPRhugRiwQtxmEWDyynhxNkIMuE22g+W79F1f2R8ScCYDgAoUqSwCe
 6zkstQxIy+moDB2CoRJxDevE1l0kBDcOK24kI7sUjt13Ca8pC2OO+dEdQ5A9eDB6bEZcduZRMOK
 ZoxgvXf74GjoHdex4IA==
X-Proofpoint-ORIG-GUID: FREgRr-CklYnW2LruMLgfkHF9Arsab0k
X-Authority-Analysis: v=2.4 cv=KvNAGGWN c=1 sm=1 tr=0 ts=69542d20 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Oh2cFVv5AAAA:8 a=qC_FGOx9AAAA:8 a=OuZLqq7tAAAA:8
 a=lyBoCYSaoUlMb5i9Kl4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=7KeoIwV6GZqOttXkcoxL:22 a=fsdK_YakeE02zTmptMdW:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: FREgRr-CklYnW2LruMLgfkHF9Arsab0k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_03,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300178

On 12/30/25 4:28 PM, barnabas.czeman@mainlining.org wrote:
> On 2025-12-30 14:11, Konrad Dybcio wrote:
>> On 12/30/25 4:25 AM, barnabas.czeman@mainlining.org wrote:
>>> On 2025-12-29 14:07, Konrad Dybcio wrote:
>>>> On 12/29/25 1:59 PM, barnabas.czeman@mainlining.org wrote:
>>>>> On 2025-12-29 13:51, barnabas.czeman@mainlining.org wrote:
>>>>>> On 2025-12-29 13:40, Konrad Dybcio wrote:
>>>>>>> On 12/29/25 1:33 PM, barnabas.czeman@mainlining.org wrote:
>>>>>>>> On 2025-12-29 12:08, Stephan Gerhold wrote:
>>>>>>>>> On Sun, Dec 28, 2025 at 03:21:54PM +0100, Barnabás Czémán wrote:
>>>>>>>>>> Add support for MSM8917 MSS it is similar for MDM9607 MSS
>>>>>>>>>> only difference is the mss power domain.
>>>>>>>>>>
>>>>>>>>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>>>>>>>>> ---
>>>>>>>>>>  drivers/remoteproc/qcom_q6v5_mss.c | 46 ++++++++++++++++++++++++++++++++++++--
>>>>>>>>>>  1 file changed, 44 insertions(+), 2 deletions(-)
>>>>>>>>>>
>>>>>>>>>> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
>>>>>>>>>> index ffafbe501a05..2579558fb567 100644
>>>>>>>>>> --- a/drivers/remoteproc/qcom_q6v5_mss.c
>>>>>>>>>> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
>>>>>>>>>> @@ -259,6 +259,7 @@ enum {
>>>>>>>>>>      MSS_MSM8226,
>>>>>>>>>>      MSS_MSM8909,
>>>>>>>>>>      MSS_MSM8916,
>>>>>>>>>> +    MSS_MSM8917,
>>>>>>>>>>      MSS_MSM8926,
>>>>>>>>>>      MSS_MSM8953,
>>>>>>>>>>      MSS_MSM8974,
>>>>>>>>>> @@ -749,13 +750,15 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>>>>>>>>>>          goto pbl_wait;
>>>>>>>>>>      } else if (qproc->version == MSS_MDM9607 ||
>>>>>>>>>>             qproc->version == MSS_MSM8909 ||
>>>>>>>>>> +           qproc->version == MSS_MSM8917 ||
>>>>>>>>>>             qproc->version == MSS_MSM8953 ||
>>>>>>>>>>             qproc->version == MSS_MSM8996 ||
>>>>>>>>>>             qproc->version == MSS_MSM8998 ||
>>>>>>>>>>             qproc->version == MSS_SDM660) {
>>>>>>>>>>
>>>>>>>>>>          /* Override the ACC value if required */
>>>>>>>>>> -        if (qproc->version == MSS_MDM9607)
>>>>>>>>>> +        if (qproc->version == MSS_MDM9607 ||
>>>>>>>>>> +            qproc->version == MSS_MSM8917)
>>>>>>>>>>              writel(QDSP6SS_ACC_OVERRIDE_VAL_9607,
>>>>>>>>>>                     qproc->reg_base + QDSP6SS_STRAP_ACC);
>>>>>>>>>>          else if (qproc->version != MSS_MSM8909 &&
>>>>>>>>>> @@ -817,6 +820,7 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>>>>>>>>>>
>>>>>>>>>>              /* Turn on L1, L2, ETB and JU memories 1 at a time */
>>>>>>>>>>              if (qproc->version == MSS_MDM9607 ||
>>>>>>>>>> +                qproc->version == MSS_MSM8917 ||
>>>>>>>>>>                  qproc->version == MSS_MSM8953 ||
>>>>>>>>>>                  qproc->version == MSS_MSM8996) {
>>>>>>>>>>                  mem_pwr_ctl = QDSP6SS_MEM_PWR_CTL;
>>>>>>>>>> @@ -826,7 +830,8 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>>>>>>>>>>                   * Set first 5 bits in reverse to avoid
>>>>>>>>>>                   * "inrush current" issues.
>>>>>>>>>>                   */
>>>>>>>>>> -                if (qproc->version == MSS_MDM9607)
>>>>>>>>>> +                if (qproc->version == MSS_MDM9607 ||
>>>>>>>>>> +                    qproc->version == MSS_MSM8917)
>>>>>>>>>>                      reverse = 6;
>>>>>>>>>>              } else {
>>>>>>>>>>                  /* MSS_MSM8998, MSS_SDM660 */
>>>>>>>>>> @@ -2538,6 +2543,42 @@ static const struct rproc_hexagon_res msm8916_mss = {
>>>>>>>>>>      .version = MSS_MSM8916,
>>>>>>>>>>  };
>>>>>>>>>>
>>>>>>>>>> +static const struct rproc_hexagon_res msm8917_mss = {
>>>>>>>>>> +    .hexagon_mba_image = "mba.mbn",
>>>>>>>>>> +    .proxy_supply = (struct qcom_mss_reg_res[]) {
>>>>>>>>>> +        {
>>>>>>>>>> +            .supply = "pll",
>>>>>>>>>> +            .uA = 100000,
>>>>>>>>>> +        },
>>>>>>>>>> +        {}
>>>>>>>>>> +    },
>>>>>>>>>> +    .proxy_clk_names = (char*[]){
>>>>>>>>>> +        "xo",
>>>>>>>>>> +        NULL
>>>>>>>>>> +    },
>>>>>>>>>> +    .active_clk_names = (char*[]){
>>>>>>>>>> +        "iface",
>>>>>>>>>> +        "bus",
>>>>>>>>>> +        "mem",
>>>>>>>>>> +        NULL
>>>>>>>>>> +    },
>>>>>>>>>> +    .proxy_pd_names = (char*[]) {
>>>>>>>>>> +        "cx",
>>>>>>>>>> +        "mx",
>>>>>>>>>> +        "mss",
>>>>>>>>>
>>>>>>>>> Are you sure mss/pm8937_s1 also works as a power domain? It seems to be
>>>>>>>>> a plain regulator downstream (similar to msm8226/msm8974).
>>>>>>>>>
>>>>>>>>> Same thing applies to MSM8953 as well though and there we seem to have
>>>>>>>>> decided to model it as a power domain ...
>>>>>>>> They have this at downstream, i guess this is why handled as a power domain.
>>>>>>>> vdd_mss-uV = <RPM_SMD_REGULATOR_LEVEL_TURBO>;
>>>>>>>
>>>>>>> It seems to be just a normal regulator on both 8917 and 8953
>>>>>>>
>>>>>>> https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8953-regulator.dtsi
>>>>>>> https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8953.dtsi
>>>>>>>
>>>>>>> https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8917-regulator.dtsi
>>>>>>> https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8917.dtsi
>>>>>>>
>>>>>>> Konrad
>>>>>> It is different between 3.18 and 4.9, 3.18 seems simpler and easier to use it as regulator i will change it
>>>>>> https://git.codelinaro.org/clo/la/kernel/msm-4.9/-/blob/LA.UM.10.6.2.c26-01500-89xx.0/arch/arm64/boot/dts/qcom/msm8917.dtsi#L1375
>>>>>> https://git.codelinaro.org/clo/la/kernel/msm-3.18/-/blob/LA.UM.6.6.c32-05500-89xx.0/arch/arm/boot/dts/qcom/msm8917.dtsi#L1655
>>>>> Only question is left what about SDM439 and SDM632? They were introduced at 4.9 maybe that is why it was modified both are inheriting
>>>>> MSS bindings from 8953 and 8937.
>>>>
>>>> Seems both are the same too
>>> https://git.codelinaro.org/clo/la/kernel/msm-4.9/-/blob/LA.UM.10.6.2.c26-01500-89xx.0/arch/arm64/boot/dts/qcom/sdm439-regulator.dtsi#L18
>>> https://git.codelinaro.org/clo/la/kernel/msm-4.9/-/blob/LA.UM.10.6.2.c26-01500-89xx.0/arch/arm64/boot/dts/qcom/msm8953-regulator.dtsi#L17
>>> SDM439 and SDM632 do not use simple regulator, s1 seems power domain to me. I have checked it in use at Fairphone 3, Redmi 7 and 7A
>>> all have S1 as a power domain.
>>
>> Hm, it seems you're right. It does indeed use level-based voting which
>> would qualify it as a power domain in our upstream understanding
> What would be the better solution?
> 1. Keep mss as power domain?
> 2. Set mss to a regulator for MSM8917 and keep as power domain for MSM8937 and SDM439.
> 3. Split SDM632 and SDM439 MSS from MSM8937 and MSM8953 MSS and use mss-supply
> as regulator for MSM8917, MSM8937, MSM8940 and MSM8953 and use mss as power domain for SDM439 and SDM632.

8917 and 8937 -> regulator
439 and 632 -> power domain

To match reality as we've established above

Konrad


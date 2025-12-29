Return-Path: <devicetree+bounces-250183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD5ACE6BB9
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0BA0830072AF
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3479B3112BC;
	Mon, 29 Dec 2025 12:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I0YpcLF+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f0OI+HFI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844A731063B
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767012055; cv=none; b=k++K0BNbSLG9tENXOFSKmM4ge+4+DIu+kDyhr5zXetgccad0EGLy8LCPsVTvEdmZXH2My7BuBNMsEYK09VudwFsTF4jqyHQbqfyjVwXQkuYiLWDnNHhAoQ7YqfjQcqYP36WuXLTsAbwDZ0P1d9mWXEDUP066D5zYrXbIkGx/K+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767012055; c=relaxed/simple;
	bh=BMUA0semQPdQwWq8oYFbaXkbuaSWosd1Tj0NnhmMRcI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iZuQeZhtdIJc6979BArpIM4ASDo3N5c0YIJjg6MEPW6UjJCYwTNxmnazRYIA45Qs0JGQEQ2t6vRg6memmBoQvfxq7/TekCfDkOQfepsm9RX2ZOljLCL6f++aMlkYn1f7lqA0w8+liFaxUhzLqphykuTfLsrhOyhV0A1lPC89Bs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I0YpcLF+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f0OI+HFI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAIAOH181140
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:40:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BMUA0semQPdQwWq8oYFbaXkbuaSWosd1Tj0NnhmMRcI=; b=I0YpcLF+l4xY7iLD
	x/Ighc+rit7fGsxMnBPJLCy2p33WgXkEzyYHkhdzeSxuCqj4iftjoUSUqNt1txO9
	b+eN9lgLdLYaAqMwjo9pd2zfKTg6SWQMMK75WVArc2W9pMpZgBgRzehmV6+2yzlF
	t5rKsUibuA+TdDIH7urLC2dfdxSPsKCBP96v1c5YeYHf7NaMKPopSSm7VDVdv+fC
	G4HLC95+x8p6b+hQOdJSFhkCVceQ8x9LnRhgOPQhZyV09rKaf1n6aCFRNyBEBZNS
	Gj2wce1m6vLOdONjHGF5gJ+ShDZVVEghdhE8Drg/kf+u9LwoF1KXmVFSpTxRCjsi
	icD5mw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbc9v1k7m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:40:52 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee05927208so40770761cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767012052; x=1767616852; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BMUA0semQPdQwWq8oYFbaXkbuaSWosd1Tj0NnhmMRcI=;
        b=f0OI+HFIX7he7tNbbGcJxf3N4qChEJ2S0NyKY75NySvenPd9i0MATenk4pF37zYuMd
         oJGAHVOl9W159tRzlYE4qgNNBR1A/3wsHfQeUcr15olW1Fo9IfEuaK9BD0V5S9RHNDrQ
         yyubXa8HyKYieoxCuYVoPCL5D6efPKEV5lg22RbLVSpl5kg+wjC6y8CFeEcMp562oyzF
         IgM+tgBwXvpXNwpZaszlpxFbWcp5yv+++/dfSU8mqZaeupIezuzbopkHn9O9WAXykLN4
         usewMkIuuMnFInOD5WxQyjYoXvahwqZLLV1Dr2+AdORbvf9bvukaPYKjfpiSr5wqg7hH
         84AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767012052; x=1767616852;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BMUA0semQPdQwWq8oYFbaXkbuaSWosd1Tj0NnhmMRcI=;
        b=VZdQ2acGl+ppYNLWSpGNc/mFLcihX2dFpxrPpbxFRhYeNMDA0ZZWh/E3NbIrWk4VL8
         mSKpG6hrUNs/wStI53iC7IXV1O+1CCusQecRGF6MJvdL3Z86MmdeX4GMBxUSpIyjkNDl
         nUFWYd93oG4EMnHwMF7SdTNjH2S7DzPZgV7wHEXaskG0YU/bD2sNXncnwz4Crl8ji6yQ
         H8jqEbCmjIxECkVLKIzKy6XEyVw4WFZ2KYqa/joWHkL9TC5HIDBlAkqU2CC8QfuwvjTi
         DmBQTogPwc+7+T60KKKYmzyAcu/+MN5GuMOIDLr3BE3SGGPjAdkrDdFejSkfnk9JiQTd
         Xumw==
X-Forwarded-Encrypted: i=1; AJvYcCXg9PnvVzJOMLU+UvqtzT5/O7QlkVF0/qRaZsSTkqxMn3g2f3S56Uuydiz5HOoKTRaLp4fncw9ZuVwB@vger.kernel.org
X-Gm-Message-State: AOJu0YxoSiZqKxugJdmfiapQQ+q7YvJKBxuKcGKMIb0ugMi6QneHoBR+
	9v0JxxUkt4bwhy8nNZtC1q3123hnrfsiFPg1dRKJHUb69nze2eYUL1qZ6Rlqz4A2AOtVu1efVGe
	sX9dPVlVDnlAFN9YlkYxKMtb934pQFeGEnWBDMm86EwyqOz80bZPbuYkU1iOm+t/6
X-Gm-Gg: AY/fxX7aLQPUHp9Fm8jN0rcjoRcYpXqqKDYqSucsalFgSlU1ciK14BIowjAT30xhrFw
	H21SONC46SCLQJUdueWRhj63FK2iua32eWNFopg+xqsBPwfRRLkFK2rBF8+53hW5SjWA9rS9OxK
	cRyJssHKb4RZJgv8+cFby19BtE51D8e+pfWDo2QvPoBAKBgh48g3DoWSrdxgaqCslQozfz38X+M
	CV/v8ZUOdJqaaBT8bilnpa0rRj+zJHYLAXhECSpLcKGbG9Lq+IeVc6x5yAy7BUeNOQzCLv3nhiK
	Jf1uWZst0HBfucZl0WCt2Q0Q7uaK4hWqFMK8ErtSHleWOFgd94hkqDdSljuOW4sUaMPmP7Hgh9F
	jcuXf+KHGPIR5vZSZ8QaqIrhVUtZexlzzA36vqF3DtqYHrjeqk/YAUqUN9a923Yr4CQ==
X-Received: by 2002:ac8:7c49:0:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4f4abde36bemr329509021cf.10.1767012051771;
        Mon, 29 Dec 2025 04:40:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEcUCaC84X8pN/KRSLuzLkKfRP2suKS1AS1nwLg0AIHCWbLw0pFnH+UQ9INhI04gcpYzXDCOg==
X-Received: by 2002:ac8:7c49:0:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4f4abde36bemr329508671cf.10.1767012051304;
        Mon, 29 Dec 2025 04:40:51 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f4ef1fsm3382018066b.64.2025.12.29.04.40.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:40:50 -0800 (PST)
Message-ID: <2898fde7-2b3b-471b-8f8f-a02cb6953aaf@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:40:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] remoteproc: qcom_q6v5_mss: Add MSM8917
To: barnabas.czeman@mainlining.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d531f1346b59af06c323f393883b1d13@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Q4ah3ycaHSYzHEZK0aErUqVS2lGqhVpV
X-Authority-Analysis: v=2.4 cv=R/sO2NRX c=1 sm=1 tr=0 ts=695276d4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Oh2cFVv5AAAA:8 a=OuZLqq7tAAAA:8
 a=g6jOo_ygQZX2zdRKxuUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=7KeoIwV6GZqOttXkcoxL:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExNyBTYWx0ZWRfXx7qUVeaincBM
 RcavoeHNGQM94/ObxnZvTyw4WFzfD5sjKuyYIOQg5rCxUn3fuEom0ZnPYy9P9AVVlxx9GMDVMXP
 It5TIjYEcmMBdFMgNZWWpnJhi7QsFb9W/ph+ypp1zJ7ahBw80xQn9JxFTHN3LxQUY6EVwqQDQvD
 UgwOvibyKBoks03i+fPeMtbf7SSmdRYwlBGvufGyS3HBn2cM1+XOjyJiKFfm2B5JHOSS3rlb5ET
 NP58gS1WbN/jG9an2D3sabzw1Gw8dhhIPO5Y23pK8xRLiz2ugx46WM2pxtBQhc0ZItUMWff32KH
 L+jAC2+6tO06NISi+A+F4lMoh4fva6zSbJBGQ2EKvpgG/M0Im1opJXMU2AuEZcUSIq5GmBhGBwh
 YpTTA1cUQogBAD+mm91/c9S3PI8Jcf12AoORQ+Be2j6DeBIiS+9PXxGjyuz05RyUk9E/mv3mS49
 ubSiAh9NDV7Nt8l9gXQ==
X-Proofpoint-ORIG-GUID: Q4ah3ycaHSYzHEZK0aErUqVS2lGqhVpV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290117

On 12/29/25 1:33 PM, barnabas.czeman@mainlining.org wrote:
> On 2025-12-29 12:08, Stephan Gerhold wrote:
>> On Sun, Dec 28, 2025 at 03:21:54PM +0100, Barnabás Czémán wrote:
>>> Add support for MSM8917 MSS it is similar for MDM9607 MSS
>>> only difference is the mss power domain.
>>>
>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>> ---
>>>  drivers/remoteproc/qcom_q6v5_mss.c | 46 ++++++++++++++++++++++++++++++++++++--
>>>  1 file changed, 44 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
>>> index ffafbe501a05..2579558fb567 100644
>>> --- a/drivers/remoteproc/qcom_q6v5_mss.c
>>> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
>>> @@ -259,6 +259,7 @@ enum {
>>>      MSS_MSM8226,
>>>      MSS_MSM8909,
>>>      MSS_MSM8916,
>>> +    MSS_MSM8917,
>>>      MSS_MSM8926,
>>>      MSS_MSM8953,
>>>      MSS_MSM8974,
>>> @@ -749,13 +750,15 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>>>          goto pbl_wait;
>>>      } else if (qproc->version == MSS_MDM9607 ||
>>>             qproc->version == MSS_MSM8909 ||
>>> +           qproc->version == MSS_MSM8917 ||
>>>             qproc->version == MSS_MSM8953 ||
>>>             qproc->version == MSS_MSM8996 ||
>>>             qproc->version == MSS_MSM8998 ||
>>>             qproc->version == MSS_SDM660) {
>>>
>>>          /* Override the ACC value if required */
>>> -        if (qproc->version == MSS_MDM9607)
>>> +        if (qproc->version == MSS_MDM9607 ||
>>> +            qproc->version == MSS_MSM8917)
>>>              writel(QDSP6SS_ACC_OVERRIDE_VAL_9607,
>>>                     qproc->reg_base + QDSP6SS_STRAP_ACC);
>>>          else if (qproc->version != MSS_MSM8909 &&
>>> @@ -817,6 +820,7 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>>>
>>>              /* Turn on L1, L2, ETB and JU memories 1 at a time */
>>>              if (qproc->version == MSS_MDM9607 ||
>>> +                qproc->version == MSS_MSM8917 ||
>>>                  qproc->version == MSS_MSM8953 ||
>>>                  qproc->version == MSS_MSM8996) {
>>>                  mem_pwr_ctl = QDSP6SS_MEM_PWR_CTL;
>>> @@ -826,7 +830,8 @@ static int q6v5proc_reset(struct q6v5 *qproc)
>>>                   * Set first 5 bits in reverse to avoid
>>>                   * "inrush current" issues.
>>>                   */
>>> -                if (qproc->version == MSS_MDM9607)
>>> +                if (qproc->version == MSS_MDM9607 ||
>>> +                    qproc->version == MSS_MSM8917)
>>>                      reverse = 6;
>>>              } else {
>>>                  /* MSS_MSM8998, MSS_SDM660 */
>>> @@ -2538,6 +2543,42 @@ static const struct rproc_hexagon_res msm8916_mss = {
>>>      .version = MSS_MSM8916,
>>>  };
>>>
>>> +static const struct rproc_hexagon_res msm8917_mss = {
>>> +    .hexagon_mba_image = "mba.mbn",
>>> +    .proxy_supply = (struct qcom_mss_reg_res[]) {
>>> +        {
>>> +            .supply = "pll",
>>> +            .uA = 100000,
>>> +        },
>>> +        {}
>>> +    },
>>> +    .proxy_clk_names = (char*[]){
>>> +        "xo",
>>> +        NULL
>>> +    },
>>> +    .active_clk_names = (char*[]){
>>> +        "iface",
>>> +        "bus",
>>> +        "mem",
>>> +        NULL
>>> +    },
>>> +    .proxy_pd_names = (char*[]) {
>>> +        "cx",
>>> +        "mx",
>>> +        "mss",
>>
>> Are you sure mss/pm8937_s1 also works as a power domain? It seems to be
>> a plain regulator downstream (similar to msm8226/msm8974).
>>
>> Same thing applies to MSM8953 as well though and there we seem to have
>> decided to model it as a power domain ...
> They have this at downstream, i guess this is why handled as a power domain.
> vdd_mss-uV = <RPM_SMD_REGULATOR_LEVEL_TURBO>;

It seems to be just a normal regulator on both 8917 and 8953

https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8953-regulator.dtsi
https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8953.dtsi

https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8917-regulator.dtsi
https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/msm8917.dtsi

Konrad


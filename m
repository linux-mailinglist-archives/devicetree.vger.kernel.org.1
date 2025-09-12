Return-Path: <devicetree+bounces-216327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CE3B545CF
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:46:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B6071C2671E
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E40317BA1;
	Fri, 12 Sep 2025 08:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EGkDy38r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED412DC793
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757666790; cv=none; b=NK8P75dWx/i/NskpDFsoN7U0sBtYS3xErChtvEpXnWk3pfCqCedLOb8ly0sMDq5CThgv0sN/C61ONKH8300Xupjj8wT38/T1wY2gF0XjspS64hDL02xQDvdAMRXwZin4ONv2iIa2G60BDtUL4E3OggEc2ccfwZq0E+M+If5TVLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757666790; c=relaxed/simple;
	bh=6I3jhfnsNBLk7YU/g7sGdlA5ruh8eM1vlY/iO+dFdTQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=txKPphyUzz/Wackseo40NabDYnge0ZHKMzQBA02am0tljDeHZLhpRLU9uBaL4SKNq6s/E0KZWPX0bcrNgOCQrzpEP7qJQUJBwmNVidneQIYNaCPYQOlU+d62pU+DYQPXwCYVZKqV1b7hvfenhdxACRfvfGG0q0b1OLt/jLWnVA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EGkDy38r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BNKTRx002431
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:46:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lGDrGSwQe5Wxsvo3kpmlzGmuY1iFtGQeQKswsFIUacE=; b=EGkDy38rYrnjaKFW
	5EWhmMA0KGDcOE5BcF6+mohdOrto8vCfS0ZsLlPcGzGjvyjjFExh3s665KxQ5Kfv
	7keM2U5DyWmGO1hfmLY1tpbCn6jkw3YjiF2pqc9eU59reSEAN7Uo/HSC2GFlcnyH
	ugju1T8lvtHcRBLmNTwEyMyjC2hmNjRPrLSU+4d5xHWxJjYdcqzLCvh5iMrERuge
	puJUZB/mpPQjhXCRVLZjTPTIutQ1hyuq8p9agGlSZ0chJt8WkGakoQVd+LWjpTbF
	bK+D054z+d2HDhLcNEDFqx8SS/xGdHJ2M/zKo8HtG5IytIX/zIxvxaNHf7/JPO5t
	WejYQw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493ydv3201-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:46:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b780683398so481591cf.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:46:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757666787; x=1758271587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lGDrGSwQe5Wxsvo3kpmlzGmuY1iFtGQeQKswsFIUacE=;
        b=oi6AwLXvHdjRc3Hw06HVy5sScwGul1dfAjDtd76L4hEabxL1QvEkpmhWZYbne2cc7q
         RTdjS11AJnNlRlqKO0/5oXj9YfrUzwoKUVueoWHrXFKoJtgHprOR4Ab6itSTvrPO3NJ3
         AkorfD0ykBMJiko9FeVr+Ra21dvxNkasdgGg9ygsDSiH52yyKOUYXQuK0fQ2x6ywnezC
         3zF4uDJNDZAxpDIRf7Y/4k0afzUyaLoy3Qve9u2lWGqpxi5oInBjWte5RDVBpjSMPDzC
         39V4jdPfaqPV28HmonIFI3eIBupYZnOYIl83LNkZcAX1BqOqsO1sGw+DGgQ3DZhIUuDV
         a4WA==
X-Forwarded-Encrypted: i=1; AJvYcCUpEPp/aZC+1owIxaGeJ3VS0XAjTVVeK0wW7SXtON0OXkkv6kOsSY/r7PUFdQ8lnl1cmrveSqhkQNyA@vger.kernel.org
X-Gm-Message-State: AOJu0YxKBKQaAtRthdtiFHWYx9ZwZ++vPQKTvkRg/NPpQrWb2rP7p6DV
	BehitS3wZhWBCp0yvfkduGHgqsM9PIrg/oYu+ARDc2UxGMlnjBQT4J8WnTujzTyKtRw2PdoBvlL
	JvBccPYZuDFIz2TvourL+0DAjBdOk3FGUYFVmHehpjvZzeRMcWqEllML2MZEjmdUU
X-Gm-Gg: ASbGncvo8wE0vXD80qE0MQAcDQdgKCr8brzkrJLgIkztKgbkCAt5jhtJZRboq1qLJIP
	U6bll1a6rNhzbllrJuSvczJ4RzobdVfDBnvFELO6ZfPfHN2v5K1g1ZAOB1ohmkY8mzCTmt3zIfy
	ODHig01gRmQHUXkvHuS4MqvduKgH1RzG4K/SZy9sE+NVDx/4ZzYb20JiSA+3VihpvgoH3ZGvnvl
	ml3obIOkwd3BpLRrgurcBb+25CrX76uVk3o0ZaAZaznOSC16J5eI0VGQaPs2+zvrPb6G8XVtoR+
	WFctUZKQ78qs1vXvHw5p0+BxyAEPls04qJ9MpOMOSsZyijTNqjeZtlACkUiJ3uzArMnk9YI082J
	nrLjcsRIUwxUhzqej02ucIQ==
X-Received: by 2002:a05:622a:5ca:b0:4b5:d60c:3f33 with SMTP id d75a77b69052e-4b77d13a75cmr17660031cf.13.1757666786784;
        Fri, 12 Sep 2025 01:46:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+NVmc9TA9PDMivtFQF3GWnTURuIOA8rik1NCbnbvalHLcjpoipS/fO2pMicU4DnVEo5yPGA==
X-Received: by 2002:a05:622a:5ca:b0:4b5:d60c:3f33 with SMTP id d75a77b69052e-4b77d13a75cmr17659811cf.13.1757666786285;
        Fri, 12 Sep 2025 01:46:26 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07c337e785sm150379466b.25.2025.09.12.01.46.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 01:46:25 -0700 (PDT)
Message-ID: <274b27e6-ef43-4597-a7d6-1f948f2e6c5b@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 10:46:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/13] phy: qcom: qmp-usbc: Add QCS615 DP PHY
 configuration and init data
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-4-2702bdda14ed@oss.qualcomm.com>
 <3ihzpsmf3btzeltxggdnbheji6bdeornravua76adw5dhotztu@e3fca2prl45r>
 <e974ffc4-9bcf-4de3-ac09-76b34b47cf5b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e974ffc4-9bcf-4de3-ac09-76b34b47cf5b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDEyMCBTYWx0ZWRfX5VGu8Aq98uVf
 2LvCYtuWcNp6xiOw5/YcWAnEESrp0DykkJZaLXFMVcnaPYoUbfz1wH9ZZM1HYqkrGlDXS3cv8TT
 v9sv9SK9ODqBKfLDr20andnswMgNrW82s+cQcFp9+XXIssZPGIKUqHzuDJO9RG/qp3OrehpMd2h
 oNBCtZYjHfXHcGNOeeadE7o0HiqEmvsKM4CFEn/N+622F5GqhshrL6D2hbk94kzidk8Gf6MnKs3
 2Uolf9XjrbB/betN+lDBgdGN0mWhORPZFPP1ovGFUZjeya9mM0JF6Bx7PlcfJpDH44NZsPm1t6D
 TgjlmVHjk4X8CRn156r4OxoQ9OcqvA3bGHX0wARdRcxv6Sw40niVnXiDcXIcmXjcnhpLimpUhFB
 GqBJ8ARU
X-Proofpoint-GUID: SAIwiT_w6LGWBYIPBoSTYrcILC3SmtER
X-Proofpoint-ORIG-GUID: SAIwiT_w6LGWBYIPBoSTYrcILC3SmtER
X-Authority-Analysis: v=2.4 cv=LoaSymdc c=1 sm=1 tr=0 ts=68c3dde3 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Y7PaXT35z5vDV90y7_UA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509110120

On 9/12/25 4:15 AM, Xiangxu Yin wrote:
> 
> On 9/12/2025 9:24 AM, Dmitry Baryshkov wrote:
>> On Thu, Sep 11, 2025 at 10:55:01PM +0800, Xiangxu Yin wrote:
>>> Introduce QCS615 hardware-specific configuration for DP PHY mode,
>>> including register offsets, initialization tables, voltage swing
>>> and pre-emphasis settings.
>>>
>>> Add qcs615-qmp-usb3-dp-phy compatible string to associate QCS615
>>> platform with its USB/DP switchable PHY configuration.
>> This should be the last patch in the series: once you add the compatible
>> string, it is expected that it works.
>>
>> The patch LGTM.
> 
> 
> In v3[12/14], the compatible string was placed in the last, and you remind me
> will trigger unused warnings for the earlier-defined qcs615_usb3dp_phy_cfg.
> So I merged them in v4. 

The intention is that you can do all the preparing first (which doesn't need
to include an assignment to e.g. DP tables, since the code operates on a
pointer if it's non-null), and you can push all the platform additions at the
end (both tables and compatible in one patch)

Konrad
> 
> If move this patch to the end, patch v4[07/13] will hit unused warnings due to
> missing references. Should I squash patches 04 & 07 and move them to the end?
> I'm concerned the resulting patch might be too large.
> 
> 
>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>> ---
>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 141 +++++++++++++++++++++++++++++++
>>>  1 file changed, 141 insertions(+)
>>>
> 


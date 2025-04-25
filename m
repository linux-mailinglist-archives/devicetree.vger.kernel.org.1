Return-Path: <devicetree+bounces-171064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 061EDA9D221
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:46:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CFC51B87736
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8821E22068B;
	Fri, 25 Apr 2025 19:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PI/Y9YrB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB88D21E0BD
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745610377; cv=none; b=GRN2f4/rbIFsglYcF8zRCUCdODGYDANkEWZ9zVQ7anij5EdXdtvx6HpdZEh4PqkpM9QLyQRyHJ0VAXIl7WxNYd9M4L34rOK1WZA9Ue4HUYxgd8yiiuliRaFyT3UM+Tj7wbTvF0+sI//PeqJ5lz3DxZ2RD7DVLLvkTddgnT7Sf/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745610377; c=relaxed/simple;
	bh=EYcZpPG7yUxj0IQg4aPHSivcB8VujVtyuNfcH0lfOmU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ViIFgtM3VDCakRcuiyU2fhONBkwxJrcbqaNPvMTJ0x/YgSfCP8TD9IYEheKQOROH25gKRoVwGfZu7W5AE/gZ/3F6Kx9HD+W7Ae1u6mo7lgvhiKgiNd5eLsTkkZtout7LiN0u++6VifcBp66fbJulXrFurzNjF75RbHcibG0wBcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PI/Y9YrB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGK1XP021896
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:46:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	txmHliBipjwwY9cKV5mXKNOg/d2+Wp0mSjYmxJVTnsM=; b=PI/Y9YrBc8rGKFbT
	t733tafROHEh/Y9AqmCOICnxHjlYji22H5+UEiBGeHwnJj8rX/kSl294VhxZPBvr
	mIg23ZHNpuze+yIIkPbe4WVodIqHwxp4BEbQm/igEohhHavOwE2PDHuQIjjUmfox
	waeio1RAKiocCkMR0ILCSRHcyAKAv7l2g03icBX4ikibmvqPseTkTEtRzf2wEthw
	QOk2h2zW3fZRy65qsG8jj4rqFisMzj6+BeR7INfPc83qYWRiHf0H9eiiZxFr/2Hg
	S+DdktGYEScPSATl8cMSAC5CTDqNg8GQFIYm2JQMyNDTuyGV8eGTIWQ/RD1NsmHl
	Ba16Jg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh5j6ha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:46:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47aeab7b918so5990581cf.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:46:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745610374; x=1746215174;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=txmHliBipjwwY9cKV5mXKNOg/d2+Wp0mSjYmxJVTnsM=;
        b=r/G75OISUtG3kBzyDNM2Yp+PNkd4EPp+RFGN/FfbUIcWu7pJ/5ffJeEimqnseFKjGe
         nldDRtcjrnF7LQ6jvmw9aqoEeGuznm6LKPS2DVQ7IKfFD39X0DUQapr+s5XEar1NjQDe
         8ecDPlyiFvYC3FMUanqWmTCm47qw5Q6Ra9rS5iQe29k+co4Mfoq+R9iCtqtP1Sm5hehM
         VBeuLO4ZsBbRev/9shwh1BO4KbZwA3988fiGD9I1eq43oR0pVWBDugNQE2gaZEHYp2QL
         Kno77yJXe8Hdp1NA9b3qgYlSMU2VHyk6dTjM3U/g9A7wJv9sECXOe23EGwi/RBSJ73Re
         QC6A==
X-Forwarded-Encrypted: i=1; AJvYcCX2wRtN/qmDS86LBuBpHQy7SBzEgiq8rJCg9GB0ZE4su+aiX1L8qwaYHdl/ecT64twJ+uIeKM5pIxAU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4cJ56syDAiq6R59540pYqvHtwVDa7B9dBN8Tkd67Wy0FNwfWi
	vs5dX2XMjetJ7uDDUcVcabOR9bwoMuspwo9hRbsccTjjzeOegNokNfQo8j+JMX466oRFHMhTT/g
	ekwOyL9QOyuNmDwN8u3mZZ07+72aPk0SPG8/7AHf2/DiSdIu5Vu5qRBfdCvfC
X-Gm-Gg: ASbGnctUB7CNz7uJ6jDD/Nvk6FxeDT1B4eoZsgE/b4c2tykPCKNzKC+dvgcfY7DzaKa
	MdNLQjxbx63ASzKGZrG8Zk/0HVqZ1ZxAoyTUddnmCZfxVsIt1A1b/SCejB2xiB/kIMbJYNWeOVb
	6YfogSH1ELhqSR+YHWoZYoBMwwqMW2w2bqRS/4WyVnHt7I0GVvgDouBKPQfwTt7Dl43abgV+y8U
	+ORPIT5zWH9enkfjjDii0aFF+GTzwG87OxLO8j4p9hzdgLN1E8OE/nyRyyjpiphZ+N9njwaWBVE
	guBVrRQNBVIMVKazjlMRd9ki/TSzh7pyQNw+L6Yb0i2iHRXZlsLs3+wNsBXFjD9lkKI=
X-Received: by 2002:ac8:7fd3:0:b0:472:15be:54ad with SMTP id d75a77b69052e-4801e6f120bmr20112771cf.14.1745610373877;
        Fri, 25 Apr 2025 12:46:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOzMshPGNoqCx2ULNNdKD/xPe4MbaDbP1omZuzKgujBuWwyI50zrrqVnQ3wtP40FpGp1u29g==
X-Received: by 2002:ac8:7fd3:0:b0:472:15be:54ad with SMTP id d75a77b69052e-4801e6f120bmr20112651cf.14.1745610373572;
        Fri, 25 Apr 2025 12:46:13 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e578955sm183455366b.74.2025.04.25.12.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 12:46:13 -0700 (PDT)
Message-ID: <71190e3d-fa9b-4fdd-83ac-bf012031c836@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 21:46:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] media: qcom: camss: csiphy-3ph: Add CSIPHY 2ph DPHY
 v2.0.1 init sequence
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
 <20250416120908.206873-3-loic.poulain@oss.qualcomm.com>
 <z5bemevabirdh5qhj6fajdihcucnoa5gxjkjv6s4aztruffn6u@w5rvy3sxeln3>
 <CAFEp6-3h19eJgJkXNR5sJisZbwHG=TmYhVEu10hTCnnBTqH+MQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAFEp6-3h19eJgJkXNR5sJisZbwHG=TmYhVEu10hTCnnBTqH+MQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0MSBTYWx0ZWRfXx+nMy6Fh4vWm 4jW+eoS7jGx/cxlbHs7DwvdhFM0WkVVnPXWPPtIj9FHxD7Skn7LI/raq26hysPx1dRKydBUSePG /y681zKQ+VarpyG8wKp9Gj3CEXUgyJejB7oOwa2cQUs5AVJwRnCEau2JJk5qF49oiCOhOEu501s
 HPaSzWLlhqfpuvvwDPVrTun+YlaRdAwhjNL6BNJ1SKgZsAS7nw7DUM9AzuuyH2SlV2mOY1XYa57 ND0tpd9+a7SXpGqDA0H334H+GiEKXJkoHT0NuVtxy7rhJNp4D6dQq3h8f160PEWJOIXSQpBgHiL QBnHLwGOeUkxx3Y7B/7Fo2ztmOy3NJwJqos3iYH423793UENAp/N8ObXYVwOrbqIP8GQDMzuIps
 505NTPK2yGC5m9sUKSBBKQILjBKzDw8rdVrm/ezefrsmfJcNvDl7Sk7aANK8Iz1xClGuhhbk
X-Proofpoint-GUID: C3GfDCKIOYjgxkqQE_XQVyyM44bsAlNd
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=680be686 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=wkiucLSIQwEx8sfLkT8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: C3GfDCKIOYjgxkqQE_XQVyyM44bsAlNd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250141

On 4/17/25 10:26 AM, Loic Poulain wrote:
> Hi Dmitry,
> 
> On Thu, Apr 17, 2025 at 12:36 AM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
>>
>> On Wed, Apr 16, 2025 at 02:09:05PM +0200, Loic Poulain wrote:
>>> This is the CSI PHY version found in QCS2290/QCM2290 SoCs.
>>> The table is extracted from downstream camera driver.
>>>
>>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>> ---
>>>  .../qcom/camss/camss-csiphy-3ph-1-0.c         | 89 +++++++++++++++++++
>>>  drivers/media/platform/qcom/camss/camss.h     |  1 +
>>>  2 files changed, 90 insertions(+)
>>>
>>> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
>>> index f732a76de93e..0e314ff9292f 100644
>>> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
>>> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
>>> @@ -319,6 +319,90 @@ csiphy_lane_regs lane_regs_sm8250[] = {
>>>       {0x0884, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
>>>  };
>>>
>>> +/* GEN2 2.0.1 2PH DPHY mode */
>>> +static const struct
>>> +csiphy_lane_regs lane_regs_qcm2290[] = {
>>> +     {0x0030, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
>>> +     {0x002C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
>>
>> lowercase hex, please.
> 
> I don't mind, but all other phy tables use upper case hex.

Ugh, we've been trying to get some unity in place but that's an
eternal WIP

Konrad


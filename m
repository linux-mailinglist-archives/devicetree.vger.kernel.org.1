Return-Path: <devicetree+bounces-181171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C473AC683D
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:21:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CC311882E38
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 11:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41F01280A4B;
	Wed, 28 May 2025 11:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lx+9zGeZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B10E20E70E
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748431308; cv=none; b=sDq89lLMTsn46zUhtQNMcXn8LPHhggnTN10mFfUKMvRCQieg5zzMSA53dy4dsigYpiek95lVknaQbqFbTsIW2ojE4c9E2Q4Rgu8IEAfQPYqCBskp7QSftQCNi3skVk7c9hbg7pHG8DcrGubiUU5P9sPG3eLXARmqnZtBgRAYXTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748431308; c=relaxed/simple;
	bh=/UcgCySqUpB/89J9+RaBTEGFV18FMLWb36c4Almm0V8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AM51AZ86nNE1GeFenf8F51aeLAXmm6JxEGYjpxVLcTU+m0n2NR7gswzaRiPGVNn+Su9u4a4K+VPIhJMjvN26Foc2UhmXs/jklO9GlZxZMDYfPpgDztQVT/2A/CXeDTAKhBYWRI5YbxWlXG/NKK+2bbhb9y3tQpjyGo1565pzgFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lx+9zGeZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S9h6xs009214
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:21:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9bAT11ZfKjJKGGVmpodWoHslwkGL/815tY2xb/sJYVE=; b=Lx+9zGeZWc4O7LvE
	/Sqi0FVCe0WbKQBpo3dIoiO0lO/yQLZcm9/b6CvCLabOsJqDZYo7uF9pz3Jg7slS
	dAgD8ITJo97QN0O5Lw+mlSlLjl5bB0d/fgktwXJER6/BN1Y8c/iZPMlWoargKOuF
	//doCeBNwS5DuSzS72B2VG+ZBnVI/ZjXhzM212ug7j/kwDeNZP2LEyCuk/msOio5
	CwaZIGxOSfOAcyY8uyzIC3ROUervBqJMrDBzFVQ8zrEPULzZncUJVzUXWDIORrHf
	VYuc9C2QijSxbnJ5qLMOL2Q8+yIe8PofsLD9d+q5qohS4k+Gzxdd+NNFqYQByYQU
	Wx7KSQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46x03mr7gq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:21:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a42e9c8577so595411cf.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:21:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748431304; x=1749036104;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9bAT11ZfKjJKGGVmpodWoHslwkGL/815tY2xb/sJYVE=;
        b=sEV2Oym2MZ+rkZ8aQfX2/z0kdc+f4/EQGS2yBDwrWS6Z0fLtFtz3AwbMK+KVykvdDg
         E8mGr82TcYpl/Ekv/9u65g3QdwxvM+k0Bc6fSIKE811U1o/ytDmymuu2CZ3Xwb3wp5EI
         dc4/1CJu4nA/39a73xj8d3HgyHnhIekrqU9uOk1nLl/GaRQpZE+4ozIjD6AVgQrPJfxj
         DnYkKtAIE8tyIL0eZCCU6qDc8D9NEN1CueMlAUyKuLRSsi7HIN8T0Qug+G2KgoOT3Xae
         lOlscPbMb5g2unk930hIdWrjagVwYZjq9VdBUSpoCBun/LivHQJvpu5J+htZhU1VJOZ5
         UU5w==
X-Forwarded-Encrypted: i=1; AJvYcCU2nyPCCPUVco3eFVfG4ci4b2dN+xnBLxskCmNUSta6Fb/wYpSVZWM4TA3g/WWxKG8fTkqvF13kaU58@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi+dLYgMm5HKlY3Vld8GEVpRBb7T6EjErlKTtL7eB/zAYY/Bdb
	VRrBkrWRUSl6X13a7Fdho+MrIifpjo804/1TMkvnO+Z9Od1o/3+ZolopSphkcKT09NPy2vTtv2O
	EFYAC1J5K8W9R7v0bTH6elRBM/wfjY1qYNH5JyWQhsnqo2bze84YA3vsnKML1+A0t
X-Gm-Gg: ASbGncsZO+3U8fM7S+Iya8yvX/cX0XB1FWFp7CZ1G320GBQm7ie/TJKAAov7qkdLj1/
	qrdKnON0QJIZXBg7uxV2txWjdU+Gm1R4Llhse6NP2z/zbvIrdQigb1gHEdXir+zV5AedAmvm2yZ
	G1s6wOgy/alcNQszrOjU5sT0BIfN0GRMexaaM+H+3Yl0aySOYU75JZbal5WQR0B4GMwevWqthUM
	NRpbWeWx5r8DD1x84WknlxbxwV5t6vhebT4J3Xkwtygnzc4d/JeCHHesZKtUmcT+HfoNjAzkviH
	KkXksThi80AJRyiLIgjXBLQvHkyZumUuo7uqS1b3smSnSvoIF1KsURdELbdSonBIVQ==
X-Received: by 2002:a05:620a:25d3:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7ceecc07040mr848642685a.7.1748431304435;
        Wed, 28 May 2025 04:21:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBvuxLKRRnuO1P1rH+NgkpcQepZxMKfBgi2vjfV6Eobw9Q53DPNgpHnFg9UlEZoCbyi6pIkQ==
X-Received: by 2002:a05:620a:25d3:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7ceecc07040mr848639785a.7.1748431303989;
        Wed, 28 May 2025 04:21:43 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b47a0bsm90628166b.132.2025.05.28.04.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 04:21:43 -0700 (PDT)
Message-ID: <8692f79f-142c-43e6-9e09-7ed4ce590b87@oss.qualcomm.com>
Date: Wed, 28 May 2025 13:21:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
 <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
 <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
 <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZGJs59Qmo8ExE1sgi2nuMYl2oYP0AO3Y
X-Authority-Analysis: v=2.4 cv=FuAF/3rq c=1 sm=1 tr=0 ts=6836f1c9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=cytkdih20WZ3R2VHWB0A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ZGJs59Qmo8ExE1sgi2nuMYl2oYP0AO3Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5OSBTYWx0ZWRfX/+laoqvF+giy
 7GumFlthK3vLHEoQtDyiU1vLEI+AaNmXNdj3FxA5XD2U1NNQjnGGn4EDl0glPt6vmoMBXRprCKW
 7GtsML0v00AnVuBILOpxvNLvuoiSF8p1Qs43RbEhKiH5/7HXoogxmc9niQvseid/ane4NU4TIlv
 d1bsX/jPzEM5GyvOpq7FXZ2mOXHNA0vbrlrMhH5QCHu+DpncEAacKWdZ3igkTgQdp98496ZPj4U
 TkurDFdfjO+PEKZQIxRQ+JXdABaXYAUhJCnnP6O19amJaU7G9pcrbJCg4XSIf7aIH7pSXxRRjSY
 nTgwN1bUe83i5MKyVLTQejxqgjugoWMWVLfP/Jtwse9NNpXIIZ9qQ2wIOPlJUL+GLT5Sjxfd9pO
 URhAm+8ECPU9RyJ9GXmOt4FUGBGc8CiSN628lWhDOtTZmMOaXRTr5EeyG7/9gM3e2Bi+xlEx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0
 bulkscore=0 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280099

On 5/28/25 10:58 AM, Dmitry Baryshkov wrote:
> On Wed, May 28, 2025 at 12:22:01AM +0200, Konrad Dybcio wrote:
>> On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
>>> On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
>>>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>>>
>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>
>>>> The DisplayPort phy should be left enabled if is still powered on
>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>> PHY is not powered off.
>>>>
>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
>>>> this will leave enough time to the DRM DisplayPort controller to
>>>> turn of the DisplayPort PHY.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> [konrad: renaming, rewording, bug fixes]
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> ---
>>
>> [...]
>>
>>>> +	} else {
>>>> +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
>>>
>>> Why? if the SID is not DP, then there can't be a DP stream.
>>>
>>>> +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
>>>> +			new_mode = QMPPHY_MODE_USB3_ONLY;
>>>> +		else
>>>> +			new_mode = QMPPHY_MODE_USB3DP;
>>
>> To be honest I don't really know.. Neil chose to do that, but I don't
>> think there's a strict requirement.. Should we default to 4ln-USB3?
> 
> Yes, QMPPHY_MODE_USB3_ONLY. Nit: there is no 4ln-USB3 (it is a special
> mode). We handle 2ln-USB3 only.

Right, I double checked and we support SS

> 
>>
>> [...]
>>
>>> Consider the following scenario: connect DP dongle, use modetest to
>>> setup DP stream, disconnect dongle, connect USB3 device. What would be
>>> the actual state of the PHY? Modetest is still running, so DP stream is
>>> not going to be shut down from the driver.
>>>
>>> I think we might need a generic notifier from the PHY to the user,
>>> telling that the PHY is going away (or just that the PHY is changing the
>>> state). Then it would be usable by both the DP and USB drivers to let
>>> them know that they should toggle the state.
>>
>>
>> If modetest won't stop running even though there was a DP unplug
>> (and therefore presumably a destruction of the display), I don't
>> think things are designed very well
> 
> They are, but differently. Display settings are always controlled by
> DRM clients (typically, a userspace compositor). They can decide to
> send data to unconnected display, they can decide to ignore HPD events,
> etc. Even if userspace responds to the event, there always will be some
> delay. I choose modetest, because it's a particularly good example of a
> delay going to the infinity.

0_o

Konrad


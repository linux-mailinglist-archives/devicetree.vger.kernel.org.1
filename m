Return-Path: <devicetree+bounces-181173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC6FAC6846
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:23:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B57261BC6380
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 11:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2577B2820BC;
	Wed, 28 May 2025 11:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ji1J4vDP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89F66281531
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748431368; cv=none; b=P3GAcbaOqQVEFJdmm582BNKEE+y+dLiXFtPkpxtxUfX56RNaBxh8jepeNaVFBSUKPqp8BN/ncY+asKcPa2xxD77P/ZCr7vEheVqwmkP+VnJAwpx+gD/bk0alXpJUOIbY1bgnZVJ63Or6BwwY8eGHvXkcQnLOblhZaLYWcyaaTyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748431368; c=relaxed/simple;
	bh=SQjZk2OifxeYB4JLy8Q5cjUg0zdPgl1qjVVFEnxXc0E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hXYi5XoOSyuiMsSqk448hqqqeqcobn8QGhXPUmZsF5ysMmpt2Z5jSo286VF6skdb5ZcuxKj3jUL8drBwNWQDaog7JwLwtwfvQXFPpbfWVvadNWzFMzky51QylmlixEKnnzObRp4eNWlfHEjjrmL/+q/pulByY2h10PKS2QsuksU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ji1J4vDP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S5xXkL002206
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:22:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PXrF3chhlKsYPqdRDHwS0A8uxmZl7PCZMAnk+l3O8cw=; b=ji1J4vDPrznP7Pqv
	1zdDmfOmUi/OK7mmMDtOliQ8DG1CDqh6JpJpI7y0dKCkKdBTh+6Dt5xRaB2LpzuE
	6W12J5C/vCuUxVRPh/oPeTZZjXcm+2zG7PpjH8gTObT5CIF5p5hEqLweVlbweGUC
	8o2W759pXLSm1/gpVO01S0fnlx29gM78ddfjxBgabICF7w1NLYtY+K3vC3m6uvLo
	vjaBqZxgRSWZqIcfTUhrKKX39+cLV5j8h3d/dGwLls4RvZZYPnOIdFJaNg+GyfAX
	NgeMTerok3qxMHyDdNPSX7cCYNPs2O2sf7Eez4TRQctN5EgC/g/7kpgE9bLBd2EZ
	R/zT7g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavkutac-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:22:45 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5af539464so129887985a.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:22:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748431364; x=1749036164;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PXrF3chhlKsYPqdRDHwS0A8uxmZl7PCZMAnk+l3O8cw=;
        b=ZZPJyncNCONg+0F4M/TO8olo2HgbUk6EB7nyJVXB7nolqLgoSeJw7x2mV28t6VEl8i
         XNZaCuCfJasJtptfoIkR4whwN0GgbmtfWS7qM2AvTP6VBxRSuAHTMmPU97hkiHSRQKD9
         fd2/TNO1RK7JE8fda45eH78o7+kIEJlJ0+aMHnkOOiO4D5dZQAJT0eruKtoLX1U6sSZl
         tBUNJr+aQwzTFCRK5FSP7qCwp2QJwAForOxO0UeAIXZgJZLDXbHritBAQpWCvzOJ5XlB
         tdk1vlbzi0fjYoCZI9iZyj5jKaZTvlhKg6K1bsI6klTmTwtZ1j+bD8mSb/TRLu+985Q1
         4HJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBP+45CcYNqTDbcKK+j00ZU1ATJtDUTmRDfaWGse11lxaWj9L02utRstoaRwTVHa6g5iN5jnOM//w9@vger.kernel.org
X-Gm-Message-State: AOJu0Yze2a9qLTgE4mw4COWGAOwKKC9vBClUAYqaqcKRkGkBccQLAfYD
	JIZShBdfrG8hUh0vxs/vPHplmFZsMfPakUDGucPBJSO75PbJ1E3NrjtVJ7LdfIvmPsqE+tBW3Kl
	KsERglE2WCcl7VTtLFoI4m8tGtujKLQQS0eQ4jR7Y9OLlsbwe/+4i7FkPWiEXj2/x
X-Gm-Gg: ASbGncsArlEc8nOk2+CjdrNneFRRj7zaR/ThR6+gnDJAgKHywqhlXLahSWAwQfRd/v1
	G0YuiVL2qHyg6KWr4CIgBzh8+1JU15pB4tEHHT0VATKbuTqAPpOrKgC/aq4eeFeym65uh7oTDVK
	ULYFLzQ1ib+VDERQCmXFQTZhCeWRDwhrGe4+6lQ8yS3UwBBSZEQq+w4yiIUxldc/2oue+ZvPpzF
	at7QphfDy2EvG23KTgV3xrl7EiKSnZ8q/BNrKeMhieYK14t9H7Vupei03YWJ0dtb7G8ltUxzCEA
	LkgrTKhSmhqyCszeWp+7ygl8fJgvFipS8NkAQyaQnF8TVMKCQEToMuDeECcPUllRwA==
X-Received: by 2002:a05:620a:2710:b0:7ca:e392:2a1b with SMTP id af79cd13be357-7cf5374ae78mr110203585a.10.1748431364555;
        Wed, 28 May 2025 04:22:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoL3mKSALNU9U5rUvH7D3DgExdg+X+00mZ1LS8ZpHat+MX4uUZuY9EFAKe+em8TE91JP4dIQ==
X-Received: by 2002:a05:620a:2710:b0:7ca:e392:2a1b with SMTP id af79cd13be357-7cf5374ae78mr110201785a.10.1748431363985;
        Wed, 28 May 2025 04:22:43 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b47a16sm91600666b.144.2025.05.28.04.22.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 04:22:43 -0700 (PDT)
Message-ID: <07aa740a-72f1-4d7a-aefc-437d52b8dac8@oss.qualcomm.com>
Date: Wed, 28 May 2025 13:22:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 <8692f79f-142c-43e6-9e09-7ed4ce590b87@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8692f79f-142c-43e6-9e09-7ed4ce590b87@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FpGsuLVa-Nw2yjVg_v5GxWcFAFSATg6x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5OSBTYWx0ZWRfX/8I0io+7C1xR
 qaABiwAoEpY89gJAvyipZ46bz4Bceo4f1gsrYxdXhrvbEPbxd18J7kz1/FDDpM2a/zCggCD+mjy
 gcEui8GrqwuX2hrLL/YucshOEdwI6m0A1xUlkTsOq5Tvse4Fuoz0mX/dSYCH5booPxAmi2ZmlQq
 Rz4F/Dm8SvLL1kvkZStPU4K+LQZwD4bJoi3LI+YAgxvOOM5ImKj007Yt0HRFZ5+JYAIyPwxpNTC
 +GdX6dgUc3v84X6Ndoq0fFFR/eDXAL2e3TWwpXCpShXx7+zSdPFauzeiwjA1WYyX+1VDKosqF7G
 yQBvZif/5XgwWCWlo9fJ0hLPaSJb/imxtq3GwQn8dyrU9NzOnQcbDxLv02ffsiKk+lngvLRkMDp
 QHXT0f5LdQi4lWuZ7ae328rrxQkXPlJDxyzcYQ00NB2jnk/nE4dGNnmCY15f44PTqMAg2sIo
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=6836f205 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=WE4J2M1y9a7QUu_BFKwA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: FpGsuLVa-Nw2yjVg_v5GxWcFAFSATg6x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=856 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280099

On 5/28/25 1:21 PM, Konrad Dybcio wrote:
> On 5/28/25 10:58 AM, Dmitry Baryshkov wrote:
>> On Wed, May 28, 2025 at 12:22:01AM +0200, Konrad Dybcio wrote:
>>> On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
>>>> On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
>>>>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>>>>
>>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>>
>>>>> The DisplayPort phy should be left enabled if is still powered on
>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>>> PHY is not powered off.
>>>>>
>>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
>>>>> this will leave enough time to the DRM DisplayPort controller to
>>>>> turn of the DisplayPort PHY.
>>>>>
>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>> [konrad: renaming, rewording, bug fixes]
>>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>> ---
>>>
>>> [...]
>>>
>>>>> +	} else {
>>>>> +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
>>>>
>>>> Why? if the SID is not DP, then there can't be a DP stream.
>>>>
>>>>> +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
>>>>> +			new_mode = QMPPHY_MODE_USB3_ONLY;
>>>>> +		else
>>>>> +			new_mode = QMPPHY_MODE_USB3DP;
>>>
>>> To be honest I don't really know.. Neil chose to do that, but I don't
>>> think there's a strict requirement.. Should we default to 4ln-USB3?
>>
>> Yes, QMPPHY_MODE_USB3_ONLY. Nit: there is no 4ln-USB3 (it is a special
>> mode). We handle 2ln-USB3 only.
> 
> Right, I double checked and we support SS

I clicked ctrl-z one too many times - I meant SS+ 10Gbps

Konrad


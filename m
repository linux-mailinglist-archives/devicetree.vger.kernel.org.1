Return-Path: <devicetree+bounces-163021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D49D7A7B086
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 23:19:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91D1A188D72C
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 21:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F24205E3C;
	Thu,  3 Apr 2025 20:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gggvwUVG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAB7205E22
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 20:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743713558; cv=none; b=XN/e6+ZBeb92E3YlaAg/b7MWX1OH/fKPxLm/pUqAJwm+oqV8ggcTk+9tPfrtdOJxkiMrtg7Ir3vMA2mvispKi2EeigPMfhBifDO19MY1ivtxml0n/E5IjMtXuGOVmMa0mQjaE7G0kAs/iUJQweVuxQeuKNi4qYbjfOoOrQPRIxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743713558; c=relaxed/simple;
	bh=tUE21kp5Y2Ha6PPB2grCo0cVpZSG6e2ekaq4gDZt+HQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m72a0gyD1jQKTwhM5EB8pUz2rUexH9m/tk6MT9y009X/w2/Xq4pbuYLU9vkz0GXHxtpSrurgunojQ4g900m9Xjr5o7icjImirKxQ4mxCxYYqswy3PpwGQzZs9kKdmTzJfP6x8UZoskG1PYxrqhg79GZgt1qVdx5ru9VjcHRbB5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gggvwUVG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 533JhAsO030414
	for <devicetree@vger.kernel.org>; Thu, 3 Apr 2025 20:52:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+of49W00ZvZSV6VdrBbed6Uq20VFhTrt4WWUZuWJagI=; b=gggvwUVGrfFp+OAJ
	9TlQVozwtUF30ZSnxqe7wG7NU1Yj2qoxmtKxVyk21RpgBtLhN2LZnr6dB+ft6Y4e
	aDnq/uGUYzwHG6gWtaAAMLm2RB0A4pIyqMceXmOkURRlHSzYVozBPfEbfTuT6+8+
	bwpF+B1B6Jbf1Nl/0FWWshW+ZnoEZpzafvfUC/f1rxD4vxCibI26SqGb8FxIPlYM
	t4Gh409WmUVIllVPdnOsODL45Yj1HfGi1OrZuc2s9aJgHoAarIIkQ2nZVgZCTkH+
	P6QrVKqBS/UftkBq1sVyjbLOjmBnbA3PiQ0BxZw3Q8DxBdKbbmdJWALHJb+Db2o4
	wGuyDQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45se4g31gm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 20:52:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54be4b03aso27181785a.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 13:52:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743713553; x=1744318353;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+of49W00ZvZSV6VdrBbed6Uq20VFhTrt4WWUZuWJagI=;
        b=rbBZiWZvg5lHUJaGIxgANtlMuigoBxE8mUJ6cLH4ya1RPWeKtJlkNeenjzlig19nWg
         lKearpLvmp/O5SFfl5f9zajot46bm0R6eJ0JROaqi+4g2ZFA5dp6Hlo6hGCbvBplNgyi
         y2qoeulDIdSSWM2O3ANp1ZyfhUiFWSo9kjINk6vchDz9kzEXMpOD//4X/Qx+y/jX+pY9
         zOcBGfgnzcZR2WzwFUPBmWVS5zCA2IwUGLZM8/UYlTpgKptYtsc43gDaLoD6zMSq2lur
         VhuAxsdtoyq0gxg1EJMVfHZiVBYCwFCpUTaX2gjuN0iM2PAptxhF0HS34DW8GJff3xF/
         V13A==
X-Forwarded-Encrypted: i=1; AJvYcCXwE/j/vgurgiJv2/gLk+MrP/E//0uwvHWYa8eNrgd74H/zEfHN3h5iFrwuslKOedJebRk7+vWPTYja@vger.kernel.org
X-Gm-Message-State: AOJu0YzdAafKzqTYEEhxJxTTrv2NRwSXIxWPRH6NQ8IIfBo5OB2MlTb9
	Ld18ylIM4Q2VKFHAfCyFtbZCeE9gB+iM6Z2D/UHL8P9EKF6FNhlnfUAbh8KP1sKISdn3/IFj0yw
	NtTxb3E34nt9PN0VsDSVUOilHaPc4O5NaK/8itVIhr6uA3fp2L7XzE0JhgKb7
X-Gm-Gg: ASbGncssduEgySY4xIHXV9RE2LsUxOu8bm8995VHhOLu0T60bCizjSuZW3kPRKwzET9
	1vjT+n1GE8u/N5zdw3o7btTPef2YkMNxVrUR0HG69aiOxo1+tXvNEOWIsBQb6MkpdVzqz48Is99
	yTbIm9SUEOcUH0pwGfpNuV6zQiz25XIrSqHPJZonV2j9BsqH+zMEXF6WnqqJrn7flqLmochnXb+
	65GRkDjJ+RByPiLG6Pu8O/FXS/iH8OzsbH8GlhioRfY9F84+3go4M5tn9IFLAi+bKkAsOM+Yfn2
	6p3+fJ+FGB7liCGWBFQikUHx8SwXVeiCcukkmjPfIbvVRAcL/TkfviNX3oL8GVjG1yjrlg==
X-Received: by 2002:a05:620a:d86:b0:7c3:d752:f256 with SMTP id af79cd13be357-7c774d52b1fmr37585985a.7.1743713552879;
        Thu, 03 Apr 2025 13:52:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFW9VVgHZdVpymWLYQ76D50xpMzwHkQtShiUWmBOzkY0o7BLLMB1tDc8bRnl4Fm8Wny63ZmKw==
X-Received: by 2002:a05:620a:d86:b0:7c3:d752:f256 with SMTP id af79cd13be357-7c774d52b1fmr37584485a.7.1743713552456;
        Thu, 03 Apr 2025 13:52:32 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7c018aeadsm144626866b.153.2025.04.03.13.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 13:52:31 -0700 (PDT)
Message-ID: <c1f145b7-501d-4d73-a5bc-a1844e17a289@oss.qualcomm.com>
Date: Thu, 3 Apr 2025 22:52:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/4] PCI: dwc: Add support for configuring lane
 equalization presets
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
References: <20250316-preset_v6-v8-0-0703a78cb355@oss.qualcomm.com>
 <20250316-preset_v6-v8-4-0703a78cb355@oss.qualcomm.com>
 <3sbflmznjfqpcja52v6bso74vhouv7ncuikrba5zlb74tqqb5u@ovndmib3kgqf>
 <92c4854d-033e-c7b5-ca92-cf44a1a8c0cc@oss.qualcomm.com>
 <mslh75np4tytzzk3dvwj5a3ulqmwn73zkj5cq4qmld5adkkldj@ad3bt3drffbn>
 <5fece4ac-2899-4e7d-8205-3b1ebba4b56b@oss.qualcomm.com>
 <abgqh3suczj2fckmt4m2bkqazfgwsfj43762ddzrpznr4xvftg@n5dkemffktyv>
 <622788fa-a067-49ac-b5b1-e4ec339e026f@oss.qualcomm.com>
 <4rep2gvymazkk7pgve36cw7moppozaju7h6aqc3gflxrvkskig@62ykri6v4trs>
 <ed8a59ce-0527-4514-91f8-c27972d799d4@oss.qualcomm.com>
 <utswwqjgfy3iybt54ilyqnfss77vzit7kegctjp3tef636hc3p@724xe3dzlpip>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <utswwqjgfy3iybt54ilyqnfss77vzit7kegctjp3tef636hc3p@724xe3dzlpip>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: nLJildeMtCsPFbuK6uXFPq6B_Syvqcsf
X-Authority-Analysis: v=2.4 cv=a8Iw9VSF c=1 sm=1 tr=0 ts=67eef512 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=8zO8dPC1Pt-TAjq7ZcgA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: nLJildeMtCsPFbuK6uXFPq6B_Syvqcsf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_09,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 adultscore=0 phishscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0 spamscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030111

On 4/2/25 8:02 AM, Manivannan Sadhasivam wrote:
> On Sat, Mar 29, 2025 at 12:42:02PM +0100, Konrad Dybcio wrote:
>> On 3/29/25 10:39 AM, Manivannan Sadhasivam wrote:
>>> On Sat, Mar 29, 2025 at 09:59:46AM +0100, Konrad Dybcio wrote:
>>>> On 3/29/25 7:30 AM, Manivannan Sadhasivam wrote:
>>>>> On Fri, Mar 28, 2025 at 10:53:19PM +0100, Konrad Dybcio wrote:
>>>>>> On 3/28/25 7:45 AM, Manivannan Sadhasivam wrote:
>>>>>>> On Fri, Mar 28, 2025 at 11:04:11AM +0530, Krishna Chaitanya Chundru wrote:

[...]

>> Ohh, I didn't think about that - and I can only think about solutions that are
>> rather janky.. with perhaps the least janky one being changing the else case I
>> proposed above into:
>>
>> else if (speed >= PCIE_SPEED_32_0GT && eq_presets_Ngts[speed - PCIE_SPEED_16_0GT][0] != PCI_EQ_RESV) {
> 
> s/PCIE_SPEED_16_0GT/PCIE_SPEED_32_0GT
> 
>> 	...
> 
> So this I read as: Oh, your controller supports 32 GT/s and you firmware also
> wanted to apply the custom preset offsets, but sorry we didn't do it because we
> don't know if it would work or not. So please let us know so that we can work
> with you test it and then finally we can apply the presets.

Good, because that was exactly what I had in mind :)

>>>>> I'm not forseeing any issue in this part of the code to support higher GEN
>>>>> speeds though.
>>>>
>>>> I would hope so as well, but both not programming and misprogramming are
>>>> equally hard to detect
>>>>
>>>
>>> I don't disagree. I wanted to have it since there is no sensible way of warning
>>> users that this part of the code needs to be updated in the future.
>>
>> I understand, however I'm worried that the programming sequence or register
>> may change for higher speeds in a way that would be incompatible with what
>> we assume here
>>
> 
> Honestly, I don't know why you are having this opinion. This piece of code is
> not in Qcom driver and the registers are the same for 8 GT/s, 16 GT/s as per the
> PCIe spec. So the hardware programming sequence and other arguments doesn't
> apply here (atleast to me).

I'm not familiar with the spec, but if you think it's a good idea to extend
the sequence for 32+ GT/s, I won't object anymore

Konrad


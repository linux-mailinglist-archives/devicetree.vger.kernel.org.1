Return-Path: <devicetree+bounces-154561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D09D7A50B73
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 20:28:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F17621890FDB
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 19:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C98D24C062;
	Wed,  5 Mar 2025 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="DyMfLyM2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BB519F438;
	Wed,  5 Mar 2025 19:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741202914; cv=none; b=TDHoQC9dQfwFKV775VdSGA8pwH/5jNTJRBYxYd2gxTk/ET9DSYnvk4TzSvpCU9o+dknkjaNUyk8Sf2v5jFaHo8jINN3qvZj5xV0Ovrp3pBcfIpAoiRkm2mil6kvYpDmRtHp8rxK36Xq+kIJ5o6kd14gmDnX7jkw3zUBSNZZAwHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741202914; c=relaxed/simple;
	bh=GNL0K+Zm8sPa6uZ6xJkLDdmfP36t6ZfM3ghJIcH1dXY=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=ZhTBvFsO579Gy/nphkfLTfpdTTnH0N1UePSW/jusC9iNN83ycwCldYd4KyvASsYZFBIERnxoA/EX1fNjyKsaROG1Ij4T37/pQdkwhOggPzmeWPcC1YRcq4ciQQJDNw/1NGg7QTHox8iYrOBBTdAZ4vTKSRBcBUbRRJgxFxdLgZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=DyMfLyM2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 525B4W0u025488;
	Wed, 5 Mar 2025 19:28:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kyw5fiMLd0ITsHzLG43UR740fhNTgpgXfvtAkSdLCfU=; b=DyMfLyM2E7+R1PyS
	1s/qSu7MT6bhg475Rh/9DG/hbFefFcjfxBeDV/kQWG+5NN7LGDAd0fo23QI8ta7z
	VHa1WmHb3QNu3peEOiLzMlmXPRsgi+s51T8zJxTGUvH/WfJQzpdMOYB4YuZU3d7+
	+r0RDoRvHHBIR/T2Gfr93zXf92xr/pXeza6ualSd9OxWLq8haSv/hILeaVU6Vza3
	CIFa1pp2d8hMM1mxT+4eF8BuuI6QY7Czw5RH8Uy3uakMvenPMdFPLyeXnjVzhPws
	tvhtbdr1LXgSB/TgE/Oe7EQyDaVPHC3NRTbOzMa6nyA/jLEXyn3cnaUBJLjWcDjw
	1JFPog==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6txhpk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Mar 2025 19:28:13 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 525JSCgv026672
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Mar 2025 19:28:12 GMT
Received: from [10.110.60.163] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 5 Mar 2025
 11:28:11 -0800
Message-ID: <0dfca6b2-2875-4aef-be95-9ed0a33beebd@quicinc.com>
Date: Wed, 5 Mar 2025 11:28:10 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v35 00/31] Introduce QC USB SND audio offloading support
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Wesley Cheng
	<quic_wcheng@quicinc.com>
CC: Greg KH <gregkh@linuxfoundation.org>, <srinivas.kandagatla@linaro.org>,
        <mathias.nyman@intel.com>, <perex@perex.cz>, <conor+dt@kernel.org>,
        <dmitry.torokhov@gmail.com>, <corbet@lwn.net>, <broonie@kernel.org>,
        <lgirdwood@gmail.com>, <tiwai@suse.com>, <krzk+dt@kernel.org>,
        <pierre-louis.bossart@linux.intel.com>, <Thinh.Nguyen@synopsys.com>,
        <robh@kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-sound@vger.kernel.org>,
        <linux-input@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-doc@vger.kernel.org>
References: <20250219004754.497985-1-quic_wcheng@quicinc.com>
 <Z7W_Vz_kVDjIcp5N@linaro.org>
 <82ce69a3-d248-494f-6ddb-098f392c78a0@quicinc.com>
 <Z8a4WYq4GqWBVNyX@linaro.org>
 <ee5cb6bc-963a-4e31-8ac4-07120fb9ff70@quicinc.com>
 <Z8ikt2K0uekU2dVZ@linaro.org>
Content-Language: en-US
From: Trilok Soni <quic_tsoni@quicinc.com>
In-Reply-To: <Z8ikt2K0uekU2dVZ@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: XEk_VzWDUbK1S4q_1dOj7KYELWxNwc_i
X-Proofpoint-ORIG-GUID: XEk_VzWDUbK1S4q_1dOj7KYELWxNwc_i
X-Authority-Analysis: v=2.4 cv=Sf4NduRu c=1 sm=1 tr=0 ts=67c8a5cd cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=qC_FGOx9AAAA:8 a=HTecfl5s7U67J0CcF8QA:9 a=QEXdDO2ut3YA:10
 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-05_08,2025-03-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 phishscore=0
 suspectscore=0 clxscore=1011 malwarescore=0 bulkscore=0 mlxlogscore=999
 mlxscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503050148

On 3/5/2025 11:23 AM, Stephan Gerhold wrote:
> On Tue, Mar 04, 2025 at 02:46:28PM -0800, Wesley Cheng wrote:
>> On 3/4/2025 12:22 AM, Stephan Gerhold wrote:
>>> On Mon, Mar 03, 2025 at 06:39:52PM -0800, Wesley Cheng wrote:
>>>> On 2/19/2025 3:24 AM, Stephan Gerhold wrote:
>>>>> On Tue, Feb 18, 2025 at 04:47:23PM -0800, Wesley Cheng wrote:
>>>>>> Requesting to see if we can get some Acked-By tags, and merge on usb-next.
>>>>>>
>>>>>> Several Qualcomm based chipsets can support USB audio offloading to a
>>>>>> dedicated audio DSP, which can take over issuing transfers to the USB
>>>>>> host controller.  The intention is to reduce the load on the main
>>>>>> processors in the SoC, and allow them to be placed into lower power modes.
>>>>>> There are several parts to this design:
>>>>>>   1. Adding ASoC binding layer
>>>>>>   2. Create a USB backend for Q6DSP
>>>>>>   3. Introduce XHCI interrupter support
>>>>>>   4. Create vendor ops for the USB SND driver
>>>>>>
>>>>>>       USB                          |            ASoC
>>>>>> --------------------------------------------------------------------
>>>>>>                                    |  _________________________
>>>>>>                                    | |sm8250 platform card     |
>>>>>>                                    | |_________________________|
>>>>>>                                    |         |           |
>>>>>>                                    |      ___V____   ____V____
>>>>>>                                    |     |Q6USB   | |Q6AFE    |
>>>>>> |     |"codec" | |"cpu"    |
>>>>>>                                    |     |________| |_________|
>>>>>>                                    |         ^  ^        ^
>>>>>>                                    |         |  |________|
>>>>>>                                    |      ___V____    |
>>>>>>                                    |     |SOC-USB |   |
>>>>>>    ________       ________               |        |   |
>>>>>>   |USB SND |<--->|QC offld|<------------>|________|   |
>>>>>>   |(card.c)|     |        |<----------                |
>>>>>>   |________|     |________|___     | |                |
>>>>>>       ^               ^       |    | |    ____________V_________
>>>>>>       |               |       |    | |   |APR/GLINK             |
>>>>>>    __ V_______________V_____  |    | |   |______________________|
>>>>>>   |USB SND (endpoint.c)     | |    | |              ^
>>>>>>   |_________________________| |    | |              |
>>>>>>               ^               |    | |   ___________V___________
>>>>>>               |               |    | |->|audio DSP              |
>>>>>>    ___________V_____________  |    |    |_______________________|
>>>>>>   |XHCI HCD                 |<-    |
>>>>>>   |_________________________|      |
>>>>>>
>>>>>
>>>>> As I noted on v34 [1], this version is still missing instructions and
>>>>> changes needed for testing this series. The device tree changes don't
>>>>> need to be part of the same series, but there should be at least a link
>>>>> provided to give other people the chance to provide Tested-by tags.
>>>>>
>>>>> IMO we shouldn't merge this series without those instructions, otherwise
>>>>> we risk that this just ends up being dead code that no one can use.
>>>>>
>>>>> Can you please share the device tree changes for a board upstream and
>>>>> any other changes needed to be able to test this series? E.g. for
>>>>> sm8250-mtp.dts, based on the examples in your cover letter.
>>>>>
>>>>
>>>> To clarify I'm testing this on sm8350 in recent times, but utilizing sm8250
>>>> definitions for the ASoC platform card, as the platform sound card is more
>>>> or less the same between the two SoCs.  Back
>>>> when I started this series, sm8350 was missing a bunch of dependent
>>>> components, such as aDSP not being loaded, and missing platform sound card
>>>> definition, so I had to define and enable those on my own, which required a
>>>> slew of new DT nodes, hence why it wasn't as straight forward to include
>>>> the DT definitions yet for sm8350.  Not thinking that this series would
>>>> take as long as it did, I was planning on separating out the DT changes in
>>>> a different series to enable offloading for the devices I have tested with.
>>>> (sm8150, sm8250 and sm8350)
>>>>
>>>> There's still a pretty big chunk of dependencies missing from sm8350, so
>>>> those would also be handled in the follow up DT submission.  For now, its a
>>>> much bigger hurdle to get the main/functional changes in, and that was
>>>> taking a significant amount of time from my end to manage.
>>>>
>>>> If you want, I can give you the changes I have offline to enable this for
>>>> sm8350, since I haven't spent time formatting/prepping the changes for
>>>> submission yet.
>>>>
>>>
>>> Can you push it to a public branch somewhere (e.g. on CodeLinaro)? I was
>>> talking to some people from the community about testing this on some of
>>> the smartphones we have in upstream, so it wouldn't help if I just have
>>> the changes privately.
>>
>> Which CLO project/branch did you want me to push it to?  Sorry, I haven't
>> worked too much with the CLO open branches.  I have an account though.
>>
> 
> Any project/branch is fine for me, I suggested CLO only because I
> assumed you already have an account there.
> 
> You should be able to create a personal project and push it there. You
> could also use the fork button on
> https://git.codelinaro.org/linaro/linux/kernel/torvalds/linux to avoid
> having to push the full history yourself. It should result in a project
> similar to mine: https://git.codelinaro.org/stephan.gerhold/linux

Wesley - if not CLO, feel free to use the github. We can help you offline. 

-- 
---Trilok Soni


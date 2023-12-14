Return-Path: <devicetree+bounces-25453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B18DA81347B
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:18:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E32B31C21B36
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 268145C91E;
	Thu, 14 Dec 2023 15:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="KxM2WZEg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5627111D
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:18:37 -0800 (PST)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BEDomUm003030;
	Thu, 14 Dec 2023 15:18:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=EdT9K4UNkIoyoDdlWP7VlbpUfDLcL2xQzw5qnLQ/bCY=; b=Kx
	M2WZEgwQ9qGmCTbotjJYZoRrBIlDosJ3gJZaxf4hshlE+vxqBQ7XhNkCjaBx9U5+
	aAtJ5GCQO2PLmzhU0b61o6SF+blii8z5oGNDnP7aguntjY4lecdv5bZGRs93oVxh
	r2dDUk29TI5DM5HOONaoju736b/Up0xj+GYk/FwcWhm1PtAO055xtOqYaJN+jnIU
	NDIYgnfyjyoO3YpIiiREiot4dCFDXVl9mTyr5tupPX65gvLczo2aLn9ROUXLfZb2
	udGllZTg+n12W1IOvDen2alVysZEQcmHUBLNgHgfxDwDvydnSQDCyU9akKhMIlkL
	2WxKmjRU1ayl3VYTkYPg==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uysrpscm7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 15:18:27 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BEFIQCx006392
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 15:18:26 GMT
Received: from [10.110.26.44] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Thu, 14 Dec
 2023 07:18:26 -0800
Message-ID: <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
Date: Thu, 14 Dec 2023 07:18:25 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: DT Query on "New Compatible vs New Property"
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "Manivannan
 Sadhasivam" <manivannan.sadhasivam@linaro.org>
CC: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>,
        <srinivas.kandagatla@linaro.org>, <vincent.guittot@linaro.org>,
        <ulf.hansson@linaro.org>
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: hSpTSJWy_2uhn2NOXZ0zOvfSZl6z0e8k
X-Proofpoint-GUID: hSpTSJWy_2uhn2NOXZ0zOvfSZl6z0e8k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 mlxscore=0 bulkscore=0 mlxlogscore=999 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312140107


On 12/13/2023 11:49 PM, Krzysztof Kozlowski wrote:
> On 14/12/2023 07:17, Manivannan Sadhasivam wrote:
>> On Tue, Dec 12, 2023 at 11:06:42AM -0800, Nikunj Kela wrote:
>>> + Linaro team
>>>
>>> On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
>>>> On 12/12/2023 18:45, Nikunj Kela wrote:
>>>>> We are abstracting some resources(ex. clocks) under new firmware on an
>>>>> existing platform therefore need to make changes in certain drivers to
>>>>> work with that firmware. We need to make a distinction between two
>>>>> different variants of the FW. In one case, some resources will be
>>>>> abstracted while in other case, they won't be abstracted. My query is -
>>>>> "should we define a new compatible string for the variant with
>>>>> abstracted resources(in FW) or we should add a new DT property keeping
>>>>> the compatible same?"
>>>> Hi,
>>>>
>>>> Usually change in the interface or behavior warrants new compatible.
>>>> Property would be suitable if the same device, e.g. same SoC component
>>>> with same FW, was configured differently on different boards.
>>>>
>> Here, the hardware is going to be the same, but the resources (clocks,
>> regulators, etc...) will be controlled by the firmware instead of OS.
> Yeah, that's the problem with generic questions, instead of specific...
> "Talk is cheap."
>
> OK, so the hardware is exactly the same? Does FW bring any
> incompatibilities in the interface or is it just about the clocks? I
> guess I should not have included "with same FW" in my last statement.
> It's true, but way too narrow. Therefore let me rephrase it:

HW is exactly the same. Let me give more insight on the setup. We have 
been using the HW in virtual environment but now the ownership of 
certain resources (e.g. clock controller etc.) is handed over to a 
different VM(non Linux VM). Earlier the ownership of the resources was 
local to the same VM(Linux VM) via passthrough mode so it could directly 
access them however now Linux VM talks to non-Linux VM for its 
operations for resources that it doesn't own anymore via some 
interface(shared memory/doorbell).  So shall we use property like 'qcom, 
controlled-remotely' or do we need a new compatible for such setup?

> "Property would be suitable if the same device, e.g. same SoC component
> with same interface towards OS, was configured differently on different
> boards."
>
>> Should we still use a different compatible? For the similar usecase, we already
>> have properties like 'qcom,controlled-remotely' to let the OS know that it
>> should not configure the hardware and just consume it.
> Yeah, also similar qcom,gsi-loader.
>
> Best regards,
> Krzysztof
>


Return-Path: <devicetree+bounces-34692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 155D083A9B8
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 13:28:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A07C1C20B8E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6316063124;
	Wed, 24 Jan 2024 12:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="d7Cq3te4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EDF763104
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 12:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706099287; cv=none; b=otX7mWLhe9TOO6PwEBYytqhq3FMNFISjJKTf3PGLWX1QfWlVMpwkzf6C52wxPh6S15RVEDKgbFOZyC/ueC1rkT3YUWstUNoZk26tPsSOwbYnImBoEOgyKXOX8w6qxBI/rwUTgJqTM4HFiqewyHv3Jrgypt8BoaBLtq8l83GmBTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706099287; c=relaxed/simple;
	bh=wUi6qmX0ejNUcc2ONvbkcgjeNJjYI2+G47zJmhh7w00=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=AKPumWxlk8Ebkm4btXEjjyrO/VxlLyFutlQUXGTyJtAyPNwxsnGLh2spW+9PxQfwFsGnXLTqFJU31VRBd4g7kyvHwsotYUaMLzour9GVbNFl3ym8h2b8GK8s0qJfLnHI3c0QrzA4x8ZjbSOrgCZVj6+7W3DS+h+aSnr3RFEWFTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=d7Cq3te4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40OBuHio025273;
	Wed, 24 Jan 2024 12:27:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=A/oMXv/l/ktuUVQomTHiz2Sq9RPsH9mv4EQUE0thkPg=; b=d7
	Cq3te4eWGEg1UZHKv0UAReiEpmoQ7dSSNaS9C/vA+eijoM1WZYN80Bdlz6r5154R
	3Ef9gEUxs80zWAbDPILY1J36Az+NbmKKtypuhp+ebPIPpZeVcT2khNyX17JsOHa+
	HGdu1ffUyz4rhetu3OtcSjpQd2CS+mnHCmXcTpQvlWZO0dTYzBICVikKRehOKsuw
	8mrrUKrURJTSRwZIgGmKQHXA0eE6xAv2BjyeM1xg2cGcY1ZFOkKfvIP/H8E6ofie
	kzzLKjBVM2XYWTyBmrQvilCxra7VxxFZfY2lNBnHulc/5RsJxfzeR0S/bhTHAb5z
	z6T9DAOnaoyblMv78nqw==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vtyxyrb71-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jan 2024 12:27:56 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 40OCRuH6001325
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jan 2024 12:27:56 GMT
Received: from [10.110.125.140] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 24 Jan
 2024 04:27:55 -0800
Message-ID: <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com>
Date: Wed, 24 Jan 2024 04:27:55 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Sudeep Holla <sudeep.holla@arm.com>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>,
        <srinivas.kandagatla@linaro.org>, <vincent.guittot@linaro.org>,
        <ulf.hansson@linaro.org>
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad> <ZbDlLJRHu2ebdxc6@bogus>
 <20240124104530.GK4906@thinkpad> <ZbDuO_iV5i8mE01Q@bogus>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <ZbDuO_iV5i8mE01Q@bogus>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: aolpMwohA2tgZQi58sJk41CLwITwcGBD
X-Proofpoint-GUID: aolpMwohA2tgZQi58sJk41CLwITwcGBD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-24_06,2024-01-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0 mlxlogscore=999
 bulkscore=0 spamscore=0 priorityscore=1501 clxscore=1011 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401190000 definitions=main-2401240090


On 1/24/2024 3:02 AM, Sudeep Holla wrote:
> On Wed, Jan 24, 2024 at 04:15:30PM +0530, Manivannan Sadhasivam wrote:
>> On Wed, Jan 24, 2024 at 10:23:40AM +0000, Sudeep Holla wrote:
>>> On Tue, Jan 23, 2024 at 09:42:31PM +0530, Manivannan Sadhasivam wrote:
>>>> On Thu, Dec 14, 2023 at 07:18:25AM -0800, Nikunj Kela wrote:
>>>>> HW is exactly the same. Let me give more insight on the setup. We have been
>>>>> using the HW in virtual environment but now the ownership of certain
>>>>> resources (e.g. clock controller etc.) is handed over to a different VM(non
>>>>> Linux VM). Earlier the ownership of the resources was local to the same
>>>>> VM(Linux VM) via passthrough mode so it could directly access them however
>>>>> now Linux VM talks to non-Linux VM for its operations for resources that it
>>>>> doesn't own anymore via some interface(shared memory/doorbell).  So shall we
>>>>> use property like 'qcom, controlled-remotely' or do we need a new compatible
>>>>> for such setup?
>>>>>
>>> I did see the mention of SCMI somewhere in the thread, hence the interest.
>>> What specific resources are we talking here: clocks, reset, power domains,
>>> regulators ? If so I don't understand the need for any new compatible
>>> "qcom, controlled-remotely' or any change in the driver. The DT has standard
>>> bindings for these and drivers would be requesting these resources using
>>> std framework apis. If it is a clock controller in the host Linux VM or
>>> if it is SCMI controlled clock in a non Linux VM must not matter for the
>>> individual drivers right ? Sorry if I am missing something obvious here ?
>> The design that Qcom is coming up is, all the hardware (peripheral controllers,
>> clocks, regulators) stay as it is, but the control to those resources will be
>> handled by the VM instead of the device driver in OS.
>>
> This is no different on any platform that using SCMI or any firmware
> interface for managing the resources.
>
>> The idea is similar (but not same) to ACPI, but here they want to use SCMI
>> commands to let the device driver request VM to control the resources on its
>> behalf.
>>
> Correct, but that doesn't explain on what you are suggesting to change in
> the drivers. Drivers must modify nothing to switch between the models.
>
>>>> Krzysztof, just a ping on this thread.
>>>>
>>>> To summarise, the hardware is exactly same. We can consider the case of UFS. The
>>>> UFS controller is exactly same in this proposed setup but the resources of the
>>>> UFS controller are taken care by the VM. So instead of enabling the resources
>>>> one by one, Linux kernel will just ask the VM to do so using an SCMI command.
>>>>
>>> I don't understand why you need to change the UFS controller driver to switch
>>> to SCMI driver resource model from self/host Linux driven model.
>>>
>> If the VM is taking control of the resources, then device drivers cannot control
>> them. I think it may result in access violation.
>>
> Well why are those "raw" resources presented to the Linux. I see no difference
> between this and presenting the secure resource to the Linux via DT and
> complaining when it faults accessing them inside the kernel. So still not
> providing any reasoning to the actual change.
>
>> This design (VM + SCMI) is floated by Qcom to offload the resource management
>> from OS. One can say that ACPI will solve the issue, but...
>>
> Yes I am aware of it to some extent.
>
>>>> Due to this difference, we need to make the changes in the UFS controller
>>>> driver. So we want to know if we can use a different compatible for the UFS
>>>> controller altogether in DT (this will allow Linux kernel to have a separate
>>>> driver and will simplify things) or just use a property like
>>>> "remotely-controlled" to let the driver detect this setup and take action
>>>> accordingly.
>>>>
>>> I would say the DT should be set accordingly before the Linux boots to point
>>> all the resources to SCMI instead of self hosted various controller/provider
>>> nodes in the DT. I don't understand why the compatible for a device need to
>>> change if the OS resource handling model changes. The resource nodes just
>>> points to a different provider node instead.
>>>
>> The problem is, the resource provider is not changing. For instance, currently
>> GCC is supplying clocks to all peripherals in an SoC. In this design also, GCC
>> will supply clocks, but driver cannot use standard clock API to enable the
>> clock, but instead it needs to use an SCMI command to let VM enable the clock
>> on its behalf.
> I am completely lost. The SCMI clock(and any other resource provider) register
> itself to the corresponding framework in the kernel. The consumers of these
> resource must simply use the std. APIs as usual so it doesn't matter who is
> the provider of this resource. That is the model in which almost all resource
> framework work in the kernel. Just switching to SCMI doesn't and must not
> require any change in the consumer drivers.
>
> I am still failing terribly here to understand the motive here.
>
>> As per Qcom, this will abstract the resource handling from OS.
>> Like, instead of the driver explicitly enabling all resources, it can ask the VM
>> to do it on its behalf. During suspend/resume also, VM will manage the
>> resources.
>>
> Yes just use the standard framework calls to indicate the same to the VM.
>
>> Hope this clarifies the design.
> Not really, still puzzled may be more than before as I don't understand
> what is going on with the approach as it seem to be deviating from my
> initial understanding.
>
> May be take an example of one driver, present the DT binding and driver
> changes to make sure there is no misunderstanding from my side. But I am
> not convinced with the explanation so far.

Hi Sudeep,

We are not using clock protocol to deal with clocks individually. We are 
trying to define different perf domains for peripherals where we are 
grouping clocks/regulators/interconnect bandwidth into these perf 
domains and use OPP levels via SCMI perf protocol. This is done so as to 
avoid individual scmi calls for these resources hence avoiding any race 
conditions and minimizing the traffic between SCMI client and server to 
get better KPIs. This is being planned for sa8775p platform and any 
subsequent platforms will use the same approach. The idea of using perf 
protocol for peripherals is new and I Qualcomm is first one trying to 
use that. Therefore existing peripheral drivers will require a way to 
distinguish between the two different configurations. Hope this provides 
little more context and insight.

Thanks

>
> --
> Regards,
> Sudeep


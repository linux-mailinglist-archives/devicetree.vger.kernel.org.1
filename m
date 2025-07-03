Return-Path: <devicetree+bounces-192599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 905C5AF70F2
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 12:52:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94DC81C481D9
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 10:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16E812E2F12;
	Thu,  3 Jul 2025 10:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PzJehx1J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6063A2D9EEE
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 10:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751539931; cv=none; b=Ux8rkMpicpRqLaUHh0ya3X9nU5+fbaIvraBCoCQxVZKZoUv7ISRJdoCLCFDu2ugGgARJ7WTxel0ScmrBXWCNBCxNctT0p5j4KkeTWh19jlPzJX7NjfdArWkmLkOG0qbk/LR+rkGu6+6YeGrFTn3xEhwCMSVW9X0BRr7Tjgd+X/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751539931; c=relaxed/simple;
	bh=rmNSYOw+HEy63n/h92TyS7aMyLFXLaBLj2X6TT6vDAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=feXPR0C5mgY4kj4n7AuXpz+aNNm3POHGX4iBn9G4q2yrmJOrRbh+wBqq9j18ijQp1FqHSKtIQjezxCYd9wFCEsBhBqVPlnWG3+dB9xbbhfcjZwiB7Tbc0oVadkTlDweJDhxYo4kojgVyMD+ES8BiBYK8Gemhw/VMqkx+SMKorPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PzJehx1J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5638N99E030091
	for <devicetree@vger.kernel.org>; Thu, 3 Jul 2025 10:52:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YWZCms/xP7PO1LNBdrvjW70mXAYc+B54BtYn47HqjmU=; b=PzJehx1JbtWXCDmp
	WqLy0bSwXfYyTiF7FiqrE+Xs/XxJcKExopBipIE4CujfQmDJraRThd2iwJwRyqz1
	K/SBJXxZP9fzsEouNN/sEJwwpvScbGEXC9m/cc8BVxQUpQ0qrJLzht9z8+8tXXGM
	HBPaPJ18q3xY6d8xCjZLEzQ0dKDXlq8r8W8Hf3BQCF1G87BZ0w0veN2thAGC3V4J
	An1VuGy6OV6fba2t2DDFnTJchcTvcOH5m4rPrZXP2v7yf+W+eG/jxhhLw8iglxd9
	ubDQpFj+nsggw3LEe9ST3CrZAuYaeSrR1BGmVapj8Weqma1tzlI+X4IiEJ4wLb5X
	glvdIg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47mhxn6rry-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 10:52:08 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-313c3915345so11762613a91.3
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 03:52:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751539927; x=1752144727;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YWZCms/xP7PO1LNBdrvjW70mXAYc+B54BtYn47HqjmU=;
        b=d7gcora8IWE/56aiZvDUYNSB0mEOMpb2O8qDLyCjxCgyIq9tqrphMLJrVatoGiyTmz
         3TV482MfYzzAl0Ok35YPdXq3z6IqeeiyzLHec7Psu885lCGGOPWx2uJ6ATqJ5w7u5/4o
         PwRw4nkTg8X8tws7FnIQdqEyb99n2M7fTFMEFOHdZRj9A4191cMkRLUGoJpj3qtTcSlR
         oQb5+qepPZWd3Qss3ncAer5R91Dqqi6zhQ/DP5pWSBeGsskl6o26WdG1+Y+D/7i2ATZa
         q6ESBUCEhyy1GJGtahdPzEYQCLVfCTMpdF5BW6ZkqUFgt9Wyx7kD3xFnG67SaWNkwYtP
         E9CA==
X-Forwarded-Encrypted: i=1; AJvYcCXXJMQ9tavZfOxetXck6VSdnSAgXrwtRt8FZNBpM3PdkxL1J1i3BqmiBkrYjYo7kb9e9WE4QbbiJYpI@vger.kernel.org
X-Gm-Message-State: AOJu0YzlrDIwRP0V5W+QlPauSDRH8o3+6v70Ig6cG2ECfMZ6VpJwgfgH
	pUZGxlAMfoNJJmgMp6KtAGU8dxrzovl9OoQ45Zg8Ku4vow6vvBpojxQMo86ZM/i0HmE31jCbnvf
	6M0zpoNbRdb+gNbJdtEkf6fEBu3aWkl6NjbokLKv+GHFta9Bn/ZxwhBgRi9k7AEgJ
X-Gm-Gg: ASbGncs5TQ+RICg8xHvNLDoILdEZEyk5fTjnJwbo+g8Q+OUkLdv/CqPSBRe/ZDNjWea
	s5EfgJ3V6KygzK3GwxsHYznK1Z0u4TZFYNisy3JBg5SJsSQ2ftZetB9ddxPOE0PQ3R3Bjd0R0T2
	AOAqXCLfmAH3dQIsrGjH4253u6CuPjQpQliUHGDZKLwlFq3Hn5Ma5a1rCQKGc5OafkPUyzsmvaz
	2C3ehk32NUPXpFnJ106PQ9mWfPBH0FfbJ0sR/s+XQiIj2iQ0Ol/LLsp6erEVUIfuz3r1QdTzah/
	dal6hg0d6ED3KRQlYTTY5iyeuQ1ipXQUs283FUtMoA1+9nJC3385
X-Received: by 2002:a17:90b:58c4:b0:311:b5ac:6f63 with SMTP id 98e67ed59e1d1-31a90bc9845mr8300507a91.21.1751539926609;
        Thu, 03 Jul 2025 03:52:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGU2ttb8arRAA533CuSXsGogWAaWWt4oh1TJBQPDAc1tI7amiUizM28F44lNiZLDBYSJCJ3TQ==
X-Received: by 2002:a17:90b:58c4:b0:311:b5ac:6f63 with SMTP id 98e67ed59e1d1-31a90bc9845mr8300464a91.21.1751539926013;
        Thu, 03 Jul 2025 03:52:06 -0700 (PDT)
Received: from [10.218.37.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31a9cc7edffsm2123326a91.35.2025.07.03.03.52.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 03:52:05 -0700 (PDT)
Message-ID: <9ede83ab-f494-4975-b896-da14958f727d@oss.qualcomm.com>
Date: Thu, 3 Jul 2025 16:21:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] PCI/portdrv: Add support for PCIe wake interrupt
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
        Brian Norris <briannorris@chromium.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Tony Lindgren <tony@atomide.com>,
        JeffyChen <jeffy.chen@rock-chips.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, Sherry Sun <sherry.sun@nxp.com>
References: <20250610164154.GA812762@bhelgaas>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250610164154.GA812762@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDA4OSBTYWx0ZWRfXwIU3j3m8GEgI
 knRE9qVJXU3jQAOKV+oFp6zJPFUx+wF+YEkbIfpzVtmAVJJe/30w3n881jvrh1jIrNgjIe9AcW+
 QhA15ZRKnpfL1V4SP1BYFP/fctrwbI4j0ImxgRYebogcwhDVKW6/aMUeKhkTjMEWKAFugyPt1AW
 D6rGQyfsJ/QX/fBTkygc5GVUzyCy1ZwgrKFsicQqrTgHoOovidvCJel0USIOyFWjpM6ZaCUB6rW
 VxC+o8XC5mpXxIVfdr2VrpznG3P6mmyzccxIuywW19C/OS9zmc+U9y87IRuoVG2EouLDKO4zCNT
 Ob6fy0pe6nX+7mwYCjSRU6pBuwV/8S67JNUhizH3L7ESBO6CmZlyxsm/p0hJpW9WWMRyW9YWlR8
 8Iu9qevC+fg6u2gE8fxhDnH4sh/xnPx+h5xUk1NngMUsBWaZNvh3g++ifTAU5vKvRRrBBhOG
X-Authority-Analysis: v=2.4 cv=EbvIQOmC c=1 sm=1 tr=0 ts=686660d8 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=s8YR1HE3AAAA:8
 a=i8TGq4d7xC6VReilZ34A:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: eznes4H8ygr5peykQMVQeCgrf2nZ2-WR
X-Proofpoint-GUID: eznes4H8ygr5peykQMVQeCgrf2nZ2-WR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=999 lowpriorityscore=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507030089



On 6/10/2025 10:11 PM, Bjorn Helgaas wrote:
> On Tue, Jun 10, 2025 at 10:00:20AM +0530, Krishna Chaitanya Chundru wrote:
>> On 6/10/2025 4:04 AM, Bjorn Helgaas wrote:
>>> On Mon, Jun 09, 2025 at 05:29:49PM +0530, Manivannan Sadhasivam wrote:
>>>> + Brian, Rafael, Tony, Jeffy (who were part of the previous attempt to add WAKE#
>>>> GPIO/interrupt support:
>>>> https://lore.kernel.org/linux-pci/20171225114742.18920-1-jeffy.chen@rock-chips.com
>>>>
>>>> On Mon, Jun 09, 2025 at 11:27:49AM +0530, Krishna Chaitanya Chundru wrote:
>>>>> On 6/6/2025 1:56 AM, Bjorn Helgaas wrote:
>>>>>> On Thu, Jun 05, 2025 at 10:54:45AM +0530, Krishna Chaitanya Chundru wrote:
>>>>>>> PCIe wake interrupt is needed for bringing back PCIe device state
>>>>>>> from D3cold to D0.
>>>>>>
>>>>>> Does this refer to the WAKE# signal or Beacon or both?  I guess the
>>>>>> comments in the patch suggest WAKE#.  Is there any spec section we can
>>>>>> cite here?
>>>>>>
>>>>> we are referring only WAKE# signal, I will add the PCIe spec r6.0, sec
>>>>> 5.3.3.2 in next patch version.
>>>>>>> Implement new functions, of_pci_setup_wake_irq() and
>>>>>>> of_pci_teardown_wake_irq(), to manage wake interrupts for PCI devices
>>>>>>> using the Device Tree.
>>>>>>>
>>>>>>>    From the port bus driver call these functions to enable wake support
>>>>>>> for bridges.
>>>>>>
>>>>>> What is the connection to bridges and portdrv?  WAKE# is described in
>>>>>> PCIe r6.0, sec 5.3.3.2, and PCIe CEM r6.0, sec 2.3, but AFAICS neither
>>>>>> restricts it to bridges.
>>>>
>>>> You are right. WAKE# is really a PCIe slot/Endpoint property and
>>>> doesn't necessarily belong to a Root Port/Bridge. But the problem is
>>>> with handling the Wake interrupt in the host. For instance, below is
>>>> the DT representation of the PCIe hierarchy:
>>>>
>>>> 	PCIe Host Bridge
>>>> 		|
>>>> 		v
>>>> 	PCIe Root Port/Bridge
>>>> 		|
>>>> 		|
>>>> 		v
>>>> PCIe Slot <-------------> PCIe Endpoint
>>>>
>>>> DTs usually define both the WAKE# and PERST# GPIOs
>>>> ({wake/reset}-gpios property) in the PCIe Host Bridge node. But we
>>>> have decided to move atleast the PERST# to the Root Port node since
>>>> the PERST# lines are per slot and not per host bridge.
>>>>
>>>> Similar interpretation applies to WAKE# as well, but the major
>>>> difference is that it is controlled by the endpoints, not by the
>>>> host (RC/Host Bridge/Root Port). The host only cares about the
>>>> interrupt that rises from the WAKE# GPIO.  The PCIe spec, r6.0,
>>>> Figure 5-4, tells us that the WAKE# is routed to the PM controller
>>>> on the host. In most of the systems that tends to be true as the
>>>> WAKE# is not tied to the PCIe IP itself, but to a GPIO controller in
>>>> the host.
>>>
>>> If WAKE# is supported at all, it's a sideband signal independent of
>>> the link topology.  PCIe CEM r6.0, sec 2.3, says WAKE# from multiple
>>> connectors can be wire-ORed together, or can have individual
>>> connections to the PM controller.
>>
>> I believe they are referring to multi root port where WAKE# can
>> routed to individual root port where each root port can go D3cold
>> individually.
> 
> AFAICT there's no requirement that WAKE# be routed to a Root Port or a
> Switch Port.  The routing is completely implementation specific.
> 
>>  From endpoint perspective they will have single WAKE# signal, the
>> WAKE# from endpoint will be routed to its DSP's i.e root port in
>> direct attach and in case of switch they will routed to the USP from
>> their again they will be connected to the root port only as there is
>> noway that individual DSP's in the switch can go to D3cold from
>> linux point of view as linux will not have control over switch
>> firmware to control D3cold to D0 sequence.
>>
>> But still if the firmware in the DSP of a switch can allow device to
>> go in to D3cold after moving host moving link to D3hot, the DSP in
>> the switch needs to receive the WAKE# signal first to supply power
>> and refclk then DSP will propagate WAKE# to host to change device
>> state to D0. In this case if there is separate WAKE# signal routed
>> to the host, we can define WAKE# in the device-tree assigned to the
>> DSP of the switch. As the DSP's are also tied with the portdrv, the
>> same existing patch will work since this patch is looking for
>> wake-gpios property assigned to that particular port in the DT.
> 
> WAKE# is only defined for certain form factors, and Root Ports and
> Switch Ports have no WAKE#-related behavior defined by the PCIe specs.
> 
> I don't want to make assumptions about how WAKE# is routed, whether
> Switches have implementation-specific WAKE# handling, or how D3cold
> transitions happen.  Those things are all implementation specific.
> 
> My main objections are:
> 
>    - Setting up a wake IRQ should be done on an endpoint, but this
>      patch assumes doing it on a Root Port or Switch Port is enough.
> 
>      We can start a DT search for a wake IRQ at the endpoint and
>      traverse up the hierarchy if necessary, of course.
> 
>    - The code should not be in portdrv.c.  Putting it in portdrv means
>      it won't work unless CONFIG_PCIEPORTBUS is enabled, and WAKE# has
>      nothing to do with the rest of portdrv.
I went through the SPEC again and you are right the spec hasn't
mentioned about wake# routing properly.

I will move the code from portdrv to pci core framework and for your
1st objection, you are suggesting to search for wake IRQ in the endpoint
DT and then traverse up. I believe you are suggesting this because we
may more than one wake# routed to root port from multiple endpoints.
if this is the case then we need to register for more than one wake
IRQ. For this case I feel better to check for wake# gpio in the DT
when ever there is a new device is detected in the pci core and create
the wake IRQ with the dev associated with the pci_dev.

Please correct me if I was wrong.

- Krishna Chaitanya.
> 
> Bjorn


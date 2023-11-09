Return-Path: <devicetree+bounces-14870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C41F7E72BF
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 21:26:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85133281042
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 20:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92AEC374DD;
	Thu,  9 Nov 2023 20:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="mv+SxyeC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E950F374C8;
	Thu,  9 Nov 2023 20:26:18 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 488FF44B6;
	Thu,  9 Nov 2023 12:26:18 -0800 (PST)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A9JY6br026296;
	Thu, 9 Nov 2023 20:26:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=BSEFC97DPNuh2NKt1LnpDdqp0So3uF6/pbicepm5WAc=;
 b=mv+SxyeCa3ZSYSgf4anZeYTRG7BUGKuLQG+AepLDWWsPn5auvaj3htzJsnXjXhjOYYoz
 Uhti4VlqmNRJUPDCtbWVDbEc0yYtFWQyEpjxKHj+nUOQo4iKiUGPYexmt0ZgfTEUmoS+
 peqvT/nGajBvK7PTkO1JGlJcY4UetYCkNsBUYj95Q6O9mYayKth+aKZugb1VOzo1gUNL
 H55tG6j4D9us3Bry7h8/GiBy66BZOWbJXMxKBRLdCnsDTrZovR05kgRmtefbUlm5Lh/k
 5zpVPOQ8TP6I968V0DQPYSxAPHZg4EaRKaG4WmZyEoV3a1tJrFIc81Kv66q6ReTV/UT7 vQ== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u93rbrdhy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Nov 2023 20:26:06 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A9KQ3xs008437
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 9 Nov 2023 20:26:03 GMT
Received: from [10.71.112.236] (10.80.80.8) by nalasex01b.na.qualcomm.com
 (10.47.209.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Thu, 9 Nov
 2023 12:26:02 -0800
Message-ID: <50931ba5-132f-3982-e33a-691583e3a71f@quicinc.com>
Date: Thu, 9 Nov 2023 12:25:59 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v13 05/10] usb: dwc3: qcom: Refactor IRQ handling in QCOM
 Glue driver
Content-Language: en-US
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
        Johan Hovold
	<johan@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Bjorn Andersson
	<andersson@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Felipe Balbi
	<balbi@kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <quic_pkondeti@quicinc.com>,
        <quic_ppratap@quicinc.com>, <quic_jackp@quicinc.com>,
        <ahalaney@redhat.com>, <quic_shazhuss@quicinc.com>
References: <20231007154806.605-1-quic_kriskura@quicinc.com>
 <20231007154806.605-6-quic_kriskura@quicinc.com>
 <ZTJ_T1UL8-s2cgNz@hovoldconsulting.com>
 <14fc724c-bc99-4b5d-9893-3e5eff8895f7@quicinc.com>
 <ZTY7Lwjd3_8NlfEi@hovoldconsulting.com>
 <cabf24d0-8eea-4eb5-8205-bf7fe6017ec2@quicinc.com>
 <ZTZ-EvvbuA6HpycT@hovoldconsulting.com>
 <fb5e5e1d-520c-4cbc-adde-f30e853421a1@quicinc.com>
 <ZTdqnSHq_Jo8AuPW@hovoldconsulting.com>
 <04615205-e380-4719-aff1-f32c26004b14@quicinc.com>
 <ZUz4RD3MjnLlPn6V@hovoldconsulting.com>
 <2b19b5e2-5eb0-49e0-8c47-8aff3d48f34e@quicinc.com>
From: Wesley Cheng <quic_wcheng@quicinc.com>
In-Reply-To: <2b19b5e2-5eb0-49e0-8c47-8aff3d48f34e@quicinc.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: udjM-C__RW-E6zGhcyWuGHZTcE8kHPzd
X-Proofpoint-ORIG-GUID: udjM-C__RW-E6zGhcyWuGHZTcE8kHPzd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-09_14,2023-11-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1011
 phishscore=0 adultscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311090146



On 11/9/2023 8:38 AM, Krishna Kurapati PSSNV wrote:
> 
> 
> On 11/9/2023 8:48 PM, Johan Hovold wrote:
>> On Fri, Nov 03, 2023 at 03:34:52PM +0530, Krishna Kurapati PSSNV wrote:
>>> On 10/24/2023 12:26 PM, Johan Hovold wrote:
>>>> On Mon, Oct 23, 2023 at 10:42:31PM +0530, Krishna Kurapati PSSNV wrote:
>>>>> On 10/23/2023 7:37 PM, Johan Hovold wrote:
>>>>
>>>>>> Right. And I assume there are hs_phy_irqs also for the first two USB
>>>>>> controllers on sc8280xp?
>>>>
>>>>> There are, I can dig through and find out. Atleast in downstream I 
>>>>> don't
>>>>> see any use of them.
>>>>
>>>> Yes, please do post how these are wired as well for completeness.
>>
>> Did you find these two interrupts as well?
>>
>>
>>> Regarding the points of discussion we had last week on [1], here are
>>> some clarifications:
>>>
>>> 1. We do have hs_phy_irq 1/2/3/4 for tertiary port of Sc8280 as
>>> mentioned. Why do we need them and would we use it in multiport 
>>> targets ?
>>>
>>> DPSE and DMSE are single ended line state of DP and DM lines. The DP
>>> line and DM line stay in steady High or Low during suspend and they flip
>>> when there is a RESUME or REMOTE WAKE. This is what we do/check in
>>> dwc3_qcom_enable_interrupts call for dp/dm irq's based on usb2_speed.
>>
>> Right, this bit is clear.
>>
>>> Initially in QUSB2 targets, the interrupts were enabled and configured
>>> in phy and the wakeup was interrupt was read on hs_phy_irq vector - [2].
>>> In that case, we modify DP/DM interrupts in phy registers, specifically
>>> QUSB2PHY_INTR_CTRL and when wakeup signal comes in, hs_phy_irq is
>>> triggered. But in femto targets, this is done via DP/DM interrupts and
>>> there is no use of hs_phy_irq. Even hw folks confirmed they dont use
>>> hs_ph_irq in femto phy targets.
>>
>> Ok, thanks for pointing to QUSB2. The same mechanism is apparently used
>> in phy-qcom-usb-hs-28nm.c as well (even if the dtsi currently does not
>> define the wakeup interrupts).
>>
>> Furthermore, that implementation is broken and has never worked due to
>> another half-arsed, incomplete Qualcomm implementation. Specifically, no
>> one is changing the PHY mode based on the current speed before suspend
>> as commits like
>>
>>     3b3cd24ae61b ("phy: Add USB speed related PHY modes")
>>
>> and
>>
>>     891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
>>
>> depend on. Guess I should go revert that mess too...
>>
>>> As an experiment, I tried to test wakeup by pressing buttons on
>>> connected keyboard when in suspend state or connecting/disconnecting
>>> keyboard in suspended state on different ports and only see dp/dm IRQ's
>>> getting fired although we register for hs_phy_irq as well:
>>>
>>> / # cat /proc/interrupts  |grep phy_
>>> 171:   1  0   0   0  0  0  0  0       PDC 127 Edge      dp_hs_phy_1
>>> 172:   2  0   0   0  0  0  0  0       PDC 126 Edge      dm_hs_phy_1
>>> 173:   3  0   0   0  0  0  0  0       PDC 129 Edge      dp_hs_phy_2
>>> 174:   4  0   0   0  0  0  0  0       PDC 128 Edge      dm_hs_phy_2
>>> 175:   0  0   0   0  0  0  0  0       PDC 131 Edge      dp_hs_phy_3
>>> 176:   2  0   0   0  0  0  0  0       PDC 130 Edge      dm_hs_phy_3
>>> 177:   2  0   0   0  0  0  0  0       PDC 133 Edge      dp_hs_phy_4
>>> 178:   5  0   0   0  0  0  0  0       PDC 132 Edge      dm_hs_phy_4
>>> 179:   0  0   0   0  0  0  0  0       PDC  16 Level     ss_phy_1
>>> 180:   0  0   0   0  0  0  0  0       PDC  17 Level     ss_phy_2
>>> 181:   0  0   0   0  0  0  0  0     GICv3 163 Level     hs_phy_1
>>> 182:   0  0   0   0  0  0  0  0     GICv3 168 Level     hs_phy_2
>>> 183:   0  0   0   0  0  0  0  0     GICv3 892 Level     hs_phy_3
>>> 184:   0  0   0   0  0  0  0  0     GICv3 891 Level     hs_phy_4
>>
>> Yes, but that doesn't really say much since you never enable the hs_phy
>> interrupt in the PHY on suspend.
> 
> I did register to and enabled the hs_phy_irq interrupt when I tested and 
> posted the above table.
> 
>>> Since the hs_phy_irq is applicable only for qusb2 targets, do we still
>>> need to add it to DT.
>>
>> Are you sure there's no support for hs_phy_irq also in the "femto" PHYs
>> and that it's just that there is currently no driver support for using
>> them?
>>
>> And why is it defined if there is truly no use for it?
> 
> Femto phy's have nothing to be configured for interrupts like we do for 
> qusb2 phy's. I confirmed from hw validation team that they never used 
> hs_phy_irq for validating wakeup. They only used dp/dm IRQ's for wakeup.
> 
>> Also, if hs_phy_irq and dp/dm_phy_irq were mutually exclusive, why does
>> the following Qualcomm SoCs define all three?
>>
> 
> Similar to BAM IRQ's these might have been just ported over targets I 
> believe. I say so because HW Validation team confirmed they don't use 
> this interrupt at all on femto phy targets.
> 
>>                - qcom,ipq4019-dwc3
>>                - qcom,ipq6018-dwc3
>>                - qcom,ipq8064-dwc3
>>                - qcom,ipq8074-dwc3
>>                - qcom,msm8994-dwc3
>>                - qcom,qcs404-dwc3
>>                - qcom,sc7180-dwc3
>>           - qcom,sc7280-dwc3
>>                - qcom,sdm670-dwc3
>>                - qcom,sdm845-dwc3
>>                - qcom,sdx55-dwc3
>>                - qcom,sdx65-dwc3
>>                - qcom,sm4250-dwc3
>>                - qcom,sm6125-dwc3
>>                - qcom,sm6350-dwc3
>>                - qcom,sm8150-dwc3
>>                - qcom,sm8250-dwc3
>>                - qcom,sm8350-dwc3
>>                - qcom,sm8450-dwc3
>>                - qcom,sm8550-dwc3
>>
>> Some of those use QUSB2 PHYs and some use "femto" PHYs.
>>  > And this comes from Qualcomm through commits like:
>>
>>     0b766e7fe5a2 ("arm64: dts: qcom: sc7180: Add USB related nodes")
>>     bb9efa59c665 ("arm64: dts: qcom: sc7280: Add USB related nodes")
>>
>>
>>> 3. ctrl_irq[1] usage:
>>>
>>> This is a feature of SNPS controller, not qcom glue wrapper, and is
>>> present on all targets (non-QC as well probably). As mentioned before on
>>> [3], this is used for HW acceleration.
>>>
>>> In host mode, XHCI spec does allow for multiple interrupters when
>>> multiple event rings are used. A possible usage is multiple execution
>>> environments something like what we are doing on mobile with ADSP audio
>>> offload [4]. Another possibility could be some of virtualization where
>>> host/hyp would manage the first interrupter and could allow a guest to
>>> operate only with the second (though current design does not go far
>>> enough to offer true isolation for real VM type workloads). The
>>> additional interrupts (ones other than ctrl_irq[0]) are either for
>>> virtualization use cases, or for our various “hw offload” features. In
>>> device mode, these are used for offloading tethering functionality to
>>> IPA FW.
>>
>> Ok, thanks for clarifying what you meant by "HW acceleration".
>>
>>> Since the DeviceTree passed to the OS, should describe the hardware to
>>> the OS, and should represent the hardware from the point-of-view of the
>>> OS, adding one interrupt (ctrl_irq[0]) might be sufficient as Linux
>>> would not use the other interrupts.
>>
>> I've only skimmed the virtualisation bits in xHCI spec, but it seems
>> Linux as VMM would still be involved in assigning these interrupts to
>> VMs.

Hi Krishna/Johan,

IMO it might be a bit premature to add definitions for how to utilize 
secondary interrupters since design wise, there's nothing really too 
well defined yet.  At least for the XHCI path, we will have a slew of 
potential use cases for secondary interrupters, such as USB audio 
offloading, or for VMMs, etc...  I've only heard mentions about some of 
them after pushing the usb audio offloading series, but I don't have 
much details on it.

For example, for the USB audio offload path, the idea is to not have to 
interrupt the apps proc, and allow for an external DSP to be managing 
the event ring.

> 
> I didn't understand this sentence. Are you referring to cases where 
> Linux needs to act as the entity using the ctrl_irq[1] ?
> 
> On QCOM SoC's, in reality (atleast in device mode) I can say that we 
> create the event rings for IPA FW (which registers for ctrl_irq[1]) to 
> use and read depevt's. We don't register or get this IRQ from DT and 
> then provide to IPA (not even in downstream).
> 
>>
>> This may possibly be something that we can ignore for now, but perhaps
>> someone more familiar with the hardware, like Thinh, can chime in.
>>
>>> Furthermore AFAIK even UEFI/Windows
>>> also use only ctrl_irq[0] for host mode in their execution environment
>>> today. Do we still need to add this to bindings and DT ?
>>
>> But the second interrupt is described in the ACPI tables, which means
>> that a simple driver update could (in theory) allow for it to be used.
>>
>> You need to get into the same mindset when it comes to devicetree. Even
>> if Linux currently does not use an interrupt, like the pwr_event_irq,
>> you should still add it so that when/if someone implements support for
>> it, an older platform using the original dt may also take advantage of
>> it.

Yeah, I totally agree with this point, but I'm not sure if adding it 
into the "interrupts" array is the way to go.  It would probably have to 
change as support is added.

Sorry for jumping in, but just giving my two cents since I'm the one 
trying to do the initial push for the support for secondary interrupters :).

Thanks
Wesley Cheng



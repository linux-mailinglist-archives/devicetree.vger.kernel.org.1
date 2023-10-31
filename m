Return-Path: <devicetree+bounces-13045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AA17DC6B2
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 07:44:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E38CD281417
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 06:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A8F73217;
	Tue, 31 Oct 2023 06:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="EoVLFynk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8292594
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 06:44:26 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B355BC0;
	Mon, 30 Oct 2023 23:44:24 -0700 (PDT)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39V4kPix026272;
	Tue, 31 Oct 2023 06:44:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=7jFveTWj7jSeTd53Jdrv/kWC+xzTymP6HQnAeMDpXjQ=;
 b=EoVLFynkKlceX/B9V+tZ3Vhx9TKjmoVsnVWzIzNuR7AKs9tMQf95sQTVkr7OeMnjtROo
 4xz8WhUNwg6bm2pCHS7EnNV0rGqjW5eKJvn2U8qqpHSktZQHWXYu6Hlf/CGBOF2dGFJP
 t6owKadQbUabA3pwvJz/uy+OCmNafTWp4gAWiwkKfOJoOoGi6Pop4eCyLxtr+ysnA2cS
 5n1aSnjZVNqriYymd5wvOGA12YOV4/shCahU8tCNGSuLaHjAoXVK82M3kBTWs+szdfKp
 qeXr7NiRU4Gk52FU476c1rf91RH0coVf3zKewxF/Ccq7/4V3zwjPjf2EBvW9P0e7Aqga iA== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u2b2qtbq7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 31 Oct 2023 06:44:17 +0000
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39V6iGCB028264
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 31 Oct 2023 06:44:16 GMT
Received: from [10.214.225.95] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Mon, 30 Oct
 2023 23:44:10 -0700
Message-ID: <d5d53346-ca3b-986a-e104-d87c37115b62@quicinc.com>
Date: Tue, 31 Oct 2023 12:14:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 7/9] arm64: dts: qcom: sc7280: Add CDSP node
Content-Language: en-US
To: Doug Anderson <dianders@chromium.org>,
        Luca Weiss
	<luca.weiss@fairphone.com>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mathieu Poirier
	<mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        <cros-qcom-dts-watchers@chromium.org>,
        <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring
	<robh@kernel.org>,
        =?UTF-8?Q?Matti_Lehtim=c3=a4ki?=
	<matti.lehtimaki@gmail.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-remoteproc@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
 <20231027-sc7280-remoteprocs-v1-7-05ce95d9315a@fairphone.com>
 <7934a36a-9438-719a-2ed0-4a78757b044b@quicinc.com>
 <CWLNP6QNUXN1.SNVACF2IEGI8@fairphone.com>
 <CAD=FV=U6mi0h0MBFMC+ba4oq-te6_+WR6fj1XjAq7tmUu64bUA@mail.gmail.com>
 <CWLUQWPZNAS5.3F4Y5W13OD08M@fairphone.com>
 <CAD=FV=XbwbjFgMjq-y_L-9EO+xfxwGo6RYV8Wh6P5oBR=oDf_g@mail.gmail.com>
From: Mukesh Ojha <quic_mojha@quicinc.com>
In-Reply-To: <CAD=FV=XbwbjFgMjq-y_L-9EO+xfxwGo6RYV8Wh6P5oBR=oDf_g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Rhgh_dG_VXDdBDu2mFsR1Lk5K0QmyRH3
X-Proofpoint-ORIG-GUID: Rhgh_dG_VXDdBDu2mFsR1Lk5K0QmyRH3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_13,2023-10-31_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 spamscore=0 clxscore=1015 phishscore=0 priorityscore=1501 mlxlogscore=999
 suspectscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310240000
 definitions=main-2310310051



On 10/30/2023 8:33 PM, Doug Anderson wrote:
> Hi,
> 
> On Mon, Oct 30, 2023 at 7:43 AM Luca Weiss <luca.weiss@fairphone.com> wrote:
>>
>> On Mon Oct 30, 2023 at 3:11 PM CET, Doug Anderson wrote:
>>> Hi,
>>>
>>> On Mon, Oct 30, 2023 at 2:12 AM Luca Weiss <luca.weiss@fairphone.com> wrote:
>>>>
>>>> On Mon Oct 30, 2023 at 10:04 AM CET, Mukesh Ojha wrote:
>>>>>
>>>>>
>>>>> On 10/27/2023 7:50 PM, Luca Weiss wrote:
>>>>>> Add the node for the ADSP found on the SC7280 SoC, using standard
>>>>>> Qualcomm firmware.
>>>>>>
>>>>>> The memory region for sc7280-chrome-common.dtsi is taken from msm-5.4
>>>>>> yupik.dtsi since the other areas also seem to match that file there,
>>>>>> though I cannot be sure there.
>>>>>>
>>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>>> ---
>>>>>>    arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi |   5 +
>>>>>>    arch/arm64/boot/dts/qcom/sc7280.dtsi               | 138 +++++++++++++++++++++
>>>>>>    2 files changed, 143 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
>>>>>> index eb55616e0892..6e5a9d4c1fda 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
>>>>>> @@ -29,6 +29,11 @@ adsp_mem: memory@86700000 {
>>>>>>                      no-map;
>>>>>>              };
>>>>>>
>>>>>> +           cdsp_mem: memory@88f00000 {
>>>>>> +                   reg = <0x0 0x88f00000 0x0 0x1e00000>;
>>>>>> +                   no-map;
>>>>>> +           };
>>>>>> +
>>>>>
>>>>> Just a question, why to do it here, if chrome does not use this ?
>>>>
>>>> Other memory regions in sc7280.dtsi also get referenced but not actually
>>>> defined in that file, like mpss_mem and wpss_mem. Alternatively we can
>>>> also try and solve this differently, but then we should probably also
>>>> adjust mpss and wpss to be consistent.
>>>>
>>>> Apart from either declaring cdsp_mem in sc7280.dtsi or
>>>> "/delete-property/ memory-region;" for CDSP I don't really have better
>>>> ideas though.
>>>>
>>>> I also imagine these ChromeOS devices will want to enable cdsp at some
>>>> point but I don't know any plans there.
>>>
>>> Given that "remoteproc_cdsp" has status "disabled" in the dtsi, it
>>> feels like the dtsi shouldn't be reserving memory. I guess maybe
>>> memory regions can't be status "disabled"?
>>
>> Hi Doug,
>>
>> That's how it works in really any qcom dtsi though. I think in most/all
>> cases normally the reserved-memory is already declared in the SoC dtsi
>> file and also used with the memory-region property.
>>
>> I wouldn't be against adjusting sc7280.dtsi to match the way it's done
>> in the other dtsi files though, so to have all the required labels
>> already defined in the dtsi so it doesn't rely on these labels being
>> defined in the device dts.
>>
>> In other words, currently if you include sc7280.dtsi and try to build,
>> you first have to define the labels mpss_mem and wpss_mem (after this
>> patch series also cdsp_mem and adsp_mem) for it to build.
>>
>> I'm quite neutral either way, let me know :)
> 
> I haven't done a ton of thinking about this, so if I'm spouting
> gibberish then feel free to ignore me. :-P It just feels weird that
> when all the "dtsi" files are combined and you look at what you end up
> on a sc7280 Chrome board that you'll be reserving 32MB of memory for a
> device that's set (in the same device tree) to be "disabled", right?
> ...the 32MB is completely wasted, I think. If we wanted to enable the
> CDSP we'd have to modify the device tree anyway, so it seems like that
> same modification would set the CDSP to "okay" and also reserve the
> memory...
> 
> In that vein, it seems like maybe you could move the "cdsp_mem" to the
> SoC .dsti file with a status of "disabled". . I guess we don't do that
> elsewhere, but maybe we should be? As far as I can tell without
> testing it (just looking at fdt_scan_reserved_mem()) this should
> work...

What do you think about moving present reserve memory block from
sc7280-chrome-common to sc7280.dtsi and delete the stuff which
chrome does not need it sc7280-chrome-common ?

-Mukesh
> 
> -Doug


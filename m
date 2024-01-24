Return-Path: <devicetree+bounces-34709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A62AF83AACA
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 14:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55179285DB9
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 13:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F63777644;
	Wed, 24 Jan 2024 13:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="RlZbaAno"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABD6199D9
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 13:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706102239; cv=none; b=R7qcnZQL5E4kRSKJt2YoYVaenw8Syr72rPXiva2Ho/+deY90CtqfxeOSxy3NsU1u3I+U9qh6Xh4N8xXb0CoCe7juiHo/GaIpxHwYeF7fVuKQZdPZh3Y53ZH2upbC9e9Retzz2S+rUWJ2Sw7/UY6z4UPYFhqmGlYET/YCXH4LHwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706102239; c=relaxed/simple;
	bh=vSguf18bS09A3Lbep+7WoMQXjXYHly/SZngz1+sd1S4=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=BQge0LkbQGjRA9/w6ZocyuaTgRX5sMH5GrIyMzznWqubf+3iMMZFrjdl60F09qJmTo+oTFLUIaO+Xg9G4WXASscfiCsSEh1HX4oVObIsSUoNBOY09+dyWuKMpz69MB6cLSQ1VpF8neO3G3wC9Vwq1uGDa+relo/JvbU1OEeo9Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=RlZbaAno; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40ODC7Ok019580;
	Wed, 24 Jan 2024 13:17:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=m2YMVFuqtPAOcYMmrhSihS2cuAG0pP04a5oieaKLkvw=; b=Rl
	ZbaAnogMuVXHvSKVLoocHg2Y5v0ASWc+67V94sMfaUb5k3Ic16DsxkVctodaZXcv
	AOwis/Lt6fER5rsa3MrMFB3izd0D5KSCTWExo5RvHqUWfYYx80QrWQiXub7CSmpr
	cHSiiFecfJqUh+ZfmjuOm8BltxgkS5/dlo1qUQ/o3Tnk+6hTIM9Kqdv/uiJSIteX
	0m3XsczvRxPxrXeKPonhEFZuuDtVKw/R8M7/w75JsatzirJmbVuehDiFYNHvECdM
	treKo3Sn06GpfNlVCXQCuxkGZnC3lIyAHavyGnC2V/NxQRVnMtAHSlNFug2Q4FPh
	owtSPpeZphcKvVLmlFcw==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3vu19gg8dj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jan 2024 13:17:11 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 40ODHAko003657
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jan 2024 13:17:10 GMT
Received: from [10.110.125.140] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 24 Jan
 2024 05:17:09 -0800
Message-ID: <7910de2d-6184-4f78-a286-d2e6e50c7a36@quicinc.com>
Date: Wed, 24 Jan 2024 05:17:09 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: DT Query on "New Compatible vs New Property"
To: Sudeep Holla <sudeep.holla@arm.com>
CC: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>,
        <srinivas.kandagatla@linaro.org>, <vincent.guittot@linaro.org>,
        <ulf.hansson@linaro.org>
References: <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
 <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
 <20231214061742.GG2938@thinkpad>
 <66f82e2c-0c42-4ead-93f5-2136ad478df2@linaro.org>
 <7768258d-4748-84f7-0da2-43988138e5cc@quicinc.com>
 <20240123161231.GG19029@thinkpad> <ZbDlLJRHu2ebdxc6@bogus>
 <20240124104530.GK4906@thinkpad> <ZbDuO_iV5i8mE01Q@bogus>
 <a053261e-6e05-4673-b5dd-2ce8f3c73ac9@quicinc.com> <ZbEHNyLE8bQlZHSZ@bogus>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <ZbEHNyLE8bQlZHSZ@bogus>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: zS87PplIgPmMx-RVPsUM-Nsz0XW35rUq
X-Proofpoint-ORIG-GUID: zS87PplIgPmMx-RVPsUM-Nsz0XW35rUq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-24_06,2024-01-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 clxscore=1015 mlxlogscore=344 spamscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2401190000
 definitions=main-2401240095


On 1/24/2024 4:48 AM, Sudeep Holla wrote:
> On Wed, Jan 24, 2024 at 04:27:55AM -0800, Nikunj Kela wrote:
>> On 1/24/2024 3:02 AM, Sudeep Holla wrote:
>>> Not really, still puzzled may be more than before as I don't understand
>>> what is going on with the approach as it seem to be deviating from my
>>> initial understanding.
>>>
>>> May be take an example of one driver, present the DT binding and driver
>>> changes to make sure there is no misunderstanding from my side. But I am
>>> not convinced with the explanation so far.
>> Hi Sudeep,
>>
>> We are not using clock protocol to deal with clocks individually. We are
>> trying to define different perf domains for peripherals where we are
>> grouping clocks/regulators/interconnect bandwidth into these perf domains
>> and use OPP levels via SCMI perf protocol.
> That clarifies on what you are trying to achieve.
>
>> This is done so as to avoid individual scmi calls for these resources
>> hence avoiding any race conditions and minimizing the traffic between SCMI
>> client and server to get better KPIs.
> Fair enough, why can't you just use genpd perf APIs to achieve that ?

OPP is built on top of genpd perf only and was recommended by Ulf(PM 
maintainer from Linaro) hence we decided to use OPP APIs instead of 
directly genpd perf API.


>
>> This is being planned for sa8775p platform and any subsequent platforms will
>> use the same approach. The idea of using perf protocol for peripherals is
>> new and Qualcomm is first one trying to use that.
> Sure.
>
>> Therefore existing peripheral drivers will require a way to distinguish between the
>> two different configurations. Hope this provides little more context and
>> insight.
>>
> While I agree this is new, use custom APIs to control standard resources
> is simply *VERY VERY BAD IDEA* IMO. You may be fine to have these custom
> API calls in qcom specific drivers. But what if this is needed in some
> generic IP driver. Just not scalable and why should the maintainer of
> such driver accept you custom API.

Apologies if it wasn't clear but we are not using custom APIs. We are 
using standard OPP APIs to set to opp level of the perf domain. 
Example-dev_pm_opp_set_opp(). As mentioned above, we are following PM 
framework maintainers recommendation to use OPP.


>
> So I would suggest to work towards using std framework APIs or create one
> if you can justify the need for it. Please stop creating custom APIs for
> using SCMI. It defeats the whole standardisation it is meant to provide.

Not sure I understand what you refer to as custom APIs here. The OPP 
APIs are not custom APIs. They are from OPP framework built on top of 
genpd perf. [1] and [2] patch series might provide you more insight into 
the work that Ulf did to support SCMI perf with OPP framework.

[1]: 
https://lore.kernel.org/all/20230919121605.7304-1-ulf.hansson@linaro.org/

[2]:https://lore.kernel.org/all/20230925131715.138411-1-ulf.hansson@linaro.org/

>


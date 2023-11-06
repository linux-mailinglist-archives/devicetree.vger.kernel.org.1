Return-Path: <devicetree+bounces-14201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3A47E2AA1
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 18:07:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 634BD1C20B72
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA91029CE8;
	Mon,  6 Nov 2023 17:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="agm6qxBw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2448F15AF2
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 17:07:41 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C61E1BC;
	Mon,  6 Nov 2023 09:07:40 -0800 (PST)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A6FvKMV023526;
	Mon, 6 Nov 2023 17:07:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=l2EpXIJBgGHwQgIDPnnZNsim/X6+ej1v5tGiO3s+02U=;
 b=agm6qxBwvuqerpJEhNPceKSgZorLOUxrUGwKc7W9LRUbuWTUwe1IDVhuhggmHR9968UK
 /rRrlqRxwtWFmetVeAm2Crx03e6qcLLZVclrh7kzXvWJ68jOp1SjnHdxa2chm3mcXizw
 PYEOqDU0SsUXYlpCAl4aYcuHPzI5BLLSSJxzOQcpCv3eVBZbjFDxhZAUpyHB+Qz0dsXE
 q+G1Fc6UGWTVIy2ycfUNSMky34+YsI6N20/cc9efKweuk2Muki4mc3OP6ycHReIPZAR/
 mBl9d6fX0e9g7CCoB7RtE9NeNXMQNax6waIow05uryKrkzYNSGyjDgGetjTj52qLd60x Fg== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u5f8dvuge-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Nov 2023 17:07:35 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A6H7YPn025988
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 6 Nov 2023 17:07:34 GMT
Received: from [10.71.108.203] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Mon, 6 Nov
 2023 09:07:34 -0800
Message-ID: <16c03446-cc1c-4f71-8c0d-fe6c6f1bdfd0@quicinc.com>
Date: Mon, 6 Nov 2023 09:07:34 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8550-qrd: add sound card
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross
	<agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230612173758.286411-1-krzysztof.kozlowski@linaro.org>
 <17535d7a-73e2-465b-941c-99db4092327a@quicinc.com>
 <7371257e-3fb0-4538-ad0f-07bd0a827120@linaro.org>
From: Elliot Berman <quic_eberman@quicinc.com>
In-Reply-To: <7371257e-3fb0-4538-ad0f-07bd0a827120@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ZLUzQD0fpYSqMaRhDGYf8up-lYzXT1Fe
X-Proofpoint-GUID: ZLUzQD0fpYSqMaRhDGYf8up-lYzXT1Fe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-06_12,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 mlxscore=0 suspectscore=0 phishscore=0 mlxlogscore=849 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311060139



On 11/5/2023 4:55 AM, Krzysztof Kozlowski wrote:
> On 04/11/2023 00:10, Elliot Berman wrote:
>> Hi Krzysztof,
>>
>> On 6/12/2023 10:37 AM, Krzysztof Kozlowski wrote:
>>> Add the sound card node with tested playback over WSA8845 speakers and
>>> WCD9385 headset over USB Type-C.  The recording links were not tested,
>>> but should be similar to previous platforms.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> ---
>>>
>>> Bindings for the sound card were not sent to LKML. Work-in-progress is
>>> available here:
>>> https://github.com/krzk/linux/tree/n/audio-wsa884x-on-top-of-wip-sm8450-audio-on-next
>>
>> Do you plan to send the bindings up? I can send this patch out if you don't have the cycle:
>>
>> https://github.com/krzk/linux/commit/f678691570386a11eb75dceca7291b4e05d981da
> 
> The patch itself does not make sense without dependencies. It should be
> sent after dependencies are sent.
> 

I think the patch makes sense now that the v6.6 sm8550-mtp.dtb is using the compatible:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/qcom/sm8550-mtp.dts?h=v6.6#n100

- Elliot


Return-Path: <devicetree+bounces-24504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E94580F5FE
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:06:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FB821C208CA
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 19:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6F3580047;
	Tue, 12 Dec 2023 19:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="EfQOr1nW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 975D191
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 11:06:47 -0800 (PST)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BCH7aDC016534;
	Tue, 12 Dec 2023 19:06:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=hTY/YUV6KDI+By4u2GZ2L1Q/0EBl5jkKnYeixgDWtis=; b=Ef
	QOr1nWEXRuE14id5N6XnVvCG/ZWJG6YtkMYPye/DrlFta++awwABn7M4VucTkahC
	LJZqjZD4+khp4/ywy5UqXTjdyZBKeMoYitHVSC+7R96z2essneFm3AGUms1HTXCi
	nKk+GiiCtoh8E/r32FTEU40GEOExDWyMWE5Eau3TmgK7NuuSavqlMN3Qfs+4ahez
	soaejQ9K10MJFk5tn+jP2muz2bytbTPEa92U7sBFIgtIHytyWX9lVIX9TJHFWtwQ
	3Pek1CfZNTfaV1X3Qfnl0+R8vuurIeml3wE9RNRxK1OcF79LUpW1+UagP7ZQlNrr
	nJubfe8C0CslxKGM2jqw==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uxctatfpm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Dec 2023 19:06:44 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BCJ6hiD003108
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Dec 2023 19:06:43 GMT
Received: from [10.110.26.44] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Tue, 12 Dec
 2023 11:06:43 -0800
Message-ID: <1935cb82-648c-f079-8852-d461dc9f8609@quicinc.com>
Date: Tue, 12 Dec 2023 11:06:42 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: DT Query on "New Compatible vs New Property"
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>,
        "Prasad Sodagudi (QUIC)"
	<quic_psodagud@quicinc.com>,
        <srinivas.kandagatla@linaro.org>, <vincent.guittot@linaro.org>,
        <ulf.hansson@linaro.org>, <manivannan.sadhasivam@linaro.org>
References: <be31801e-bb21-426b-f7aa-2b52727de646@quicinc.com>
 <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
Content-Language: en-US
From: Nikunj Kela <quic_nkela@quicinc.com>
In-Reply-To: <82115165-6089-4214-b47b-2c2c0dfb8c66@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: J-Uq6g2kXow3YLM9Zhw6nWriAcFV8pL2
X-Proofpoint-ORIG-GUID: J-Uq6g2kXow3YLM9Zhw6nWriAcFV8pL2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_01,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 mlxscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1011
 mlxlogscore=840 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312120146

+ Linaro team

On 12/12/2023 11:01 AM, Krzysztof Kozlowski wrote:
> On 12/12/2023 18:45, Nikunj Kela wrote:
>> We are abstracting some resources(ex. clocks) under new firmware on an
>> existing platform therefore need to make changes in certain drivers to
>> work with that firmware. We need to make a distinction between two
>> different variants of the FW. In one case, some resources will be
>> abstracted while in other case, they won't be abstracted. My query is -
>> "should we define a new compatible string for the variant with
>> abstracted resources(in FW) or we should add a new DT property keeping
>> the compatible same?"
> Hi,
>
> Usually change in the interface or behavior warrants new compatible.
> Property would be suitable if the same device, e.g. same SoC component
> with same FW, was configured differently on different boards.
>
> Best regards,
> Krzysztof

Thank you for your prompt response! Will use different compatible as 
advised.



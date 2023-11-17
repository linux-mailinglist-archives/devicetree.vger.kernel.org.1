Return-Path: <devicetree+bounces-16641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCC57EF20B
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 12:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 60CA61F25A33
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 11:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2719BDDD7;
	Fri, 17 Nov 2023 11:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="HeFMVle/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5E6298;
	Fri, 17 Nov 2023 03:46:44 -0800 (PST)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AH9L9mh011878;
	Fri, 17 Nov 2023 11:46:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=ecUI9JuIauLWeBVWn9v2ZR+0RcedxEa+xTsulwzheXc=;
 b=HeFMVle/NlqXz5FY4eHdZ20yLQJnJQ8uRsLLugNrwy+7PT+Xx2pe+eAUHewYEOpxbDlb
 qlFWTO2MiNo18NQjNASt0w2OJ/BQZB4McBUy8edS6ZertdFkvbfeNuePsbjNhbf6cyWE
 mnhWy1zHKiEHrtqWX04FJmOBnjf8ewbSl5DVhCMg4fdqh/HVdsczUPj2fLeHP4dPnrok
 wPHcjStKO1Jkc6RelHojstswapARX35fIpSzrliyzSOimB/CAKDJZwom0ucz/O733uAs
 k2oS9AL4fAtGm96cQBWQJ+eCL70+tJuyjZuPu+TVnQXbTjQeYmhbr0QV14bgswWMT3ze nw== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3udkkutq8f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 11:46:41 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AHBkeCE015583
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 11:46:40 GMT
Received: from [10.79.43.91] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Fri, 17 Nov
 2023 03:46:35 -0800
Message-ID: <97216704-a102-532d-1039-c9342a19e2fd@quicinc.com>
Date: Fri, 17 Nov 2023 17:16:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: power: rpmpd: Update part number to
 X1E80100
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <ulf.hansson@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <agross@kernel.org>, <conor+dt@kernel.org>, <quic_rjendra@quicinc.com>,
        <abel.vesa@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <quic_tsoni@quicinc.com>,
        <neil.armstrong@linaro.org>
References: <20231117104254.28862-1-quic_sibis@quicinc.com>
 <20231117104254.28862-2-quic_sibis@quicinc.com>
 <8fafbba6-86de-4ddc-966e-48e2152f6b1a@linaro.org>
From: Sibi Sankar <quic_sibis@quicinc.com>
In-Reply-To: <8fafbba6-86de-4ddc-966e-48e2152f6b1a@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: OtIOi3b6YEbLCSunH-xh3XlfeknbkIgY
X-Proofpoint-ORIG-GUID: OtIOi3b6YEbLCSunH-xh3XlfeknbkIgY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-17_09,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 mlxlogscore=614 clxscore=1015 spamscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311170087

Hey Krzysztof,

Thanks for taking time to review the series.

On 11/17/23 16:35, Krzysztof Kozlowski wrote:
> On 17/11/2023 11:42, Sibi Sankar wrote:
>> Replace SC8380xp with the updated part number (X1E80100).
>>
> 
> You need to explain why. We don't update compatibles based on marketing
> wishes.

What we imply is that X1E80100 is the part number you would get when you
read out from a Snapdragon X Elite device in the wild, when it is
available and we didn't have this information when we posted out v1.

-Sibi

> 
> Best regards,
> Krzysztof
> 


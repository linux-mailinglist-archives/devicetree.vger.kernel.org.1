Return-Path: <devicetree+bounces-14200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC2C7E2A99
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 18:05:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F5891F212B4
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B3EB2943B;
	Mon,  6 Nov 2023 17:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="BtGTw+Az"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB3A15AF2
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 17:05:49 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E552191;
	Mon,  6 Nov 2023 09:05:48 -0800 (PST)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A6ARCgu025332;
	Mon, 6 Nov 2023 17:05:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=wnNHnFEMyfOZMGjEKUau1Yf64RRAah49EJ8lArNY59Q=;
 b=BtGTw+AzMmJD0qTvfHNn6fwP3qJXAUztU7Z/Kh4NguxnCxNaa+NlGiUPF3a3dAEI9fAA
 Xcfa4xWKpXg2gHB+dXaTvH3/etceFJ8eDTFKQnq607ecTKfbyXAvzXAjqnYYiTTYE0er
 dqh+DGb3TuW0QiZiAtX8/qoundcZ9+VVkvSLTmsQVHXhEhgWZJTQGTg074wWBbDgg3O9
 GLgPQ0igDhTMg2L/QtxMvPL1zzSXMJBBP5VT1kFVdoDQcGW1gQqkNj/MFPOVIdHp4LwH
 CKKYyLSes4Lh/kgvofkp++C2NafIdF/dqQ3JSzp3MSdORTbnXsO5HFl3ZU7CwZopJ06Y Zw== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u5efymwhy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Nov 2023 17:05:37 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A6H5aMk002573
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 6 Nov 2023 17:05:36 GMT
Received: from [10.71.108.203] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Mon, 6 Nov
 2023 09:05:36 -0800
Message-ID: <e2b73ea0-c659-431e-9275-88d1a98f37cf@quicinc.com>
Date: Mon, 6 Nov 2023 09:05:36 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH] dt-bindings: crypto: qcom,prng: Add SM8450
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross
	<agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David
 S. Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Conor Dooley <conor.dooley@microchip.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20231103225255.867243-1-quic_eberman@quicinc.com>
 <04707003-531c-4c58-af74-e770d22d85e4@linaro.org>
Content-Language: en-US
From: Elliot Berman <quic_eberman@quicinc.com>
In-Reply-To: <04707003-531c-4c58-af74-e770d22d85e4@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: o_DmlOkt3kEXJKMkLTRMgQjammDGuK-L
X-Proofpoint-ORIG-GUID: o_DmlOkt3kEXJKMkLTRMgQjammDGuK-L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-06_12,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=986 priorityscore=1501 malwarescore=0 mlxscore=0 clxscore=1015
 phishscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311060139



On 11/5/2023 5:03 AM, Krzysztof Kozlowski wrote:
> On 03/11/2023 23:52, Elliot Berman wrote:
>> From: Konrad Dybcio <konrad.dybcio@linaro.org>
>>
>> SM8450's PRNG does not require a core clock reference. Add a new
>> compatible with a qcom,prng-ee fallback and handle that.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
>> ---
>> I noticed this patch got missed while running make dtbs_check. No
>> changes to this patch from the original version:
>>
>> https://lore.kernel.org/all/2c208796-5ad6-c362-dabc-1228b978ca1d@linaro.org/
>>
> 
> I don't understand why do you send this. This is not a correct patch,
> was rejected. Different patch was already merged.

I see that 6.6 has

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/qcom/sm8450.dtsi?h=v6.6#n1741

but bindings not updated:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/crypto/qcom,prng.yaml?h=v6.6

I came up with similar-ish fix offline, then found Konrad had posted the patch when searching lore.
I didn't find any other patch on lore. 

I think you rejected a proposal to drop "p" from "prng", but this patch
doesn't do that and we stayed course with naming scheme.

Thanks,

Elliot


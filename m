Return-Path: <devicetree+bounces-11247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 492C67D4E8F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:07:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 796C41C203BA
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E35826284;
	Tue, 24 Oct 2023 11:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Z1/oGFXx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4D37498
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 11:07:46 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0124210C9;
	Tue, 24 Oct 2023 04:07:44 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39O9UPQH010513;
	Tue, 24 Oct 2023 11:07:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=zw1Vl4UXWdOGwHXgSaTvEAFKvHGzn9SXnQ7rMcUBl7w=;
 b=Z1/oGFXxhYyrv742Ee5ei8TgC+T6gdX4vB5oSqKlHrF2nHO+VacMfAKYH6iGi+cPudoi
 zaUULUnmLIBAmscQGIMlTzDWVPd8KkMPr4ZTWj+JiV0UoLwdkvq7vwQyLIggM+xfkWk5
 fGlUyDjAy1RN417iQV00QWKLvUuhN+rbmxiMf0j9+XDU9hhlFcFVps2ppJAT9KwWzyhH
 Zxz8DtqwPtq07BwYmAseo7kCUYQb9wRy/W0Jh5cJNTCxSgXopWBqQ4LNAWOFntSL39Ll
 th7gsKFFww4fB1SKurod+/LO480xC0F8Jw8lplBp8mYrulP0gFHgRFmNGi7uBfjXKMKQ Jg== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3twxa0hp3r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 11:07:37 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39OB7aTh014072
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Oct 2023 11:07:36 GMT
Received: from [10.239.132.245] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Tue, 24 Oct
 2023 04:07:31 -0700
Message-ID: <b8b6ea74-8e25-ecf4-1ab2-0d4ffca9e743@quicinc.com>
Date: Tue, 24 Oct 2023 19:07:23 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 2/5] dt-bindings: sram: qcom,imem: document sm8250
To: Rob Herring <robh@kernel.org>
CC: <robh+dt@kernel.org>, <quic_tingweiz@quicinc.com>, <agross@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <andersson@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <konrad.dybcio@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <kernel@quicinc.com>
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <1698052857-6918-3-git-send-email-quic_zhenhuah@quicinc.com>
 <169808266064.861239.7420927840211548252.robh@kernel.org>
Content-Language: en-US
From: Zhenhua Huang <quic_zhenhuah@quicinc.com>
In-Reply-To: <169808266064.861239.7420927840211548252.robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: HUIbpJlwLIf7gHQHfPoFEOGN0AmccWs0
X-Proofpoint-ORIG-GUID: HUIbpJlwLIf7gHQHfPoFEOGN0AmccWs0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-24_10,2023-10-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 mlxscore=0 phishscore=0 mlxlogscore=885 impostorscore=0 clxscore=1011
 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310170001
 definitions=main-2310240093



On 2023/10/24 1:40, Rob Herring wrote:
> 
> On Mon, 23 Oct 2023 17:20:54 +0800, Zhenhua Huang wrote:
>> Add compatible for sm8250 IMEM.
>>
>> Signed-off-by: Zhenhua Huang <quic_zhenhuah@quicinc.com>
>> ---
>>   Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/sram/qcom,imem.yaml:56:1: [error] duplication of key "patternProperties" in mapping (key-duplicates)
> ./Documentation/devicetree/bindings/sram/qcom,imem.yaml:73:1: [error] duplication of key "patternProperties" in mapping (key-duplicates)
> ./Documentation/devicetree/bindings/sram/qcom,imem.yaml:120:1: [error] syntax error: found character '\t' that cannot start any token (syntax)
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/sram/qcom,imem.yaml:120:1: found a tab character where an indentation space is expected
> ./Documentation/devicetree/bindings/sram/qcom,imem.yaml:120:1: found a tab character where an indentation space is expected
> 

Sorry for my carelessness... Will be more careful next time..

> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1698052857-6918-3-git-send-email-quic_zhenhuah@quicinc.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 


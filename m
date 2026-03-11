Return-Path: <devicetree+bounces-274140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DDEJwp2sWnovQIAu9opvQ
	(envelope-from <devicetree+bounces-274140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:02:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 62464264FBD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:02:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 758693010BB6
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FC8D364029;
	Wed, 11 Mar 2026 14:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K8e6qE+j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZiCGWbOk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB57F3148B4
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773237703; cv=none; b=RKlKBMAOUXx2qJ0gz58UnoY239JFn+oVeVzT1P5VUHCRyzl5+R47WQlNeRQhLmMfPoZHl5A66qokPv7RKs1U2+dDWixh/8lVdA8Cy7F8GA1MRhNn1s8ppFVxxFqS5mzvFFgS9GkYW3b6jjQ66AnpbB3iS2Im8JskBkNi0Lo7tw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773237703; c=relaxed/simple;
	bh=Jbtw2Uk8eiOeHgDdNnXiRm/CuTyoldDGbU0naB1H24U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NmgjB5HHkjVPtXqL1oJh7NBGdWuhDoM9+QUa7t/02BlRhCsoE1HWmusnqywPDjPsLaX4rEdrGaoVWvzh9/+4Thxe+GRNFQdFJIM59E8f2qNkJCAf6ZfsLU2t78qLxdHLkKB7oFfux+XFsUl5APt+E/mZ5FxjInr6L1t6KZ5FLPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K8e6qE+j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZiCGWbOk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B9evYQ249216
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:01:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uVrGHBg9vd9p0galQ9QMrbdXo/eNjVOq2v7DmbRYaCY=; b=K8e6qE+ju59THJeA
	J7CePapMUu/mw1+j/TXTspVaDiS6PguUmGY6NaQYxPPv+cN2vDf3ZbcPw34zg58R
	1oOIAT7F1Eo+n5AW3f+Rsi+2yTeUu7jQS5IOfeiXI96I2kmz6YZLdgo0EVFN0rBr
	w3CK28ltEtrpmGIGvc+fslWgTQLtz+hOt0vGnLLgEpDYfaCeHRpPEj4FJhx6gnP+
	hLLDwZKZ+xDpIKqcTek9522l2IZ/bKOsgkWVX/W4RidvsRp0JZOIe4s1g2m+BzgH
	xyOnqGwdr1xIQcSEm3m6o2/HIaZug+NaTEjLfOzBS+YFqUhuhZoqxP34yEtYX4og
	2fl/Lw==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqv13uaw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:01:41 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-4173d5e0241so2699611fac.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773237701; x=1773842501; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uVrGHBg9vd9p0galQ9QMrbdXo/eNjVOq2v7DmbRYaCY=;
        b=ZiCGWbOkPakHqcNvLzWuDMYPAx39Y6RkZt136HZvPxJrx8yPldOdD4Rq9N0M6UbcQM
         Iw4d5IA/lO9i/xgDQrZnHvtz1a2sCMqgnYx85O7hMefhaBb6sPjBsuMcgPbVtaqyyfj2
         NjhuQlnfu68lkYFSohBy9BF4NQywtC9MoLr7PePKBmBU/kdDMOOKGSD4Wyp5Bo2XGNCP
         bb7QSHBTBh0fBBTMjRFYMKu5E1Xm3DNuQyrDEohoUCBj7lmZ/GN2A6ZD5iIEg1qlMC8o
         QLxRqe60WMKP8Ptqe6WRR1/5MPS3c2vwCA8zx8LJqM3TjcgvdW6oA6Ytgoi59DhhdQAk
         Tvwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773237701; x=1773842501;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uVrGHBg9vd9p0galQ9QMrbdXo/eNjVOq2v7DmbRYaCY=;
        b=Z20xpcgVSCTWF+fb8T2z0SAGrHZ9csHWUL+KJ4ymWeiopQN5caFUsG7G4ntdBAAnsZ
         jYIPQgZLXo5lqLL7uaLbC3M7jNzVsEsa+ayi+OfYXFOt0Y9bAj0jbrR3jHJw6rxpDTx+
         xvCa3v130tb9REaQliXDNAbKLYRaoxGmamGAwrKqYZR6TjFJ9PbV9vhlG1zs6njRadYP
         zsiheA56bb/coY0MmF7VGijv+rK3w9PHWOVwekVxMDWemnfBWeZ7hlpwLNWRbyks9bes
         +TGovbaYHKIq7Q8icp10BKPPZyxVlOGzRmwdTNdRJzlKDlMJyCQUCAfXBI+YDau70xU9
         3/JA==
X-Forwarded-Encrypted: i=1; AJvYcCXDN7uV968lZ/DgxoNs4tcAm3XyMhs+ox1fTV+SadTo5WCCjrj4UpvehF9ad71ieZEr8Wlh/6m5TFZC@vger.kernel.org
X-Gm-Message-State: AOJu0YxgwR5sbqdsARfyp38vrXH6nw0WyZTh2EvQqsE286hIAtMzFDew
	8nfTdzNz1hCDyayzoriZWOAfQGCkvWtmNMWF5motqpLURfCnoZBaJtOiJAIJZdnMZvoxKRlK39i
	VxDK6M/bkCPrBwj+eLdHVzqwnT2JysR165U612J4rE7+HnZqy23NqmOAbG+km8akg
X-Gm-Gg: ATEYQzwLAX5I6wHQnWP+SFQRMOEtZXsEGQWn1JkTeiWvQvBn+tx0ceqiGuUeg1mfwDD
	WTx7fnrsHWLXfOijMZ8U86zi0uu7SW1fhso1uh5yQ3Fz9m7bs6hP90DljYpN85lDkHWBcc9dolB
	0jYMpXCENnSz3IiOcxMMM7xpVQlE3FK6eJ1bRcwvLrMiZ/seGsq+OWhxwuLTywy3DOyZPq/enk3
	lWsIoXUKBZXbZMeulSFQDIXkgn6tJoQpMBuk9b79Gy/24IrjTxTg1sHgTizuCZYl9twQsxKiVld
	ewBvEOVZASmtmUClVXeYCkKi9I1OHB1HliVRsEmyNUwNqT8lrx4pPAWdBNqt9MAhlBRtgvg5+vZ
	AfE0KrUqnZ/1M/qEpxq2xqfde5i6g+NG9m+ha3vpJcsOMeWMUy0ihCk3I7TeAatlj+GypSSk2ux
	EumB4=
X-Received: by 2002:a05:6871:3504:b0:417:3387:7fe3 with SMTP id 586e51a60fabf-4177c44be64mr1314229fac.0.1773237700299;
        Wed, 11 Mar 2026 07:01:40 -0700 (PDT)
X-Received: by 2002:a05:6871:3504:b0:417:3387:7fe3 with SMTP id 586e51a60fabf-4177c44be64mr1314151fac.0.1773237699289;
        Wed, 11 Mar 2026 07:01:39 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972e14c2d6sm57645666b.32.2026.03.11.07.01.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 07:01:38 -0700 (PDT)
Message-ID: <f7b68467-493b-4794-9b9b-76cc9cfcd2df@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 15:01:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: spmi: qcom,x1e80100-spmi-pmic-arb:
 Document Eliza compatible
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260311-eliza-bindings-spmi-v2-1-12783c6759d9@oss.qualcomm.com>
 <9b8ea7a8-80bd-4aba-89c3-6dbe9d43c41d@oss.qualcomm.com>
 <mfwrqojtcrn5ayrlqety2or5pcyl2zbd6ykk6wtmdvdrnu4teg@egqdd3nwghbo>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <mfwrqojtcrn5ayrlqety2or5pcyl2zbd6ykk6wtmdvdrnu4teg@egqdd3nwghbo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExOCBTYWx0ZWRfX1yweGl1AWlpy
 dxU70Qno1e3YcOCbtcReAadYAzJ5Q69quKsBWp1D8MagtZF8YdW4JsYbDLUMGD+AwP8coVFbRyD
 GkfEaR+HXcVXA2PdPHmBK8nQdzYvqJCZgQjvtPHQcTGmauvQn3NT+uRL1Ama/zFa329h8mJ5Odp
 2lP1KNWazyxn55fg5gEOQdqxKw4evm5ydlqhJqSGVUq44zshv8JqnOGa//TveMPUk8clT+DniRB
 ErHb+lgnmJcZjuGvlIO5ezCSdyGGPa2IQ2A4s3Dl8qWmXmA8zp78Y0ggvZBkDEcWypV9IhAwFt4
 +XFV6ksFaTdmuZn/oc9wy0x5MVPGi557Yq5iBkl+xQx9q7XvsfSZA0TB6ZPAfY7jvqy7nPmqVAl
 S0TOBrWA81XSSMaq0VraWqM2vKEHwqd1cMbwRcnBrxdHRiy2Qx6LWMRTk3wm2jPTAA+ofeTbTBQ
 lBDm8AAGayZhPKVDXVg==
X-Proofpoint-GUID: pLvekw3e3clKOJ3aQ9sVdIZWzos9xmXf
X-Authority-Analysis: v=2.4 cv=S5vUAYsP c=1 sm=1 tr=0 ts=69b175c5 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=bLizU8iuE--O0T7lCBIA:9 a=QEXdDO2ut3YA:10
 a=vh23qwtRXIYOdz9xvnmn:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: pLvekw3e3clKOJ3aQ9sVdIZWzos9xmXf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110118
X-Rspamd-Queue-Id: 62464264FBD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-274140-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,msgid.link:url,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[oss.qualcomm.com:query timed out];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/11/26 2:57 PM, Abel Vesa wrote:
> On 26-03-11 14:43:27, Konrad Dybcio wrote:
>> On 3/11/26 2:29 PM, Abel Vesa wrote:
>>> The SPMI multi-master Arbiter found on Eliza is version 7.2.0, yet
>>> driver-wise, still compatible with the one featured on Hamoa (X1E80100),
>>> which is 7.0.1.
>>>
>>> So document the Eliza compatible and allow Hamoa one as fallback.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>> ---
>>> Changes in v2:
>>> - Instead of reworking the whole oneOf for compatibles,
>>>   add Eliza similar to sar2130p.
>>> - Link to v1: https://patch.msgid.link/20260311-eliza-bindings-spmi-v1-1-1a20eec1179e@oss.qualcomm.com
>>> ---
>>>  .../devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml          | 3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
>>> index 08369fdd2161..4152469b3880 100644
>>> --- a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
>>> +++ b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
>>> @@ -23,6 +23,9 @@ allOf:
>>>  properties:
>>>    compatible:
>>>      oneOf:
>>> +      - items:
>>> +          - const: qcom,eliza-spmi-pmic-arb
>>> +          - const: qcom,x1e80100-spmi-pmic-arb
>>>        - items:
>>>            - const: qcom,sar2130p-spmi-pmic-arb
>>>            - const: qcom,x1e80100-spmi-pmic-arb
>>
>> I think Krzysztof's comment was meant to suggest you shouldn't add an
>> intermittent items: entry for a single const (lone-x1e compatible), instead
>> passing:
>>
>> oneOf:
>>  - items:
>>    - enum:
>>      - foo
>>      - bar
>>    - const: x1e
>>     ...
>>  - const: x1e
> 
> Oh, my bad then. You mean like this?
> 
> @@ -24,10 +24,9 @@ properties:
>    compatible:
>      oneOf:
>        - items:
> -          - const: qcom,eliza-spmi-pmic-arb
> -          - const: qcom,x1e80100-spmi-pmic-arb
> -      - items:
> -          - const: qcom,sar2130p-spmi-pmic-arb
> +          - enum:
> +              - qcom,eliza-spmi-pmic-arb
> +              - qcom,sar2130p-spmi-pmic-arb
>            - const: qcom,x1e80100-spmi-pmic-arb
>        - const: qcom,x1e80100-spmi-pmic-arb

Yes, but let's wait for krzk's response

Konrad


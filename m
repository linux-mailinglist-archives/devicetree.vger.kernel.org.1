Return-Path: <devicetree+bounces-277565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGesD6N9u2k2kwIAu9opvQ
	(envelope-from <devicetree+bounces-277565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:37:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0F62C5ECD
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:37:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF47D3092465
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7774E370D62;
	Thu, 19 Mar 2026 04:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lclRnoxX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bxr7WSla"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D402BD0B
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773895070; cv=none; b=A0i1RLBrLbH4x0TNrTlt0eIVUD98KufBN8p9qY4NJeTDNcuXzwMGzu6M/ZuOxA6OKhlRL1Z7uMRNxeNEDn3NODFVAZSmJ9nLf4ENjO9Vu+acfkyF6J3XdRNKajKP8TnDsmXsFQos6lT0oSIVxNU9woXcM0Zkf6bfzNs3bJQOzUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773895070; c=relaxed/simple;
	bh=cmMSZeDXqRan3ei9vzz6JIOlqcGgmceZeu86SUGwXMU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HoCbn7JpOhQSx6FK9ROUxNaaGJS0mpnKzys/xp4VKIpfhKFmyXculisF8rQPTn+XZsbnTI5tOBZOgye3RzGfYSoSTZD8ijim9DvxGDO+ZFaoEnEsSDdBhElWoAk+dpLp/6dscsQWrgtDvBebxgMdMTgol0aiAbuykYY8YZBuFeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lclRnoxX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bxr7WSla; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J0F3Qu4024083
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:37:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NQjq1Ng9PQOrFTaY6ozNnjl/amsYw4NBu3i1KeR0fF4=; b=lclRnoxXVTOj6Tkr
	2FCrK3KP7gwihK3aZfuvqHKc6l1cx8zQuSkj+CuI98dUg+3MgC340O0yN9lqVDUn
	/ofhgPZkhSF//GgEiMFsjKMPw9F+sj3iHS1gmA8mwxFVu+hQuIgXGtG1X0qFLQI8
	ioxi6xjmoyg3+sIWIF0a/umrHO01mBK1zLVy9hFY5NdNfwCJ2R3Yy0mx32M+vmd6
	15CTj1oVNT9qgoGDo95I7ck3ej5iWGINg3q4tIlQ5moRo+ZmYoK+wsoxBeYonULy
	aH2cQs9JIoZbqv2rTEbRcZQT0hpIalHd1rUBLEp1y9oXLNuQbp8fab/qcFhdfjzT
	z9QUkg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyy75t3d2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:37:47 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aec07e8aafso4045175ad.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 21:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773895067; x=1774499867; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NQjq1Ng9PQOrFTaY6ozNnjl/amsYw4NBu3i1KeR0fF4=;
        b=bxr7WSla8rYsIeYLrXTflXAeeip4XnmGZNyUkPmt7aS+fM44Gf6FdM8mEsen7fLb4D
         9T6IuvUTgLhsYsuT4nFSPDkjQXdIXpoZoDTDLFcmd0BHMIL1ujEw2gmSv6i45iVM8f4Y
         3Q+YRpwf9AsoyucXzhYcY24tGSNY8DjKJ/imyp4ls2lRYF8UnuNmRl0UGH3A84hnsUkB
         4U3TqQeXXTGNx01TaMm7zlniGToYXVu6ItkSg3JDTfEAplusH6cw623jOtYGn/sVp5+J
         LsU1Vb8E8rLGZfQoJ85FhpgvqWC8T5OuSo1Ng00XERDxWCg2uXJiDLIWtzcsHYLFSRL0
         P5xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773895067; x=1774499867;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NQjq1Ng9PQOrFTaY6ozNnjl/amsYw4NBu3i1KeR0fF4=;
        b=b92eefxZ2AF3lRucgM+FeacINlf7FsNnIMMtYQn9284vaIlulXiHL7uJahaXM8KtvB
         yHvy+Gss5aymiCdDKNHAApNbBK6gTrEM5HsECiQuuvok++Qcd4dTJqep2DUuPe0WslOC
         eooLDTw/4LH3VS2KTPTWLSOtXDjITL8zgXF735pjUi6fZxR5W3FSXc6jUNKGQ9d2MZxt
         /Zhqnm44TcrHnmqkUyUcS5CY0we6J3Oj6HZUig4mPr1uomWahyTSnrDn/XqaQz0quymv
         8to7E+5BfISGF+Q2cHbGJPZZfwQKN5S1kRCnHnYf5w+6+A5NWc/oImdjfwp7eKF0WeJx
         NfDA==
X-Forwarded-Encrypted: i=1; AJvYcCVll4WG63PYHv/p/Pywl7iofQqJLOxiS7JL35KoWfmBVPiSnQeeJGW3SKEDnuVuqja/aYBFXaET6NrI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl1Q1N1DisTwmB6bwZbUv+iTN4IsH6guKEnxCEZViG3uzIDIfy
	mz/pmjt4bJix9Rsa81L9gkUTglzcvFMo4DlOCNBvjOYNYp2Mki2B6qYgh13vdcA5ZfM7O9LuQ/W
	wj0SYrhkehw9f83G2MbSBiIBU2Yup94dvgU6M28MZsmko5U4VbH/JaedbSDWjpSNJ
X-Gm-Gg: ATEYQzydPYgwcYPwCP5AN/MQlcuGmDoRRK/fXfAfdFD+iKZ6RieyEHQq7O/UZHRCR45
	caxMtyCRSkE+crkwhDHFugYq8dzrZIqYKxpPNKJzsqJrG0iSskkEiv8T6S4r7nS7dCT6Zp83TvG
	EFbvDVc/ZSBdahimRASUrRAjXQ3kBQGgHfMM60/nBFgJXAlcZTSHAiq/pPqAb09FhjZZurZmnME
	oSou8gwIG9JWj/XyOXZN1QDn6R6ZuUVLwyYUfvaVf8bzHFZ09z+QYnO+471YS3TS5LCd2iSDZrn
	ZHFlwipdqF7ErJlw7267V1vSg4IArbZRuft2V4Qpo0SQnvEQjVIK3vPtsb0wxWSyQuj3BdQepzE
	nAnaIFxrP15clDciBSPq8EH09jimezCGRZwoV5xcKFyskepXtulECwPe31hjtSjKRqboGU/OpSx
	rIJ8eZrwKhpAUEVDuK
X-Received: by 2002:a17:903:18b:b0:2b0:606b:6fd3 with SMTP id d9443c01a7336-2b06e323679mr61201195ad.5.1773895066807;
        Wed, 18 Mar 2026 21:37:46 -0700 (PDT)
X-Received: by 2002:a17:903:18b:b0:2b0:606b:6fd3 with SMTP id d9443c01a7336-2b06e323679mr61200995ad.5.1773895066311;
        Wed, 18 Mar 2026 21:37:46 -0700 (PDT)
Received: from [10.133.33.168] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e627132sm45911235ad.74.2026.03.18.21.37.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 21:37:45 -0700 (PDT)
Message-ID: <e7d29f1e-a5de-4e5c-a94b-2248a83c5451@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 12:37:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] dt-bindings: remoteproc: qcom: move interrupts and
 interrupt-names list out of pas-common
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski
 <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
 <20260310-knp-soccp-v4-2-0a91575e0e7e@oss.qualcomm.com>
 <i57ns2ythkhvizdceqks3zaojo73rrdbscjdat2fgeajwkuvyd@rqmvt5b4enyl>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <i57ns2ythkhvizdceqks3zaojo73rrdbscjdat2fgeajwkuvyd@rqmvt5b4enyl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDAzMyBTYWx0ZWRfX2N6sD97/ULB1
 d3BDCb9gxnfELIws5hudgdM1Dx9PkK9jjlJMYEaAo2vDkFOIZPyZ19zkYJ95AQIpn7BmHpcDS4V
 nJCA1TfvNsj4pTCGUVYBQEUhENTNS2DZhn3HyUYAArmwFpo1ShgejvxrZ8fe5EHnBp7oe+zHUck
 OSGEatapxZrFBAwCOBpt1OMklvtkbPvLhUY4ZGac44B7uf1lLF2G58hLu8aT7Umb+OuKBlfb9JJ
 tVLsWghMBX+mOFaHmTWRQvfNRbM9FyFrqSFZQgUPYwjpICswa4yZjgXji7LXHimgAtXMzOx70kY
 EFx1vq+nkKYQZdLofJ1koA1Zg5/1xLZyVyDWkuiqGudyOCbpV9Depc63vQhh3laqp63ghcCHcbj
 EV547ncdnVA+SCKlLjLFbt8wd/+bsg3EAMdk+HMFeeEeOBaPSbnIO0SvtbzmcW7c+uJ7iFPYzYX
 TGGpd7kTNAGakVjJqTw==
X-Proofpoint-ORIG-GUID: cGCBUIbuPQCSpgL4_I4G_fy8IydidSXC
X-Authority-Analysis: v=2.4 cv=A7hh/qWG c=1 sm=1 tr=0 ts=69bb7d9b cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=zgz-R09rLuGx3neTn8MA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: cGCBUIbuPQCSpgL4_I4G_fy8IydidSXC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_02,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190033
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277565-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DA0F62C5ECD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 9:38 AM, Dmitry Baryshkov wrote:
> On Tue, Mar 10, 2026 at 03:03:18AM -0700, Jingyi Wang wrote:
>> Move interrupts and interrupt-names list out of pas-common since they
>> will be redefined differently for Kaanapali SoCCP.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/remoteproc/qcom,adsp.yaml    | 14 ++++++++++++--
>>   .../bindings/remoteproc/qcom,milos-pas.yaml          | 18 ++++++++++++++----
>>   .../bindings/remoteproc/qcom,pas-common.yaml         | 16 ++--------------
>>   .../bindings/remoteproc/qcom,qcs404-pas.yaml         | 14 ++++++++++++--
>>   .../bindings/remoteproc/qcom,sa8775p-pas.yaml        | 14 ++++++++++++--
>>   .../bindings/remoteproc/qcom,sc7180-pas.yaml         | 20 ++++++++++++++++++++
>>   .../bindings/remoteproc/qcom,sc8280xp-pas.yaml       | 20 ++++++++++++++++++++
>>   .../bindings/remoteproc/qcom,sdx55-pas.yaml          | 16 ++++++++++++++--
>>   .../bindings/remoteproc/qcom,sm6115-pas.yaml         | 20 ++++++++++++++++++++
>>   .../bindings/remoteproc/qcom,sm6350-pas.yaml         | 20 ++++++++++++++++++++
>>   .../bindings/remoteproc/qcom,sm6375-pas.yaml         | 20 ++++++++++++++++++++
>>   .../bindings/remoteproc/qcom,sm8150-pas.yaml         | 20 ++++++++++++++++++++
>>   .../bindings/remoteproc/qcom,sm8350-pas.yaml         | 20 ++++++++++++++++++++
>>   .../bindings/remoteproc/qcom,sm8550-pas.yaml         | 20 ++++++++++++++++++++
>>   14 files changed, 226 insertions(+), 26 deletions(-)
>>
> 
> 
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
>> index 66b455d0a8e3..cb0a61fc301d 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
>> @@ -48,6 +48,26 @@ properties:
>>       maxItems: 1
>>       description: Firmware name for the Hexagon core
>>   
>> +  interrupts:
>> +    minItems: 5

Hi Dmitry,

> 
> Initially I stumled upon this (and dropped a note in the other email
> that I noticed a problem with the series). This minItems looked like the
> underspecified property, buf after checking it seems that this schema is
> written in a way that covers DSPs having both 5 and 6 interrupts.
> 
> So... most likely the schemas for DSPs might be reworked / optimized to
> cover modems separately from the other DSPs, but it's a separate topic.
> Let's settle on the SoCCP topic first.
> 

Per my understanding, we can continue with the current change for soccp binding?

Thanks,
Jingyi

>> +    items:
>> +      - description: Watchdog interrupt
>> +      - description: Fatal interrupt
>> +      - description: Ready interrupt
>> +      - description: Handover interrupt
>> +      - description: Stop acknowledge interrupt
>> +      - description: Shutdown acknowledge interrupt
>> +
>> +  interrupt-names:
>> +    minItems: 5
>> +    items:
>> +      - const: wdog
>> +      - const: fatal
>> +      - const: ready
>> +      - const: handover
>> +      - const: stop-ack
>> +      - const: shutdown-ack
>> +
>>   required:
>>     - compatible
>>     - reg
> 



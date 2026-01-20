Return-Path: <devicetree+bounces-257417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHbYGxQccWmodQAAu9opvQ
	(envelope-from <devicetree+bounces-257417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:33:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D555B51F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4B7B16CB710
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 13:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51713227B95;
	Tue, 20 Jan 2026 13:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nOC3m1f2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AyFqQsUN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623D5223DC6
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768915111; cv=none; b=I1jGTft5/pjE/YTHqx9sK4YWy0GwMPZsKHhH6nK/4oCLUjwAoB5Oua+/qGIJ+mU9oCE8M17YEMgW/ddFpLDECciTHAdi5TA9bRDv7xiBGx1NcvAqGM1SSCue9hzDEFQN0+McdVvphoF4IR7PubadxiCl+/PFeE9oviePV2va8B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768915111; c=relaxed/simple;
	bh=wVx0ewCEj0eGt3gTjSXza66ZpDVawBTHYhsNkFd5hfQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UP+BR7OIuVqguNonqSpO5/KpHderfkKtiOOKbd0yoEFm5LapoiR7L4q3snJzEp1Xw7M9WDk2WdGBjZoAeqsfXgxfOZEQ4rqPqw3L0L8hEFcIoUsW1+hLzmhU4zm3QDIgNhYgYs7aoVnzRcxhu4s3HrflSH3fyn4k1MdRpx2PDmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nOC3m1f2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AyFqQsUN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K9pcfL1347301
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:18:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SldAAXYyWL4PsEQXU1+h4WL4rjsnsAilMTgilthX8fs=; b=nOC3m1f2KxH4Vegn
	Dk77+Uz+uHp2Qudke3ybOyykc8ZkbvqSBeucu+o+3/jH2vGY2AIMqJ+hJynClh5B
	YKDSfInbSDjV/2UsiAjBD4G67/WKCY7tAcIJCV+i5b5BImZqWL2AYNd/YOw9ACQX
	BGEEhaL1L6yuDIFsjaE+BaitftTbk5wiNrUWziELmyp2VlK+NPUxUi0VV/DnNjuD
	3F56DJB0H06mEwZ3bb4m6a9VnbmdU6gVCULPf5EyEpq4+J4b2mBxwh+aK7JPw49+
	g1LzaaCt7MAn8M2slakSEB2lUVyELH1MW5gMHG113/kPR1MJM/sOskrDl8dnPFD1
	CNUnpg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsnpdkbqq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:18:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c523d611ffso49344385a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 05:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768915107; x=1769519907; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SldAAXYyWL4PsEQXU1+h4WL4rjsnsAilMTgilthX8fs=;
        b=AyFqQsUN/ftR1Cv6tp1VkvsLI+ykske5pI77WGQFcWyGOfFWLITre9Tt4kSzpBk5OP
         AQZWwfrksiJFJAIXdoP/5lm0CcLEjNIqyTqGanF0GWB6aQRk6csyD5potkhvjwpO1nas
         d5MEJ/1pFsTnfcA4qTEkCkPMBXpfC9rieGVFhFZsJEVeTO0rizIZablDHn6s5SrSQ9B1
         aHjzIicgKoLANmyQZ53Lu1vu69OBiZ9NYj+pDzHCCeBsYu03wlNCZ1+SLwKwA8A9KEGy
         i6MB4PZ6rCoGYCxI8Y7Lr7j4gEgLqjRtQIA/r8/oRxTsO/z6UN/nQFWtv0LqpjPvvZFh
         R2/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768915107; x=1769519907;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SldAAXYyWL4PsEQXU1+h4WL4rjsnsAilMTgilthX8fs=;
        b=JJ+UBq3tHy0eDWPYy3wHl5QY2FQ6hgusPETzFYUQP/tQ13PMAkY9SYym9Avae6rYam
         FELEEJwsTZXM6Up8DPimq1WrvUelNC9T/UYVD+l+6jQol5gtC3qiqCT+8qr7m31broNr
         xnilAhUobLeUkyoEVK34tOrcaHPzjS2/M4cswXX1rK5IxG7LGjOg1BHv7fUAy/Edoh4A
         rgpuWSIRK3Zf/WtJa5lgy1CughQt2ivAA0BlVnUr48qrCKtaNAXfZoLXWHD4c7Lrbkmn
         q/wqTqsl1pUT2jlGYFY19yMRP/jkYzlZOKOPIkq90LlMaTA8wqeAhXw1s6YWVQswKx1C
         Bb3A==
X-Forwarded-Encrypted: i=1; AJvYcCVeUUIY3PQ9GDbSKLk0OM4d3FUbX3WRKtb6grJ/A/+zJDssy2OXG6hvgc24r0wd6ff04jnqGTJ2Zc8r@vger.kernel.org
X-Gm-Message-State: AOJu0YxABkPf3bz2/CaKopjbDCswCebUzEWbmVK+/7DMtaOYVIE4SYTV
	JnGy251G8UvVbDGquHJ6lIE5j/TEpr1bFdd7a/CaaXCGCQ+kxn4/3unHixFepM5xjdLTVEhbbNx
	O88tFLMT6wtTYgLJteIcj8g9rFd7cMedI/uG7jOafcbEwTNra6YWNTIlJ4iMfENFC
X-Gm-Gg: AY/fxX5oUDrsL/I3dQSwJY0WKwy4k66WFb0J99E5f68L8plg8ej/q5nUy6vZRNbmLfy
	FwiqPHV3G2zG6/Zck9glcBQ4HhBniogrHA7+TAraaz2WGHGJ5rq/nR1gmWaYEkb0fMRG1XmjhET
	QkiwaK/wTdyCb9J5zcPlUbuYMQhqiXtBmspCKjlFfY6l7g8+Sei4ilDurQvwNGtk/RuNtu34SHC
	HnSWNIV5Uw7NTCavzrsH4YVdJsZxWZ9mFUe/bXZvV3qdBuxNv9KAs+hbRiu3DfbJ1UQ+jDPyK+F
	cJ2jeiet+ZY/QnAbm4dbR+n3z/bZzTa44nbUb8s9jUPoJCdo7mpHJa9w5Wvn1VCFwbe0iTnAyg8
	C6YcuCoTOkm7HkHheykBvQXOjvYICKfI7C13KO9TYMUvxWDIPok+qeP26S5SGicOjvzo=
X-Received: by 2002:a05:620a:298f:b0:8b2:e19c:67cd with SMTP id af79cd13be357-8c6a67b1298mr1491843085a.9.1768915107353;
        Tue, 20 Jan 2026 05:18:27 -0800 (PST)
X-Received: by 2002:a05:620a:298f:b0:8b2:e19c:67cd with SMTP id af79cd13be357-8c6a67b1298mr1491837585a.9.1768915106861;
        Tue, 20 Jan 2026 05:18:26 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9763sm1330649066b.35.2026.01.20.05.18.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 05:18:25 -0800 (PST)
Message-ID: <cb2430f2-8601-4c72-af6b-10f1ff16c188@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 14:18:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: i2c: qcom-cci: Document Milos compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com>
 <20260116-milos-cci-v1-2-28e01128da9c@fairphone.com>
 <20260117-obedient-galago-from-eldorado-8e0ba4@quoll>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260117-obedient-galago-from-eldorado-8e0ba4@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NtncssdJ c=1 sm=1 tr=0 ts=696f80a4 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=ezRqCCqFh2AFBysmAOIA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: qSTsyV6pR_WPosjWpfQfKEUKXQP3jOFJ
X-Proofpoint-ORIG-GUID: qSTsyV6pR_WPosjWpfQfKEUKXQP3jOFJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDExMCBTYWx0ZWRfX3hrtlQRSc4Ww
 8tgOWg90E7fvEanwuHtOqOD+QXMmNBsLS2ueg0jWDIlYCgNyeNhmdZAzLIYyFz2QIs8S6nLiCc9
 mzwgPp6IiJcEhte/lNqxuS0Se0MaG7sTn7x+QFaJ21EKjo8fGaXEDyx0VDpBgNIVyMGTzMrD1og
 9MEN39lvWheWtucLZPmJWbJoFu2vgaXfWh50Kl2SjIdpah7TEHiP5gs9D9SVvbqM0bjm2ttYLfZ
 tTOZujTpfVkNa0+PFoxdH169V2vJpBsMQSPNSIf+LkQKAaZi/EvYXdgLhMjab3keYEAToOGYlNb
 /EhL5juezPo2OWeVjAYWsQtDsCKVLBRgm83WPb+TAZEasxzhJyCjnkw3s8aJz0r0xsYr5pf09qa
 3IvLH5ZV2XhugXb9eQvVegRCksc6LSW/Hhr2kPhrvR9wVqpK825NHPB3ehcSoEsr48I5/H9vw3H
 J5q8QdUXmMHBoteCxhQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_03,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200110
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[29];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257417-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 10D555B51F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/17/26 12:54 PM, Krzysztof Kozlowski wrote:
> On Fri, Jan 16, 2026 at 02:38:56PM +0100, Luca Weiss wrote:
>> Add Milos compatible for the CAMSS CCI interfaces.
>>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> index a3fe1eea6aec..c57d81258fba 100644
>> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> @@ -27,6 +27,7 @@ properties:
>>        - items:
>>            - enum:
>>                - qcom,kaanapali-cci
>> +              - qcom,milos-cci
>>                - qcom,qcm2290-cci
>>                - qcom,sa8775p-cci
>>                - qcom,sc7280-cci
>> @@ -263,6 +264,23 @@ allOf:
>>              - const: cpas_ahb
>>              - const: cci
>>  
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,milos-cci
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 3
>> +          maxItems: 3
>> +        clock-names:
>> +          items:
>> +            - const: soc_ahb
>> +            - const: cpas_ahb
>> +            - const: cci
> 
> Same comments as other discussion these days - I guess that soc_ahb
> serves the same purpose as camnoc_axi, so this is just last entri in the
> if:then: blocks.
> 
> I really find this binding terrible - around six names for AHB - so I do
> not want another combination...

I dug up the CCI doc, it talks about the CCI having a CC_CCI_CLK clock ("cci"
here) and a CC_PBUS_CLK (AHB interface to the rest of the SoC).

The CAMSS TOP doc (for Milos specifically, but I would assume there's a
pattern) says that for access to CCI_0, I need to enable CAM_CC_CPAS_AHB_CLK
and CAM_CC_CCI_0_CLK. CPAS is a wrapper inside CAMSS that contains most of
the programmable IPs on there (notably not the CSIPHYs, at least not on this
platform)

It further mentions that GCC_SOC_AHB_CLK is required for *any* register
access within CAMSS. Perhaps it sits right in front of the xNoC-to-CAMNoC
interface.

This only enforces my imagination of CAMSS being a fully contained "bus"
(perhaps somewhat like AxNOC on 8996 represented with a simple-pm-bus)..

+Dmitry, myself and a number of our colleagues were deliberating how to
best represent the hardware going forward and I think we at some point waved
the idea of putting every camera subdevice under a "camss: bus@ {}"-type node,
which would hold the reference to the TITAN_TOP_GDSC. This seems fitting for
housing the SOC_AHB clock as well and therefore concluding this discussion.

Konrad


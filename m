Return-Path: <devicetree+bounces-265196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wET7BBY7jmmeBAEAu9opvQ
	(envelope-from <devicetree+bounces-265196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 21:41:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCC3130FAE
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 21:41:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 12B12304AD3B
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 20:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3583B32B9BB;
	Thu, 12 Feb 2026 20:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U6xc+6Sg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hyEjWtcM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1603331A044
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 20:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770928904; cv=none; b=lwAevuBDP3ChQ8l2IkKqwkRKaWSh+YOJMOQGx4trARXyESXfrbbT5uAs52fF0ivVXjZKgl8FlCq6F1TfvER4wBfznNQY7nghm9dVALq5AkG3oeVgagWceRcPS4tV4tj2fQt9Lsf0gSUpw/azx2yMQWQwg6JRlJpBWtrhHxJnDyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770928904; c=relaxed/simple;
	bh=puqpSLgYp5+DLUc+CMOLCPUjPfxEiDGdChhYjSYQkl8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tg9DcHtB5SYYn/Plu302uP07NzyuqPBH/bT2eiRICuArMIloDjqP/rcgYOXzXkQQIWf620is1pkM/i0IpOUGUfP5Ocz+R62px2rhjxTZCuh6dhIpIvYIhEzPuptj0l3VTwHKr11zc2HTSo8XRSNpQMoZ0sPR1QcL0CQPi0lHWkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U6xc+6Sg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hyEjWtcM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CGY3N3053293
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 20:41:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NgywEGgLe59qtrAUSuFO9PtFp926hXyT4OPCp7SP2Jk=; b=U6xc+6Sgk3ScJ+36
	5Z+JAh6ouasi/SObFaZVJfzkfLzXx3GnBIFcaQVRSar0/7lpNlqNzSI+RvK6usmE
	1mcJbjgshgq7g+/QqJPFLYjkre7/BF/JBnu8F3ERA3JxHB4RxYq1RAR7YgC8EQPx
	6Vqyf49KQqQi9I8a0PQR23V9W6/amU0CfxCuXAa6855KxK5qzMloFJ34Q/Hq8Efc
	pa48ZnYjNsYJsDOaxSU5k21MRh+adi0CWZeyk4aqPdMdkVq1pfOp1lbp5R3eZVT4
	iiGHZ8178TFDQJoElOLhJhz3TzCd1r1neo32fbhPUxdAH9c14JPZTHqTxlEKkuA0
	QK2Zgg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9jgb8w7s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 20:41:40 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a7d7b87977so2289115ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770928900; x=1771533700; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NgywEGgLe59qtrAUSuFO9PtFp926hXyT4OPCp7SP2Jk=;
        b=hyEjWtcM9Op7ueXkO6SPtoNO5Ey7a1G+EnSfL6e/dF3/Tk08LcAfP6f9x7K444EH5p
         I2z2Q7rAWGU4NJMFwvrQD4ZTpHNvyPFp8sGt5oRohk2fTQoRWaDnTaAzxeOcNMb+t/HK
         awnEonEHH0ospzzv979OLivAN3xf2495b6pEdE7zU4OInARH3n/scZXzQNzIVphxy+Gw
         LQS8cDGH1k1EkSQ91J4jOeBHN2ufF5refFMw1MDbIH6TD5i7T4PaesJrIAgQiYEdI6Fq
         3u3xVGxCyphGRww4RI+RWozKUXTk5OpV8HAjOnm2Fr6Gcm/K1Ez7nydPgo4PyFoYXan5
         sQtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770928900; x=1771533700;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NgywEGgLe59qtrAUSuFO9PtFp926hXyT4OPCp7SP2Jk=;
        b=AuWw/t+RvRvMYGh/P7dz71QicbHqitQLjdqHpLXh3Q2qlh5bKQcF5t43ZmxNP7bVdz
         S8yHP1amuq6ma+LlzpbtNRQuRWzFXLiSP7h/4ugyf5fErF6cOVHXTi72ssiOWDiEHgs0
         w7SjxsOyg6NGfdXazFqmz6j+qna+bDlrgZOBF7cQDWQjsK1CeDdCA/dn3req5IJ57b5j
         L3gL0EdA5cBWuZnWk1fgQAiq9tPtYL1uehs2WXMoKclBtfFcJX5ACL8tbrYPgzt27rOi
         uhEGCBjg8g/I6IZH/kZ2cUk5epdS55Lpbg3LhcVo2OHl7Z7g4A2rXnVggVcSKxb3hCyC
         8Jjg==
X-Forwarded-Encrypted: i=1; AJvYcCWkJSM81fbAsylSV6Df8QWtWentqrVJRLqKKmBGhqUTQAzOcs3OxvP4DMmyKja3sn6bFgGiZh6DtW6s@vger.kernel.org
X-Gm-Message-State: AOJu0YzR7Bk+Y2YfYVij3rd7EQTZwRJLPpUk14mHToxNCqHh6nSiwXZY
	mlt4uC4zzVCGgurN6v5m83e+mBMfLbmzo7kjK6mhK3WGENVIl5TKMzKLBEx7T2EgdH2E6MbjSRX
	IX/+Qd++Xpw1FnRu2AMWr8L01XNWD/JEfXFeahST71tg7pJ7+0xAYrbT1+9moY6rK
X-Gm-Gg: AZuq6aLTzg3Zaly6kkbbewA/vHD6JgttKoF08ix1Q6ZE9QJUANyKSu1+j9coyUR21YK
	gFE1AynCcXpxFpXx6GU5A55JD+MyeGomSK89K28LtUWEYKYnpEFujTpG7p4z+yncoeCtMQrCxWE
	0wRHiURjWphVc1RhjzHceGbwNVL1hRD4CinRbFN6/RueaCf+fxhylV99mOZUgatqqx4gKz3SzfT
	UR5dh/5v1LjLlMoCu/V/WLzcb2gG/slW1896mxVsHKpo+4ARXBNEkpmCnW7FWPFeRpuyrZQ6cIf
	RGBtrciMu/tM8GHJ2ab0H7zGyBxutPqG3wHxqbixjjjIUL8mjAjGuhSj1ENVUvSmEsnlKH0OW11
	2anP/pgPdUmndzZ1bY39oUqNBH6ol/59SU3rDpqPxHCN5hogFkIDEJPg=
X-Received: by 2002:a17:903:46cd:b0:2a0:bb05:df55 with SMTP id d9443c01a7336-2ab4cf42abfmr3012635ad.21.1770928899898;
        Thu, 12 Feb 2026 12:41:39 -0800 (PST)
X-Received: by 2002:a17:903:46cd:b0:2a0:bb05:df55 with SMTP id d9443c01a7336-2ab4cf42abfmr3012365ad.21.1770928899280;
        Thu, 12 Feb 2026 12:41:39 -0800 (PST)
Received: from [192.168.2.5] ([49.204.20.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2984ab0esm59142485ad.9.2026.02.12.12.41.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 12:41:38 -0800 (PST)
Message-ID: <1c92466d-20b9-46e3-831a-ae058cb23c5d@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 02:11:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: hwmon: Add qcom,bcl-hwmon yaml bindings
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-1-7b426f0b77a1@oss.qualcomm.com>
 <yrhfimj4ggs4ecy4qg6lve6v2hc5tzjvya2bom3paialuocyae@6xc4ulemx4ng>
Content-Language: en-US
From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
In-Reply-To: <yrhfimj4ggs4ecy4qg6lve6v2hc5tzjvya2bom3paialuocyae@6xc4ulemx4ng>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDE2MCBTYWx0ZWRfX+0Eeovc3SFuI
 olOnGPxluIl7BavUHBhN8Az3gSmdbh7v7KLm69icxyq1fOKdp0z3zryzLA2d/KR0LskgzYVs7HS
 2M9xiL1dkYp+Pu6Q8FjqXzl8SO/2gLKAY3cj26MlbWejtx5846ZP7McJYAuvbIRCO+C8vurUJxz
 i6H+YAy5xQYI8wEoq1K5XKOBEmEz1DoBvLG1ziFqIpK4v/wtoVL5IJpr757zwoLPqXABrYFfisc
 Q4LkW0HWA06HVHI6AafvZogZ5M9W/o5bJuGcabyddlVN2yaQPuzXkCvnPQgAC8r5ElQWAAJygWH
 25HvkwPNEvxa60QcV6dQ5UrBy+Q/ihshWeUeHzPm40d/ziGAbgECulZZSJmvM5252CvxVhz/6ZH
 6DDbUqfPqiM/L1gTFnoa7EWzL+S6CHEx55BdNlTaPTfqlCwCBAJy0y70hP3wc9rOLQsFrNs5Gej
 GHTw6KlxVO6oyplWZGA==
X-Authority-Analysis: v=2.4 cv=ArzjHe9P c=1 sm=1 tr=0 ts=698e3b04 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=vFtg0H/HDnVpo/8TLRRAnA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=GuN8W3Bbd2OushFT6gEA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: iwkV_ZqfA0nhZ62p1xKS2SNc5NBEvLaR
X-Proofpoint-GUID: iwkV_ZqfA0nhZ62p1xKS2SNc5NBEvLaR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_05,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120160
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265196-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,1d00:email,qualcomm.com:email,qualcomm.com:dkim,devicetree.org:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manaf.pallikunhi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8BCC3130FAE
X-Rspamd-Action: no action

Hi Dimitry,

On 2/6/2026 2:38 PM, Dmitry Baryshkov wrote:
> On Fri, Feb 06, 2026 at 02:44:05AM +0530, Manaf Meethalavalappu Pallikunhi wrote:
>> Add devicetree binding documentation for Qualcomm PMIC Battery Current
>> Limiting (BCL) hardware monitor. The BCL hardware provides monitoring
>> and alarm functionality for battery overcurrent and battery/system
>> under voltage conditions.
>>
>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/hwmon/qcom,bcl-hwmon.yaml  | 128 +++++++++++++++++++++
>>   1 file changed, 128 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/hwmon/qcom,bcl-hwmon.yaml b/Documentation/devicetree/bindings/hwmon/qcom,bcl-hwmon.yaml
>> new file mode 100644
>> index 000000000000..a0e8eaf13eec
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/hwmon/qcom,bcl-hwmon.yaml
>> @@ -0,0 +1,128 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/hwmon/qcom,bcl-hwmon.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm SPMI PMIC Battery Current Limiting (BCL) Hardware Monitor
>> +
>> +maintainers:
>> +  - Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>> +
>> +description: |
>> +  SPMI PMIC Battery Current Limiting (BCL) hardware provides monitoring and
>> +  alarm functionality for battery overcurrent and battery or system under
>> +  voltage conditions. It monitors battery voltage and current, and
>> +  can trigger interrupts when configurable thresholds are exceeded.
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - description: v1 based BCL
>> +        items:
>> +          - enum:
>> +              - qcom,pm7250b-bcl
>> +              - qcom,pm8250b-bcl
>> +          - const: qcom,bcl-v1
>> +
>> +      - description: v2 based BCL
>> +        items:
>> +          - enum:
>> +              - qcom,pm8350b-bcl
>> +              - qcom,pm8350c-bcl
>> +          - const: qcom,bcl-v2
>> +
>> +      - description: v3 bmx based BCL
> You need to explain your abbreviations. What is BMX? What is WB (and
> yep, they should be capital letters). What is the difference between all
> three of them?
ACK, Will update in next revision
>
>> +        items:
>> +          - enum:
>> +              - qcom,pm8550b-bcl
>> +              - qcom,pm7550ba-bcl
>> +          - const: qcom,bcl-v3-bmx
>> +
>> +      - description: v3 core based BCL
>> +        items:
>> +          - enum:
>> +              - qcom,pm8550-bc0l
>> +              - qcom,pm7550-bcl
>> +          - const: qcom,bcl-v3-core
>> +
>> +      - description: v3 wb based BCL
>> +        items:
>> +          - enum:
>> +              - qcom,pmw5100-bcl
>> +          - const: qcom,bcl-v3-wb
>> +
>> +      - description: v4 bmx based BCL
>> +        items:
>> +          - enum:
>> +              - qcom,pmih010-bcl
>> +          - const: qcom,bcl-v4-bmx
>> +
>> +      - description: v4 bmx with different scale based BCL
>> +        items:
>> +          - enum:
>> +              - qcom,pmv010-bcl
>> +          - const: qcom,bcl-v4-pmv010
>> +
>> +      - description: v4 core based BCL
>> +        items:
>> +          - enum:
>> +              - qcom,pmh010-bcl
>> +          - const: qcom,bcl-v4-core
>> +
>> +      - description: v4 wb based BCL
>> +        items:
>> +          - enum:
>> +              - qcom,pmw6100-bcl
>> +          - const: qcom,bcl-v4-wb
>> +
>> +  reg:
>> +    maxItems: 1
>> +    description: BCL base address in the SPMI PMIC register map
>> +
>> +  interrupts:
>> +    minItems: 2
>> +    maxItems: 2
>> +    description:
>> +      BCL alarm interrupts for different threshold levels
>> +
>> +  interrupt-names:
>> +    items:
>> +      - const: bcl-max-min
>> +      - const: bcl-critical
>> +
>> +  overcurrent-thresholds-milliamp:
>> +    description:
>> +      Current thresholds in milliamperes for the two configurable current
>> +      alarm levels (max and critical). These values are used to override
>> +      default thresholds if a platform has different battery ocp specification.
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    minItems: 2
>> +    maxItems: 2
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - interrupt-names
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +
>> +    pmic {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        bcl@1d00 {
>> +            compatible = "qcom,pm7250b-bcl", "qcom,bcl-v1";
>> +            reg = <0x1d00>;
>> +            interrupts = <0x2 0x1d 0x0 IRQ_TYPE_EDGE_RISING>,
>> +                         <0x2 0x1d 0x1 IRQ_TYPE_EDGE_RISING>;
>> +            interrupt-names = "bcl-max-min",
>> +                              "bcl-critical";
>> +            overcurrent-thresholds-milliamp = <5500 6000>;
> How is going to be used by the power supply subsystem?

There is no any interaction with power supply subsystem for bcl alarms

Thanks,

Manaf

>
>> +        };
>> +    };
>>
>> -- 
>> 2.43.0
>>


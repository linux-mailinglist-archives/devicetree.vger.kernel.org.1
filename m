Return-Path: <devicetree+bounces-263285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFhzDfy6hWmOFgQAu9opvQ
	(envelope-from <devicetree+bounces-263285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:57:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B22FC535
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:57:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 60E373008278
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 09:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30302361DAD;
	Fri,  6 Feb 2026 09:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cpLbXzmq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a0VNl2ti"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F208732ED38
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 09:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770371832; cv=none; b=ktqviqvrwh9XUsU6iUL6CwpQ/8b01FQCvAFTruisYIAEBOidoytBucYzW8iG9ALqP9QBZ/DfOXTQckH7gotf6wKRbB/w5XqRbY6lgs4mRCbVXox/y6By0VJSOEgCYKKxeSCGpmiHNMMetCFn96mASbgjqMVQmargGNwOLCTEoGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770371832; c=relaxed/simple;
	bh=874jKBgx5p60UdLfSDb1SqFEXBqYVoMemdb1f82kxW8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cN//Wp/Gg5X0xvR8U83PViwS++4mO47+zeaA9v69GXG9wKOWpiKD+VxZPPsx3Uhe73JdIsQr39E269tESz7wNMvttUxkZC+zXzl8zbKspGXwhDDe+ex8iC6W492NFPBsk/0DLvgpHBS3kqUiFB8iB8M2V3Kzm3te8l+aT0S6kmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cpLbXzmq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a0VNl2ti; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167bXXZ4041963
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 09:57:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gULrD6EZGmOr61r/6ME9YlZuoHQCjXSBluqrL+O0wNs=; b=cpLbXzmqD+pI5kJP
	9U+PloUvVBcA9fO0JV39OOb/jibO8JNo3m2OApfN09UOryWvxEJAOWtiXGbH8lD4
	j+l98J+dBH2/aVFHu5yI5APOr3BqPOGmTKW/0RZkxGjiuZSvS9almbWHcV+yCACr
	lX38RpxOnq4zZP/iAR/5XBigtgErm2+dXH3uY5KDODos2Ryakg1dzsE2d2rCRwuK
	2Yx1rSsuGswLr0CPU1UXGBRYmaWJr4nfV4ntH7y/Xnbn1SXKenX4e2kWUJbChgFG
	yea/YqrfwCBLxmM6Cb4A630gK2Ojfi9IrYLWuckk0QIjlyfK+wp5Yv6iTaTftCgy
	QAVLvQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w0frv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:57:11 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70cb31bcdso49085285a.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770371830; x=1770976630; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gULrD6EZGmOr61r/6ME9YlZuoHQCjXSBluqrL+O0wNs=;
        b=a0VNl2tia6wvtXRJSqcXUreYOFxyg2AzsMomdQgBO+Cun2ZxKXcTNLFvRjmiNxOVrn
         lWKmu8H0QpgZi/VkK6PRNCEIsowrxMTcISVNKMOG24xJyIXKWVZnMoQzBpoEr9eeq4+s
         gRxzYdLQ1kdqNazJZGN2CGF2sMm9TSxhdWD9Gj8SIB7n6/DtiFSNunmRinEAE0hB/0U8
         /1hiXao9UjyPKrGYvMfQwCs8OYNU7sK4R2jvmBegcV8ZSrEfrQyYnOqYsb/lE95NO9Cf
         dsU8wIkgQeoWcrGJ/wXOBstIuzFQXK5rrzlHxBdIbtKWHTDG8wiCzgzp15d0n9OkVuJR
         CAKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770371830; x=1770976630;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gULrD6EZGmOr61r/6ME9YlZuoHQCjXSBluqrL+O0wNs=;
        b=NlnED0gXdjwr8FE3ohiptWJ64LdNOGJJUf/eaBdPbifx7/LeOvRZ8qHpSO8gQLiQpV
         rJjwqStWYoQS/bDwtgagMYIjBj4QTCMTjyN5Bj9Q4CABkOTHZxK606tybt3QLUSjVaj8
         3fBoXhY10AFar2/QBMXhpufTETaf6LPiTponYi9+O5ah7htSjn670wvbHBCoycnQOVkI
         e5UVvrh5yxOqhW3NKXhX7Qo74RmmPUHvNrH582vUVF7viwjmMcWdAtOF3eoj5NbdFnPH
         yJgopIc/vX052/lukpsid+0Qp0n+qfIuBWepp6uwqvsgFr7kqxatapqgG17tBJi33PlN
         yVfA==
X-Forwarded-Encrypted: i=1; AJvYcCWhRZKNTiXotl4qn2aPpl3Ud7wjPql2InJ4eV07m043c9XOxC/udMhHTW6see6Q4O6UAWgHx9kvCMz7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxytm4E2iRyenMDLg5WBNL7FFmv84dn5YmTe9SGkuVPX+xIbU2g
	Ft25Qra3J+KPUl7gva2Sfb+Py45Taciqd0K0vetejOlIMddYJqKhb0eiEPqNzzD4Q1tW56OPZYN
	dHw+LRAilKX74yrZQ5ZO84sLsDITljNezhAlflis5E7mdA9gixR6rv0ZdvYtHH/f0cs5rjK00
X-Gm-Gg: AZuq6aLxgGWUBmP+ke/RgEczWBuuJ/qd3j9l9EKaABTQKTEYc9mTfbZho4nutoZR9Q9
	E2EWaKnOE5ClyvGl5iyvWcR6WB/S1BGlopYqr7b5JZC/e2vwL6/y34ypUcEm3SMKKYTvYHy0FKH
	d+9CA7jW2ZqzMKSkKSNbN2MluU5HRgwk++Pk5zL4hGVK9pDAKuY/vDitCnGdZF9OzqfJlzlp2vF
	KeJ4Uj8qWrCYOPeBWoKFmQM7m41N4j74pB2/aAsMNMnFp7BNP9haw/cG+p7RTp85H/+Q6pPVZuQ
	rovlcDr6lFWEq20MJRPahIZWi5kQyNxWsKGi89p5U36YlUxQ50gcw4q+rfr5d7wupbeN+puljNm
	VAqEzU7X/h1hd5Q4fs5dhz67ka+PSJyR75y2f1zs3+Fjw7mR3LLoWZvQVKLRGpVQ7g3s=
X-Received: by 2002:a05:620a:46a1:b0:8b2:e346:de7b with SMTP id af79cd13be357-8caeed3aea5mr211014385a.1.1770371830062;
        Fri, 06 Feb 2026 01:57:10 -0800 (PST)
X-Received: by 2002:a05:620a:46a1:b0:8b2:e346:de7b with SMTP id af79cd13be357-8caeed3aea5mr211012785a.1.1770371829651;
        Fri, 06 Feb 2026 01:57:09 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edacb3195sm65683166b.35.2026.02.06.01.57.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 01:57:09 -0800 (PST)
Message-ID: <b1d791e3-849e-4d76-bda0-816418f98e39@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 10:57:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1
 IoT
To: Roger Shimizu <rosh@debian.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com>
 <eb9c1489-4496-48b3-8709-739cd45c11b0@oss.qualcomm.com>
 <d398cd57-41b8-4646-834e-ff0c0b7ff749@kernel.org>
 <CAEQ9gE=kH4Np32xZdp+jzaTo9TMjtLVRD+xaimuKWxdag2Whew@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAEQ9gE=kH4Np32xZdp+jzaTo9TMjtLVRD+xaimuKWxdag2Whew@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA2NyBTYWx0ZWRfX3YlxYeW7OPrS
 G/b7pBJKfgS3Cx6XmaIEcY3j/HGypfW3WRSovOiMFFH1zlaz6aCU9gzrscS4L9o0UVW79vrz3GF
 E/b8n7IOAsplvySInXfp8lRqhk7dSGYnjzMIVOwQ0I2zYlBYeegI1YC7ergZlHyXqxPoNVrCPCo
 HgJJ7CJ9jojzm12Q4zAOZZSM9TfaTNuchsyPZ4FbEajvcydOOVmYLIc2sfT0GDfIxEQhlQ1BkB0
 1GbwbFe/FqlNKCY5YPx5VywofEl50/biHmWi7uzZVeKEW/3FJBFwMfduu7HtJhH9Q4ZyGy/G8am
 lzSGH6IF+a7vlsf5L5zfpIh0j+gzigxXQm6yyaFOyZZKLt1F4L29e1BaHw8RX8UupEU+TBrIb61
 /HR8GlXGfBtpP+uiTrZSOBtQctvXCLKBLpncb2zQ2UBbyamwwW9GcasA5by4KZuwwPyEEVrQd+z
 VZPPbOFzoeytdOo9ezg==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=6985baf7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=aHQwvktsUJShgGQTGxUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: XKhYEfc61nJZseezCpYbbyxOja0cCIX2
X-Proofpoint-ORIG-GUID: XKhYEfc61nJZseezCpYbbyxOja0cCIX2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060067
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263285-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 00B22FC535
X-Rspamd-Action: no action

On 2/6/26 10:55 AM, Roger Shimizu wrote:
> On Fri, Feb 6, 2026 at 1:41 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On 04/02/2026 10:20, Konrad Dybcio wrote:
>>> On 1/31/26 11:31 AM, Roger Shimizu wrote:
>>>> ---
>>>
>>> [...]
>>>
>>>> +/ {
>>>> +    model = "Thundercomm AI Mini PC G1 IoT";
>>>> +    compatible = "qcom,sc7280", "qcom,qcm6490";
>>>
>>> You need to add a board-specific compatible here, see:
>>>
>>> Documentation/devicetree/bindings/arm/qcom.yaml
>>
>> The true problem is that this would probably fail validation, so I
>> suspect this was never tested/checked.
> 
> Thanks for the review!
> I did test this device-tree with the board.
> If you mean some other test, please let me know in detail.

make ... CHECK_DTBS=1 qcom/qcs6490-thundercomm-minipc-g1iot.dtb

make ... dt_binding_check  

Konrad


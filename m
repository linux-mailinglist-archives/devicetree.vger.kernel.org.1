Return-Path: <devicetree+bounces-261196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EM5EMpOWfGl1NwIAu9opvQ
	(envelope-from <devicetree+bounces-261196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:31:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7496FBA172
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D9438300558D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B6734EF15;
	Fri, 30 Jan 2026 11:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iqK+OqKo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PNAMDt5g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95C0336BCD4
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 11:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769772688; cv=none; b=M9yX/ATlQGs5DsAb11G4ipTbjpIsKVNw0Bn9mrn2BdkW+onP6JtFKPmst2IuxTyN41tjJYl/7YRqoc0PZfrgPIkp9iFRCCBkAxZpQSwPmEK74iPz9iySN+40F60v/9O9N43IWZ4WV3UOeB+B7u2183HBEIJH3dZrvIXvyn23eNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769772688; c=relaxed/simple;
	bh=QVvt5nu4LT2KMvStPdraJbpmI4l8qIEcXRC75/ijkaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b3dROpesfVvzuzDVi+Za9S9dD+gFODRp8v3fke0d8gcrddrLqYN+7yFrOPCzZzDGuWSJ9b3+s+gJPr4zR9+4xCxA7hLEGSZajs4viqJ6FYT8aklk/726cRg25qloMD8To9BlOBe2CYGOojDfEbsNITe80Tsa9lt8fHAqTTg9A6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iqK+OqKo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PNAMDt5g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UApFIx1022125
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 11:31:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ib5mMHdjULOWSq+B1jE5ALjJb6hxhBoEZL3r8HeDGzw=; b=iqK+OqKoAqP9zHnH
	9Ri8x8cUS5fdAgr28dmo8C57LjDQoKLT4RBzOR86zSW6z9aThLzw/1cx501rXPej
	Y2wkn7RT/T+L0BkztIIihsrrMHSStKYTiwMlDDpJ26uuJGsA38HxhyWi5nMRW/io
	IN8sZNzaCx+CHlssgCwCEUcJivUGusPioTgG0dqztOrjjpCwyrqorsEDmV1eFzca
	4Y9INc5eVPPrQb0Oszp21+QY11yLgU5XeGmCFMxut4TTVYd3KzefvSINA+ZlYfS2
	FSxyZjBwcxripwp6oZLvFnJ7A/fxmguz+dq288N1zB+qDeAiK6sum+Bobbo9+ijY
	ceAvNA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0e3kactg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 11:31:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6d6b0f193so10645285a.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 03:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769772683; x=1770377483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ib5mMHdjULOWSq+B1jE5ALjJb6hxhBoEZL3r8HeDGzw=;
        b=PNAMDt5gXyKXJJGxUB/9CnWEWX80Wlk3UiRh9NTy4ALiNQ8Al0bilPpch5nRQKWJYy
         2r5/LYM4EV1FtkxwNH4jqxRs1ZuqcxlbswoG7p7FJm/BGHDbDmj3K9lbG71rnlUCxOsX
         OJpUVhoy8mJoitZiXLYS5wn59vqDZNvhNF0v8F/rnecec+JkEfaT6lzgvnotzBrsgVYv
         Afhb+ilzXN2gNKFvG/ThfzbVgZvXTHMx2ejPFM4gBwR8jTpeVaxY/TXrG4a47ohbWuW1
         h8Jx/hgauclnceNg2x8J3MDy8LWvnDACI+fO3YDes5x0pqWjp5iBLgLErlmXxsq7dmpV
         +GxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769772683; x=1770377483;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ib5mMHdjULOWSq+B1jE5ALjJb6hxhBoEZL3r8HeDGzw=;
        b=V0Es8a3MkzdH/MJoCa/WJ8zx6m1KuHzj1XogO8BM9eYtG4kk11Q9IENVByKjxGuJKT
         YQHkBPnqHoB1BKnxtFUrNiS+oHv75Q47pp3uqMUQo0h4+goRoXwNx76KlSRW0Kh2RG32
         hDXygJaHvJJlUmHFayVSZ7Xfj49l6nJweWGiF4vKNpJbJ70LIZfAQieAYwgSMn7fwb06
         /hsGytj3wSmGGlsxNj3fagDMX9puTQwuZvSFmI0NO7SDHhtpVK7bCE1JZNynq8xo2cbQ
         8U58uR5ggBXWTw+thLLcxgLfQKdBzm9k37GIbN3FO7aZ/EnBw6iGAN4GXLRwT0eqLIZ8
         MavA==
X-Forwarded-Encrypted: i=1; AJvYcCWD4BW0K3FWqEiEkzXUqGNWEKAYDWe/62mJtbxF8L3Q5L1bY6ncucX45WhWeSajKPWhArC0fZ0/9zJI@vger.kernel.org
X-Gm-Message-State: AOJu0Ywpe4lrrhzVaW8Dugpq126KJvPXQn6FvadZaJsPuf31v9OBHtPc
	7NMv6daLQ8ozmPCjpoD1Wd3t+RT+kklpDhacI3xsuRs4cy7UHQn4eEuxsN18roN0BvIu4P2+wJK
	j/dNZGcohqBDqCJUpLuo3Vi+aPKjYoEEqaSDYrunHwxwiZqt5Zm+GjFSSZBPrLCSF
X-Gm-Gg: AZuq6aLnjJ7nE01z21Z27djPnfP/o6Po4DCRlf1wF1D0M8211vypMx5GXuvb8cAoF6x
	vVopxvu3TvNJzdne5qBkEEp7P4PfW8XnWKKI8uphxn2L3inotffPRv0IWOlmELX0VUW3SYWPoCi
	C5r2ecsr05GvaCAemrl4FLTrahjehKkuV76Bi1ybLtacCbCEv0AktkHF+0NVUugBxdtcHINeXrD
	+Lrn/EH9CKYNCMHI6O9XJcqp7RrVDKHy0+8x1Tg1cm4CiiC3mz0LQ82Rppt38Tdk1K3pi+tY7eX
	sAAhboLLxqlPrsdzt2kO9Qtv+lCY+xWA8lNob7cXb8VNwoVwIsCd0IvcGynpgnLeEpXCjFheLM2
	XHzbBz4NRya5ossP732ky8bN7E9ZdbVnJBEkENo2ZlAGnIpYVLaN8udu+bcsQroE3cBc=
X-Received: by 2002:a05:620a:19a7:b0:8be:6733:92b1 with SMTP id af79cd13be357-8c9eb139c25mr285187385a.0.1769772682620;
        Fri, 30 Jan 2026 03:31:22 -0800 (PST)
X-Received: by 2002:a05:620a:19a7:b0:8be:6733:92b1 with SMTP id af79cd13be357-8c9eb139c25mr285184285a.0.1769772682114;
        Fri, 30 Jan 2026 03:31:22 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbefc5ddbsm411998066b.18.2026.01.30.03.31.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 03:31:21 -0800 (PST)
Message-ID: <d85fd35f-6562-4e45-999d-87a8cfbb4a51@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 12:31:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/3] media: qcom: camss: support for empty endpoint
 nodes
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Richard Acayan <mailingradian@gmail.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251230022759.9449-1-mailingradian@gmail.com>
 <1fa74da9-bd3e-43c6-afbc-8cfcbb93af93@linaro.org> <aVSSNGCtvcYCTylu@rdacayan>
 <8a0083a8-cc5f-4f08-ac8e-7a4516e0de54@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8a0083a8-cc5f-4f08-ac8e-7a4516e0de54@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=VI3QXtPX c=1 sm=1 tr=0 ts=697c968b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=6oHZTzlp9KLPi9rkgowA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 9btDqY7aeYkCc3VOgrJK-vMVkXXZv7zF
X-Proofpoint-ORIG-GUID: 9btDqY7aeYkCc3VOgrJK-vMVkXXZv7zF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA5MyBTYWx0ZWRfXxDOG0oVzGyXA
 PcAze9iSndUNOL7K2KDc7zMrj2fX7txSoMvUiX0uY+ibjhHepg1UicpBZxUiEP1kg43Jy9wyYU/
 qFMCUbI6SJajguqt0D5S4iFCHqZzVs6CgSWjZ8QjFZSMZrxyssmRInn8wtYXUPtHKI7Nu2pJH/R
 FZ/yOJHPCbXF23CVhsZLtlrYXGnctaGwbJXTaofJsEui4sckqdXdjdo6LcbFT5TX338KRS3P/2f
 3B/1xNxVGG9tkJCPNy3sSYm6d36Cmz1fgFnu4xsBOECGFkxxOcYRcZsjstBe2FCSgcbdvn0j11l
 tT/TZ5cPeyWwLvN/kHyQxdf7jvK41Ik4mLoVHnuxDDenR22HYlhlzgcei7rLixIWPsnb9oZLsLD
 Q8fAWSzkpJAwzUiQWGBk0o6cyiLKKr5C33aRHLjGDo2DpOO6026fxi+DbrdPfn2Bajpz4gGHB+K
 fa7bhdYjKhVuoH0T2oA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,vger.kernel.org,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-261196-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7496FBA172
X-Rspamd-Action: no action

On 12/31/25 9:34 AM, Vladimir Zapolskiy wrote:
> On 12/31/25 05:02, Richard Acayan wrote:
>> On Tue, Dec 30, 2025 at 10:18:39AM +0200, Vladimir Zapolskiy wrote:
>>> On 12/30/25 04:27, Richard Acayan wrote:
>>>> This series adds support for empty endpoint nodes. It is currently RFC
>>>> because it continues an ongoing discussion on how to selectively connect
>>>> some CAMSS ports to cameras and leave others disconnected.
>>>>
>>>> The SDM670 patches are for a full example. If agreed on, this should
>>>> expand to SoCs that have CAMSS.
>>>>
>>>> Example SoC dtsi:
>>>>
>>>>     camss: isp@00000000 {
>>>>         ...
>>>>
>>>>         status = "disabled";
>>>>
>>>>         ports {
>>>>             #address-cells = <1>;
>>>>             #size-cells = <0>;
>>>>
>>>>             port@0 {
>>>>                 reg = <0>;
>>>>
>>>>                 camss_endpoint0: endpoint {
>>>>                 };
>>>>             };
>>>
>>> I do not see this device tree node layout as a valid one. A 'port' provides
>>> an interface description (an option), and an 'endpoint' declares a connection
>>> over a port (the accepted option).
>>>
>>>  From dtschema/schemas/graph.yaml:
>>>
>>>      Each port node contains an 'endpoint' subnode for each remote device port
>>>      connected to this port.
>>>
>>> This is violated in the example given by you above, when a remote device along
>>> with its ports is just missing, thus there is no connection. A forced alternative
>>> reading may (or will) break the legacy, so in this particular case you shall
>>> start from making a change to the shared graph.yaml documentation, since it's
>>> all not about CAMSS or even linux-media specifics.
>>
>> So, if endpoints MUST/SHALL (in IETF RFC 2119 terms) have a remote, then
>> would it be acceptable to label the ports instead, so a board DTS can
>> specify its own fully connected endpoint(s) under the port labels?

I don't know if they MUST, but it IS convenient from the maintainer
perspective since it generally lets people make less mistakes and reduces
copypasta..

We've successfully used this ""model"" for Qualcomm display nodes, as well as
(both non-/Qualcomm) USB-C graphs

> It could be done. For the record, the solution is not to "label the ports
> instead", but the preliminary added endpoints should be gone, and it implies
> that the labels to the endpoints are gone also.
> 
>>
>> The labels to ports aren't looking as "excessive"[1] as they used to be.
>> Is the original review comment on port labels still relevant?
>>
>> [1] https://lore.kernel.org/r/565d14e1-1478-4a60-8f70-a76a732cde97@linaro.org
> 
> It's relevant with a modulus of 'likely', it's so secondary that I've issued
> my RB at that time. You can write a proper dt graph layout without using dt
> labels, and since it's expected that you touch &camss anyway to change its
> 'status' property value etc., you may add ports and endpoints under the same
> labelled &camss device tree node at once. There is no rule to use some labels
> no matter what, but technically you may introduce port labels and add endpoints
> by a port label, this approach is practically found e.g. with Rockchip or
> TI ISP device tree nodes.

Referring to nodes through labels is generally agreed to be the best-practice
given it's the only way that ensures at compile-time that the referenced node
actually exists.

At the end of the day, this is essentially syntax sugar. What we put in the
DT must be somehow interpretable by the OS, and it just so happens that this
doesn't really introduce much complexity while having the aforementioned
benefits

Konrad


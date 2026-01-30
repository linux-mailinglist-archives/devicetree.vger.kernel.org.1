Return-Path: <devicetree+bounces-261171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id BBHADg2PfGkQNwIAu9opvQ
	(envelope-from <devicetree+bounces-261171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:59:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 701A9B9A65
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:59:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 971EE301015A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:59:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8EED374169;
	Fri, 30 Jan 2026 10:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T87iEZud";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fhycgUH6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E2736920E
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769770761; cv=none; b=rNd6/S7FZTH1O8bwkYiKZk3o3uv7DfRS3ofwN1cGtmBRVzxnGSsF/JhS4YYHZHX1U3v0L0fmyXJgnkvVwTBOx1MCd/uJxWtqKBc0facoJ85IOSbi7JxSBPjjfZ1XUK0VDSdHb2vIMfG53x2Wzo79g2cOeneAWA6I9QgJc+K/PHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769770761; c=relaxed/simple;
	bh=T2NYE4X2s0Wcny4CQ5sr/iWlpw/nR1anrQveUcaKd04=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BzZcZJ+hGnOucdsZJrvBKtzgPNJXAH1u8O9j5HZqzKF9q0df8kDgL62V3JAU/6Er8vgOFO+5LukGW6VAXt0nJr10IP/pNbZnU98Lr8u7+cfYR7k5+9RXfWhAdVem7wQfuKq3Vq3q8O3lHwfFQAuCCwupX2qGRKuy4wNsZSqdyHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T87iEZud; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fhycgUH6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U52eb0555440
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:59:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cXpreNydN/pOT0A1jYz8txGp0ZVcD92+G7nTlpdHr3g=; b=T87iEZudaOnvhlCq
	KTdVC9B0u0GKZkpC8ERXGQar2xPiFW+81vx4GDAuVvvANIW6GOVh9nE0RB9HlrHX
	unxR7acOJ3y/mhiwLEbWtaQU3M7PuHI56PoammSZlp77aq5//Y9qXZF0Gz3IhMdX
	10FUs255Vh4ia5qWH5aa0q+sYcSpKyST0ya953jMaDF7DcHx/OKmB318Suardktr
	VYurKUpuytTyzuyEIMxmA9jF9QHJqjnCNXCJLZ7/B7fwGHE8ln/RRqmzgMBM3eQW
	eR/LslAu/031CMsyQqf4IWH0eJPDdZ58MTPqyx2NlmU5lRFypVkzk8hHBp4+YLFq
	uYTGXg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0p59h1bj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:59:19 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c710279d57so14695185a.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769770758; x=1770375558; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cXpreNydN/pOT0A1jYz8txGp0ZVcD92+G7nTlpdHr3g=;
        b=fhycgUH6v6qMF5KjXRiP2aRkvmNYAvurkIVw8u54dj6amm77BATv521jT2RNOTxhBp
         h9pCchZ/A7SXlnMEjLf7yzVpsbOmWvf+YQp1BtUOIIz0yQy3k0S54Vir/hGW4KLddKEv
         kyj7RkYyBvybPMb8DoNI6iGmUGxVlfE5cGnaKm2Df/8s7hbXJcDAqmrtfOgkhnQXumZ2
         1N2kc+2gJiiZfcDKYkqzX4ZhDOyTf600RVyYypFmMUi9NEtYpH5LQONN2DNhQv5piLvS
         MRSQHCBaX7RqKR8R1A3RkXCvW1xOY//zE6vC5grMbQ3c3EdZezHhq/ICn11Dszbf+Tnu
         eJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769770758; x=1770375558;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cXpreNydN/pOT0A1jYz8txGp0ZVcD92+G7nTlpdHr3g=;
        b=vrT5co5RusDKYe6AR0uTKvjX0TPdEFj1Dh5YSK25d1hpVWXpwcEG4b2pNSWutbI8lA
         mb1yEsidTZN+xuv4lYdqbu6ljWXC8aoa8vKjetaEduoSw8oe/ZS2HE+BM29VC91JiJej
         2zm0zd0tWS/mTY7OW6Npt9hfwx/0SAQTUg1liu78sV5eQLVHq5iVaL+elIAPuC09x4BJ
         kTPG+uwLo6pv32yJ8ReqLRMrCfb78yJLQo5uKVxKi25jADo6CwnT6fUb3NHV9g8omrhZ
         hrJcbu4f6LnbctUqUs63i4yZkvYvjexA0Q1Ksq/RqREF0dUKFPy/F6Z89NxRVuMFc+Yu
         SvBA==
X-Forwarded-Encrypted: i=1; AJvYcCWz+dsjrbXSXqbursS3jAQPf0AwqvCA6TLeLWF8vgn8/waHbOXN8W/HQkl1bMkjsx4NrLC8qCxDv5fR@vger.kernel.org
X-Gm-Message-State: AOJu0YyDQ6Wf4ihR41zGlQK7FF12qjyOw9ZdeWMTqqOZEoozLWmOs6eT
	xGIwlJsZh/03QcnV0kpRnYhhEma5JEhJIt4JctDNTG8Wx+TrAIcT9fsVeyYUpooFG2Ww0gH5Azx
	9i7KV8yZVh8VJtDRQMr4p3j8WIshnLCSrnNCamd3O/VYUh80h3ACMl+MI9kaTHqdQOeQ8vJaW
X-Gm-Gg: AZuq6aKW3HQNoAdM1sEws1lgi/HbckXQ1dg9Spc0Nfh5Kc/XxmiXL+CQ8dPX7oH8H69
	T4BU/5z2d2+rWBrWtBhj4/irOZasNeSVkXacihkvCg0Krc5+yrPRrOrKeuJukCnmRiNR1GoznT1
	OiK6HhhOk3A9vZRuHrTHqBQdpzwKFYqiiQA5eO03Chw40i2f7r1A/QBykP8rqf+95MtX+5XzKIa
	wwQTIZR/Mwt3DJcFOjPENdSwNEp9izY35SzCeKwrOMRPwfQfr0UAdKKR8wh073J7crGbmMOvItU
	Z+q830yW/ZofUYIlN9DKx7oHjvM/6BjS2NOG8S/YA7g8Vcjy3unpufuDhkasBe9kuXikamXA7aB
	SfHT7McNxYoExfpOa1VjbGb9cMzqi/ZRskXrDjb3hpDCrl3zUOOcCRSSWvJw+LLb/+5c=
X-Received: by 2002:a05:620a:29cc:b0:896:ead2:a657 with SMTP id af79cd13be357-8c9eb131963mr264164885a.0.1769770758536;
        Fri, 30 Jan 2026 02:59:18 -0800 (PST)
X-Received: by 2002:a05:620a:29cc:b0:896:ead2:a657 with SMTP id af79cd13be357-8c9eb131963mr264162985a.0.1769770758110;
        Fri, 30 Jan 2026 02:59:18 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf2f1f55sm402198366b.70.2026.01.30.02.59.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 02:59:17 -0800 (PST)
Message-ID: <eef70e37-3841-47f3-a436-13e18c157176@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 11:59:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Add tz-log node
To: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Kumar Sharma <quic_vksharma@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Lei Chen <quic_chenlei@quicinc.com>
References: <20260129-sm8550-abl-dtbo-v1-0-abca3be14024@gmail.com>
 <20260129-sm8550-abl-dtbo-v1-2-abca3be14024@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260129-sm8550-abl-dtbo-v1-2-abca3be14024@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: jmKULb-ephSsmf1iGW7jTdl_qPG6FjHP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA4OSBTYWx0ZWRfX/XLrFDVdh+u+
 ruDqTWzPwwR60HRi2Oxdi4X6lEplLcUyGL/hvXGzoxeuw/LYBW4GEMdG3aT6NnwW4r2pP0QXw63
 SJ5M5iylWBobWiR1IUYIoHUTGBqGMDK51+P9uQaZjE0FUw9PiERd3plvAHUdHsdWI3O6WAb5ec9
 7e7fRItKYxYGXvFQKO2mvuuoeAtfhXICWRM51bwDPZ+uxYEPkp5aWlHsHH0Qj8+Zge67OmwF+1L
 2jRtiuPjSuESXmloj2W7xEV/qnIgofDptRTfQJQ1UCmhGTxzt0A0jZsml7jhR7sDBaspytZ7bp0
 Js9MW0aZX+OPyABDe/sDeKsrwUlZPHjnp1JdgO/5jkxnHgSTbegKwr7DEiv5b+PsqpqTscCtN/5
 X2SGi2gj8m7ClURfc8mFFY+dh7aPLe2QPePNCB8fohMQ6TGPmEdxwwzf6MwXafc4RTBRCwP3nPF
 wwODZQ89SYtTYxZzy2w==
X-Proofpoint-GUID: jmKULb-ephSsmf1iGW7jTdl_qPG6FjHP
X-Authority-Analysis: v=2.4 cv=Re+dyltv c=1 sm=1 tr=0 ts=697c8f07 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=pGLkceISAAAA:8
 a=pJPL6FOcZzJov8t0v3kA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-261171-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,quicinc.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 701A9B9A65
X-Rspamd-Action: no action

On 1/29/26 8:46 AM, Aaron Kling via B4 Relay wrote:
> From: Lei Chen <quic_chenlei@quicinc.com>
> 
> Add DT node to enable tz-log driver.
> 
> Signed-off-by: Lei Chen <quic_chenlei@quicinc.com>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---

It's nice that you preserved the original authorship.

Please extend the rather lackluster commit message to explain the
"why", which is notably different from the original downstream
addition, since your goal here is to mainly appease a grumpy
bootloader.

>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index e3f93f4f412ded9583a6bc9215185a0daf5f1b57..740e3c238e8ed0f162dd168291f6e307ace66e80 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -5136,6 +5136,14 @@ data-pins {
>  			};
>  		};
>  
> +		qcom_tzlog: tz-log@146aa720 {

If we were to implement qcom,tz-log upstream, this would definitely
not be a node randomly in the middle of /soc, rather a child of
imem, most likely.

Could you please check whether adding a qcom_tzlog label to *any*
node makes the BL happy enough? Does it need the properties that
this node has?

Konrad



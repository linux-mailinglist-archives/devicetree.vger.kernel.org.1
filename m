Return-Path: <devicetree+bounces-266883-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNbDFRIwmGkzCQMAu9opvQ
	(envelope-from <devicetree+bounces-266883-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:57:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE99316689D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:57:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E49BF300CA20
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C50543358BC;
	Fri, 20 Feb 2026 09:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oAlLT1Zd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TxvPmR0R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B323358B8
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771581452; cv=none; b=aSnOmciZlLMPdf4kQQmPoFBS0hMRW+MIParDeC/9TcyExxtzEdxJrkjwcUqPdETnVsokCQOBOE4LRUzE9X/a3oxGmVJQa+4xi+2GFzVLXSD/lXPl3B5TSP3bWHOU2B5SsXTKqbMCJPbNwUW6UUtEP0xMGvooUFDT/+ZlbOJfy6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771581452; c=relaxed/simple;
	bh=H0bxDrD7Q3iu1dnJy/oLm0o9F6Btp8a9WEHS1lwFwQA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fQxX+ahibHgjYv94rn9qMsI4Sok/RNOkVR/CNhJRqGNV4BoOxyKLc06KJhRWqc1Kdmr4quJm7wso8dZrqajmvLnSp3UUTueQurLcS6rFzWtykOMuOnkwvQCITj7rZK24rQUELY6X5q6M+d0Qi6qT37b98O0Rh8lLnwhvHX5xQXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oAlLT1Zd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TxvPmR0R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5SMHn3699734
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:57:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Td/GyC2H54TSnBsbZynZSNK0FkJDWvK5rVS04DwJxtU=; b=oAlLT1ZdkZc/HTEU
	P8EungoIUuX3fSBU95Vrnj3jBchh/utgHfR2UhfmGpuWq3X3PAuvPqTKky6E+qJn
	oGyiQFSiVMNG+ygP7xSnm31gYTH1U09aaLBAJ6oy5KHKQAbsg6t0GInyF7CasBOQ
	qMXTx0AXOW+tVMyPYVi/x4bQT1Tcnpn03tDT0j2q0lYGEYuzOac4Lm5gRZ72a8Dv
	rkNfXErAJcRNzqTYQH97k8P3ho2s1XWH/riNHYVtSEfgccmljtnUb3O6gX0pKw06
	3eQEKmyWyvk/1nEyJsTg4/STJ9oZ/ka5v2YVTRCjuh14Z1p7U46kP1x8FSxk3aFi
	KegcQQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ceh5jgnu8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:57:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8946c23cf90so19241766d6.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 01:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771581449; x=1772186249; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Td/GyC2H54TSnBsbZynZSNK0FkJDWvK5rVS04DwJxtU=;
        b=TxvPmR0Rx/GB41zUmCyVvdcem39eTBUdKij/2WdAs0tJYH4g22gC8o/Ew5gezjqlTP
         /9cFUzSHaHhkv+p1Fw/4WS3fT2fc5BNEHwtcuT0p5hxK31F+jxBdiEeC2CboyzLfQ3MN
         Wc6HoPwrigHRwk1ffohi0eUuk0+ZqxKZbA4r9U/wuuwQCbddxn8VaJSnRf5F+nopWK0o
         3/JInwllm9re6qe9zzJtIHK669N9pMOSNmRxlv8KcAQOjLozeyIOiwee4gJzpSGOoUkm
         ZedrthZ3H8QuA94W1h7bGL6NlDTCWxdi6olIS1j8PfDmOP+gg46rVfrBc1EJMCVEobSu
         z81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771581449; x=1772186249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Td/GyC2H54TSnBsbZynZSNK0FkJDWvK5rVS04DwJxtU=;
        b=G+a7KZQmbvyMrxf4CKzjX+hFaQ2Ffokc6fRdgg37A0NXIbgrOF/xGRa2T4fU/ys0nn
         7f+4k8pFSGJOnEYQ9RQ4suXbFwoLterKGNVx+QjSDIvjJtZUSsMIslCmCdcMWSSnF+sN
         PWK06jikkFd9fpIUkFqjq2eqr/Sm2ugt3zi49XLnlcLX7vjXxvm5/mOcQS28JJ5J5Tef
         w2A0fnjhGM+YOVcX+RJHQkKzj9/eL0cJh2X86/tZcclHVUpjm3maNAxRH71JSuyjQJvO
         F6o6/XaAx+ZO6vU2v66qiFpkfMQZkBIttWUmyqZi1AnLcr2vmHdOUDdVSoed0kUpwSme
         vVXA==
X-Forwarded-Encrypted: i=1; AJvYcCXn7UwrJs2oSkMU+fSf3D6wJsLcVrO8AdcRA5UFNdmx1CNaxUe4ZRhrs6PwoqvWFjwp/0SqCVHKxKHG@vger.kernel.org
X-Gm-Message-State: AOJu0YzxZnFvD/y9MykUO9b4Oo4bEZy+YpzcpPcu/3nBT27G+1dTNjss
	NNSlfYGRGfXgeFrs4WUNEfw/jkXvGMEklX2puKS46tGJoQtFHxyIZmpIm9iEyrLzQjkbqlvYLFP
	JjlZN0no6r/S0qiXZANuq/+H/nsfo74MUsydQ4CqxfLBiadBaATgjIdA+akA47umw
X-Gm-Gg: AZuq6aK7y17zbFtSH4mSlUjbrdjwRG8RYgD9tWQeH1dX9H890LqXU/1XUWOMThm2xh5
	0KI4xqzZrjktOAO2LXLdWXqYuQnvDhoefvfn0t73GO+SaxHiJHKuAez5pmftyGeIzGIItqQlyTG
	eoVo+8CaryDJjm32ZmJDBfrRLV+cGFUlE6HfH9XKDejQrMAXLDcV5WswoiB8g5ReqVcpmyFSEE+
	0AIv6ADyvY3l0wLZ/+gZKm0EcGc3OZfziFTnGR8HkE4xclfPtE/1/bldU80sOOgcX3x3ycmSzLX
	2YWihHlwy9H9fVp6i6LJHsJi36FTUg9FZYu6NWEJDvZJNiGhxEwfRDB/yiZC34QplO2BNXZ9gdn
	NPcn2h8wAmMVEfCcOcBd+qEX9wtPCXPRrfsxq2BqP+p6AGHjrSLGVmn9tJzTNYC12rodRorYvFT
	aP4tY=
X-Received: by 2002:a05:620a:d8a:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cb40820215mr2408609385a.1.1771581449637;
        Fri, 20 Feb 2026 01:57:29 -0800 (PST)
X-Received: by 2002:a05:620a:d8a:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cb40820215mr2408606885a.1.1771581449214;
        Fri, 20 Feb 2026 01:57:29 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc735d95bsm661300166b.7.2026.02.20.01.57.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 01:57:28 -0800 (PST)
Message-ID: <cf9c3543-e3ff-4ce0-8fe2-942a478dee4d@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 10:57:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: pm7250b: Define battery
 temperature ADC channels
To: Luca Weiss <luca.weiss@fairphone.com>,
        Jonathan Cameron
 <jic23@kernel.org>,
        David Lechner <dlechner@baylibre.com>,
        =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
        Andy Shevchenko <andy@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Laxman Dewangan <ldewangan@nvidia.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Hans de Goede <hansg@kernel.org>, Jens Reidel <adrian@mainlining.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
 <20260220-bat-temp-adc-v2-4-fe34ed4ea851@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260220-bat-temp-adc-v2-4-fe34ed4ea851@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Raedyltv c=1 sm=1 tr=0 ts=6998300a cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=ZSlsbEq598atbnW4AL0A:9 a=QEXdDO2ut3YA:10
 a=AYr37p2UDEkA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA4NiBTYWx0ZWRfX83aB+4dHkouk
 CTTzywRMuVF1Nawdh0mbPhKp1PQj1YgkXQDo7KyvqaP+bcQnGTYPxDNy2L932IgjiLRT3W3KI3x
 C2AIXk3JeW8HbeFIs8qkNrlSGb79B31WsGCI1Sx6ePs8pf76mGwGjvd+72mCY7A/s7Zc9s/aeKj
 /oqnwbmiq8cIAImvdmSSEy51nTs4F9KGg6mk0GP+VX+sSisKN2XQlS3A2H05yjZAZGsejCV3079
 8i6VV+oufa7TE6fZlZ8/KKsubk5TCowXQU1LDT63P3kjM5gTFWxm1CmHAJyG7HrtHeojBzLqZ+D
 cDmZCQ0pUDrUvpwzbQU1bJLXGJMt7PD17Thj2R/5YaSOCsRw068pKOpRefCA0FS80u72OhGvjVH
 T20KNlE04SJTXmS/jrpA/VRnkqJNQR/yA+o1vvJ56LHEE+gv9RUBWmlAN3thFOJwRRKjCNsnbWq
 0mVQxQ4A6tK+5coxjAg==
X-Proofpoint-GUID: ASEJ8Uo9h4WY0TihYWGVh8e688X0f-9P
X-Proofpoint-ORIG-GUID: ASEJ8Uo9h4WY0TihYWGVh8e688X0f-9P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0 bulkscore=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200086
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266883-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EE99316689D
X-Rspamd-Action: no action

On 2/20/26 10:19 AM, Luca Weiss wrote:
> Add the definition for these ADC channels to the PM7250B definition.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


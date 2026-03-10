Return-Path: <devicetree+bounces-273483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJnWOBUDsGkWegIAu9opvQ
	(envelope-from <devicetree+bounces-273483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:40:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AFC24B40A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE6C83111421
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAC8938A739;
	Tue, 10 Mar 2026 11:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="De5oVRMZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M2jrtKhC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9499E389471
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773141999; cv=none; b=p8ER9My1LyR72pelHgguyPBP7OIJpNfgtLgOvH4cmRYFpFZGMtVxAMEqbA+Xhn67JVsGJim6CO/dXiH+WmG5D1UsZ9j2f5yOmrreNrtbL+rJX0uzWtsFK3+ifxOfE6ypiKXfeayHL5LH25uukYtXtrdjhkA94gWaixMqie+fOos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773141999; c=relaxed/simple;
	bh=u4cpgBsAOPuxLzwpHwDVepez9bn5DsSAub4OHQKackg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=VwiH0jSFD1QVT7VpFqZnise4ituE3uYJ4ufUMrwpjBKEmrKDmDpy/WLqIhoF6eLXAEpmDDEaEe2W4VxRUmv5X4miU/4wUSlIOa5+Kk0iymjq7ST/7f/gNuX/aoIWHPYWysm9fXZX1rPyu5716/hn7YwRtbLfSKwLGgGAGq6kzJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=De5oVRMZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M2jrtKhC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ABHaOV3243827
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:26:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ilmEub04l/yoNaj3hejIpgA2R8zZZzja5wJSgrJl5VM=; b=De5oVRMZCvuNi5fA
	CcrA57pX7Zv2KvwQT1Kc+x2haO0+Y5ufHPePobOdeUbirYLvJEzez9z4Cr6blAbr
	9hboCMNd0jxyDkfgqyQJi0QOjL3u9ZhgC0ooaMIorcExKzK2RLGc7Dwr4W/uBhu6
	dYT0T7+wY0M+oOcrlhx1gXFq/71GXR4NbBQ1yo2O9PnUTh9hOYbtz33sQdmDvG6N
	0L5XVEpoP7h9CWd02VOFSvznUrPr9gbNqWUHI2Mv4FCptxmdi9oocjQKVzp4QEid
	4kyG40sLgRrIxQjHLTK0ZsZdHUMAmspT3GqXtLGq7sDus3qc9rNw3z9XMAaIXc8J
	NS+xUA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctja280w2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:26:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd90210336so65874885a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773141997; x=1773746797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ilmEub04l/yoNaj3hejIpgA2R8zZZzja5wJSgrJl5VM=;
        b=M2jrtKhCVczIWNpJemoufDRlDuSNocs9ML+p8Cwq3PYaJjTNPKnJ7JjU1i5xtqb9xc
         tVks+crE2zwlW/jrw62au8UdWdE5o5WQhrvl/Z0Uf00EiKIhjzHgd+yaywbm5tVH9I8S
         6qD12wgD18xRlpeEKUKMU7+wJ1tkD6RHIICYn77yqfwk5POxpVLGyKgTTQ7GO5ThElyV
         upSsiKVXLhiUm7jjxSHNH9ZkzumM/lSkvcU3sv9wjAw5rhNN846l/SZpTnhWWfbrkbLc
         aG5wu5UoBc3QWbPN5nct4u58ZT6JiJuxNtv8qnlC5sxckZmrWqjCu18ATxK6OFanPJy5
         8Uzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773141997; x=1773746797;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ilmEub04l/yoNaj3hejIpgA2R8zZZzja5wJSgrJl5VM=;
        b=mdPb+vE2Lp10IQZkdmg3hHiglYa07uM8y4hr4q1HbHQPgLwwB2IaeN2dAgZmQ9JLgw
         RMP1pNdG+W1XBwESMCWYzhwlU7LxSaIK1cXJySuAwadk96j51DLK5z/53IPIQaRhLyLs
         mn7DZ23sQ3J9w6fq+zn71zZt1zhmGaOC4ijRLR+w4eVrSnAMte4zLVZvxo895OAHflrZ
         GkzHpN+r6qU3T/OtO0/WbmU6TuW1gp+rxfzLzWGnDgjg0HpWR99Q7Hn/j1H5hI90EdBP
         Y5qKX5qxY9TeJ1gYL2XHE7vzIphN4ko6L5nPK6Cg8fBCi9iMng5im2m5nEbkVwuFgRiu
         hdMw==
X-Forwarded-Encrypted: i=1; AJvYcCVVMDvrtAiVbNJuX5idxUsfGbAcQTX5eJC6uTOJzWIZH2JPFzp0Q/ve1kFBgi0ld+KrN5pRYRMmDagm@vger.kernel.org
X-Gm-Message-State: AOJu0YwwD+aKSuKdLpgMh5+2TaFNg7QIikrB30Um0Kdx8KNh6bZg46wO
	opP3mcqQdDa1bb4vi6PWPXBCfXPuAyQ+l3Q4dVDA32hpX4Arje5WdXuje4RcKLS9kvWQLn+3wk/
	pvPryHHtKPYKJmYSJh5p5Q6BI9kLX8IEH6Xs/UMgtLt1XtKu4WOJKmc4xelfsKUAj
X-Gm-Gg: ATEYQzx95VHNQ3EzLnTDPM59UHvKwdvOGRqpDTIPVINj16x8VelxmspyrnFaf2kEUVE
	9MJ/oAABr6lFR6MLb3GphppG/dlVN8OT30yuxruuKYqv4ALwCLjc5gC1Lu2s/i/EqNjJM7usz6N
	1rDtlBCESjZN1siJODpF+PkK0XrhaP18tbnpX6LgtP+T5x+5ihEPPSmG6olUuE7BlZ/ERjpBj7G
	B0M1EuvLNfQ2aTpAyhQwZWB/SJ0ii5TAs3CTXup1r2kDYfCXvY2HvbF2aSGcFiEW2jLq5GPJKBp
	jM26MumP8MC2q5EX8wxFfBFf8sRQSjkZK6GXmJeIfntArp/7aT9ByBXbzGNFslVvlY6nvlE8S4H
	WBxetRB6LRSSCBG8yVcfaBgk6XAdSA9yO87Qn2i49wqjvEwLjAnmW+nZJhfMnyRPHWExynNwJN0
	/ScL4=
X-Received: by 2002:a05:620a:1a28:b0:8cd:9446:cec4 with SMTP id af79cd13be357-8cd9446dc04mr240534585a.9.1773141996900;
        Tue, 10 Mar 2026 04:26:36 -0700 (PDT)
X-Received: by 2002:a05:620a:1a28:b0:8cd:9446:cec4 with SMTP id af79cd13be357-8cd9446dc04mr240532685a.9.1773141996465;
        Tue, 10 Mar 2026 04:26:36 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b970e8ac4f1sm101640166b.29.2026.03.10.04.26.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 04:26:34 -0700 (PDT)
Message-ID: <995a76be-939f-4bc7-be42-80c51de6087d@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 12:26:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sdm670-google: add reserved lpi
 gpios
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
References: <20260310012446.32226-1-mailingradian@gmail.com>
 <20260310012446.32226-6-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310012446.32226-6-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=c9WmgB9l c=1 sm=1 tr=0 ts=69afffed cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=lZi8hNnBo1xzNWG_37UA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 42enqfZlPDzdNac1BTgWpao9mKk48fWt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5OCBTYWx0ZWRfX3zGdvOGU8jwg
 OScZWdEJ9baSYTLcB9ua1fwbHZlXliSnjuMtt7nt68LYpzXzisXcSiHL7u2TIFM2RFeHrTXymfN
 agW9Q+deamIQ2ahk75AxyLgS/0UnyDzl+n3Cd0iJbNcSc0U7kilpGLB+OtFrKLdt9W58nvKQOFD
 sh5zcbo+LF5noAx8YhdY1soXDN2e9iDby/Lk0fUm4qfjzV77/cwsKceh29GTLv8JQ5jXs6+6eYc
 DWnyiUV/M/oqDWhG3MvRebfa6q52n3cBuP6p4OVaHGvFICvWTBw529ZXTbqB2Hr86SUF73xqVZm
 c4yHF2le4FTBcPhv6aYPrFJNH1vzX8/hS6v0zE45um21Yw2jJDOVyey3L7ZCgud3Lu2jffQ6Aep
 kJSehT3qC4cA0hMDwNIFinSF5QGTT5lMhglKfhoKYUc31sVhxcUO0drt51BNK2fxE+c4xuUvRRO
 HRpEaeHRpadIsRG22ng==
X-Proofpoint-GUID: 42enqfZlPDzdNac1BTgWpao9mKk48fWt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100098
X-Rspamd-Queue-Id: 66AFC24B40A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-273483-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 2:24 AM, Richard Acayan wrote:
> Some of the GPIOs are reserved for sensors since the ADSP also handles
> sensors on SDM670. Add the reserved GPIOs for the LPI pin controller.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


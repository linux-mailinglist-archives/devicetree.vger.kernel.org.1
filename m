Return-Path: <devicetree+bounces-298155-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BFGIN//BmqVqgIAu9opvQ
	(envelope-from <devicetree+bounces-298155-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:13:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC30154E32B
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:13:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 696E731686EC
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:47:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27FAC466B66;
	Fri, 15 May 2026 10:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kJ4o1Wco";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FwQL1qgc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A8946AF2D
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 10:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778842026; cv=none; b=ekrfQWw51YhH7Y+blIeBuwvhcKKcNfmI0RexvzNg87LaseGboYx6i+qnz3c9H/CAs28TSa9kzPlIz8l2UmSM2AgFYjZE8Z0nLogz2iLp6jMbdMx2pbRvSD7o0QAISAacJxMiklp/9hngRDvhxdclcyolO1A+HQEYueD6RKOIxlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778842026; c=relaxed/simple;
	bh=3c9jJo9IJrp9sWOsuUD1RvROCzMlnV278lk3snD8igU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OXYsB+6sFxtlvSbVXqL6F9fQnmQPxjUxriReG6yQqJS4VfDPBCyjiK3f3QsyWNd5/+9GjqheedQMzEle4zCsFIsYK/vfmA1X8EyIsf97D+Vry0sAanHDbg7aygQjvXF2JBhqnOx2xYjKlPAX3CrZQAV+uDJ2k/df7qRQKxqFY3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kJ4o1Wco; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FwQL1qgc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64F5UjbI654865
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 10:47:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	81p5ydoFPW231xvvdkFwIFpCM1HRBly2VHFug59OTKw=; b=kJ4o1Wco5ONyaQfl
	Zd/KmvDvDh1YuTNvueGlNyPIr6of2b5HKCv5XbqrWx1+C5uJbA5bYcrw0z7S1yEc
	XkP8oeRK+5jcDmxHx/95cCPHktNgNio7f83X82OwytYEHfmLCH/2l5qIEDnNfMCc
	AIHurFN0Fh4pv6wGphr7mZAD2rckyqprtuNoGxzg8WQ8l7D0rmLjgElRdWH/GNE5
	HofWp9m1M3SACIy7ejJj130cZX2SE9ztljx20jPndvaCwfTwrLBske5SnSVIb8xM
	d5Aj780NcTDmQBTjkuh3VXvGTmA1Q9GfGEtrQaLZ74uHcp/T/+YzPSY67cBs62//
	NQRf5g==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e5m1pty20-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 10:47:04 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-95cd67d9a7dso371660241.2
        for <devicetree@vger.kernel.org>; Fri, 15 May 2026 03:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778842023; x=1779446823; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=81p5ydoFPW231xvvdkFwIFpCM1HRBly2VHFug59OTKw=;
        b=FwQL1qgcHhW4AUqU32qqwTQSK0S10Ho7pcLq2IeYCIbE0x7cThUwy1MKnkdKXoIVqa
         bLlCMq3DZ0v/1XzRtqk1oLnQ92Vry16MjYaXXxXiZaMr6mtclnNkpsyXczmQQfSa1hLa
         /GvRelCdtOU6dnf4Mcy5QfLJByTLH6JP6Ne8g9pfAgdyA0c12UQWCWDlqDka76DFD/8B
         GqgcqDz40zIvb+PwyS1WOuBAoTclAn3vVbSWZfeaWvSWX8B3hWo3oeYF/lw6SyHAnHHa
         qdU2u5A1RtzuG1K7jEVNlvQz1YyPW7eYI0elzkKnLb4vVuI1kF4heJG10MVXG7P3R0NY
         msMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778842023; x=1779446823;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=81p5ydoFPW231xvvdkFwIFpCM1HRBly2VHFug59OTKw=;
        b=YU5GMJ/RALkI7LkHndD20MJfKci/jwNw8HdQAoTYt+FxTtzvDxmqYbAaZJFFinDhoT
         GMAErzPeQS+/5BIz7gYKjezxBn+TWzxgLmzeSxQOFrUXwYzEgZmGr8lyLIuom/A1L9Kz
         /GMnXaP+5ryOHHyT/H/E7DAe/iatWi09z2QlFcN+6d0EzJx0mmrBMdqtKRxRUPTNt7Gg
         OgfaEFpqqRlJjTXqg5FXPH/a+fcCWc5nDG8AA5kRZP06SulWQTX9OVtU687VeXcOTr3U
         WRHHrNAowu+0Yf4ZFqZlGX9afI0tSDT5lArrhHO7zyIpXlnnVzd/F/TKrAHfxCxxrJpZ
         8aGQ==
X-Forwarded-Encrypted: i=1; AFNElJ/DjiIEkdLPumdW+VvPctBrK7/x7ElOVZ/59AVF1QT7ZNvKaMb7dbUffrn8SnRTo+H+mszToLQjL7tI@vger.kernel.org
X-Gm-Message-State: AOJu0YyDUSmtK2hcqRKEM4TnPA6/JdI7AblMnq/1XZW1ZKXMMQ2VcEvw
	h0EUcgmQ1lswVWrbyrLpv9zX9FUX2WWdqDhP9iXTO9KWx38uaXAGbm3qJ8vIm2/n6yDrLZ5KfUC
	MrKjCp+eA/mweGHl82FNpZqu8CIJoreoXqnxsUFn3ijG+m6JHDkvTdg5+c5ILSyiX
X-Gm-Gg: Acq92OGZYVfmk67fg/tRTGegw8kLZANSJBRQOigjSpNtVV9beSm0BeSNAAqPgiGnv5t
	DhsTRcqsq1hPQp6LVZwNYFXlN3u/fp5kp2C5gEg2LOO41/mkKoyFbBzwo/QAVEAKFO9T/uGQPl9
	2vmqpGQTvfE7p3d8CaJzM4uQlrP/pjYpbAqZebcoy8TfIDr8Gg/pXCfi9SEfIplIA2E8ld+HJBn
	5naEtMDNTWR+nrWUgbG2ZlFFt0vogC6s0YytKW+FBiZ8SI8OCokCmcbPbheacdZp6+vA09pGKpk
	W1GwQ4x9ailLh6yQA0b8JmJZHAngziklp5/rhrLV2NTqUBxK/TMlzfG8izIdrK+frWvEU/ZEAVh
	ZOyaOg1givqODGzqcKWvg2yAcmW4vdlBGRHarYomIdUgCl38IPk1z14JrvlFjV7/4qqs8Bw3YDx
	rrQT4=
X-Received: by 2002:a05:6102:21d6:b0:637:25ea:99c8 with SMTP id ada2fe7eead31-63a3cc0c981mr451002137.1.1778842023012;
        Fri, 15 May 2026 03:47:03 -0700 (PDT)
X-Received: by 2002:a05:6102:21d6:b0:637:25ea:99c8 with SMTP id ada2fe7eead31-63a3cc0c981mr450987137.1.1778842022537;
        Fri, 15 May 2026 03:47:02 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bd4f4eaef0asm208520866b.57.2026.05.15.03.47.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2026 03:47:01 -0700 (PDT)
Message-ID: <33d3ba72-7d3c-41a8-bf24-baf325ce823d@oss.qualcomm.com>
Date: Fri, 15 May 2026 12:46:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc8280xp: Add more thermal zones
To: Xilin Wu <sophon@radxa.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260507-sc8280xp-thermal-zones-v1-0-33d4395b1be9@radxa.com>
 <20260507-sc8280xp-thermal-zones-v1-2-33d4395b1be9@radxa.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260507-sc8280xp-thermal-zones-v1-2-33d4395b1be9@radxa.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FAJ0jUfvhvJmPKzASSLOf7SvBTCuqOaf
X-Proofpoint-ORIG-GUID: FAJ0jUfvhvJmPKzASSLOf7SvBTCuqOaf
X-Authority-Analysis: v=2.4 cv=GrhyPE1C c=1 sm=1 tr=0 ts=6a06f9a8 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=ksxQWNrZAAAA:8 a=sHlhyO_EBmxH7abWSvcA:9 a=QEXdDO2ut3YA:10
 a=o1xkdb1NAhiiM49bd1HK:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE1MDEwOSBTYWx0ZWRfXx5M7T77XRQuf
 4/rSuD6aMp3niBf16vx/DA3k1rI4jft2RdN2mSXcM5mMzAyGpFIW/xzH/bqlKHM3ydvxKAqFkON
 Y/gQQKftiFzeCPfRCExYaBuxev22HNahNd16xTimDKLAcUopZYQUNzChMY/IBrum+3QzlT6Px2r
 8z4qOMCGqAsSmcEixoh0bxWF0m5tJIk3hjSi8p+6DF9ecQNCmL3e34JZUllasWwayowFGrXbaSN
 o8uttWYu5OL2h8u12Pnj3fz31wJwOOaOc5wsRxJwgZD0O6q2llkEznGvpYnCQgXLtHZ5tSNRrmb
 CvL6xMaMdmHnSFrmBPx7Wj9MhvigzMbTkPIocPTQVK24hIVq1xtLNQ3nmiptXZ2RwZu7mw6S6J5
 aM0b3trJZxM1xHPz9mtvo7Urmftzwk5C2GBl80ePbhH58bAQ8s7NeSe7EpsmOJR6MDcArSjo/HV
 efl+uyM1F5pQHBMX1IA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-15_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 adultscore=0 bulkscore=0
 spamscore=0 suspectscore=0 impostorscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605150109
X-Rspamd-Queue-Id: EC30154E32B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,radxa.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298155-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 5/7/26 4:34 PM, Xilin Wu wrote:
> The SC8280XP contains a lot of TSENS sensors which are not yet described.
> Add the thermal zones for them.
> 
> Signed-off-by: Xilin Wu <sophon@radxa.com>
> ---

Very nice to see, just a couple nits:

tsens0 11 -> NSP1-0
tsens1 11 -> NSP1-2
tsens2 10 -> NSP1-1

cluster0/1-thermal are a little inaccurate, let's rename them to
cpuss0/1 as they are not really bound to either cluster

and please change mem-N -> ddrss-N 

Konrad


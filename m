Return-Path: <devicetree+bounces-277126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKL0I0CCumnrXQIAu9opvQ
	(envelope-from <devicetree+bounces-277126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:45:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E83272BA248
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:45:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39361306DA46
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00FCF39F169;
	Wed, 18 Mar 2026 10:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AWGtY84O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MDuQr1T3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D648639FCDE
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830675; cv=none; b=cT3KkzJHDYi4wfoVwCEWfU1QZI6lf9FnvNCM/Vm+ChaL7rFMZo96T2HqMne5MD/HbrQD6DgcPN6Ct52fPrtgzGrCRc6r+NzXUJK5s4k82VrpmakAVcOcwrGbcXn+NmTblIb0J57VzmQVeaJgYBqSsgb1m6wK4EVwpohlB/MTjrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830675; c=relaxed/simple;
	bh=Yji3btnVfV9CCokEpyjEwbVFo5fodmpKRObuzj0tlvg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WozX2BxtkTsK4On524rDV8R4DMhJRPiLopl6zJtiZciqAfgmhdfVuOTVK50T9fZHBJtppC6kUHhoxRAlkS1Rd8Na4/WIVKGKeSJhTgfX3USDZfHVZmOjKjp31PNdRMnfXE87jvpFwyaj1y7AV5b7VB108wevU5S5aDVIgibRwuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AWGtY84O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MDuQr1T3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I92thj1146010
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:44:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w9YjRCIhwbUqkLyLDNcmvuCBkcpcTL0Nhz/SwuyLvWk=; b=AWGtY84OtoJ3zfGV
	vKnPTHpHW8bVTppFAiXEHFAzjDvTNxUCoJXqXFKZYRkSI/4DBIseFFG4iF+VW56X
	a0twHjgoetrEbHkleGC8FhrKCpAwHXkmgdnW5aDUYyAFKCoNiobrIWUb+rvA7cN0
	TuGOp2NAJw5Uctzy0/Nf2j+ql3jH+M/dp7LGlinItUIyUJlgw0o4XJyJI8a49IMi
	KICoZZMBIh/V6WPvPo8OYITA3BOQxX9E5Ny32wMI6yVUlWVRmw3LN2aowPt+I6HD
	YzlH31aNjbFnH87SfYRroYDUp7WUXp/xR9g2W93lcDwIKulZzfEALlguAVtfp1l6
	LIGDtQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyak3uurp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:44:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5090f7cee3eso39971371cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773830673; x=1774435473; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w9YjRCIhwbUqkLyLDNcmvuCBkcpcTL0Nhz/SwuyLvWk=;
        b=MDuQr1T3Mf1icDS29nY49eiZHSAkJ0PG4mV7zK0P0BCWZCogrz27GWxPU1Xwnb/n6K
         3WtNkZq3NOIzwpXngRnALXcv4gUn8WbSJxxCos4CMqmaklUTKo/3af16M2Vr2VIGgbp7
         Nc2oI0ggJO3icyU4EOOCUnA8jucYe+swKQcwJpYcVjjiaj2oBZs1L636RvyLPOb7aYdj
         6RVB+34lyNbuUne/C7OTqrrOeKmQPSTaX83g+lFm/OZTHbH3sxd4FYz+cfCrsFoZEW1d
         GEuyqesiabyViamnEr3XIuD2poJoJnN5FReSfhDr0xW7MCbq7IvfG5tsAHi41NIcQBZN
         zaoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773830673; x=1774435473;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w9YjRCIhwbUqkLyLDNcmvuCBkcpcTL0Nhz/SwuyLvWk=;
        b=G9Sbg96ul+dfaWYQwKDlh88ti7fQauLLkNo3ajBRzT0r1fj9giBobdJeCcbNITY+qU
         XATjD8EY+MqXKsZCv0ev4cmx8kX4Xm+ytsO0RTv1GoKTC62qe3WLWPzLT8TdR0P2vp11
         yuDls05meKmOqJ/su/330KxWz4MBTz5O9ra4O3dWPXp1Oje4qPBdTWldOQYHKwoi2A6E
         c5UqHr2Dr9qPmq5rBtBfDWXSFoEWadJQK0/Fs083Dlm8MbtviVxlyMgZZXkdvOq1La7C
         jFjwnP/Qt5uf3jJiu+Yus/9qHkmV4yyqVnZ929fwLpcnw/76gzzmvjdZYpoM8VFPvX6C
         RPmg==
X-Forwarded-Encrypted: i=1; AJvYcCXlWyqWay5BYqTzmnBNkTEo6rimba4PSx+asFH07F5DJM8M0vkJbnky2G3fdXy69XFlhoqEYgM9k4op@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdcb6CAO3UrUFgSTiHDNgYlAyAHi2DrsKpvqjgeGQvdvb7BNrh
	5yvaHteFtF4S8+TC6vw/Q8vCv7fMiuyU/rM/4Bf2tCJFzgAzNbYz+3+5zM6ckcBIMy5nOHWFf/g
	Lt553KtBJ9dSeEtrRGZI1Q0VEKeWnH8dVQsg8cIlQwQcCXkOk71UD/TyiwbYpzbFP
X-Gm-Gg: ATEYQzzzN2llyjOP0aqC5v9pUaC2DOig4wBIoiCzMK/lbXqSrph5tVDLSnGPw4D3J7S
	Mc/A2LnNHMBn7zx/8VmmKjBktn3nB7hdwKriZSFuc2kPwPPKCmHqDbmd3OOTFWrwe5l6YQ2zn7+
	bbP44FKKPuoX6qq9saC7kdxlMjVU6qlU0E/jCyxpbAyM+HrIccnAvkSM96JEgI61/yOXVqN73cn
	UY2kglhibIJr9gcewW9Auq4SVvoQ5rSkb7mZdq0yZqbJ/OI94V6TFyObQot2efgmIPCWHAfK76p
	fWbZL02uMcCvgFSR70EbFizdwUADgWEl56BMvnvdxgR4GEE3Fb1w9cxpS3wRa6Fp4wfSbtvpaX4
	C/OWi+EG7wPTGiH5hQUYzNhyxivBegsrMF3MQzSNvcm/NthLASgnG83O5V3mJrV/t0UVJaz7xDK
	GZglM=
X-Received: by 2002:a05:622a:50d:b0:509:39b5:a97a with SMTP id d75a77b69052e-50b146476eamr26767891cf.0.1773830673138;
        Wed, 18 Mar 2026 03:44:33 -0700 (PDT)
X-Received: by 2002:a05:622a:50d:b0:509:39b5:a97a with SMTP id d75a77b69052e-50b146476eamr26767671cf.0.1773830672775;
        Wed, 18 Mar 2026 03:44:32 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f13e9941sm184320466b.3.2026.03.18.03.44.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 03:44:32 -0700 (PDT)
Message-ID: <f1e369a7-ee5b-4342-919e-abe541611f38@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 11:44:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: defconfig: Enable Qualcomm Eliza SoC
 display clock controller
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
 <20260318-clk-qcom-dispcc-eliza-v2-3-8c05581168d1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260318-clk-qcom-dispcc-eliza-v2-3-8c05581168d1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=A7Zh/qWG c=1 sm=1 tr=0 ts=69ba8212 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=iyqEaw9I7auMvmsjhYoA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: wgUIMOLe5OZ-_tH7aw9RhXY7dSlHuBgi
X-Proofpoint-ORIG-GUID: wgUIMOLe5OZ-_tH7aw9RhXY7dSlHuBgi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5MCBTYWx0ZWRfXxJNeRAGOgzRD
 ksSnxdqWh/4/UHqgRzEiaAzaV1YWi37dSKTHQyHQGDE2U1EHS+x9yLBamZ+4QGdSmw93GGbcjLg
 na95/HGYmVT8UeOCglitk8HNH/3Zv0NgBsU7z6C/r2dxLIOLeIALXCspHflnnoF+B/GXW3/p3m7
 E3j8xutdOS8xPHWdDehcNZPEgkTNYYliAQbZTCUyrduqGIVPvJw8Vy8BDhGeqrJZKKAg4PNS4rV
 aNRaKsAXP0HPDOiYk7UdkFjE5XsD+G9WuXp3pAGoP3HNLSXfiOR3xVOjpkKzMJHtqDAZeB3zmIY
 wqUg4bFGUntjyBbVmuuUqfLB2/VS1Eko/Es2P+oZy/l9L1gqXjZ33jpXXk+kKeG6Mb14hM5YFc1
 utdv5aB5t79OQ5CtSpSvlRpqTGORHHKuwT3ihNwNNLflAFe3OqriEz2EzUUcq1Yi/M1gAQz3EDd
 h0qzOCEIGEZg0ARfFDQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180090
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277126-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E83272BA248
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 11:39 AM, Krzysztof Kozlowski wrote:
> Enable the driver for Qualcomm Eliza SoC display clock controller, used
> for example on Qualcomm Eliza MTP board.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


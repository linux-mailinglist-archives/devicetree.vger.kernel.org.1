Return-Path: <devicetree+bounces-261400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ig0E+K6fWmoTQIAu9opvQ
	(envelope-from <devicetree+bounces-261400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 09:18:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B547CC138F
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 09:18:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AD0E6300D60F
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 089BD2FDC30;
	Sat, 31 Jan 2026 08:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MlYxvB0e";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RRGTZIe1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D16C21B9FD
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 08:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769847517; cv=none; b=SQl1VNdwNkhkxuq5e3ughZ1cLH+MW3KMuc6WP2IlgkSdQCoyLZ5k22Lz3pIE9LW2G6S18JyezGMyZNzT2HiIqI1PxXxhfI9AtFdmJFzT81rdbnQElJYdbtm1ZScW2DDw5mTrbu7MEcQhrqG6V2KJ4rf03icfVB4sRF3mcCWepHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769847517; c=relaxed/simple;
	bh=zYyXuAM4YeUBOzV+q5z2UMblwbdeOowvr19qcaF/ioA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cA0C23xhlfLhBURkTbeaMX/rgRDq8dGmUzxvZhgiwRp0ttM3YdpNbkTYXfw7sn7IwSw9Q5lb9fIPQxcsCU0hYumkOeKkbqhS+jGGuqTxnwxQV3eu9F0ART15/IKtXpJ6NpGb2fnt6DTgQUGyR/zswyklJjMMtHfGvB1bq0KdW8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MlYxvB0e; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RRGTZIe1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60V4ediO393384
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 08:18:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1NTPRQF91mxy0m1hC/Sthd/K
	Nv2hoMq06wZ3tlCA/rs=; b=MlYxvB0eIyWPtZBFDFYj4xBXO4kLCXlnoafTB+qX
	65+ncMYWiF+HDT/8ocveYZtG2nZgiKSzROWfkkK+yO8ETm0/Zg+6DHKSYO7uc0pd
	D7vF4Dxxw1B5fEa5qw9gJ8yZRaLBfd+6hgBoAoNmZOHPl+s4UgA9Y3zfi9PPvhGj
	xNmflrMVFUymWVv0xv/NhUp+HC8dUWDPitlZX22Ftpvp7tbBQDouEoTrO6psL/Z4
	zw1njtTA8OMdG4XbhMhBvNeDJhZx1gE+/y1rzhKhg3nJ9Y80QJKKNp/ivOyHcR91
	AK1Jb0q98rU2CrzUm6veBvE8Oo22tKTwLRyTUgZwN85uEw==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1awnrejc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 08:18:35 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-9483d7bb075so8555073241.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 00:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769847515; x=1770452315; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1NTPRQF91mxy0m1hC/Sthd/KNv2hoMq06wZ3tlCA/rs=;
        b=RRGTZIe134zgBOmxLljkzP0i7OwPm9bSugQ3y1ccVEoBTbujIG3mtdTagYzV8RM41P
         +GjbnjTP70k3XB0Fb5gDO550lINJy9fYe1jqdAfakoTcSHbhtuKC8zBXOci0ggyS/8KV
         NifPpmxLtBZSRh6AeJdvYGMxFOZoXuygB2Mj1jWEHpStfno48zO8yYsRYqQDklIRuAQz
         OSJqQXkJk/p9tZtzcu0xXq+GEz3WLmv57y2+NblCMi+iLhttXvl8fylFXHT/lHBLjjHu
         wq8W6eW3NaDfUBvRYGMxT6MqcHOvzhyQE3OzUkGaDSjcyST1PGuLwoXZhVdjb2rlxq3+
         yRcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769847515; x=1770452315;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1NTPRQF91mxy0m1hC/Sthd/KNv2hoMq06wZ3tlCA/rs=;
        b=O6ejj9hPXwbGwbrEJR5yBhLF1TTsv6Nz5HXGfVj9vCGqi/TI24oHHL3WtouGeppFNC
         X+D+fQ2DcbrIdXAz4Ecl0PWYCam2EH0QwkoQBgs66hbtEuk6IDnY2A15c8qHC9+g449D
         jqN4zZsTI9qxNeCjCLECGBFkLsGEk0sRQzGCZIYARrCbM+lTTc+rmmBeHQYLclUI60Mo
         N2A4jlDaWb8eP3XC+T1HEztQLZoLCN8psHPD99cueg4YH79V+nu5KX6h2gYFlUaKMKUr
         BViznUakNn+DGhPeRfSEtEsIGhF+hAWVDn2iLtbE1Ny5EXOTpCKdnRCo0BfDjqGx6ZTA
         UeqA==
X-Forwarded-Encrypted: i=1; AJvYcCU8o7Ejqw5D76HOTl6B5gxBBNKbTrRaTvd56by1szXpDMI+B4nXWad3ZddoXWzOFaXdl97C96xkwjqr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2v2yJ5Z9lXKSewh5zTe2bdevQms1npI2IZvvBGehcoEJEZGIK
	4GAAoFFbKu5xQnOeZ0UE73tR8krY1M2HnXVA1Q6pKO+BF44PWGydDYcaGONcRfnx+tMm50IFX9a
	vQhxi6PkIJQYU83Ko/SF+GDwPfGlmJzeXLPKnHHubGpcwQD6R3Jex3XZEivjWZuGQ
X-Gm-Gg: AZuq6aLjzdcMoHCI6fKNR+p746MjPoOAdjhRfmMJ9DjPhRdU1+uspSvDN87KprbnDSv
	FU8LAy9Dbjx6wAn6cOQs1lH6OCGMPGir/H9O2eIk1hwzwRxYs/W/0FrthK6kP0EVgSUJuHUjYya
	THapz33wyvZ3PkpncX9eYKCcexdMlXZ93JZm3/2F6WCNzk4Ha5ErHbYjfR0AJoWdp81pqPj9IWo
	E5QdfxaJ6MqRPZdsQPhs6KKWyYazZyuETGJn74q8Li4vcbVabziaLcNegaWEWHpETgO39Xxt1Dn
	wh7ifB1vSQs/XR6s2ObJvbs85wlTdEduuNFFQuSlILBJXJB2j2cpk7ZB5DMINTGFlIsiSozHjJC
	mli4VD24HyhycXHupsFdPQh5YFx+iokagyKRRGr8eliLGWCI3cYuC4gzTi5V2is/0gkeUnqswA8
	7dmKlm9lCl2oa9uLhTWnPBaVw=
X-Received: by 2002:a05:6102:c52:b0:5e8:1dcb:4dfd with SMTP id ada2fe7eead31-5f8e236b9fbmr2091775137.5.1769847515001;
        Sat, 31 Jan 2026 00:18:35 -0800 (PST)
X-Received: by 2002:a05:6102:c52:b0:5e8:1dcb:4dfd with SMTP id ada2fe7eead31-5f8e236b9fbmr2091759137.5.1769847514528;
        Sat, 31 Jan 2026 00:18:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e07488805sm2244188e87.28.2026.01.31.00.18.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 00:18:32 -0800 (PST)
Date: Sat, 31 Jan 2026 10:18:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: ipq5424: add support to get
 watchdog bootstatus from IMEM
Message-ID: <5zqxloovexknbuhknbafc2trf66d6zwtvtkhjbchmbndxg2j6u@3giwqjkd2vl7>
References: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
 <20260130-wdt_reset_reason-v6-5-417ab789cd97@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260130-wdt_reset_reason-v6-5-417ab789cd97@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=MNltWcZl c=1 sm=1 tr=0 ts=697dbadb cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gWikCEODulKzl4wm0QAA:9 a=CjuIK1q_8ugA:10
 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-GUID: 4ld5MkZwLUpsUIOuK3RWTmHX9ZxSKVH5
X-Proofpoint-ORIG-GUID: 4ld5MkZwLUpsUIOuK3RWTmHX9ZxSKVH5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMxMDA2OCBTYWx0ZWRfX3yk51qWSwWMK
 huL8JDYdFdX6sqok2/VB+PJc2LHNreywKex4K4ATHpzYAwdKjn6UVeuXvaz5GUjwVf7KC869I0j
 tMZCEDwaUWJ7Us7a7pvhbEkR2+VJFTINvgwDQZtxol6jtTQY7725QttRlxT/c7SgRB6n+QyPerE
 ChaKDWlSpKdFY7fw1c1/Z00wvWy1iwKw1jkFho49i7jHao4lFcDe3PbwEq0QVc6cgDYSL+kWzwc
 lg94knEKWaoJ3rFOViEmoZN+RAly4xAeV5F8sAwO1y0Nrrysc4B2CW334Wr9GOT6/V+kh0XQoC4
 rX/Kb9uautE4dVjn0WqlobyRYvhjUVKkmMvGalyomhrL1s7YRju4gNvu+L1N5OBSpbq2OEysT/R
 opfFXPueUr5L5wjmZQestd+6QyF3gZqVXTuqhybHt9FyhyVy8W6H4W6WdF6Y862uDiq+UFE0z4f
 km5nSnG8LlB/5/w1xFw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601310068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261400-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B547CC138F
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 04:14:34PM +0530, Kathiravan Thirumoorthy wrote:
> Add the "sram" property to the watchdog device node to enable
> retrieval of the system restart reason from IMEM, populated by XBL.
> Parse this information in the watchdog driver and update the bootstatus
> sysFS if the restart was triggered by a watchdog timeout.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Changes in v6:
> 	- Update the 'sram' property to point to the SRAM region
> Changes in v5:
> 	- Rename the property 'qcom,imem' to 'sram'
> Changes in v4:
> 	- New patch
> ---
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-266206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPmxNBOWlGneFgIAu9opvQ
	(envelope-from <devicetree+bounces-266206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:23:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5AE14E1D6
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:23:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A897303EBAE
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77CF836EA8D;
	Tue, 17 Feb 2026 16:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G0S7QHZ/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i5rSGT8g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5290136E46C
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771345417; cv=none; b=LW9yGnIpNBzcW0ZJp/6BVfgS7hN9TdCeIm9u0jPWEJz/4+hL3CgPM7zPxnugcA1oaf4N+yuMwEjmVkta5YJ5opIiDL47NqZCaXTMus8qGbKlqlAXDtbEVNCBYO+Boedw4kLVXGE2+oPGag7YLdbaROnXpZeX5CMkO+kEBjn3BsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771345417; c=relaxed/simple;
	bh=MZgfISmNtKRd0DeJegvUbp3K2YqJ4nDQ20AQ+rfElTw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nPZQCKSbPsCPhSecEwPM8ss6v0xvdTnIvAgvsv+0uIi0yTXX7WpvOuqs7bwZTTCzjl8oClIAKwlQLDkKvELcckZGFCBC3qNwLqBWC2XWNyeGzNZL+YWYijaJIcChmPLOiJqFNSN4LKdWvxr/yOXAIc8yDntXFTFatV2tyW7qOYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G0S7QHZ/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i5rSGT8g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HBEOEU1614526
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:23:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WVLp6F42vh8XKq8PDwrm7Fs3
	8/i5i/QAF9Oiq/UTNvA=; b=G0S7QHZ/8Eh8IhBBjMq3+AQu+CqsB5+SIUogcOuI
	VRDHNso4PfF4IfNgt27SPIAgySxHCFkOvvpVZUTX5O+1b1qUpyK3gnpYpcSYvvVG
	w0BWreXfLTm1nRkBHTb/2CX+UpjyUecJ59+xlQNatrYhR2SiLrhBO5FpFZ+i8Xb8
	8rHqr3iiPCA9ynDsH/nuqeQerf6xBNZGdcH+dC1Xf7e9a5zofYH/Sl4fwQJyNXYK
	cpj1hlCAq8g61CwditqlQCQgRf5ktj6snyquECSNxbJGzVYgCImgbWhi0l4ZNOvU
	zn7hEbd7OAli081HUHjiQPNDlfxeowqj2a56lF72nKqAzQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc662u3xs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:23:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50341fddb89so348333421cf.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771345414; x=1771950214; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WVLp6F42vh8XKq8PDwrm7Fs38/i5i/QAF9Oiq/UTNvA=;
        b=i5rSGT8gviwAtYba4qh3tEgkANEfityb6WwgMjkcKtgPxIxHka8RZJeE7hhkclob8b
         9beip7/ReUhYUCRBJ9bMG8DfxZ3rmyOzLHArSDPnIEb+jjgY872rua7w+p9JDMfTAsy4
         ZF+3HS5wSuYWx+wz8+0SKxRdtWdZKvjGSM5wMLKZxbZe7wP4yBG40krJnygs4s/k+Cek
         A1PkIFysdD69Uhvy/vm+G2NKWwRCVvq+fEMwWpOaGJIIOyxDr7tAKgMboazyfXj2g89Q
         /KtzaZ60sYU2Mb1uhF62I/1zLpq6h8zNbjkwE59+4RxvYq9M2+3VnVbAWxY90NAL6H1l
         Gz5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771345414; x=1771950214;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WVLp6F42vh8XKq8PDwrm7Fs38/i5i/QAF9Oiq/UTNvA=;
        b=q9BjQUNdz96Di74392eWxf3M/waOV6ABGbCP8N4jSxwaIjrfpY40rDihD1Jg+f/gWu
         /oSsF6FuHF2C87YLBEGc/XR8aAtj/qW221iDrCtNrCU7zmqaK4YcKexZqJoXzdH4c6za
         cmgMBEo59fnhD/y5PNl9qU2ExT8WWFRM0axTS+ZWBo6N0i7wZlTEoz2/lAxdfI6hI/et
         GhKLWc4Ol9mcZhrRa75VMgXlheRfvYOy3PaN5+v/e2X9c267qJ+mpCl0VDOdCmSg4xqZ
         91/4j51JScXJdLR/GcyEpx342mIcuf1DJFH2JWMl70clAJ04wBQJNmd0P6EtvnCDmOeH
         l05Q==
X-Forwarded-Encrypted: i=1; AJvYcCWsTMMw0OVznDn9lQmFkffwx6vEAU7dnC8gAv3ujCzKDKsqCoKmMwl7N0eb4XACMJNqQpkb9ST4ulYQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyCFl9SXe45wC9/NS4fbqcQxdRgaz4jIWCcnNjwhyLbtcWxX0KM
	FfPLyXISGeUQIkmR60lApA+lbrWqzByAdpQOIpRulTVhCDWoQjcYrqC/vD+qoGf8dpCCzrSPIfb
	ZgqQDiHG7eJjSOfwK5fnm5lZP9Tb7OI+lcWUi2sw5ve6ZLQMVVlZU8+y/WU/vF5Vk
X-Gm-Gg: AZuq6aKsKDX0rpDe2v6BU/m0RopRaVMAPKlelAgZiV2lgv8LElTmDN17Eeswc7FsirF
	5I2qyoNOOCKC06AJUs2X7FRjAC58wpBTZUPpKBoFKyupzIGyoOEXj6Udo2TtV6+wvCnIF3qBDnb
	ClW4g5EaiZAQi6CACOddANQ5uwdvIoel7plF9+nevmEBqlKR+PSCdHqmYMQFdQsCw5D5F4slRRL
	AXhSGPJIcVh3UHe8IMttyu7eB0F50FGWwKa87Ie2+qlNMQMWDp3Jt4+QnkFmYBKUFqA2zRDTf9B
	iWOTCWyOxCUxIPtG8K51EMzzmCyNlII/vA5e0GcO4jjJ4Cymc8j+3a1qJ3lBBW+vNeK8PDtomzL
	y3CQUaJHIkB/2fKCHdcyeaEhAiCxzEqe7/A2mrKFVCLSpd3ZTYAQZOrf8g5BH0fDA9fO0RpHVnW
	Pg7AucnqSsKYCvJJEjdDv76hVsMMYq62LuLJs=
X-Received: by 2002:a05:620a:468b:b0:8c6:b14e:6569 with SMTP id af79cd13be357-8cb424bafc7mr1605744285a.79.1771345413713;
        Tue, 17 Feb 2026 08:23:33 -0800 (PST)
X-Received: by 2002:a05:620a:468b:b0:8c6:b14e:6569 with SMTP id af79cd13be357-8cb424bafc7mr1605740785a.79.1771345413240;
        Tue, 17 Feb 2026 08:23:33 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a4f5fsm3969811e87.56.2026.02.17.08.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 08:23:32 -0800 (PST)
Date: Tue, 17 Feb 2026 18:23:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] interconnect: qcom: De-acronymize SoC names
Message-ID: <fepfcyqpc7h2nopqbtjfmaejhtb5m2hrfrruzf355n4wc7zwyd@qek476ayuvzx>
References: <20260217130035.281752-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260217130035.281752-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260217130035.281752-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEzMyBTYWx0ZWRfXwQHOjcTGa8WD
 JfpKqpWyd5g3ln5b/5yoFbSK9/1gmIfUnmR0mxXap0QJyh9nlGUwXokfp7RXPIoHMQiaJwZ71PP
 bRF8tuVWiUemuIGiKMlDbFibFgM0J+LnJplJ30NGhQGjmFGOzvUuIp1HdBWlDB9jdtyJaIdFQ0c
 FMSwnkMEGBt6Eyww3uqfNTbLylswyZxY/YjG5nuDkvvX6g6TunICM2Fs+Mh2ZBEfL7uCw6QgGKR
 mlMQnaecJz98Ozz4tQKCoYKSu3Go1Ll8pgV+bhILQjUW6wXG28sPwY9XViR56cJ2r1qhZMEc7mN
 biQXwXeCCD17gQ7k37kf1qsZb/vG7AagKzDsTGfd3h2kayd4Yk2PHUQ2co6IXxHj5e4MzQMIT3R
 2WuH7AoaabFJQUQZRxHy/gQSeqRPj9fLpH28p1IjVEHSFGxXOyAHEiwjsLcEnOdhnNpg8QQArPg
 czA0+mwaQpmokQMz2GQ==
X-Authority-Analysis: v=2.4 cv=Y6b1cxeN c=1 sm=1 tr=0 ts=69949606 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=FlZS5g-ABFJi0eqNzBkA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: sR5QteYEhfao54LxVCdbikgwQv1gyzjS
X-Proofpoint-ORIG-GUID: sR5QteYEhfao54LxVCdbikgwQv1gyzjS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_02,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170133
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266206-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4C5AE14E1D6
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 02:00:37PM +0100, Krzysztof Kozlowski wrote:
> Glymur and Kaanapali are codenames of Qualcomm SoCs, not acronyms.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/Kconfig  | 4 ++--
>  drivers/interconnect/qcom/glymur.c | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 

-- 
With best wishes
Dmitry


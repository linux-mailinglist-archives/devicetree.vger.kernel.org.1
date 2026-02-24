Return-Path: <devicetree+bounces-267688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPzVCu8SnWkGMwQAu9opvQ
	(envelope-from <devicetree+bounces-267688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:54:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA689181294
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03184314D16C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C68226B756;
	Tue, 24 Feb 2026 02:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UjceNW+t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q6qIEQTx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0706926F296
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771901605; cv=none; b=j3NFTOBRDCTpWkfhOMkJSCIVYy95fOF2BOZXhh4tNEHVi3I/qUCd8E9LzmMJJ6h92+jwjMybpQRiQX2kyq1Bf3L3kfjdMJo/NL6guz+rEe5qq8ENVGBmn8DfhMRS7JoNkrmycLO4aX14ueshlDIJ34AbbESabLq/wBTWsieZTrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771901605; c=relaxed/simple;
	bh=edUKXwpGonwpAJ5MQCfXzvNimYLCwVqayhEcH/oV6Wo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R0AlsEOeHcjx7QicbP2MhVaOmhmRkTfeTR2STmipY/O9ujDS0M4CwWddZpM4OhWVsRwngCdRSG64cDaRucd3VAMxFUWl8p59vODIkcj3aER874QM4f8JbOg7fo0mVvObitjSQjFfNCmJdD7Hd+3qltJjGKNYZM7r8yfB+tUuuBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UjceNW+t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q6qIEQTx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O2m0li1815879
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:53:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IfCInz/Ts2xFQo9brlsDwwgd
	/8bMRGYH2Ks+/vHbW0Q=; b=UjceNW+tFF+CvZz16NhaD5k9b2sGG9i9YWVfQbG3
	4fnSIAlMIR0GmQiwfoiwH7vQkeG+Md4l2G8IDjrP7fRp78XwAEe8xnFBCdedDFVJ
	1cCIfiVTU8si+5TAIHpvVLO0T5Ij2LHIEKcvP1UBTQ5unAxMmn5txXStT8c/DdEE
	wuB0JhwFUGdfaDOPwAQvbf7FbqJq1anpioOIdCZeBPWWfJUPJJV4jx3DwzrpA86j
	wE44JCU+We5Ey6giasZsZPVTKkYZSfLp3WPO8a1/SSOUFtws22ExG1iZ8NRUROpT
	ry21W3Q3vizQrhWc8LmW5L5lgpW0z30ewrhzezeLWJ/ycw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgr69j2sx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:53:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb390a0c4eso2045288385a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771901601; x=1772506401; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IfCInz/Ts2xFQo9brlsDwwgd/8bMRGYH2Ks+/vHbW0Q=;
        b=Q6qIEQTx7OEdZKoowSYhKVbPxZY2RWOgmpOa0VcESSTi/U6/MGmwGBtoQ6QINCWfda
         xEI3O2a8Q/6svnzDHe4JaU4nFeQSw5kNEvQdrXzBdI4lqu95v+wY0HD8h6nkf20omptd
         CrpLDKz4YhONl2AkcWHYuDxgNWLclwbroHNyIOaDBb6u7v7wexB+n39+hRFpIMXR1aH3
         wQbhj/AphLuRZFlbkhdqlLpzo86kLy3lRmKbo8LViuTs3Nv0g+ypNHxgEoGDZuJNlWy0
         DMPOBGdTS2vRCY8nG38JPNGsnjAIF2HzIgHjD+Neepe3uM0QXZxhxz3VGmw2Clkbi5/X
         lvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771901601; x=1772506401;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IfCInz/Ts2xFQo9brlsDwwgd/8bMRGYH2Ks+/vHbW0Q=;
        b=jJdE4dS9e58pS9UZk06rrv4bf1PzkqQ2UWdozKqeGOjiDE807QlOOpOi9SRQv3xf7X
         6aZFWQ21MC6ugQ6xInu7hq1UUR7oMJqTFsHJYwJ5CytOblGDzjR2Rkw/yTeK9vABh8kE
         sMa5tcFcR9mIpfDqhqqNXK8/PF6JW2Y02qHE/haiC8J4/K+yj2v8UpydNUN4hKhEmotu
         n0R1uhwOBhLLftMqKtWJXbLJaXjQEmOMeJ/c0UnN44f4SRiBRzzk70ERO5NR0vB5xLXv
         wENKYFesSzGEXUJkacPS/UYiLffoQ95nTfbFJPDaYju3p1o2lHKpyZK2YavVEooUOErw
         L47w==
X-Forwarded-Encrypted: i=1; AJvYcCXRZ7SCcVRFrHh5BKppAwHZYGul0EDntCfQheFd2PtOWK2HGfrfdRZxrd0b83KZgaZKkt/l0VOFO2AH@vger.kernel.org
X-Gm-Message-State: AOJu0YyzPIQ9e5cxqM5SeUWiv2q7aPpEBfmpbPGMVlBVJm8CtW6jZE86
	MrbCv3v13AUKwr+ffpwUi+MJ/I7q2m6dKTLKIe0zmXx0YNG0Xjsp8C8bbLVrWFYjEUtJQY2Ys11
	QFBLqiVdWHvuK6ggIYdslIPwB9rBnY1NZxF/OH1e9ZLfaxTDZNeY25GCnYedQBqns
X-Gm-Gg: AZuq6aLWeToudsyldM25fLmEqgmG3kkrOmR9DW4NirxCGJx1+78pO7SxcIZmEZFUEuz
	nSt0imQXYjK7CAgLEvMhx+axpELyCucUWzgbrF968LY2rI7gWk+nNkdVRfw7Fncpw9nThA3PEp3
	0Ca4yet2XXqkdz/zIKpIraKOCegbILAlKdqL2pGixESWXA6cIXYVA6vLYkbB+DyPgC3vfHJeK4E
	y4/3FlGmjpV6GvxHiJX0mergVxGON2VnDhhMc3otcSdgcZlpUVXjkeHq6uaKzpwPs1PrEj8SkkU
	z+L9P9fz8pBfAEhbHfST95B8W6pmzdGpTR7yRL0Pyr5rnNqRAdY13qgOpwaTGRXy23zZZHjMaAa
	2Imo3tiMOQq8iXnDqdmMRYBuQOhMZxqnl/rx7BmXPzG+7wKwPngSFZRqpPz/avMreRU7MRToka0
	XjDWx3rakpvcKeykmY8DJmOKG3eyT/Qq9fTJ4=
X-Received: by 2002:a05:620a:1a17:b0:8b2:e17a:37 with SMTP id af79cd13be357-8cb8ca63f64mr1390870985a.43.1771901601168;
        Mon, 23 Feb 2026 18:53:21 -0800 (PST)
X-Received: by 2002:a05:620a:1a17:b0:8b2:e17a:37 with SMTP id af79cd13be357-8cb8ca63f64mr1390869085a.43.1771901600769;
        Mon, 23 Feb 2026 18:53:20 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb45a59sm1888486e87.68.2026.02.23.18.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 18:53:18 -0800 (PST)
Date: Tue, 24 Feb 2026 04:53:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: qcom: qrb2210-rb1: Drop redundant
 non-controllable supplies
Message-ID: <t5ub7xx4dqsyuo7b6wtjgdf3rqkkuj6oaga6u5gtcklonwzz3d@lfl2np6itqsu>
References: <20260223-qcom-dts-supplies-v1-0-f90ac885b3fd@oss.qualcomm.com>
 <20260223-qcom-dts-supplies-v1-3-f90ac885b3fd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-qcom-dts-supplies-v1-3-f90ac885b3fd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=O6A0fR9W c=1 sm=1 tr=0 ts=699d12a2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=YQIQ00YL77e8QyTPvtEA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: v68PPAtdONV-rUomE8t2Bn4A3SfoUkcY
X-Proofpoint-GUID: v68PPAtdONV-rUomE8t2Bn4A3SfoUkcY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAyMiBTYWx0ZWRfX5PilO8V62k1E
 2Qe6Hl+AQaJ0nDG7MleLLEaHKD9Evw6k8jo0fbdatOdC8pGsGmX889r9e26CIrpTmuBkJscrkyw
 SKMD1bbSqpl8XFncS0IAb6kfBKv/TIvIqIutb1ijUg72L5FTDGW5cjllBp5wH7RGb8N56ksJYyK
 gWg3CgfwcJkG1Jk5ak9K2Pp6Jw1bYDHeAFmnu7aLWT3b+ldoW5aVOiZP+t0PqnOIon3bGt1ZeRX
 OiJ3yjSpCsIEGmCNv6estV9VRi89TXKOFqM/6NmtSL09AfcvJORmwpwZY2rDmHvkgv8hwh2vhd+
 dIy5hA5VxCG3LCff3+Qcy4BBlAn/+9DQfrPdn8YSIEGgZUECmtlYJKyOFrmT//E4oZQP0tTTyMH
 hN++OHc5z11OvmRCp8Drx1Ayufno2m7uVFcHX5qe8qj3sz1JqH/vPWOZ14j1W/YzU7QAAK6PJUW
 pj7Cp/jw1qujMYm4S3w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240022
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267688-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CA689181294
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 03:54:19PM +0100, Krzysztof Kozlowski wrote:
> Drop completely redundant non-controllable chain of "regulator-fixed"
> supplies, which serve no purpose except growing DTS and kernel boot
> time.  They represent no added value and because of being completely
> transparent for any users of DTS (except the bloat), they should not be
> represented in DTS, just like we do not represent every transistor
> there.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 45 --------------------------------
>  1 file changed, 45 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


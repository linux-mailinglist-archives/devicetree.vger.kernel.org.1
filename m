Return-Path: <devicetree+bounces-267617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eABnES+pnGklJwQAu9opvQ
	(envelope-from <devicetree+bounces-267617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:23:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A3217C4FF
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:23:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3D4D93034B16
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E585736B073;
	Mon, 23 Feb 2026 19:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bRXH0f16";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YccmAaRz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E3836997B
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 19:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771874498; cv=none; b=ljcLPbK251FKZG5q9AEzvK2pxFG0alnCoIGjbSlxxPJhmC0Fy48CU+q+WMGbSoKP4nF6a4yQZEFBfahaYPtLVKa5ksFfUC7egA0xWZe8LTyKegU0BMA98vVpRROrC0Qadn7LD6UinJgaUlC6KG8ZlUc/opo+cGeDreiOx3uD0b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771874498; c=relaxed/simple;
	bh=Wil/5hS9rIZJPcSIIANZV/X/gsF9UrXEUlxG0BZs9no=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QLmJNt3uV0ADQXHoqwgBpVNTKH9d2wKPoZMvfCj4PRAmghV9bhBIt7Cj413isepBQJR4KmNWJFFBmrHEh4elqNGHhloKDipcKNb8aB4TY0CuQeiINH46MipTD4pUgUT4ZzQvlOq4Dt7Xz3txbeuZXG0n0Gi3ALxg2sxTcXciIgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bRXH0f16; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YccmAaRz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NGvHGf3478508
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 19:21:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+7adm1/X8iY8gA1N3fq1TBSb
	GUPxPvBpPUDTWTyP9Do=; b=bRXH0f16axb245a61MilhqGjGojeDieGuCfbT6ev
	i799lfZVtHm/a0491nLNSkiteETnZpCWLXPFj9+R1t7poVX6b24weUrDQYvBAUaf
	f+8QnbNaMawti0ac8XCQNhIObvtmIAlSPXmDW61I/uMC7G3hSLqa8SZS2oTi+99C
	w2RdMkPw32OvsV3/1Bs6kJsWosMLT0RcJAwLWK1BI6+7dvx5mTgqcZ/XhjZc7ZOo
	XK2Omyod3m8+gA+sdfpBCdFfjRAbKszGb33rCgwk2mMqAo9OSVn0pnurvbfNUIln
	elEpVfUAXNt6B0hj3NYqZaldN/qvmXsGVi83BtrkzeQy/A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtv9rfgv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 19:21:35 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c71304beb4so3333447685a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771874495; x=1772479295; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+7adm1/X8iY8gA1N3fq1TBSbGUPxPvBpPUDTWTyP9Do=;
        b=YccmAaRzj3xMzRQ/H1OZ18grmUoV0Q0I9F6rARHXz/7rXTKDdyGek29HtP1FBBv5ro
         SUWdp8SznQ5kBjTClQt5fCqiR9IU0EFvB0/01XUYX/9TYC5uOZzlyneNIy25pmWsDwtK
         P6HOYucBnfV279LoD8ux5sBHMRdF3FRCkp0hANw48wqJdBbG++480RDDJrWk9/Rz4guC
         3B0GCeV6KhQ5wyf4CmSsmFpIIhy2Cb4KKmd5oWK5tEH+37sY4zJQSHPtfKFzZqoUNmCe
         /qqefZ/fUi2iosDNOEmEPTwx3X3FIIpEO/Dh0lhvM5kzXUXTyGxfdxBJ3P0zEWNTvsDI
         Mecw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771874495; x=1772479295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+7adm1/X8iY8gA1N3fq1TBSbGUPxPvBpPUDTWTyP9Do=;
        b=T7cLWCX24vplS6ySiWQGB8gaL2RHe7XrEQ/703cfJl/k8+njCI5ujNb6X/oMr4P8J9
         Lq6x55KV44bj14WZ7mp6kJ8hv5QsDo2qEe/+9mhG9uLTz2B2WLZihaEkKbWCUeyjMfqo
         uG4cfuPoaQIm+pQrbY/oHMVSJO/5VdN2D4KpqOfvQa0GyUJtNqslPX9rVhc8LUl2eFGg
         aZUPIukLqONj01YlEymwVcOl1X3CDgQuABQ3es4+mSnyqfRtz3/qQpXkjV5dTCw8/jm2
         QTn9+7Y2/a2z172tVFfeElYD6u8P7YYvjDPetWUIzyT4GSvN+ujfCrVa+035vZIqlZGB
         3zGg==
X-Forwarded-Encrypted: i=1; AJvYcCX++dbxUanGYJqDhwQNB59f12ovY5dV+DN5AhCZnwv7w1oTNY/MxPiYqU7txFnI6hN8ruQpNwoBauKP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5bqXuyUdFMwjYXolc6ok8aSgned3qwjnUYH0VxuLlcLEmBZ6K
	Ecdm4W2bYRTvOTkTPmBUD6mPvuf3lrucFrRkseGIW+ToYPT+oPYTeIzLEQWxPI9+wQDeoeDjd/r
	q3CQswSwUHAJ12PROZv9XFrShVV/KPgGbSqgZaF483e5TA7bL/mxJejf0RGTVTe5S
X-Gm-Gg: AZuq6aIx4nIVNH4pp/yCDXUCLU6Ob1XtgFhmnSLO+DU8dZBthDNCFho7EcdOhqzNTy+
	LKsJqOvc6WdyoPowA328n6c4Gvgap3tmbXvjpRknQyw8vCw4rTy14Lc/tpMcSpxsIjbJWOFIHiT
	MoZC+GZ52OrKGnEJPWr2X/xS8k71hMw0BeetJAFvlKExOKvs6L0BD4QUYUUh80nPhnEGGLPCKb7
	nlRulbFnsfbHzVPQGB8bTnFvPcG39qKPQHXwANbXV2YrazxoUGWazJ1NfZMqdYsEv4o6Q+vrpqh
	91A7hpCLCmAFCkmSrYfQusL0336n+YVyGy3E7c+UlB2ARdlYYYwEn5srZCzJGAn5Itv4M/5YgI+
	3Sr1yg2c1tZFk7fQ6lGYy0y982wCgj5cL+ON5fh7vz9H4gVtEJb5SKfhWxgtgsNKrcqRekzQwwf
	PU65z1SrpEzAOL0UxMo358hM/8kD68N5e+YBI=
X-Received: by 2002:a05:620a:1a1d:b0:8c7:c25:9e69 with SMTP id af79cd13be357-8cb8ca83429mr1265869785a.66.1771874494643;
        Mon, 23 Feb 2026 11:21:34 -0800 (PST)
X-Received: by 2002:a05:620a:1a1d:b0:8c7:c25:9e69 with SMTP id af79cd13be357-8cb8ca83429mr1265865585a.66.1771874494143;
        Mon, 23 Feb 2026 11:21:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb45813sm1729180e87.64.2026.02.23.11.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 11:21:33 -0800 (PST)
Date: Mon, 23 Feb 2026 21:21:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: talos: Add missing GCC clock-names
Message-ID: <3uukb4hxh7wlvx4alyx45czon6tod3iyf3wmejvxvadafgf56i@w6j53o7yars6>
References: <20260223143624.118271-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223143624.118271-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Vaf6/Vp9 c=1 sm=1 tr=0 ts=699ca8bf cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=QPe4Xi3jo-O9ThN1vCYA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE2OCBTYWx0ZWRfXwzmYBp6DmkNA
 itSQslFUKXA//X08VC4Vy8PDgo+vkL4M857zoZI1KwtWBbwHyLUidUZQdatj0dI4LaFkAtuVHY4
 t18J4HNvJCqEuTM5TF63wTkqG6n4FlCj9HK7bT2bmQLbpclw5Mdijw3DVQ//goQz21juA1xl1Lt
 WV5Y2hVZ1Ixk3rnQM8ohEn03QHQehwhxHt0at6wrnOhf851rMe1dQ8PHk9t9L+iFLOqYhkxZwaD
 caFQrkx2V5l6CYK3JljFGBS1wpdmZRZvWYGo6G+02iHlf4IOceRnDonZOlvbIV/hETfD76oczlO
 5Tv++WAtIhEPCAH/4Drh2EzG14P0WQQOBPHyiAHLGzzjKnQ36mw16dPr9343fnS2j+AmLOCEJMZ
 auhMcFrjNVvt+TptmSun08EmgTpn6+eDuc355ctFZrg9+xgne2oz/Q7itykg+pks5EhXP72ESr5
 fUtT5bfrkmuwfFNLbPg==
X-Proofpoint-ORIG-GUID: my_1IV-4z1TnnGALrevgNufcKoKxKQT_
X-Proofpoint-GUID: my_1IV-4z1TnnGALrevgNufcKoKxKQT_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230168
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267617-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.1.134.160:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 65A3217C4FF
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 03:36:25PM +0100, Krzysztof Kozlowski wrote:
> The GCC binding (thus ABI) requires clock-names:
> 
>   qcs615-ride.dtb: clock-controller@100000 (qcom,qcs615-gcc): 'clock-names' is a required property
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos.dtsi | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 
-- 
With best wishes
Dmitry


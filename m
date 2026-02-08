Return-Path: <devicetree+bounces-263750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fNWBNCYFiWnD1AQAu9opvQ
	(envelope-from <devicetree+bounces-263750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 22:50:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2737E10A459
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 22:50:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95515300952E
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 21:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21A4D34B183;
	Sun,  8 Feb 2026 21:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UvYhpCHF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I93mrpZz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA586306B06
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 21:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770587428; cv=none; b=gvX0DHlvJEJOu0VHYfE9pFf/uQmAZmSBf7UJoNaW1wJxnohkLk4hqR4KdO+bXf/H4QunH7IPJTt4pKM5XU5FAZSwvfdlNeBe4LxY2rrQu5zsVKlm1mWlX8/sP5Su+2OoMHPD9g1UEqlN6F0vFcFcsmOkhAyt/ZzVzNI107wfrW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770587428; c=relaxed/simple;
	bh=3sqxfwiHpg9NGhfCvj/lwGpS6zdUgJo2L3SFNseKJBU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PjgKOKfGOIQv9kCCjI3iSb0ZK6TX/oc9En5FpbuYZy0Buxuqouk2D8TsOkhFPvB39HmG8YDgqOicKMreKLqTw6SA6O5/3wALC9dFqz6EQWna5rXvQ5J0UT06y8bOQw1TN1MtU/mS0hfITASxeRoGk9syGV1oF8hbiPcNbPLivqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UvYhpCHF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I93mrpZz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618Lo0Ao1589065
	for <devicetree@vger.kernel.org>; Sun, 8 Feb 2026 21:50:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MoJhtGGFfr966sCxFmKDNUK0
	M+fXF8BrsqWGwL92JNk=; b=UvYhpCHFJ2sK9VuFKhYwJrXg6kJg1o+cnTL5yNTR
	3ujQ3+bZvHN1TB+y/gLiESaGenlnOdt5uX4QQAYralREINi5stiDJOJo9JZrGU/u
	CiAm0FuI8DfJXZULUgioZPfbqM5K1I7nlWffdCcUu3wUl+itUNVPMytLnAwV/+Ek
	kxfCiva2Ix0mcdMpxlRthraB/ar2uS47eVJ8MiyANmB901tKP6XXRB40AyheIck8
	8+XgUvTDnoAw8YoC+iniTzMI/fRuSbrI06OsenCcHu6WpKt2CDwhaXgdd0jEOpqs
	XP/n7+qqYRgWvLe73kYj+8BXGQ3QiMR1ycRdKwT4ZC9XPw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xcctyjp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 21:50:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50340e2b4dfso161542191cf.3
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 13:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770587426; x=1771192226; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MoJhtGGFfr966sCxFmKDNUK0M+fXF8BrsqWGwL92JNk=;
        b=I93mrpZz6Y7765L0Fpn2tu6mk8DqtJ1+lDThvwRhqdqLIn6YtH01NOOg5a1rOfJ7o6
         xFbgT9CIWkkvFoztsj+TeMmeloSKo9BMKBUR2fdySeKy+ApJBiUkPTB438HJhYBQdrtZ
         v0DstTaqlYLLQYEaDe1dXFtXpzSxdIkgYJgv7o1VyNwDDBd0K1pChy3C+qg3DQbnr+qd
         WBjzPcLSyVsW/nhHXkFeiGhMBfHYcol8JbSxZwNgJJPfeSZ3kfUeyEQ6CM5M0wj0JBbs
         SOH00DcrpGE2c4qi035a/8YbP6gzgqRkpbTw6RfrMi3R+vr9DGqe4X8WTCLNgbTwppTu
         Gi/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770587426; x=1771192226;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MoJhtGGFfr966sCxFmKDNUK0M+fXF8BrsqWGwL92JNk=;
        b=N+8ROgYT01R6QCS89p/ca6bdCzr06E4Jw9ka+8chKC+hiInBZp1OdOhPs1jIHfMXNK
         8mObMsqrF3cjbCKmUdkOv3AGx8Y8zfU8u1x5ieKuqB6Fcx431PPd+x1gXEgb4owjPJeP
         8dDd4aaAVHzF8/kr9MKmtL+XWKyXBy8opdqdZj7xFoWdMpiiy6+N09u0Qt97/1w9FdaB
         YqKzt//6ZCTpad9G6QqRLbmPLL25kaNJcvXx2Z86Og3Z19g1y1Ij8QCZmQOKKRW68l7G
         Gn6pgY9m6k7Gy1lvD5kcYMU4wfboXYGea4sevZKXf/FR7XBOtVCFSp38f9daMw/aEumj
         VMGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqlFxuKLygcZ6y4yA2t/WWZ7dIyzQz/rWSg6GJEK3c4KntUsMbab+slTgMt6foznonzo6sP+V1Wtjc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/8rrehyOcCzVO9vOnNo/ETSNhCu1Dcd6qBEDZm+OnDFvRmhjy
	FIJhC+r314MaBVrIatMqPRA6Fx3A0YkHCg8M1ht0GgbfeGOgBgQUuyIxxOsKJie3Kqzxi1kydml
	8/+DWgK4vg/ay/sneQQF7dqHBLKLWAj6CZYlOZ/SBt+Hf76sqDDck1JI/N/jna8oS
X-Gm-Gg: AZuq6aIlOELTxqFmFSpI1qiwkHXF/LBQKsyuGRRfmlSNgPodseIRPCgeR1ad32FxcJk
	+Zg8ZzBitSYC6fEJSiD6HP4nTeytNG/ik/mOyrBi6GsKJrDeOAC+XFXV74AJ34XyBkfT3Ck4ECW
	l3BTmjDo/AcMRrbKy48+0PxfSQKzr/dsAM/RzYzQRHWQfANhkpq91m6Yc1m/tYoSbOgAyRvHdd/
	J9R3j0uwtdZnwZpFT/qu2asa9W6LEe6biECo21ghDzECBlJDWjLQSLRBtNIXa6ru0vIdM5xhMmr
	BF+uhFNmOJZ/cyqs2oYx1TLpCsRaA5dIF/jDWJQqp6omGNDdStiGoUzLErVOkS+BujD/yK0q4Yi
	hH/pDdeBlCmSR3dz0laqSYihXV20F+uFoqbxDkwrSH43KqMK+csYzq9r5cnyBO9ouuU+BzRzotW
	lJpc2Pc01Wp4eGqtuu545gidU=
X-Received: by 2002:ac8:7f0d:0:b0:4ee:1db1:a605 with SMTP id d75a77b69052e-506398738f1mr130855311cf.20.1770587426068;
        Sun, 08 Feb 2026 13:50:26 -0800 (PST)
X-Received: by 2002:ac8:7f0d:0:b0:4ee:1db1:a605 with SMTP id d75a77b69052e-506398738f1mr130855191cf.20.1770587425664;
        Sun, 08 Feb 2026 13:50:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44d299ffsm2180093e87.55.2026.02.08.13.50.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 13:50:25 -0800 (PST)
Date: Sun, 8 Feb 2026 23:50:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Maud Spierings <maud_spierings@hotmail.com>
Subject: Re: [PATCH 2/4] firmware: qcom: scm: allow QSEECOM on ASUS Vivobook
 X1P42100 variant
Message-ID: <tedyxze5s5zziagmshe5p3ewnmdklkldrbsjvvkizwvxy4qeng@w46r2tg3i2bn>
References: <20260208-b4-vivobook-v1-0-3a9b5e153909@oldschoolsolutions.biz>
 <20260208-b4-vivobook-v1-2-3a9b5e153909@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260208-b4-vivobook-v1-2-3a9b5e153909@oldschoolsolutions.biz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA4MDE4OCBTYWx0ZWRfXyfsGNMPtHc5A
 wi8tbds1TikmgUIfUn+4TNZhw+zE9DfJrzRDXttV6Z4ZO8gsyAUz9P6PGciGNwEem3iud3g0DfL
 M8IrTuSpX43Y/JwEnQjjGl6LEDbGt5Ii6x/LMwkwM7q7S3/tYyfVrjZy1jU0peJnjgz22N+8pSC
 v3rNPjDks4aD9xj+etWG4HOemUhaoZq1TWDgJTBXrnr5ZZ5nPi6Lu8IQoT3caOunEKr1jhgHClo
 U8NVEujgO70Hlk9ID6I75yNN9f40Fq4LD26+XxyO72tmp/ZRycnIqGJ/rqHZk20QlIOubluux+e
 17LguSj6kQABlHlRMKjqsIWC76rHnvC69SU5XqiUEn4qYJyegXTxBNMW1lbdaTIijZf24zWDx4k
 XUAUI8ahNnv+4kTV7itFo+GM+2AMPHmHVgbyJujDr+551mIJDfX2tinA+OkyJ2HXnvFrkeXU5oq
 SSl5/t7sY5vmwnUrseg==
X-Proofpoint-GUID: ZFRIbn1FEr08g3DQVRAKOpTXqjeo8Q8T
X-Authority-Analysis: v=2.4 cv=ft/RpV4f c=1 sm=1 tr=0 ts=69890523 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=gxl3bz0cAAAA:8
 a=EUspDBNiAAAA:8 a=itIGahJsI5aVLUWJxsUA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=dawVfQjAaf238kedN5IG:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: ZFRIbn1FEr08g3DQVRAKOpTXqjeo8Q8T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602080188
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,hotmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263750-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2737E10A459
X-Rspamd-Action: no action

On Sun, Feb 08, 2026 at 10:25:39PM +0100, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Enables access to EFI variables on this machine.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  drivers/firmware/qcom/qcom_scm.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


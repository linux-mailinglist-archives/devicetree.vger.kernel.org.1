Return-Path: <devicetree+bounces-264396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH5RJlYki2lyQQAAu9opvQ
	(envelope-from <devicetree+bounces-264396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:28:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1808211ACB0
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:28:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1D43A303A3ED
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B19C329378;
	Tue, 10 Feb 2026 12:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S1S59EV3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W21prD1+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8E5328B6A
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770726481; cv=none; b=Mhn5W0BeoDiTnxYi/uZ5RavtuI2R5uTf9sl5hvAs4L/UIKLXCBvIwdco9lh8Bg4GbPEuxhiiCmtTC4jZU+s8v/jYcZiuKw2GMrceuH23vQEWAatunLWM/1f4PTbi9NL4KfT+0DWkYfFL8kG+0a2BYRONzvFUjLLnBW6XKMzpqNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770726481; c=relaxed/simple;
	bh=Uj5Z1pmXiHe45fAk9E1ZfapXNfkqJAuX+5L4tZW1EaM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nsHgdTx0fz5QB/k4Omv+d0FHINWcZUpLi8VbD+NuDMPZwwmrnJpYat/8T5LC9lEZJRoJMnb4pZqj/Ba8RdZ84s+4w/g8dxt1cbPSr69Bs9HJgZl8GWvio81zZWbC2vRm1W3rGfcSfHp2UrOeMs69mAZd+aC28lmIRWORQv4XCd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S1S59EV3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W21prD1+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A6ebsZ442300
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:27:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Lucms4tHlGLGGVfdFQ6TD1R6
	Cqq5YSK8Ye7jCm8sfrw=; b=S1S59EV3IYKTyABHbUxwNiMEpDykR0C0ZqgesJ+n
	2GhS2EtmmGe6mK6kqOwoqIB//327EmzSbA4LXM+R5hw3Z1kUTNNbu5Z47C48bvdX
	+OHgF0taVYWVLhKu9eTlL5d/oJ0H2EIU3f6ezIHbhF24N/iLKGNt58JqfmLdu92B
	fmmR6lHeJKgGhBQCFp0V9RZacaQ+gcu9mzVI3AmsICIR8UqOXaZrix2ZKLmiJQxo
	OIE49atC7mi+jBnosMDz2PX/fzNSy6q6id32ip8HoII9gah+thAZECxxNUecXTql
	TMd6hdMlJMt103GU8uVIZ7QlmVAyZutsbU8i6HoaYc1Q7w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7qp9jjcd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:27:59 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c5e166fb75so1683090985a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770726478; x=1771331278; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Lucms4tHlGLGGVfdFQ6TD1R6Cqq5YSK8Ye7jCm8sfrw=;
        b=W21prD1+a12k1T4W8WWIqlKhijiN8DZL9lhL+JfLAONXKT+XYfh+AWeFPrcrTJg5P3
         elfJe8HygWEzNlAS0OIni06QOUhvP1WlHr7bNxP6n2dM910Gdfpa5wqxZJGrt0pFhVVy
         3k3r0HUCYaYj1p5sFKXejyyHEYoW6QBseZJ6CNwGjSAA59YMngW/B/nALqQbfMOIJTOm
         f1yO4zE6EafDx0n5QavQ5fRVjydLiDcCS6KBdB0FfG17X9I1+TRfo8YOQFcSnGsHci97
         mQSkp3a0pD/MGk65LvfGZw0n/uPjQDLBKLNVdRG9g/AxaYqINPk0Tx52nnlzCSYn8OKY
         d9Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770726478; x=1771331278;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lucms4tHlGLGGVfdFQ6TD1R6Cqq5YSK8Ye7jCm8sfrw=;
        b=we4vrlC2kGIGr/bSdKrBeGiw0hxmhnMa88Jhai4Sz8Ic6u9dFnTEGS+5pBTPWzQonu
         TvpEu7qYNWibpwcOHOlPhuYRXoX4LegHsAEe/lXqwpmmZZorBmrQ/cyIk2Nl8D8REUoM
         ViMYXn1J9dVaO5Bg14P1Wf79a75CNEjgRqObzhwY1A6dEJ5yKCTP39MZtWdK6iDPA/H8
         /bWXrqWBlmmjlm4X4m994xJ9juoPBCEVc499+fBxV4+T03d1pHObw8WtxtX2JtQeUK6a
         GzhFtFA6NuYv2iW4OkgzJ9JPVjUYLHIX9RNDQ9XUTysHqvIpTcfV/nV8MeTakeXTzXHR
         NeyA==
X-Forwarded-Encrypted: i=1; AJvYcCUV4sRU++Ljae7mB4mkJxH55TJ7bWozG7ctfsk002fLFZE3n6xXiJrvkutnZTqSVjsR1nNWumdpWJ4i@vger.kernel.org
X-Gm-Message-State: AOJu0YzljwfOixKJPT5SnUrrXbqrKmoUmGBFttypXlqJzfPIpvHMTKUc
	SOMEQq7RBcM7TC7G2u2URDGkUWob/N4H3E9SfxC+8c0Fs+fhsFVxSNfbh1OauoIQTYLRqu/Yw+R
	4UClxgXNb+UmBnBgGK4+/LFviD1NsYGJhjacO4F3//N+Z0NEJ0dKj96svH9xR8U0t
X-Gm-Gg: AZuq6aJOrVMxW960dciIJ3e9izU9shNmq9eFz9Xvm4yqNmm1d+rxD9ouAtgoAVsKk9p
	PdTDxlnC1r2mbEIeN6OyvByUZM+PZxuWTc+fwKn0vZqwXeFEuRueuWU2SZUdSPZnxO+H3XW/HRH
	NTVIiS1ztzfjp+o41zBEfTdDNyl7sjPdPkL7oev5QrEvs+qai+fAKiMVrkhpLvrzwsQTyA/KKuu
	kNG6ShqjXjLypFYNSOYNqETU1Rqgtrz6+6xrg4+w0dcArdfr1Tu2cblhunxOlw+DxtwJVVKS4+q
	t4Y+lMqn8Zax0WwM/N1CcnNiKUPqSNdNoZXJKchQd72xxkg/l0GF5+JB5l34w1eBxjXq0WgNXGe
	GskolJvYxtJ5a+NIO3hRWfgzjF6L1NPg+Z85YgDCNN/DI653zh0fVpY6mx2NAbDx00krv9vF5Qs
	9myeHEKMPztQDzU8yeKJhKGrayLdOtecNfqx4=
X-Received: by 2002:a05:620a:2682:b0:8cb:e00:8c0d with SMTP id af79cd13be357-8cb1f76e93dmr184901585a.74.1770726478335;
        Tue, 10 Feb 2026 04:27:58 -0800 (PST)
X-Received: by 2002:a05:620a:2682:b0:8cb:e00:8c0d with SMTP id af79cd13be357-8cb1f76e93dmr184898785a.74.1770726477866;
        Tue, 10 Feb 2026 04:27:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6ee4sm3279610e87.4.2026.02.10.04.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:27:57 -0800 (PST)
Date: Tue, 10 Feb 2026 14:27:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v5 4/5] usb: typec: ucsi: ucsi_glink: Add support for
 Glymur and Kaanapali
Message-ID: <gb2slgpdkrfqdkgdwifqc73pd2tbc56yju4n2xghdmxbbyd775@gzied6s2gfwj>
References: <20260209204915.1983997-1-anjelique.melendez@oss.qualcomm.com>
 <20260209204915.1983997-5-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209204915.1983997-5-anjelique.melendez@oss.qualcomm.com>
X-Proofpoint-GUID: qZ6fdmoTAW7UAJ3wHoMZYA5viFibn5tv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwNCBTYWx0ZWRfXxr8azruZN7Ph
 uCt0DDo6dR2HQaMl3DW8IaxKa895JbDFPEBFnPP6bMhlxno02/Os6l6/mm9oOwcyyVsCE/JDEfs
 qXDgBpYsS0Ncv6YHt1Lj5hcsFh65yX/hbPHbDdi0HUNEQD4neeArAulwmIqGOZoOxY0InVTmiWU
 V3Z3sEpfYUs+IetCEqzX9Smk0y7sojNDinUTjLrMpBxz7OHQgvXx8rF3wwic5/ybmqepmAgs96c
 gYKrujtJ6sF/9nEdxQLM+d0NQa7G8mcuah2ovm2fCPemk5GyGPIBZ9JQvcmWkPGDVbWV4enp1u9
 J/2htxtHCnGIk4SEGEekyOUa6Lxj4EmyPP2UC9fq9o6m2jq4LQLsGg9opjlDp+vvy7+paKdFf72
 OV0k+GnN2U7akbSH+/S3LuVPtuafCXsYz4shNv77S8F5WO1B5NHbgPbiudqkxta0R7jAhnBRRz+
 xFYF7OQpaUlrZM3hloQ==
X-Authority-Analysis: v=2.4 cv=dP2rWeZb c=1 sm=1 tr=0 ts=698b244f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=401012Ij_cZx4E-EtZUA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: qZ6fdmoTAW7UAJ3wHoMZYA5viFibn5tv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264396-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1808211ACB0
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 12:49:14PM -0800, Anjelique Melendez wrote:
> Add Glymur and Kaanapali compatible strings which both need
> UCSI_DELAY_DEVICE_PDOS quirk.
> 
> Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> ---
>  drivers/usb/typec/ucsi/ucsi_glink.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


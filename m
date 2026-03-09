Return-Path: <devicetree+bounces-273089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNtSIE0ir2n6OQIAu9opvQ
	(envelope-from <devicetree+bounces-273089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:41:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 117D52403D4
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6479D3056B5A
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 19:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F32E3ED12C;
	Mon,  9 Mar 2026 19:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RzPzsU3Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CtShxfqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B193274FDF
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 19:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773085148; cv=none; b=syMfmRf2b04GbaXQQjY6w4ei3UKrRmmjx4uEtyxkgR8exosMG8RfRrLLBYb8fJ6s6czTKDkdEiTVuYjEjZM+w6WtasxXY/wzrLJmDukWTZFUsPwihktRsD/uyS9tLfSMF5jq+TF2tieiSGSEOjXJBP6WA+xDEtOGFwCUmUuod6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773085148; c=relaxed/simple;
	bh=La+wCaOIk0Spj8J36Drs87QjYCaG+Sa7EiLzeXmmrs0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fZ88JGhJmC+3cYDPYsFsZqN2o16C6bxSt5tWHtySj7RnSwhX7882a2SIsLP8GDerjC3jJtolguzLPJrncHqX2iEX9UI4zcP9R60VSP9j2cDtUamfgJy3VslQN/ptX+KD/CnPTtU+kc0mgzdpxvFT2lWgIDeah+QKar95pCjaHOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RzPzsU3Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CtShxfqg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HBpKe859696
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 19:39:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=L0hx96Erq47qWv0Jdm8NMjeg
	uVm3B5yxv3mHoAlYQQA=; b=RzPzsU3QllcaSiB/xcWMt4EfF9MkFa9h7sRVeA8L
	9+c0SHRzP3STIaGqn/gOD3Axfc0hb5P4csrea2K8Czag6iuUMYYqsBKzTjDn8BsG
	Ss7eeMqy9Kh2qReTFAkXyObQUqVRtlfvanWJGl5a48DXuecygnk+1gW2Wvwqp5fQ
	aBV5jWBctfQ5hulJxL7YpESIzCGcwEfaVuUeip0d0avGqtj97vDdfyeSpI5GmdQL
	tYXDAvmd8q8SuJtRhwmGvif0JBcQ6ReQKqchhRhwCJdJNuL6shLBlOSuQGZFW2tG
	cKPstTIShKjsCi9c+lO40ToX00mBpyunqEEavSnnL3M0VQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csyhbs5hd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 19:39:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5033c483b76so825721191cf.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773085144; x=1773689944; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L0hx96Erq47qWv0Jdm8NMjeguVm3B5yxv3mHoAlYQQA=;
        b=CtShxfqgLI0WNUTkvwHEC0Uy7IRQTLpQcAovfr+280y/A0GX0HdUldUBx1ARxskxOr
         zPbKOMr0CTSPJ0f/x/6r0iAjglpf1KTCNg3cygzu5wC3Z32RU/1FqmhKyioH/gA/GD+0
         4eXD3MQYHPjMopOcpeuBDiaJMKIJiBXnPx8FVnWuGNcjfE8ae+9X+C0bJVH5fDwIP+2K
         4nYoXPhziiHHZUuY4KdCmji3v/Qy27BMx2HOO3vFDaPzu45w5yughEmO6niFO81vBcml
         k9xIJ2MZ6z2q9rL1lRgQUZM0/rGL/IVQAnAzGfnl5uW23CdXkF125yzNEZrWddsYUGya
         Q/TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773085144; x=1773689944;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L0hx96Erq47qWv0Jdm8NMjeguVm3B5yxv3mHoAlYQQA=;
        b=XAXkqSAhbgnyp/aNpkcGO7VM1nqnmjtrwpo1QWH+ONn+etLrXJM9Epu38ppYjNaJ6s
         6lCD2iAiX1JQj8Q8WZJnK43iZX8RP3/9Lb63cyJ4Ir95CFe4MBrrLVaaa9JVfsdctKuC
         1TSOMoM2mqBfp1ZYMNhX0j7nHLDxu6P3t2yqGaYJuL3NDJxOpVDQqVM/2xOaDlM0wo9u
         wEEqKBlQFYBi0M5bd+V8zGK2EwYcEpkqSCps2qBECVaksvblcNwhJSrMb+Y+XMbTlaUv
         ENh1dfS/3LB0dMggBjzb1EeOQXbOmdGg6+N7HKT6gJ5tSjEkBN9hUhPHKn9WMYIqhAFX
         oTpA==
X-Forwarded-Encrypted: i=1; AJvYcCWDCSqPvY6YQWMfp4O2SbjaExMw80rvqTqNU//G/3pIWB1WbnC9jHrIS9hGjj0IMZvEY99VR6+BeJjZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxhoiWxhZkQyq//5wthmUySM1eTdJsbOQVX0hVZ5qLvkcLioaH6
	xG456jPqTH7H1/qdFIFZGyiQQxe7xstGBomFLEG43sZdpe6ss0RjqitlPM3gzHrP/RppeNDk2lL
	qXOJt3MEn/fdUKMyHhr4spFjvxULxhx+uMT+xhqf3NI9OpZQqAXlIZGMt+xnO3TqS
X-Gm-Gg: ATEYQzyVc0GJioYj3GEtY4JaJ0/aI9pH6Pa0JYCOJzymLLGQCSnEM21uRFtoO8zrMPZ
	udTN4IQJ2gHZEju5ZaV68Y4a+mDzERDijlreXKtKxfaDyZasNbxRcEKDmUsO+wuJvxXL0U+5Iv1
	J7h/4qY7/CajVq6Obvq5/fmNypfn7xEIO4dSZ+YhLbDeWGcPaAHD2GfTSU+n4NQX+l4/v3ZgzqV
	70aehG45Hnm3Br48yUf52mvxysSoPPAgvplbVUME/gBAi3hmEfyXtGXN7hFyTxOSmxg++Pevjpz
	BdzyZhKHP0iYcsC3m9PFlSlJzY+ZknAZILCu7HRwVNs/DaevCCe1t8Xb5lDzD3KaIV4NPtzZqZn
	yJDHuDihBbkki+zWBNJhIblymq8UZ8BEyysW7wb2tx0AY7So8FxpLR+BFM2rTeWuzj4A27iKTZT
	89T7DD0eZgmGnvsce6U0ewmULrCwQW6awW48U=
X-Received: by 2002:ac8:7d8e:0:b0:4ee:2721:9ebd with SMTP id d75a77b69052e-508f4942e3emr175533821cf.45.1773085143872;
        Mon, 09 Mar 2026 12:39:03 -0700 (PDT)
X-Received: by 2002:ac8:7d8e:0:b0:4ee:2721:9ebd with SMTP id d75a77b69052e-508f4942e3emr175533301cf.45.1773085143445;
        Mon, 09 Mar 2026 12:39:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5d0578b9sm861571fa.35.2026.03.09.12.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 12:39:02 -0700 (PDT)
Date: Mon, 9 Mar 2026 21:39:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        geert+renesas@glider.be, arnd@arndb.de, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com
Subject: Re: [PATCH 7/7] arm64: defconfig: Enable configs for Arduino VENTUNOQ
Message-ID: <be36jdraqezkbt6y3uiljuvijwb7cx4y6i53slobjburfs52ny@l53ordmgdgvq>
References: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260309152420.1404349-8-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309152420.1404349-8-srinivas.kandagatla@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Rcmdyltv c=1 sm=1 tr=0 ts=69af21d8 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=WfKmF3k0nw495lT8CIwA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE3NSBTYWx0ZWRfXy1o/VEBXZ4dI
 5BuLyUWXOfrOPXAlQ3IT1PAIirafc21OiKfve1LCFJvOW4HNdmnoqjeVik7FzUBBYfhyt5dGQvU
 QuY6Zgkmb4fWMH9FsDYB/zLIzzpCrbJB+GGSmn/hkE+runeA0wHFN769OwCbtQhNv9yySTx+sfD
 04XK7IlMyeL80Oan5zfDWRWeN0lLwIXNCvgNZqzvg2TcRd8+WA3sRnHzsxNdi63AiQSx6IGzRmF
 3yGjeGdXa6SoPYsOepfOz5zAJ65PsuOoKRDePJYshOIgMv8kicnNjaMXQSllZsuGnGJDw3WleZ9
 15PpXyJA1n5kl07piMlOUn2QVHEAYmOlruEPxnQPXUpTANgAo2p5AxQ3DdObkj6epYR/8duCVNX
 82eHOfk8toqag21xDhUN+8ICpteFbP26hnug1Ti53TsO3m6WVr7/VQfequhcWQ4sMMPXfIP0fQc
 yxKpJ3xmTGophuBz9JA==
X-Proofpoint-GUID: gh2yKict6Tj0a2PFAebs8gc562RhCeHC
X-Proofpoint-ORIG-GUID: gh2yKict6Tj0a2PFAebs8gc562RhCeHC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_05,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090175
X-Rspamd-Queue-Id: 117D52403D4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273089-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,glider.be,arndb.de,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 03:24:18PM +0000, Srinivas Kandagatla wrote:
> Enable ETHERNET PHY and Analog codec configs required for Arduino
> VENTUNOQ board.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


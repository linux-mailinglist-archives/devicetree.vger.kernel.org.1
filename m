Return-Path: <devicetree+bounces-272588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MK8rE96QrWkQ4gEAu9opvQ
	(envelope-from <devicetree+bounces-272588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 16:08:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A354B230D59
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 16:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46E70300F9E2
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 15:08:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50321280CE5;
	Sun,  8 Mar 2026 15:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GmMiHMVb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LrtNSbTp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E3D2765C5
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 15:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772982490; cv=none; b=T1o8XVWssnBoUmmJWAB3PEzowvD6aqRLUxiF2Rr/vsGvn+kkb2YHhBhSXBbyjQUMNQ5npqsI5jdt1g2TPwWibINYwO1aWZ1/W5qr7WjWbjHsNye9NH4ig+v7JWMsNFhIifRbq/usjyeTbUTvJNGdrdgPNMlHwp4Nv3kM9mtrboY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772982490; c=relaxed/simple;
	bh=KWgTeiznsOPw5APcw52eXBaL1ZGPPaRvhNjWLUEyR1E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bNIXkrT9S4O561DDyff+sDhS2wBPcY5nW+7FP3rubM4DG4oU49lTFClelcVUp4RqDgc/bxym5RNZ1G6BgCnrlR7lpMQJFBAjqr3yaOPI+0LMd8LN4oL1fUu+aGxyfRSFsOT/gPeOtlKwFDSmA1smCersf78rXjGeJJuPozqcNpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GmMiHMVb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LrtNSbTp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628B7Ewp1575917
	for <devicetree@vger.kernel.org>; Sun, 8 Mar 2026 15:08:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Rvi08IAd9UMRUOwod1y7p+91
	CSiqtivUDxTDdSrOr7g=; b=GmMiHMVbeCQiWsPlbn6WHGb0GF8NtmZoWnoeWP9p
	L8pa7UmWQU6B4HTpfg2OrDHFH1fjEVG7/TZlf3n21XPkbk4LOWl/xWUXex6WlsA9
	3Ce9CpL/Avr+F+4F0mDy7VJbICyTexbr4FgCd/+f1fjTuPzFbYfjsMziVYhQ/PlU
	F3mV3StM7HhdnSQAzYGpUG7oiJgtKaGJlXvJAOkHCsr9X9s3n9+d8dAu77oSZuqd
	KYzhCitu+22V1AfCKPl/dF6UbifxbJ6BLk/eO5jf93KBqEMuKP5K1uL0n6Q8NgGv
	PUaBze0S7z1D0i0Bwo/0nUV/5nCVM+NGtcuY02dJTiNRWQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cr9qeu14q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 15:08:08 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd773dd39bso887096385a.2
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 08:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772982487; x=1773587287; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Rvi08IAd9UMRUOwod1y7p+91CSiqtivUDxTDdSrOr7g=;
        b=LrtNSbTpTAB7RUFBxZqbwiDP0wbaIjwi6xk+ROzJ8ypgH4/UANemu0YQxCKqeEO6zP
         laBoGfPmZAjipwzAHAa2kexoqCf66dh9IYr5q1mxO/SFB4DKMhIM571hn4ZcAijxiZlT
         ayRLFsAEEyKDL5NdmVd45gBg4urZ+RPFOStoFQ/3RP+vKdD3QU6pSd6G0c2Ir7AOZTjg
         vb3Jsq/djnzrsR5bW6kDPuKmGR7MNPhqwQPw1VKDY0K4DaewoKxipVt1DPKBqDfP2lhp
         mEKAl65dyziYms5QsBcdPR36qX3UJXVluqTnP4pi1Iz/WxS0rxrqNlmHHBEuhYruEa+r
         f+UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772982487; x=1773587287;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rvi08IAd9UMRUOwod1y7p+91CSiqtivUDxTDdSrOr7g=;
        b=bXchzEzgowEPePY5WlPVKzGYlMiaR7PMItdDnoXc3E4BuVWd6YrybEGbZe4terAJGe
         qQ5w7oSMp8DpDRWanpL4kk2psRnPS26nhvqtRYdqyKjeeFECa/FFEfO0y/JPVWW5aqjQ
         ts8ANq/jPCFWA85My2dSjt0ViGGA9VXNwBX9N4GON3w9cfMPtHfkjnwtOy2zE3ouUZ+W
         27JZEKnGv5A/l6DSVXbTY5sPGWk43TvFrT3fjWr+IympfA2wGWawHN6OI/akQFwFiUhe
         JHF2EZ1PjcLG/cbW8jtPTjZ+G5iiamtcHLYwuA+Rcc2fa3cAdLa/j2ZZF/WUZZL0HUfa
         +tLw==
X-Forwarded-Encrypted: i=1; AJvYcCXAQ0B1viUgUGskS62IZCE5Pn19ob3ZsKT4g3yV4Rg/mbukBzP/f3qrKHqqLy74fLv4B1GzH7WomSYf@vger.kernel.org
X-Gm-Message-State: AOJu0YyafbQK78TbmCn3dGtvhtRYtShz8mY5GCKocD9kbZTPQZglU422
	c7hi8r3t31SJFcS8s41cjqZtcTeOFJPSJTjHZ8a990DyGZObcojVa4eDhXq+LzoXC99Mcc5fAnq
	iHC/mt1lU3NyEhbslOKGzfymveVLGl1/r+END4ymiZRqBucBFwtX/wKEv3OcUjqge
X-Gm-Gg: ATEYQzxs471c3wWEQvqh2YLfgiBp9vouKW3+z1XCjB1jo/EsZ5OT4lArxzDxPre+6nf
	A+90Cvrve6ucq9ReM6PwlorGbtIdHFC6pyt+6YNDpLJOOeFIVRbc+WH2sxOR6mdiMTWH6c85m4U
	CllB8qiR3Jj+NV8n1Hnb0OMmnNrPuOTkrRbr54hep+wKY1KaLV2WmajhpovdPeyJkK9vaGMEwDF
	TqCXtvmN0A83/cVKxIbF1FmtzXGOe7RKSCWoZBqVKMPNZeDaJWggxku8rq7uy4VJTs8Qs3A8JcR
	WZcTjqR794YnC0ZZlQwNimA7SC/KcfJXr57q5YUM6ghVzewECah6sedRhENUmlA5TKWbv6cHYy/
	MPIDflZEdTO9BWsvmrIYhVy41BaDHmvN2EPLiJADdnXhDeyj/qGo8KgRuO93P8SFhgWdJyryoBD
	xJ0HeoOkAOcp62Wuwj5WPRdDfCVK2aqPUDvBE=
X-Received: by 2002:a05:620a:564:b0:8cd:7f7d:b091 with SMTP id af79cd13be357-8cd7f7db19cmr295648885a.71.1772982487393;
        Sun, 08 Mar 2026 08:08:07 -0700 (PDT)
X-Received: by 2002:a05:620a:564:b0:8cd:7f7d:b091 with SMTP id af79cd13be357-8cd7f7db19cmr295645485a.71.1772982486904;
        Sun, 08 Mar 2026 08:08:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d07e0cfsm1483302e87.43.2026.03.08.08.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 08:08:04 -0700 (PDT)
Date: Sun, 8 Mar 2026 17:08:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: cristian_ci@protonmail.com
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH 4/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 WiFi/Bluetooth
Message-ID: <gn4qdul5tdm26zfgem3y7jswucvbk4jb35pabw3uf6zl735h4w@6dkrl4najlhd>
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-4-aa2c330572c0@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308-rimob-new-features-v1-4-aa2c330572c0@protonmail.com>
X-Proofpoint-ORIG-GUID: 5BPyZVAoLehQb_7xob0JyT0s-9V76I0F
X-Proofpoint-GUID: 5BPyZVAoLehQb_7xob0JyT0s-9V76I0F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA4MDEzOSBTYWx0ZWRfXwU07hF7Dv25i
 2z9Zch2WCEJEgIaJ6cZaJG36kJhXWW/nqw21lsUnhbUykmlezqFEVttLP4l22X/jk66J+FPgLXn
 +hqaZr6/cZleX3Vqh3RkRBR8qF6l504hh4wVm0TjmJOiMNYlqdp1ttjGXM8AxBUrMLY1H1bWQlo
 EnXsVtknGKCEhYt3O2sY+gPFSEgeEtHsSo4Am3B/O8I+8PTEWnuTcSYYcaqaosHIVgacFfstR3J
 jK0hthQEOTfOkdOGIcjQEZv3OOzVibQiuOPMGNSeZV+3XLc0zDX3c3fp0KpOjBYRxDYSjti+NWX
 iu9IDbFDsGO0P8YQctiLO++b2uaK7zVSqN+MlvDZ5EGkWyzQoiHA63mjla8QVgvqntrqvzEYBfJ
 FiGZB0rkAYCjYqYwd+gNpYPWRtPgWrKjNZdRWJzd55qkzyN4HNKxKDLEJ96XfaShjjT6/r/j+4B
 BDGMgar8eO6fBS59Jyg==
X-Authority-Analysis: v=2.4 cv=dcqNHHXe c=1 sm=1 tr=0 ts=69ad90d8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=sfOm8-O8AAAA:8
 a=EUspDBNiAAAA:8 a=TiCh2U2r927ZuiwL-uAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-08_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 impostorscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603080139
X-Rspamd-Queue-Id: A354B230D59
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272588-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.988];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 04:52:44PM +0100, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> Configure and enable the WCNSS which provides WiFi and Bluetooth on this
> device using the WCN3660B chip.
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


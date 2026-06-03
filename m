Return-Path: <devicetree+bounces-306268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 08AxC2EzIGoGygAAu9opvQ
	(envelope-from <devicetree+bounces-306268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:00:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F37763852A
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:00:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=bnMv+xfQ;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=HPOt61OM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306268-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306268-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A81B43079163
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 13:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA13933CEA7;
	Wed,  3 Jun 2026 13:52:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E683D334688
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 13:52:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780494735; cv=none; b=o9tLeD/FYE/tmC7rvx9wbsKzwmimkyWdYtYcOOHa3Nu8uUVxehyUMUIKBVdpApPPkV+UTG0x4JMLP+leMB0zy2T3T6qrvdGB2FI67c/8BXwN+kBfEKKmbJBIkekezPkB8oVYawEscxjjHuG7GpfqtRELxuE+SRvtd2BG8kynbzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780494735; c=relaxed/simple;
	bh=KMtEGmrA8m1N7KoJpVywfirfp33O1hFNJjUcBMTi9l8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yqk52DIbgr1c6gQf5Q4xj74P8PdrcIyQxSScyUyEPMVeIfxJl1vUomQ+SiW3z954MNdoscFVBHxZVCWAMJAC4alkZN3xIre9EWCWVcu/5EQ2EkraH2JsNYXv6K1MpMAzmwUBLBZ/Kud4GdR9FuXkPIod8BBoarfv8c8BY/g+n8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bnMv+xfQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HPOt61OM; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653AB4rP3552293
	for <devicetree@vger.kernel.org>; Wed, 3 Jun 2026 13:52:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LEAaW4KMsR0ywjUGKkykMwna
	d8EiVghRjvhmLV4s5e8=; b=bnMv+xfQYTdAjpRsy5U2bFaDDP+plpadUibJmKM9
	iTBQR/WkMLtJYmbIRQp3jQDdBq6bTHrH1I16D8yso18Wh7jMhaaB46ietSkWN+xG
	eF6HT0OJEMYRRodRl4BhDRW0x2lA5TTETyngkp2m+vFLpNHDm+j8n/T5m3qsUvwk
	i0RITu2DcEVLn7dViELM1BYwvjSYTXpr4TPTd/azCSmbI4s6c73qGPR+LTxQfEzK
	jC1ojnVxkNcAEoBPeevPTHYvP1BC68SaboT3HkJkIXTTa3UxhFoOlfioNEOijpqq
	cs3mZxWLGEUFH9nTYuQqcaHJLdseaM3zUhMPKTIACPBdQg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejj9mrsup-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 13:52:13 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-6cfd2462acbso4423899137.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 06:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780494732; x=1781099532; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LEAaW4KMsR0ywjUGKkykMwnad8EiVghRjvhmLV4s5e8=;
        b=HPOt61OMK3qXqQCODRrJtQ21U0QIcswCVnJoR/m8mUNoI+THbitM+/jH181qqMpMDc
         PEs+N7tpi1v4DMTqc8IgFTezsC14u7V5zL1lPsujjmSMzpk5T9ttSpITBrTHra1XvPFa
         Lmfr6CGBv8QA2PCMYkc4QYgwL+OBUoiVqhJIcCGFS23XNHwMHZpFRQDY4JyXMX6g4NYs
         DEsevGxAFGCmPGZj0fzTsc+BQe9COwLk9YNpZexY5d0m7M+GpBVAICKd6o7Na2+h+Kz6
         xXCzyVa8td2zzNIRSaoe9eaQs+HePLFBHx6Sj6LfwfsWAU6ixAvRGXIcrnbdrFwg5d1z
         bw+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780494732; x=1781099532;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LEAaW4KMsR0ywjUGKkykMwnad8EiVghRjvhmLV4s5e8=;
        b=UefWUenqpfPFEoXntdggStDhLbdpOqUDfS3nseq1d/2gcAnDtugu2o5vBFDAc3C9+z
         V/SmcpejtoGCtf2ZvTjH5mw8wAgT0pjZvDm23ELEwigUMaxY7YcVP7LTZhMUiqjOQKAT
         uUP4JvBZI8+9b9Raz0X6JA45HQHKDpWdd45j/QuqBRIsjUrt7v80sdsj5Yd+puSG9dB3
         Z1nSRObO44eTD736Vn0kVKeilTx9Qdosvs4U2izJHEh1fDO6oROIqOfBle8b0DD5vIrX
         r8Fzj19r8av1E5SFAj9PaTVcdfqnQfzdjtdRMFXtxdjsJM/3UiLx0jqcnWnjIA8eawIE
         bpKg==
X-Forwarded-Encrypted: i=1; AFNElJ8kepDatkjH2KSMmQpWZVGCK01fpSok/SBbnQUhwie3Lkr8w5zYxNc0GJmytzxDiR0Z75OoKJA1HiAc@vger.kernel.org
X-Gm-Message-State: AOJu0YwfOciXCt1oTc2c9mmNSM4ijOVhm+0rE4alayKw/OIXV8Wuuv+M
	g3J76/fAkvYVi6sI4oV7iq9338c9v3OFzFGiCsDG0q5hGK28I+KSCptJzeGgMyZqWningdwXXks
	pxKMJo3y1IzsKk+XTIFdH7lepCMFcm8g8pWABktzo7dbzBe0JS6QCsO+llEIj6UpA
X-Gm-Gg: Acq92OGD/Q1UvX9BYekYGgCDFBBNujVfGTbyoEls69Uow881hbrv1OukdP04L7rRtaA
	8wM5jWwnzJFwdKX/c4Q3XC6CT9MyJyhrtvYpjAoYwXtWMszJzmxSDJt4ZIGe/2aTTjdhppCpXYA
	o4Kv7snxWZ0ptdaI2kUmrzrffwxCQtbAIQvKkMPX3hITIqFUdKM3oWsloSTzDXT7b6GJSCFJmQ/
	52gZc3SsiQ6rIcqXOi9W3moh2Ed83o3OKwb+YjGkJXkCuMIqNR/1xc+wYdgCDSxZoezPeT1nr/U
	dCgJZtSNgPdflEtQPG77JZ1YrBnquF907ckyxYvYDnDr8O41c0Y3nMlb7dTNxTEGVG8L8NDxrGZ
	UakOpvHSuxd1Fg+NUbYtMI9zJwM6ti7RJoADF4zyFOBk5YDEdpn2i9GPqh01U9YsTgwk5vjv23k
	TC0526KJbxhiHu8QuFcu2hw/4aj3PRQbwfaAKvkR4jGAcjaw==
X-Received: by 2002:a05:6102:5091:b0:6c5:d55d:c096 with SMTP id ada2fe7eead31-6ec45900816mr1645187137.16.1780494732089;
        Wed, 03 Jun 2026 06:52:12 -0700 (PDT)
X-Received: by 2002:a05:6102:5091:b0:6c5:d55d:c096 with SMTP id ada2fe7eead31-6ec45900816mr1645158137.16.1780494731608;
        Wed, 03 Jun 2026 06:52:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396ac2ed925sm9320831fa.39.2026.06.03.06.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 06:52:10 -0700 (PDT)
Date: Wed, 3 Jun 2026 16:52:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 3/4] arm64: qcom: ipq5018: Add GEPHY RX and TX clocks
Message-ID: <66sew7qesxu5nrhtol32jvtc2et2wryypvhx4ytdebqwcopca2@xaryrll542yu>
References: <20260602-ipq5018-gephy-clocks-v2-0-65a1f1d881f3@outlook.com>
 <20260602-ipq5018-gephy-clocks-v2-3-65a1f1d881f3@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260602-ipq5018-gephy-clocks-v2-3-65a1f1d881f3@outlook.com>
X-Proofpoint-GUID: 5rfgJokYgSDY5qSyENtf_gIU8G3dxqti
X-Authority-Analysis: v=2.4 cv=XK0AjwhE c=1 sm=1 tr=0 ts=6a20318d cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=UqCG9HQmAAAA:8
 a=EUspDBNiAAAA:8 a=5nzw82lfuaBeqxAF_j4A:9 a=CjuIK1q_8ugA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDEzMyBTYWx0ZWRfX2uIJybRPSuFa
 gGt7PJQSnYOjWW3FU1k3eoTfn3wKXgWFi98Ra7sgZBg3nG+VtXzfcieSLtzQIXOgZb3z9VfuW03
 9ozahx7Hvp5XhBuPhphR+viVL839Ys/zvvxigMiL5pskvdlEwakhS+6mM4xlQXJ4wDbyBveOklq
 wEzN4sHVlG1VKUnXAZx8LuXfwndpFMrVYBA1Ub0sm+L2/wBz1mBKUq9fl4OxP5x2z4X3JNPm/q8
 nL8Xcxnp0jMPECtGOhYpqwPLmsm18kB3jE2/WMDJhowIEjypu5q9hkh/9is3dZZzupodALyOcj/
 MLfwA1iHMzPAGPWLGsnjghO3iG1wtQfTiUwuj8lAlVyBoD/SVvCJfWAsH5k2RzfBfgBM6+CA+dE
 uy48dp0njgSyd0CN1KzmtrV2dTlvRY86Bt9cG01dBcuBljAELbXqZAg3ZMkkQ+gI76cwDh38ZSy
 H9dFxUcxqNn88VK9Wvg==
X-Proofpoint-ORIG-GUID: 5rfgJokYgSDY5qSyENtf_gIU8G3dxqti
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606030133
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306268-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[xaryrll542yu:mid,vger.kernel.org:from_smtp,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,outlook.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[outlook.com];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:george.moussalem@outlook.com,m:andrew@lunn.ch,m:hkallweit1@gmail.com,m:linux@armlinux.org.uk,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:f.fainelli@gmail.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:netdev@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:ffainelli@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lunn.ch,gmail.com,armlinux.org.uk,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7F37763852A

On Tue, Jun 02, 2026 at 10:50:39AM +0400, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Add RX and TX clocks for the IPQ5018 GEPHY to enable the datapath.
> 
> Fixes: f5f2b835e316 ("arm64: dts: qcom: ipq5018: Add GE PHY to internal mdio bus")
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


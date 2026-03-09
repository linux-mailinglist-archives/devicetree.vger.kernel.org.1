Return-Path: <devicetree+bounces-273116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJCuMlowr2njPQIAu9opvQ
	(envelope-from <devicetree+bounces-273116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:40:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBF0240F9E
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 21:40:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1038A3061604
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 20:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C3D336B07D;
	Mon,  9 Mar 2026 20:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bmy5lUHw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TAyXr4h0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F58364024
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 20:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773088678; cv=none; b=p+PGvL/aH22go9zv8cUTJpxSUpSYP71mmWYwUxHGdsjK/r+LNVvCeBiO6IwcvSzXZ7j9ziAXACHcY7KlaUV4mpVuzpB2UjA6bQRukuGrAwiBNnH4Ec/+zAZ53Gktb2qCA1L4vA4WpSFOW3D2mggQLQYOHNCoY/gUpKWwYfkHAhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773088678; c=relaxed/simple;
	bh=n1fNQr3ghPfS1Zys7EYSxWajk/+i8tpaEOBMT99VD6o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sUIBfOqlOMD5VKWgR17xjBS0Vi44Imaso379K5BS35yGi6AAcSeyHrNBh4A/x6S8nimvl31/k2A1r/xcOETGkvAiU5E3CIlywpCzOD8gzYMuXwXdJg2HFGs2ME26Qlc0w6XypYlWAPlBQU+9lGhPJyjP9vUeQzPTdH2SHzu0R5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bmy5lUHw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TAyXr4h0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629HCBW83149075
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 20:37:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KNIeH0ocueE3DKIQJNEpTC6Z
	EDvoFsfa8wBzo2fLi9A=; b=Bmy5lUHw4vtL4x5lsGJPddOnycMYUKOweKDcZkk7
	3SEbOBgDBDpd8lDA1Nh0YKs0+6HqOh7mr4pSYz/0obknjn0X+HhfQ2EjbXUC+OjK
	Iiut+9cKMX09xtguOJQsi2FuCIdWZbTrAm7lAWljKOxQpRm6ZcC0xKOoFeECJrS5
	ocjoxX6heugEcUYTREiU0nJ6EES8mBbSkVQgp4zDqkHgDLI4Gud3QzijkHXoajpQ
	jMuU0LSCVXtlLwRYJGizTu7R20eBcWS3RRMSg4Cn2ro1Qzhe9saL5XBX7r1ebgiE
	LfDKcOh4BjSYl1rgcugWJlEzeQVH6rZrWEtTCKpt9aFiMA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5ua1vs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:37:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd773dd409so285562685a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 13:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773088675; x=1773693475; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KNIeH0ocueE3DKIQJNEpTC6ZEDvoFsfa8wBzo2fLi9A=;
        b=TAyXr4h0ake4YfEL+tI49WWB0S27B8S+FUZtOiaHaRiuJ2tG863AYSwvrk4r7FN264
         Fkl6frqWJ1mcyW1AlxGUzzNo5JP1EqoB8hYB/NymGkKtyoFKyPnsPnwSPqg5P8e1t+La
         XCmKHY5BCmX39bPi/oFaX5mS1OoaO4D1w7ZLKcLSHixxMZkwHoXwqYpR9gFSb3Kmuud9
         HPhRDSMJsMZCQdYVQJ+65FUTXKRc1KVn0Uqoevs40LsuWEu+cz/ZJeD5oh1dh+5HC9R7
         3o9mkYAVz11tV9lMHQRX+xomcMKuJKpffS16NR4to8QLslRF4YZw1zhPegPVLhqm4Z4x
         BcUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773088675; x=1773693475;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KNIeH0ocueE3DKIQJNEpTC6ZEDvoFsfa8wBzo2fLi9A=;
        b=kdS1fkd0q0SOgYsbm065P51zmsT16LJ0b2tS9mJ1D+Ra/6l56XupHC3/vLeKblfhPy
         HZxeZJ2i8+n3UAweMx8vxxi//6IjbEV4F0JIRndhGlcbBLs73hl53nLRIguUCdD3/Xtg
         7WXgC6XLaSmX8Lz80yP0rq3RmS1XgbBJFjz+dfNvWIwFcYJA1vwNX6/IMXgjSz5BB2h9
         0Ls+8EPPhAKVjjaWVykmWraWmlnHz57rUtibgHlqeMw4mYGwSeo1Oe4eD1DHZM7dBsPA
         aKUbz+FXVMsH0WIRomEQCPkyl6NhAqjwHAN2s1LXXPwYRhvl7hkA+5t8d8/kM1XyFbt8
         IjTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgHMRNZFy6yxPcFWZvKlnOPaREdOm6ibvyVXjnCblmOcb1zNql/IK37fDIFljTWZy/6SyLcunyEZ8N@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj1tC98Dqksg119AEtr9KrHGRlPvEO4L1LtYGqn6W2MDEPXUwy
	G4gJiJEm1CRj+84zoTmoalqCadkQdg29O8WiVGW65jphrPcsnRTVAuaXY1ZDajgcpuWjEsWc9Us
	QFh32rtdnEYTHIepZs3qcENaeTQEmOafJn9qyXOsn4xlkCxoRbKYfcQmlprMYsW9d
X-Gm-Gg: ATEYQzyTuuG8NMrrOYfqoh+5goij7Ta3sH9rmKnyUJLuQ4ky0XqRmrSToZuyoe4wLyO
	y59mY0V1RJgQEhwtUYcY9nmW+/l/dMnaxqRJ48Z4hxj+HaIOGKbYvd+cMU4ii240TY1CVohLHoX
	dJjhQXRlQIrHwb4IfXsf+w7RpbYnWzBAyBtjBMGSl/XWrmn07u1uWWhvXU8HKm9Wjv0+SAbyVU4
	Yjyoyqh/Z6rFIn9xCKwZguDurG83HmTClgvMeWaqRCOcDcgSHGJCznDKbI2yIFG2jT1VJKWAef8
	Bfnmky7w1PutMrLlQHAaK1H6SI7F/BOfPKAXjA8q/abWZOphoUyr9KMsfJTVDFfMNXvSuY+aVrq
	QOuuivE3KLYdHT32BiKEPa4jfeJGzewaZhpZ0DCZ48T89lxzyR9nVqeSoFIee3/32UiK7IcXW7P
	Rny5ASjP2VryhdbzdIsSbCqdoF6L7LC7QAjcU=
X-Received: by 2002:a05:620a:25c7:b0:8c7:177f:cc17 with SMTP id af79cd13be357-8cd6d428484mr1567371985a.46.1773088675433;
        Mon, 09 Mar 2026 13:37:55 -0700 (PDT)
X-Received: by 2002:a05:620a:25c7:b0:8c7:177f:cc17 with SMTP id af79cd13be357-8cd6d428484mr1567368885a.46.1773088674930;
        Mon, 09 Mar 2026 13:37:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d08d8a7sm2225853e87.92.2026.03.09.13.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 13:37:53 -0700 (PDT)
Date: Mon, 9 Mar 2026 22:37:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Umang Chheda <umang.chheda@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add model string
Message-ID: <rdglzhmncexfcvec5hyenj7jx3m5hsphjlxsaeq2zhi4z4arml@bjeqghbbaoa2>
References: <20260309121936.1289615-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309121936.1289615-1-umang.chheda@oss.qualcomm.com>
X-Proofpoint-GUID: uj13FyT7WBltAZvv4BpnRgpMrBedMIG9
X-Proofpoint-ORIG-GUID: uj13FyT7WBltAZvv4BpnRgpMrBedMIG9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDE4MiBTYWx0ZWRfX9rijc3YdoJAd
 2ylhWpo+C1oDGHRqJvN5BMD8FoixDmSsK3CsDRDwCiwx8F6BVHNDNFNCPbx9bRzBKhNin8OUfF0
 zzgQ3Fc7Q+PQx0d5iQiYyffplK7NtL1rt/SLxc4Ps+03mO2NkV2gLy9PuFT0wonEWctjxlqUe7h
 sLOa6Fdead0QL2SjWjmiJtaEY0mUeQhJAchDDXn/pUxKac5c5kBur0jWLiE8DcizV97EnEyCSoL
 6pB+vaHiy1Z8mvViyBP2kJ7KOSA7O7g6zURpbw2NrGtGY71/rvYMJCNFvuyyRU28sIOBT1VAxlz
 VPIMTBk/28BPV97vQiSY5XHKC8f32Iu8N0Ys76gJ4piJFVgBa2HSdHtIYoyhvcdQuVoayi50PXW
 ZObB0Mk85nJZ6+L95EHwjVX4aeNSgQksymT/1CFpP9BROwsxhXYJYaYKfvE8fbIW7Yop9rq2jUJ
 aWdUSQ/xn2R40WMF9wg==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69af2fa4 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=z0PlPj1O7gEpuhW_vqoA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_06,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090182
X-Rspamd-Queue-Id: 3DBF0240F9E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273116-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 05:49:35PM +0530, Umang Chheda wrote:
> The RB3 Gen2 Industrial mezzanine DT file lacks a "model" property,
> resulting in the hardware always being reported as the "Robotics RB3gen2".
> This prevents applications and user-space tooling from distinguishing
> the Industrial mezzanine Kit from other RB3Gen2 variants.
> 
> To ensure consistent identification across all RB3 Gen2 mezzanines,
> add the appropriate model string.
> 
> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> ---
>  .../boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso   | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> index 619a42b5ef48..7d6e425dae89 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> @@ -8,6 +8,10 @@
>  #include <dt-bindings/clock/qcom,gcc-sc7280.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> 
> +&{/} {
> +	model = "Qualcomm Technologies, Inc. QCS6490 RB3gen2 Industrial Mezzanine";

So, what happens if I combine Industrial and Vision mezzanines?

> +};
> +
>  &spi11 {
>  	#address-cells = <1>;
>  	#size-cells = <0>;
> --
> 2.34.1
> 

-- 
With best wishes
Dmitry


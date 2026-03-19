Return-Path: <devicetree+bounces-277538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8F1LFlplu2lVjgIAu9opvQ
	(envelope-from <devicetree+bounces-277538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:54:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE7E2C52C6
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:54:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5BE5D301BFB3
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 02:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58130349B1C;
	Thu, 19 Mar 2026 02:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hx0ie2pf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E4BYY0LY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9CE38757C
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773888853; cv=none; b=qPtwNjm7HcrXFev8UTWGwdxOtFTKUe+SWR+kj0tmqJy8OnwB2WgzLR5TCKFYqkH5jVa61R5fb3wsKS/23bjhYuxS5w8rY77Na5umTgiS006oEDcjPJKpjdYXZhRHe0XzJA7S4HAGotKisXgfW7pxVFRz0iJNPNBIqvlzVawglfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773888853; c=relaxed/simple;
	bh=cwtugtBfxOb1exevIwwKfGheyVyy+1Dk7e+nOb7j+zY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=utcapOT3DDivlgXFm470hsiUqq5IsjRUAKYP7gA9bDRzgLboHa+azNPvJOoLAcvz9wytU+ABxUCnCuPedU1Rr8VpDloD2EPiVNvgS6jBgKd0eid1XFlY03zKxhHDEEWNT+yIXaHU8VYAzO6Ae/2R2tUil0Gf2q4wjhCVDHVyR7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hx0ie2pf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E4BYY0LY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IHPOe73227996
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:54:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zr55jwjPMr4CipN/1sygJnvq
	rz4xwfpiIiHPxxrHDZg=; b=hx0ie2pfmgdGEhRAVhR9FDl2jhZcnRl6Ppzx868m
	iofY9UgiaU54YSIuaJvbiKsFaTwSydwa1ORGyJcmynTGr3ADtW5orx9ved2cO4DU
	o1pYfo9s1zlqYSRCWjK/CUzaLmRP2yGq7BgsPZn13RT2qBHvZpE27Q8Fr7o0E1Tw
	/FIegp58HHQUURYCmlxoqy3IWo+ebDpiua3AEE/M3zU6NFxdHyzfgGXIFfvz/kM1
	p0bwMRlkRT4Cx4PDdQI0c26QNE5VQriky3aURkMRBXPZ+T1B/a3UWyvhUa8ntjxx
	8mumGVis6JS9VVZlMN8des93uVw4lCa5DPSl4QNEvK1/YA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00eg9gt0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:54:11 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50937c5b742so18669701cf.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 19:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773888850; x=1774493650; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zr55jwjPMr4CipN/1sygJnvqrz4xwfpiIiHPxxrHDZg=;
        b=E4BYY0LYwXXJfyOn5eM6/TYWcrrk1kkKymQuIyEhN3ZmRJI19bfHsri2T+Ub+nwwa+
         SZiDF40TYzWBxWffTccF9GulVOz2fKS13ahuCp2mB3c5MV9TePg1tgmnb4zCupmyIKgy
         gVHpG63m9U4BXZF7f5UD/2wM+vI5gpUIedtpuNMc5UdDYlX4memelFkyf2ca8Ba0+g6I
         Fr7A3/G59n15WVZ5ZXTImR7jOK9eZXUlLXXYkmxrKUZSmbTQ3H1Y4mW9RMrlO8gaoc3D
         Ri2rlTbrqYX8ntIPcQB360NQrBwVKcTrpDnzR2GdnHOPPLdeYSxspoXfZ1EcbjwzyTHh
         y7lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773888850; x=1774493650;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zr55jwjPMr4CipN/1sygJnvqrz4xwfpiIiHPxxrHDZg=;
        b=ZzaIU/pLKfRuXy5RQ4qAcgBjckfDojSIHzNbv1avI720XsFJ0/etDGv4iemZjKSIbI
         dWZ4KSE3F11MsJ8oBL0ZvIUUWC+XqNY/GGuovP3WcTMdoNrdWOuRiP8XLRpQIUsuUM/B
         n6tCX9noaQZWwr1MZ1OG/yUiHj9w41IZGB9kv8TTFfQ5SQAAPD3Ji2Vi/uuN2H/JteJk
         HEN1gfynOrgO7j3x18CEGp9t4WEelVl0LyC+BSy8rAfTdGyWGSGk7dyx4EOT2QPp5N4d
         lpJpYe6dX2UpZR7coHPaxaO15huH7OfHOuNmJhHkLm6ABOyO1o6Lp7ctDWg3iYld5DGk
         YDyg==
X-Forwarded-Encrypted: i=1; AJvYcCWX6pSxhCySO8BXZFxuyfE9MWO1VpgA5pcCqHCIgpiWz0A/0sFuIjHOqHLAf7cZyxP8ttSPEf2rb/n7@vger.kernel.org
X-Gm-Message-State: AOJu0YxEAwGOH5aetaWl4+oEIv1kPJJWMezV7kKp34spUHZYV+Y1IuEB
	m4MoLilPvUFn3o/SxfHUllogIazeYR3lyepGyOxUzAG1tcEe7DMRv26/mZ8sPWWGzkNtIDp+uJ5
	Mjf0n/zywwRqtyhAZnouvqCDwE5bp/MzJVs3VZTUac7QX8arKk654yVoK29ZIb7+G
X-Gm-Gg: ATEYQzwHd0hl6mE6kgUWu2nR3pcCXz0b+HmkOTyEuDL+yk+D9LgI+zUHCviCGHG9VSX
	+TRPeb/jrZoyugvSbdLT4KVf+51MMaaGgAJCh8TvINpQFFUotkAnwatYFVS0xbKOMXhAnLvzyeM
	K2n6rdZtvB53jgSEye27bNIs71o+AUvlH/wvu7Rv4Qd7vXiybcGzyd/YQgs9KDadVtzmRXQhFOp
	+YZ9B+DmDdCkCQtdmoQ8HLNpCu5hvuG+PlwxZg0W3fPaBzw1FO9RZxPuqxhSPyH77dN5sP83dL8
	fxoguG+ExN7w0DlKGNxTRdLway/PAm8TJhotWQ1mvy+gNWJJ8SDMdxIyJWXry+17116q1HjtK9p
	1AM6YdSkvKeFdSFJ44ZQ/jGfDagpNS6gDr5INwvLRpxj8R1GPD2TDWwPG3H0BL0cHYS67XDZsQ/
	on174lHAqzzOwnmT/gUPbSnx5qv2CFJ06oYuw=
X-Received: by 2002:ac8:59cb:0:b0:508:ff31:47f1 with SMTP id d75a77b69052e-50b14889319mr77055181cf.50.1773888850369;
        Wed, 18 Mar 2026 19:54:10 -0700 (PDT)
X-Received: by 2002:ac8:59cb:0:b0:508:ff31:47f1 with SMTP id d75a77b69052e-50b14889319mr77054921cf.50.1773888849825;
        Wed, 18 Mar 2026 19:54:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bd5157108sm9573101fa.1.2026.03.18.19.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 19:54:07 -0700 (PDT)
Date: Thu, 19 Mar 2026 04:54:05 +0200
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
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 display and GPU
Message-ID: <jin2ecagomu2npjnqr6ejpair6d4uam3djznuaodjijqi6hilk@64ddbqaezuah>
References: <20260318-rimob-new-features-v2-0-c1bf8917449e@protonmail.com>
 <20260318-rimob-new-features-v2-3-c1bf8917449e@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318-rimob-new-features-v2-3-c1bf8917449e@protonmail.com>
X-Authority-Analysis: v=2.4 cv=MMNtWcZl c=1 sm=1 tr=0 ts=69bb6553 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=NEAV23lmAAAA:8
 a=sfOm8-O8AAAA:8 a=QiVCaVSgwpAuPVqWOeAA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: 0iKdKH4XALxqjaiLxLr1fegFN-j5KvDc
X-Proofpoint-GUID: 0iKdKH4XALxqjaiLxLr1fegFN-j5KvDc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDAyMCBTYWx0ZWRfX/UYF8eutSxCB
 NxB03Sf+RkIRH4VD9uj2cZ2BgOtllX3FKF9OkoX2+JqrQ6RPpPMf058lV0ISZfLYCGAhagLVIjW
 Irzv/5sweUkc/lVS6uevt9y0eiK1kItHfRyQQk1ZGZw6GzeTizremuUbBZYkaYF4GYxarby0/IZ
 bVzdeyM64OjW7WT4ZH6BBRVHu5BM1LiriV0AzHCzRV/r3wYK58DPWFd77dHGkLUPTOlPd5szZ/l
 YNSzXv00Gw/5QU/b95CSVbDGDdEF/N5595Yw+CyPFAIrTGr85lrGEib5/D/Ncrkc7hVifo1J71C
 HLtZtSLXTINYFb+fVC+HHI2EUJLh5sLTdul9e6iB7GtVug1Gu02wKclZhsfVeD8SbhE6PojqKRZ
 Ac5HprBreetwPBvliNtC6N3WvjnlQw1mPgOCHSm/6ieo6y1N4VLroqp63NB3ctezg9lS4x/rWyr
 JRcIltANe55ChHrm7Ug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_02,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190020
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277538-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.948];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5BE7E2C52C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 11:28:11PM +0100, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> Add the description for the display panel found on this phone.
> And with this done we can also enable the GPU and set the zap shader
> firmware path.
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---
>  .../arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts | 74 ++++++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> index ef4faf763132..de287c8e9686 100644
> --- a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> @@ -78,6 +78,13 @@ vph_pwr: vph-pwr-regulator {
>  	};
>  };
>  
> +&gpu {
> +	status = "okay";
> +};
> +
> +&gpu_zap_shader {
> +	firmware-name = "qcom/msm8953/flipkart/rimob/a506_zap.mdt";

.mbn, please. You can use https://github.com/linux-msm/pil-squasher to
squash .mdt+.bNN into .mbn.

> +};
>  
>  &hsusb_phy {
>  	vdd-supply = <&pm8953_l3>;

-- 
With best wishes
Dmitry


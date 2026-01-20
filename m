Return-Path: <devicetree+bounces-257629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DdbIO4LcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:12:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EA64D91A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:12:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 92D41B2302C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F07083D5236;
	Tue, 20 Jan 2026 22:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mhqw9naw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LmpXvcVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418E23D3D14
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768946615; cv=none; b=qgLlE1/71sxN4WSc7RxkjA/4wokZRAj7lyXa9P8h13TleRGg/Vn+OXe7gGksyBTDnUbq6DCN7Edjhr2pwpg85D2TRfbVyMWqIClBPlj1Qno8GAL2VZkC8FhCjoKYCfNuAzKPXivO5VBRdSJqBk/sqtHJb17J0szgDK70Jk5/JME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768946615; c=relaxed/simple;
	bh=IsjGtIkDgzUdrN6ePwaBEYZlrOJK82ZTG0kUiJy+FXY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=icuA/6xBi/kbqIs0TO9nyBGMDxpmRnDUue4VRJZaKdfQe7scGGqQozw2CmZhYSDfYbrD6WHHk+vqUDZ0Fef9H0ahGLuuPGp7QhvHxsT0NCHbxBG6lcH+pEvA35Bu05Bc8dAfyxT33MO1z0RKUwLJ48ydSRWAjqXK6D+9MPnjE9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mhqw9naw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LmpXvcVP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KHBnTf314576
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:03:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Y6CYv7Tl4oV6DXKYTi16x+4R
	G5JfzB9SKqpy+LoHMFc=; b=Mhqw9naw1Ds8ZBTAJEF6qglZE+8T7pA+pw/yPEJa
	tAckAWNF8Q72rLXcbmyN4GkHArstBC9zcugY1/vzm6c+cJb4BKb/1h/UGo28gQC1
	CHCrz/0nzxPIKOJ3BPEfBT8MT/XztdjEackVfTYGqq59TKhyJQLKwhzmEc2ZDMRn
	10lTeGMSXD5vJlSvSuDMzM7s6TjCuFfnVPP0wraFbisy67c4MuH0ZOguM2wBs5nr
	oikQvvr9jCoFrfH4nEe70D3bNd2wJ7jTh3GnVmDN5zDiYa2EvGKue4TKtTnvtPqn
	aAttcia7HYa4CO/VH+87DpzNtAIGsFtwM7ooOop1g6hcwQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btdw28yv6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:03:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52bb3ac7bso976051785a.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768946611; x=1769551411; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y6CYv7Tl4oV6DXKYTi16x+4RG5JfzB9SKqpy+LoHMFc=;
        b=LmpXvcVPp/e5lhpV9AVlA+UkEYD0mGrju+MyESc8z1f9BJBFv+KgWMhEjrRZYQs6r5
         5CgPJ2vtbtBm1lkVaCVcyKi8RahvsxYoe/Fnt/pPpjO6FDsPJ140+huY23aLxs/I8jTL
         xqMtPL1o5ozPeflcmU3/WvyZ8I1OrPNmYm19EUQdOd1ibL4+xqoIbcj6WDvohApHMJtn
         T6Um8k21fvrBfQnpcEb1Bu8qkXk4XLl/8k9gslnGA+yxCsQ1uyc/qc+v68larhPOGUsO
         mHCdto9iCjDk+LRD2XW5I4DYfrecqut2mpUI9RbAOBl+AkZnsS2xc5TvBv1KhB/BC8kx
         l3Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768946611; x=1769551411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y6CYv7Tl4oV6DXKYTi16x+4RG5JfzB9SKqpy+LoHMFc=;
        b=Mmsa1VGPcQ23rOvlGQZMN2I6PPmZgzgd0BoEkxptd6aPFD6ZT+JioHTcg7d0lxCUtJ
         tsRM1a+rZ+g/tJd7RmwWToPDmJUbQwjwxm5zTsiiAyq39hgeMv8XtVBLH/Dpuiiol/p6
         k+2QE67wJz4WnqqcBBWb7mdSqHQrikoWdKfiNCFkTCF9hFz65Z/jnPcEYnj+NUgyHOYf
         2Eqk5eLJH3C40jlNrKTIUAYehX3RD32Clmhlc7bgVCIXgm3yVUtwjZIQAS3AXhmUx/J2
         XOth+H12d6nRJzuOgN9rp132ftsanznwbZsAac/66WLFk8q0l5burK2Y4u3y1F31AUjg
         STQA==
X-Forwarded-Encrypted: i=1; AJvYcCVTj1IHikR7UAXU2/6CYDNXKLSGtXIttgoogm7tnUNXVISzcew/RCA0FC0TF+GzHg+KeMaJzNPPKRa0@vger.kernel.org
X-Gm-Message-State: AOJu0YzCzhOUPmWh9upWZNzPq1RtR0Nl72dQDU1yly8ZzbEW62ab7bdH
	b/pcdYBM3mcbbbR09QOiiW9ucn/5Y2SFaztn87iTAYjvcCejXxFKz7azLcgMMgF+ZvC0IzpWlxm
	DBMGSy0Pgo7gWmUy2rpfeJEUQQE71dIzDD23DY12AKLXGGZMHIMKDkSHL0oua5FLY
X-Gm-Gg: AY/fxX77k4XisB/hw3Qb7O9Dt91Z0RcOfO6xt2YMEeQ//VwEe8pcpWd/VU8XppCaoQc
	BOXfe+hnSmVWmSY23bCtQONKT6a8KIgXBWeX++sQb/LTYuq2FiLcLpPdUudSKc2iujfFzEPN9o6
	IL6BMA1mHfpf2TjP9kZwVqhWoU3hSpDprQhSrx1Dx+oM+klvNwagxehMbvO7T850R40ygEVOXdh
	CSHigvxZ8LmmMrfIevaXAgEUUOW+SnRHc+kTmZqFT6H3Rt+DW2CEqdLnp9+XgMIbqObeypC3eew
	SfqvKwEUWAupeBfC+VCHcGgu9UAXBxIibXBwCp/hmQwer2srW6k6rezwHN1FjFIMi86hbia5a+L
	GR+L42c0co7puUyoCTDmP2xUdjzOAU0689x/LPJ8YFB65SBY7KKXBxB67qNURxGCLdps0/YPE50
	w7FSAhptYK89RjRH6idPxhAw8=
X-Received: by 2002:a05:620a:29ca:b0:8b2:e922:5282 with SMTP id af79cd13be357-8c6ccdbf247mr448372785a.26.1768946611065;
        Tue, 20 Jan 2026 14:03:31 -0800 (PST)
X-Received: by 2002:a05:620a:29ca:b0:8b2:e922:5282 with SMTP id af79cd13be357-8c6ccdbf247mr448370085a.26.1768946610648;
        Tue, 20 Jan 2026 14:03:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384d8e0e5sm42321881fa.17.2026.01.20.14.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 14:03:29 -0800 (PST)
Date: Wed, 21 Jan 2026 00:03:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        cros-qcom-dts-watchers@chromium.org,
        Kalyan Thota <quic_kalyant@quicinc.com>,
        Douglas Anderson <dianders@chromium.org>,
        Harigovindan P <harigovi@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Val Packett <val@packett.cool>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc7180: Add missing MDSS core reset
Message-ID: <xdllt4b42d4srxaqszlk5tadjvd5zyj5oae43sgwllvzcsva4i@2er45lhhfwij>
References: <20260120-topic-7180_dispcc_bcr-v1-0-0b1b442156c3@oss.qualcomm.com>
 <20260120-topic-7180_dispcc_bcr-v1-3-0b1b442156c3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-topic-7180_dispcc_bcr-v1-3-0b1b442156c3@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: bo1vy3s5JUkDjGFhYk04QX8qcIQ-AHGr
X-Proofpoint-GUID: bo1vy3s5JUkDjGFhYk04QX8qcIQ-AHGr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE4MyBTYWx0ZWRfXxRJySNyahGIZ
 tbvSEa88MKmDnXujiDGdq53IqJV3Bn5KlZgX7fADrGatzd+Zk2uKHlisck1Tqc57qeyK6aW88tM
 oS+J17AxyDPgKmI4xYbAYK2zb2tH2K+3olZETeT+aEaHwHK7ivhzLZcrFZwa1MhPcpcGg4hTti9
 I+pBz0IMi1bbjurGSqEF+sUmQ9UfzvcEQoApPt2j7BxV9J3sCZepFrEe5qM/5JjH2dR9t4wJjNJ
 3l3EesJDQsisrNILv6U+odPG1WBIOaJalp8qqfbl2qukzmBpNIGlesVxeVYS3gzixpyAC+tP/uA
 1MyR0JGUD7AAtlAbd7vpkbSrtDdqol7k5opNYnUyMUC3jJdtl69bmIbWK37xtnEeWyk8nZExEzk
 V/QgCadhoSACVQzhzX269g5LqQVer5AZdWKsEusE9hF2+tyzh1mfXAfvxk9MAxiySDnNrW8Wtav
 x5a3/OlUrd8XNR42AmQ==
X-Authority-Analysis: v=2.4 cv=RqzI7SmK c=1 sm=1 tr=0 ts=696ffbb3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=HRRn__jHw68NO7zq-skA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_06,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200183
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257629-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,packett.cool:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E5EA64D91A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 12:19:27PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> To make sure the core starts in a predictable state, it's useful to
> first reset it.
> 
> Wire up the reset to fulfill that missing part of the HW description.
> 
> Reported-by: Val Packett <val@packett.cool>

Closes?

> Fixes: a3db7ad1af49 ("arm64: dts: sc7180: add display dt nodes")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 ++
>  1 file changed, 2 insertions(+)

Let's check that trogrod users don't have anything against it. Doug?

-- 
With best wishes
Dmitry


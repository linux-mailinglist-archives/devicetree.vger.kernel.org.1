Return-Path: <devicetree+bounces-269414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDPoI835oWlkyAQAu9opvQ
	(envelope-from <devicetree+bounces-269414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:08:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8121BD38F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 21:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE7203031338
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4933E45091D;
	Fri, 27 Feb 2026 20:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KNc/1pBY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J+F7DI+G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA553559C0
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772222889; cv=none; b=GPFoIttBhwN1hg1Ou+huBInzuz3DaOisZQNsom9+MnEmLB8hBWRBNZUSDCbfVOn820arID1l9i77k+TCc3oDBSerfoMeUPtV97okE0Ln6oRUmp1U5Fb/Op6SzBjBj2MM4YdwqvaSJ5bNRmNU59TN+6Mh8U+NevN/Px0Gg+fXF/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772222889; c=relaxed/simple;
	bh=VuRBMb75eIT5fo9qG4unkBUy+l3VHxhCRuqUeRLr8SI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SLTmFhJ+XGwXyTv4tgQ9cl/s+8V1M7P4DchhsmlKWhdjy4UI9TGM+AzGONpt5mv6MKHksf0COWf/tnpMffU63bdQXwX88oSUEqoq0DFvE6IVLVcSFcb9FOMmXBgdG5TJRkYUoXmWET5W7Vu+6hdkLGESUWQldOntUO/wpcrl/mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KNc/1pBY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J+F7DI+G; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RH0Kr72167858
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:08:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oSmRv6wtQGTXHQGYmfU1pjBn
	iu7mYqSD+y1MWPdRvjo=; b=KNc/1pBYMQjXxL/TEuwNf7VjtAQQ3V90+2qafp6V
	+hxiGm5N83KN0MwTnl6RwvsncsmfavktN5bibb1kJXAKxyhURt4C/X2RbxGM9U1k
	nSMTckQ1qsI3ZVt5oTdmhL6knYrknhIGglg9vN70UJfchLt1ZZktYPxm4pnr9v9u
	terAiISCxTVjmMku+FQ6Fvn3mkfCK2zxnBjR7gloUKglczHF4QLmoQnWjjjvT0JI
	e0YFPT2+AX4CZS8QehpdnPSYuTb4/LweqE0VPDmi4mkM5MMXQdQZtmpaFcS9dpr+
	kFXlP/1ZUqITsetLEARmxDWlk/b43qZ7ytlPXp/jxwAO7A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjx1xv307-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 20:08:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb390a0c4eso173119185a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772222886; x=1772827686; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oSmRv6wtQGTXHQGYmfU1pjBniu7mYqSD+y1MWPdRvjo=;
        b=J+F7DI+GZHjFNUum8pDt9F1RE3FJ361SF/ig+lfvB030rC/XjQYifsXd6sgA3177uR
         dKmE0pmYih6I13mDap02N2MpsZTK9qib+SbR3xO9AWgPh9UNexnAejw3u227kcXTj0ht
         +OgR2X4g38UYppFche5dleP6c3avqooSIqo9nKV1jlOiYJ0cais8z5xG+VhLM1T7yqqs
         Rlp92Yn0mELp2WaOVbVO+BoV94lKRglOGTcerUc0GmLxJflKdkA+cLOIkI0jxXT/KQ6n
         f51xMIPhnA44OA+YFuusb9s3Ti8oLz8hv/uIW/HE9H6tAF6RxeG9aMuLTCmmUyLytq0u
         MVbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772222886; x=1772827686;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oSmRv6wtQGTXHQGYmfU1pjBniu7mYqSD+y1MWPdRvjo=;
        b=SfPRKt0evVy+Nz9nNhDYIVn8/aX/8CPulYJ3iLLP/zse3tqT3wbFZWFRA82cu7e62O
         wsSMrtrC+EY90P0BT7vvjw1W5DpbizTf72oSVNp9Up2yAG07IU5IdV1CjuildG4pDHs+
         lHk5ih0an5fj0MdCOBWajXbYJHS06+/Y3eTE2I5yLPR2eimjuzSvwu6aT8j7hIFjDbQQ
         yzlEdtwrgFY8ArAd0Eqd5DOiO4TYNUEW/qgefWOOW9Bo7OKMGSDn2mI5b4BFbG7Mqz7+
         Q8gw8gAQrf0XpqpBww2LnFZxvMnZmmfOk4Wtg5dEjVy3N3GFAQGq39ZVia7x7At3CgNe
         a4dw==
X-Forwarded-Encrypted: i=1; AJvYcCWIeDbNOvu6vMnuWVmZZB0em6gIW+MhCiTMHjGAF1wQFiED3SfWrSnzPAsebsNwHyuXPvMHA9HUnTkw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+nmGUuNxg/OrxAC4NkB6LLuuNI7wmqhmSkddOrjB98GylseGt
	B+CX1ij5lfxKGgjV8aWC6UEAu56SxqpcPaNf1fTeFuP4bbxrBpjY+rvkQhUXQ56xcbF/pywT4Q/
	lDpCm29fKkiYu4gnD5sOcmm+7tl+ngLjovlqZxvAdoUJw+O0t/tFG2YO1+8HqQYZt
X-Gm-Gg: ATEYQzy5kxpG7WrGO+XhYggbqL6WXIXS62jhHSGCHhkf5lAE2xeKzIFGwbHwyxogsnr
	EbWbHdPS2/1kwWR/eOCOqKUFsF7Ezq1C7K2P0+MWyeZn6KAIZnvI/KrxoM0fLnVx95oWuvGIZVI
	paMZHY1I8bKXjLSePigcFnJx7JViLN/pcJgaW08nRBvEVcHKiG2H8dzn3fEIAl6Qukwp2OdrGG2
	ahxU0NfMbexEIotarmLeR9Jr8ngUPigo0nHPjCm+bHZs2enhb81T2Ayo0ksHOed6Ic+Jb9DbemH
	l25gFfI0JK4sewOu+pt3GcqWHvhri8xPo6Zh2Y5UoIwHycTkNs8jHdXKJs3ZOlxq9lRAgFf53ss
	OQQRCqIsb+kgv/bRxoHkd8mF0FQX/l6yihwdefYB/jqXmXTX4a3FcyEHJXWP37sPqp2ut7DzL68
	o+hPE8aPuSxegU/gFGaJpeRB7/IQ9BkKfst1o=
X-Received: by 2002:a05:620a:4015:b0:8cb:4d9b:6b48 with SMTP id af79cd13be357-8cbc8d6f18bmr507429885a.6.1772222886421;
        Fri, 27 Feb 2026 12:08:06 -0800 (PST)
X-Received: by 2002:a05:620a:4015:b0:8cb:4d9b:6b48 with SMTP id af79cd13be357-8cbc8d6f18bmr507425685a.6.1772222885963;
        Fri, 27 Feb 2026 12:08:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2ffdfe5sm15519031fa.22.2026.02.27.12.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 12:08:05 -0800 (PST)
Date: Fri, 27 Feb 2026 22:08:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V1 1/2] arm64: dts: qcom: lemans-evk: Move SD card
 support to overlay
Message-ID: <c2atmwzjfw453hgmjava6ygs5tkvxg5lic5ss5jnhmxbgsr3b3@afqveapmmo7x>
References: <20260227102405.2339544-1-monish.chunara@oss.qualcomm.com>
 <20260227102405.2339544-2-monish.chunara@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227102405.2339544-2-monish.chunara@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: NeWQQtNoDDneMcIKIt5Gpw5_7iVbe3yx
X-Authority-Analysis: v=2.4 cv=Vtouwu2n c=1 sm=1 tr=0 ts=69a1f9a7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=ebZJyo7wKO-bphQtCpMA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3NSBTYWx0ZWRfX0yUytz20yHJA
 2dapulLv3HpfWrTup2evCYwHWTgofm3Oi/vGeBFjTtu6Bo9R3wUnrJ1HEXYpPkoVvEFWdLM+uDu
 jVLp81KtVEsx31xdkOmRWQwLjGi7umsE6RsK0oDATd6Hbg/NbmK7HFRJbhzBpbYCUkQ/GZheImQ
 2vIg0Sau14YBeo05vAGTNAtLtmIJvusvFCusrZ0YlBfj+1mg3ZzJm6UDYE1o2wmcVaNUjKWI4Rl
 pidatXsr+KzCceodox2DaMgY2yjvoimG/vvAH9645uiZ1gpoXHeILX63DINZclym8o8W04lSa2X
 /UW/pfWmzPwtxJV06EaruKD3CR7TUuhOdxP9pLPVfAhFzADtI67I7Xm5/t2YRptDMDd5worttYC
 Recuqv63AuBtIR2kAL8W+Xf+LBQ9Snwj9K/wl0wAhlBm/fYgrz9+wSKQctkFBkdGlsf+aOZk/RL
 hfy3UB1a3MfdXReAF6g==
X-Proofpoint-GUID: NeWQQtNoDDneMcIKIt5Gpw5_7iVbe3yx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 bulkscore=0 spamscore=0
 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269414-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EA8121BD38F
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 03:54:04PM +0530, Monish Chunara wrote:
> The lemans EVK board supports either eMMC or SD-card, but only one can
> be active at a time.
> 
> Move the SDHC node for SD card into a dedicated device tree overlay.
> This decoupling allows the storage medium to be selected dynamically by
> applying the appropriate overlay for either SD card or eMMC support.

What is wrong the SD being a default one?

> 
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |  3 +++
>  .../boot/dts/qcom/lemans-evk-sd-card.dtso     | 25 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/lemans-evk.dts       | 16 ------------
>  3 files changed, 28 insertions(+), 16 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/lemans-evk-sd-card.dtso
> 

-- 
With best wishes
Dmitry


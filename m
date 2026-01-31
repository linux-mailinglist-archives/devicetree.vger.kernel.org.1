Return-Path: <devicetree+bounces-261392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEPDJqKzfWkHTQIAu9opvQ
	(envelope-from <devicetree+bounces-261392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:47:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B815DC123F
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:47:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 43A3F3001CD1
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 07:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0FDA1925BC;
	Sat, 31 Jan 2026 07:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bv4IHS8m";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DmUnQQMN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FDC2EDD4D
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769845660; cv=none; b=BlLRxaPJgUMDwjXqyWYdsiq6d0MC1qbpMG5UaaNEDv7qmfM66ioyrW3oXli35wzVq/9q8NLuR2NuxDrkfDnrfnunPVNVg9kPbk5ddT6g+AVFyIiae3wSKab4VIlrkU/P0K9ei7uuXnCYPLK7QdgCJIRSX3kJLhdAW/A3m2qg8o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769845660; c=relaxed/simple;
	bh=QqoWwYzNi4zrXNukoRiPgcsL50duB/mc3/X7y00nsoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Eqeish4acdCmn0o9ChnRJcDs1RK/xD4hQvlR1H9/Qy6QM1cDaXxgZlRoLLjqshTcNpxpwWJNO3WYI3sUPidDNw/UrAE6caBgo931nvab0d01Sa+q4bwDRB6bjd6h3GJ91WYABjrBfZwPjKXUcuN/IyL3P5kWlrAa4xlN5ooZK/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bv4IHS8m; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DmUnQQMN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60V4lf7k4058340
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:47:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QmhRuIXw0mnjE3kiuOWUvcMk
	udqfG/1kwYIgHFoKJOo=; b=Bv4IHS8mUhj32FWAQ38C+ndsOt7+TlsCj2BO0Tnk
	Yholqn9vyLapTTiiJ3cGL4fQ7EK6/Y9OppCMIFJaDEWgIkJhWLOyAl5vxzOlFY99
	hh/Qt+imVNnKBN7GSuhi3Wlh2dT3YslRLNj1smVKlFE0yAIirhPIs6/6NKOtWOAv
	bBqatgFqJCoTh6NCjcypwlEMd5YIdUgHWzvbOZQXewoxTlpy0PYUYDsZrZkRygDg
	eIkCdCc4X1QZDx9s83+j40o2vptlWKQ8iICko/9blx8ctsr/eeVy1JIEgSxFgEX2
	u02Vl9EXml8zljkJObwAk6BMrg/DncCYSFyAdp3ASqup8Q==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1b17rc5j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:47:38 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5f52be418b9so7118709137.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 23:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769845657; x=1770450457; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QmhRuIXw0mnjE3kiuOWUvcMkudqfG/1kwYIgHFoKJOo=;
        b=DmUnQQMNhe0+9drzSR7vOXIUlku1iqE9LIAi9GCd6niD9BCc8BtnPb8L6bfx+HR2HE
         WUzP4QmoWsbIt+bayD6ujNe8ibucrTRGwb1B2wzqzirfqDyMjAKsHvm7GKURPRKeR6fs
         qiiKxI0PiBOC+PNuGb7fK7yF/NcrXSinwHb7T/vs9o2QT8NTBKOut2dLHx1AzQzj2mcX
         3NKC813wErmpd+aXAN/4Q+daUZK5NzJhHiMdpEiiPX9qLNZWSF1ErD38O/4+Z8VlnqcL
         OMzdKcLYGoYYm8gQzFwc71+wJmmWhvM8ehGit538jYXKAgIfLX5bKwXT5VkrAforlCHz
         DAsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769845657; x=1770450457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QmhRuIXw0mnjE3kiuOWUvcMkudqfG/1kwYIgHFoKJOo=;
        b=WWV+aeaCroYjApJljLqAn0KLqhMN176JyvR6yDmPcm6bU6oTwwXWrVTgu14XVddaci
         FeRiaXNqb9qjM7LNfWt1nkk8b08tTRCXIoS6QYCAeiuqe7mR/h8/iMW6DPhgDdaFvYdh
         rJhy3ELD0B5fAhCZieQkycqnl6TGwrFC/86jwnmXDvrc0vYtGuo3Kb82bEM0mUSdPiVb
         jrIWICeHGPu3eUy5J2aZIokSrGZOh/6WVaJG0DlwcKjra2+/gQC49yk6s3CRZT1s9oIN
         /Fq2++Opt6q5uHPgIX2ufBwV19QyBJGtlgmYaeml68uG0UH5adxs1Bxz4E+p+ZzIu6qL
         KT3g==
X-Forwarded-Encrypted: i=1; AJvYcCXi+CkuSwph/K34ojsg0wQTeb+LoJH8dig3xc/ztcrUJTqsf96fJ73zS9IeFgAR+R1/CYYMW2pDXC8T@vger.kernel.org
X-Gm-Message-State: AOJu0YzXrfi12S5DZp9RttezPIY7mZ+Znc7R9GzyuHC7NiWQTEXrBNq2
	zOD2SNRXvfKeZlsPh+gm+V1Jvt+qFsFH9rBb0gwKN+qjnWx46nrXm8h4yoS8h22y+kEcqdYGhuM
	s92nsTIUIxf9NSBdJs5ruAXi2gFuAU5ciAjxLETRqee3XrnV43vk1z09MhbstWCd3
X-Gm-Gg: AZuq6aJX1fYdNWSa8JlQUqKwQElsiun/KB5qTxrPhFjWNVe5X2fbKyRztBtzEZFzFyj
	ETTKE6TG9Mx0Id6AHI9nL+8v5x1Ybd80pobYmMQACMkusZb9ELfb6u79WQTAjV24EylwBMostZg
	bkA/9EL7qcrgYa9ZUvyIjk1M1CQeZ6UeouG1WCKLbMRBMynkat8Hre6E+l8ZFFUa+W9/jx21ycU
	MJAaC+1xdrUSGA6T+P/4cXCYl7tp6RjeHpDPRd4KkzgEW6eLhjr0QkVndBpRa2xuURUyNge6cO/
	FLm7DVVEuLizKkiEZdDhi7ixtFculQfUM3JaUy1GgBfKSaGfK+0SYoH/SyZqBRKbbt//ioR9G8i
	nUVwoWxh6yzCKQ1706eRONVxeAQjuePuViO2usnQtdHkIyns0qUeozFbyI6Cwr9/62Icc8jv3yS
	0k4L/0yNRJuSdoedmLnjLpqF0=
X-Received: by 2002:a05:6102:418d:b0:5f1:b865:aaa4 with SMTP id ada2fe7eead31-5f8e25b2372mr2109701137.21.1769845656959;
        Fri, 30 Jan 2026 23:47:36 -0800 (PST)
X-Received: by 2002:a05:6102:418d:b0:5f1:b865:aaa4 with SMTP id ada2fe7eead31-5f8e25b2372mr2109700137.21.1769845656519;
        Fri, 30 Jan 2026 23:47:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e07481c22sm2216368e87.10.2026.01.30.23.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 23:47:34 -0800 (PST)
Date: Sat, 31 Jan 2026 09:47:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: webgeek1234@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kumar Sharma <quic_vksharma@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8550: Fix DTBO boot failure
Message-ID: <7d473eubnez5gcbou6mguomeetpotp73q7cjol3kfjlg7pz5r3@yjsh4rd4mwbv>
References: <20260129-sm8550-abl-dtbo-v1-0-abca3be14024@gmail.com>
 <20260129-sm8550-abl-dtbo-v1-3-abca3be14024@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129-sm8550-abl-dtbo-v1-3-abca3be14024@gmail.com>
X-Authority-Analysis: v=2.4 cv=LcAxKzfi c=1 sm=1 tr=0 ts=697db39a cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=PGwtHbjD0iUC7m23mMQA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: G0598yhOZN2_fNbuDi4CGpfScVT4CVw2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMxMDA2MyBTYWx0ZWRfX5FuB90UOFLmB
 DickCP1b3OfEFgx+eaWZ324bprRBNGituBSoPtmBUCBQFFZ72dKmcgxf7VQa4n2eK3+pPoBrUmb
 SZyYg0Cmxee/wKumokclfXRRDn+5hNEMOgP1mG4vB5+Boeg/g4EwBqoOV/t1vbllAI/j7QKQKru
 lP17M66uMD9pwUSuIMCO3VnAR6q6WukyVXQifo64kKG2WSFjCM9hrrRIAeR31zRpJoC+IDzTZTA
 4ynKbzd4yKs3BifGGWiOAabNFvcGgNAAna/JI0eI8jsL/LiD72kbkqSvT1lSgvAe+6ZwoPtTuEA
 b8rTg2FVi4GzD3iED8zzXDV2HTP6RzR9JWsDYCIMm2bRhJtl/7uMuwJCbctRewUw/sGD4MYiVbB
 RBoAZXhzI6gxUdhkLPGQ8E0a3pYM+rSJI4c0KoBpqS6fOS2hg/gdYL6RV60xSSHJowAo0lhb6vi
 KktSoQyzzngm3wiNIsw==
X-Proofpoint-GUID: G0598yhOZN2_fNbuDi4CGpfScVT4CVw2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601310063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261392-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B815DC123F
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 01:46:32AM -0600, Aaron Kling via B4 Relay wrote:
> From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
> 
> ABL requires certain things in the base dtb to apply a dtbo. Namely:
> 
> * The scm node must be named qcom_scm
> * The timer node must have a label named arch_timer
> 
> This aligns the sm8550 soc dtsi with those requirements. Without these
> in the base dtb, when ABL attempts to apply any dtbo, it will fail to
> the bootloader menu.
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>

Did Pavan provide an SoB to the patch?

> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 740e3c238e8ed0f162dd168291f6e307ace66e80..d7cc20e1931904e7c603b800089f00955ecec3b7 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -329,7 +329,7 @@ cluster_sleep_1: cluster-sleep-1 {
>  	};
>  
>  	firmware {
> -		scm: scm {
> +		scm: qcom_scm {

This one is a definite no-go. Device nodes can't use underscores in
names. It has been told to Qualcomm for ages. If we didn't comply, it
doesn't give us a permission to break the rules.

>  			compatible = "qcom,scm-sm8550", "qcom,scm";
>  			qcom,dload-mode = <&tcsr 0x19000>;
>  			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
> @@ -6764,7 +6764,7 @@ trip-point2 {
>  		};
>  	};
>  
> -	timer {
> +	arch_timer: timer {

Please add a comment, otherwise somebody might decide to drop the unused
label.

>  		compatible = "arm,armv8-timer";
>  		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW) 0>,
>  			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW) 0>,
> 
> -- 
> 2.52.0
> 
> 

-- 
With best wishes
Dmitry


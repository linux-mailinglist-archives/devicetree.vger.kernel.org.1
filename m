Return-Path: <devicetree+bounces-272746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJkyCW5+rmmzFQIAu9opvQ
	(envelope-from <devicetree+bounces-272746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 09:01:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A1D235322
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 09:01:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F37CF302DF4E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 08:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D792136B07F;
	Mon,  9 Mar 2026 08:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fBqM2agY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DfPZD0/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83DAA36B04E
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 08:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773043269; cv=none; b=rI4z9YiUWWdPp4sq55csI/H09diGJHAtpHKFZZLqIzaQepvPB2xGfw9uyTHe/XR4+3VZ9wz+vjsy8UD2Ksx0t3+rrj/uKdSuG8acU3ioo0aNskHobZ2df4fuK58BbEwpP9YFqZEmAgSBAd79a0H6cabJNLxrU0vwgCveGkSKxGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773043269; c=relaxed/simple;
	bh=E9eJa2G/NHbwHL0+5aMxz06o3Kw/+hG967uBmsXtmkQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QqK242J/dcIisZp9nTczp+vNnbIt6rQHSk+RG/5PRvXUChi/w2oLVDUQer3yd5e8G3GuLnTGEnMU+546AAMd93GGp6+Z2T2EltCk12AqwCm4j3FTm3kQnUdvVMUit6hf0G8YJLsIgWyyGOkqZm55kQa45qEHcMkRDKpQqWNrHcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fBqM2agY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DfPZD0/Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628N0SO0198538
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 08:01:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VBEckW3xv13OohSMW4r0y6KB
	wFyjlc1mZ8nZQwd5Ao0=; b=fBqM2agYzt+n4d3X1D7B5eavas0pkwvoEYXEBgBx
	PhY0fDezmxs/vQ5cXjllglrAifQVRxJ6pK0HC4xsWnoHamqTvCyNrRWCatpIJMGN
	/m71aqNhgh83HPv9CQZyy77jEKjGuRGVaVU0qvFugWXS9OFz92feZY0xu4cyf0MJ
	6x8WA68ENoipfcYB8MpC3tMdLskCZ3HpLX88fOARF+Nsas4tzyNEhENu1x9PZShj
	uwmIhk6bYzexLECrE6BrSChso8w4R+29BWhltyJ7A6BhwxfwcP2chShhGJuz9YIP
	LvuMQM/LGlo7XwC8AzaUdtTXkoqRl2wRPiUezROh/71cHQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crc3vcdk4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:01:07 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3598d3e3bc7so7460540a91.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 01:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773043266; x=1773648066; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VBEckW3xv13OohSMW4r0y6KBwFyjlc1mZ8nZQwd5Ao0=;
        b=DfPZD0/ZnWKOlWJR8qJUYs/m9abJa3BU+CaX6SypJEehbawumoLBiCxaOtvhLK76La
         hLZI9fLxMqm8yqnIJMLMTr1L8lU++88VabrcI2aUxnIAJyFVaQIm/FUwIVnXZTuzseqM
         l4RIdA9LGBLUskves4kuzjhTREl5pwBsVHGPbRq0oOC3qoTG5mIpnVfvmzMkuHI8R5hh
         gtOL6F9vRz1r2suzypMXR3h/xcTIPotVZv0t92W2hA1Yu4WIhgsmkBEM3DEIKrsZrDPw
         iFgNj5AxdufxikkBUBQFsFRfGtguFjW7P1gzFAO0JhuEX06pjf8gVyc8dw4zlzalym0b
         5+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773043266; x=1773648066;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VBEckW3xv13OohSMW4r0y6KBwFyjlc1mZ8nZQwd5Ao0=;
        b=QTFvvuEXViEo7C2x65LolBrWPcsKgFwAoIeXkHl7Qgw3a8ihV62MM9Ek7IKbKZuFyW
         yP6r7Y+/Y4NshPmvauCUY9ih0/CjcDeTlY2b7G81DIf1dXWf8STw/y3iaTB0NGNXj7HM
         q95om02VI261otB0jqRx6gicLhM6+PD1aqEa/iAq2w1Y8kRp9KfwLhrxBkL8NV3w/gbo
         rTPPbLXYuyY7dFIdjOWORQqZucDgyntaX6k1KXVo+Ch9I/oO2JURi6A4gx7veR6q7bPD
         n69AayQztKoqsYIjucYzhs73NHqZxexuNbLxv0XlZlWvj7cVJNxNjGO7GBt6K18iJSGS
         1dTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQ5Rtu/jHsi48ClPIDpZWTfyAUsksrNvWifbb0sbNLN2OO6GpalamffPmpW3BfxB8tSse7Rm3T+gKX@vger.kernel.org
X-Gm-Message-State: AOJu0YxKGSkZjVvhWyC+IlzJFU2UTsayQZxV+kSD09vmXeZorfoWFV0G
	IkXH3dNPlJb3JYhVSso494U5X1//dbUv57fAUYfaP9qNoDfyQ+xl2kWlUXuZBwFutgKV/HFym9l
	PTl/NB8wAcKK1NeFqwE3tw+8y/eXLPf2DSC6txFXk/fGhs2/ejiNX6te1S59rRvd/
X-Gm-Gg: ATEYQzwJj7bbcpxvQY5MhLJH4LoQ6zATgvtAnn0SLBsi+aB1jaMr0XQM+JKP7u+/DiJ
	CMvxhlUNWNWTHaki6ES6ExOjaJV9Emr+KjjZ71cyBcaz6j9j6S+7zhylkTwzHzXrD9MhSsPlA6n
	jjcmIc3PYQJl+Gpu49N0Ce2JZLOGgwv5qMa2mrLWYT1ax84U+1xYQb48kwEmC0xHnN+dO5XUrj4
	LZpZkD4zbwKWThp4pjvVI+CgrO1VA8xKrAJ0pkbtcyTGpj48kzcg7kTplrUxfn+dfyMXHfDRnHL
	5RAWRo3/FnShR9uVchxn5TvMvMdMsL6Fec9WTJNXqVmzqNYnd70vWUgNUQrggd5u96J+ZHGbUch
	iXGDlahdmL/NaIQ+yrF58WecnB43RPHiO9QPuvpwQJhtjgP/D
X-Received: by 2002:a17:90b:3e45:b0:354:9b3f:710b with SMTP id 98e67ed59e1d1-359be32bc30mr8869544a91.19.1773043266117;
        Mon, 09 Mar 2026 01:01:06 -0700 (PDT)
X-Received: by 2002:a17:90b:3e45:b0:354:9b3f:710b with SMTP id 98e67ed59e1d1-359be32bc30mr8869490a91.19.1773043265451;
        Mon, 09 Mar 2026 01:01:05 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359bca24e8csm5146555a91.5.2026.03.09.01.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 01:01:05 -0700 (PDT)
Date: Mon, 9 Mar 2026 13:30:49 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Sumit Garg <sumit.garg@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-media@vger.kernel.org, netdev@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath12k@lists.infradead.org,
        linux-remoteproc@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, robin.clark@oss.qualcomm.com, sean@poorly.run,
        akhilpo@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jesszhan0024@gmail.com, marijn.suijten@somainline.org,
        airlied@gmail.com, simona@ffwll.ch, vikash.garodia@oss.qualcomm.com,
        dikshita.agarwal@oss.qualcomm.com, bod@kernel.org, mchehab@kernel.org,
        elder@kernel.org, andrew+netdev@lunn.ch, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        jjohnson@kernel.org, mathieu.poirier@linaro.org,
        trilokkumar.soni@oss.qualcomm.com, pavan.kondeti@oss.qualcomm.com,
        jorge.ramirez@oss.qualcomm.com, tonyh@qti.qualcomm.com,
        vignesh.viswanathan@oss.qualcomm.com,
        srinivas.kandagatla@oss.qualcomm.com,
        amirreza.zarrabi@oss.qualcomm.com, jens.wiklander@linaro.org,
        op-tee@lists.trustedfirmware.org, apurupa@qti.qualcomm.com,
        skare@qti.qualcomm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
Subject: Re: [PATCH 01/14] arm64: dts: qcom: kodiak: Add EL2 overlay
Message-ID: <20260309080049.si3vzro4z6qn7ewz@hu-mojha-hyd.qualcomm.com>
References: <20260306105027.290375-1-sumit.garg@kernel.org>
 <20260306105027.290375-2-sumit.garg@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260306105027.290375-2-sumit.garg@kernel.org>
X-Proofpoint-ORIG-GUID: HQ7fVxO6rggFcpxa9HDGAurPuH6qlJSP
X-Proofpoint-GUID: HQ7fVxO6rggFcpxa9HDGAurPuH6qlJSP
X-Authority-Analysis: v=2.4 cv=OOQqHCaB c=1 sm=1 tr=0 ts=69ae7e43 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=nF3oTVP-35wgLgZXltcA:9 a=CjuIK1q_8ugA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA3MyBTYWx0ZWRfX9iHTHZSZsfMd
 +2vNrIRNihVZAR9cqGDcrE8RTGKiewHtu5jJKv/YmaRM2fb4zz6f0u1VzN5B0LKa53QvL1nfmds
 VymG+7duRBEPY7cVgEf+AP5zds1dnj1vXn7TuAvw44YXaO/AoFng1pKfbfWFdzYbYjdRQAKRcZj
 xILHpcJbryphDrGoDrgBxMv7lK6J8FQ90slbRXjVkCWMjFXbGCbxoYqeN6Ill299sgcP+erHZ50
 YxJ6S5xEHgq0Da+BRBwf7MY0r1YqnTabAnvkiGAe8FLWRy0xHK9BQvsSO9t5N6/H3aEqZ7WvoKE
 qV7z0UibE1KHWFmZzCZr3iK8IGJIJ4vBxKSDiGG0iEmgMnldyrMnTopnKSijsicLg251pz/GyVJ
 Hqwm258t/MoO8wbEsxWa011vDD5LHPdPLOfpqi62dU5IM5GawcsdWsAUQ/UbREkSY3icXCKvWC4
 8KFs6A1+T+5Z3SQV8UA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090073
X-Rspamd-Queue-Id: 99A1D235322
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.infradead.org,kernel.org,oss.qualcomm.com,poorly.run,linux.dev,gmail.com,somainline.org,ffwll.ch,lunn.ch,davemloft.net,google.com,redhat.com,linaro.org,qti.qualcomm.com,lists.trustedfirmware.org];
	TAGGED_FROM(0.00)[bounces-272746-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:url,oss.qualcomm.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,hu-mojha-hyd.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[48];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mukesh.ojha@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	TAGGED_RCPT(0.00)[devicetree,dt,netdev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 04:20:14PM +0530, Sumit Garg wrote:
> From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> 
> All the existing variants Kodiak boards are using Gunyah hypervisor
> which means that, so far, Linux-based OS could only boot in EL1 on those
> devices.  However, it is possible for us to boot Linux at EL2 on these
> devices [1].
> 
> When running under Gunyah, the remote processor firmware IOMMU
> streams are controlled by Gunyah. However, without Gunyah, the IOMMU is
> managed by the consumer of this DeviceTree. Therefore, describe the
> firmware streams for each remote processor.
> 
> Add a EL2-specific DT overlay and apply it to Kodiak IOT variant
> devices to create -el2.dtb for each of them alongside "normal" dtb.
> 
> [1]
> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> [SG: watchdog fixup]
> Signed-off-by: Sumit Garg <sumit.garg@oss.qualcomm.com>

Thanks for posting, I was about to add kodiak to the already existing
list monaco, talos here
https://lore.kernel.org/lkml/20260127-talos-el2-overlay-v2-0-b6a2266532c4@oss.qualcomm.com/

but did you really miss linux-kernel@vger.kernel.org or is it
intentional ?

-Mukesh

> ---
>  arch/arm64/boot/dts/qcom/Makefile        |  2 ++
>  arch/arm64/boot/dts/qcom/kodiak-el2.dtso | 35 ++++++++++++++++++++++++
>  2 files changed, 37 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/kodiak-el2.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index f80b5d9cf1e8..09a7f943190e 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -139,6 +139,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs615-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-radxa-dragon-q6a.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2.dtb
> +qcs6490-rb3gen2-el2-dtbs := qcs6490-rb3gen2.dtb kodiak-el2.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-el2.dtb
>  
>  qcs6490-rb3gen2-vision-mezzanine-dtbs := qcs6490-rb3gen2.dtb qcs6490-rb3gen2-vision-mezzanine.dtbo
>  qcs6490-rb3gen2-industrial-mezzanine-dtbs := qcs6490-rb3gen2.dtb qcs6490-rb3gen2-industrial-mezzanine.dtbo
> diff --git a/arch/arm64/boot/dts/qcom/kodiak-el2.dtso b/arch/arm64/boot/dts/qcom/kodiak-el2.dtso
> new file mode 100644
> index 000000000000..0b3a69a0d765
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/kodiak-el2.dtso
> @@ -0,0 +1,35 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + *
> + * Kodiak specific modifications required to boot in EL2.
> + */
> +
> +
> +/dts-v1/;
> +/plugin/;
> +
> +&gpu_zap_shader {
> +	status = "disabled";
> +};
> +
> +&remoteproc_adsp {
> +	iommus = <&apps_smmu 0x1800 0x0>;
> +};
> +
> +&remoteproc_cdsp {
> +	iommus = <&apps_smmu 0x11a0 0x0400>;
> +};
> +
> +&remoteproc_wpss {
> +	iommus = <&apps_smmu 0x1c03 0x1>,
> +		 <&apps_smmu 0x1c83 0x1>;
> +};
> +
> +&venus {
> +	status = "disabled";
> +};
> +
> +&watchdog {
> +	status = "okay";
> +};
> -- 
> 2.51.0
> 

-- 
-Mukesh Ojha


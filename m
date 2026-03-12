Return-Path: <devicetree+bounces-274392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KC/qLFktsmmzJQAAu9opvQ
	(envelope-from <devicetree+bounces-274392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:04:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 118D026C8F6
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B771304DF06
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 03:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E2B037CD45;
	Thu, 12 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AqwTe7No";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P3w3KkA0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC1233E37D
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773284693; cv=none; b=k23hwMNMk0ffOdKV/VWBqBkGN/D1i2ckenMYQNvHefVxn5GIE62QKt5KJzriJCpfUabBvKnFX8Ie2G2foEjY+WxA0p8hFTGks6TB974azrVjhq8fbRrd/gFUeDmWbZRMhwZocaQ9Okmsp4pHltjvxVzoT7eG12pRUZsaOhlUBBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773284693; c=relaxed/simple;
	bh=i4JC0mS157YQqaa5OWBFA3oZU+lBY2cHuyaFa6pRMoQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oSFA1s859NWEjlrwr9IKh42EUNjUqKkDAJetVk29DeHlFEOmc/fmPd4D+aW+czcmnu8Ve/ie8r8Hu3bG++X9pmUY05kXaGKs6lPffzwHqnXEkdZ3g3PhuVICl2V2fbHX7zGWjnbwvNUI8lvTgCnuiCmyIpXpbveOtcuK9dGvFXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AqwTe7No; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P3w3KkA0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMMjsM4132440
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:04:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UbNMB3xidNUbC1rgxT40znJc
	HEbsjyTIhGg26A6Ciss=; b=AqwTe7NodPR1QVttRMof7/xFPAoDVHMLnoJmp7qC
	DiTw40AbWvknyqgEcBEn2ctsZo/F58BtK64lGiKGRAWjqFyvkUwvUoPbHQ8sq1Iy
	AqEyEz7s6hYVmTcfA0k6R8cEFlQgB78vRyYrzbmSX6SVY5IeB8R47URwrO/C9gPk
	DzJTnW8Q7fJ0XA6K9OWCwBO4g0vgNStS54/f/Bw10XAp8RZHFgKQzwgUS4+6yh6o
	bryEkJuLISEIIDqGYHk82Xuwbcl7ymHD9fm2oDXVySEvrg02FkmXdLcA7bssiEDS
	QvMt3q41N1He3TwXk9TFilXdLeQWUWKLJ8/4V906YlI7TQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w0n81-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:04:51 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd77502295so362718585a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 20:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773284690; x=1773889490; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UbNMB3xidNUbC1rgxT40znJcHEbsjyTIhGg26A6Ciss=;
        b=P3w3KkA0rbjjE++GWHKlXXNGlsXwQWNa0tP9VzphvjMAlg4BhG60VuYHgEJ5QHbVuJ
         QxyLWgXgucjcdps4JqkRDOQ6giTVFzvvec6BW7qzY2L4xVjfDAd6TE2g6iL36V70WQBQ
         F+qB3C3HLnWUS+gD0b3HG5JRNmtzoqiVZwT+3Vb/qiBMvSfUaAVQvEIQj5gDqd0W8zRI
         pd874SD89Hbn4YatrY98fLwKLpp7E6g26ebMKxJGFg/3KrV96b1LKbqoR7mYTLa/Ujat
         uz+DidEHgs+ucnfEoDbGdTVCbbWDwI6t8bkPv3xqukOWjbwdNk8cFNAnXmNOfC5PJU2w
         mAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773284690; x=1773889490;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UbNMB3xidNUbC1rgxT40znJcHEbsjyTIhGg26A6Ciss=;
        b=IlE3brO05KwHyJC4wXn8OXu0AoM5UKcOT9h7sjxa889Ig4XW++VjsyxsevyIXXZ8m8
         P7NbyJO+c53GPxkLXRxgNxpi+dmMpkq6sG9EQ7E0wASsfZihV4ZhX8yTFwwXu8EkTaAp
         68PJqmZH7RqyxMZJWd02NY0LUINYKRqfNpA9Dci274tzkzj73/7WlFHOBIphJ1UFuoEu
         r/5XZX8WDqCVKBQymwY+EtYxDuZgGQG/4N4OUv901WQTc/lT5/lyegCSb48E2BWFRhcf
         axLnKY45TppY1DPbJRt0J2gsVbG+45snNYtZMArXsgkQ/8dQBz4QzfnesUI/ZWRGlr9h
         FjFA==
X-Forwarded-Encrypted: i=1; AJvYcCVFl5OwkJD9XJPS3OE9z1jYYC410gLLgsGzQTGwP42YUnmrAx4PExY8KtuS+1zIZphjGiHYpm+o8thW@vger.kernel.org
X-Gm-Message-State: AOJu0YxTXfQFvgQwpi2SAfwEqAj3Ri/DwYIlcKe56wZs1Kl83ltjUHK1
	0fTBSe+WC/2xr0fVS5gmUiTq8sbiNIbR0KpFB+il+nzjCa4ycLUARTLYk7MQifL6BHipNq2lqH1
	l4kk/Uj/aD+osZ9MfuQ8TM9XayUvO28ll7+6Aw/xx5bfHvNuclzBghPjeJwpE5/vSLKKULBD5UO
	o=
X-Gm-Gg: ATEYQzxzgUBkAezKlVH+pHfEl4Rf4AzgE2dZVqWAA04pQAMrYc1RrehJhcG+g50w4IY
	EQvUFfrMnhmoSG3sDnVY0OuO9rvJr7MwKPRYnTSfgnNJd9ZsqKMDaS/2wFBb0Uce8FENkgM87kp
	3hPQVXPrtHktBckgeE+a/C8Xb3SEWRQyRtPuAOJsyYlYNZYRXeNmmHCWUS/7aq8n5kO8HCR4ikq
	0VaLPbG0M+UddUwznm0LQGs7LhU8ox+Zysv6XUhTrLn7k0VqV2KrDazLiZb0rmpoeWYCIq5hqyK
	AfNhhpcBDrKykxwzvHJScK0U1HCQ4lnpgUseWfydGuB5oFjF2zpc2tooTHkqtAnr+nizS3P7J+n
	3u/nXQVtmGmTV8sPqjgrIT4hEidLwKW/71uixYYfKwSNOewkoebqTXkDISN8d6v9pq3jkIyC9jJ
	H0gXnGUPSPNULiLx818WW6wzlAGkpZwM29CoA=
X-Received: by 2002:a05:620a:1a23:b0:8cb:4c23:3de2 with SMTP id af79cd13be357-8cda1ae225emr633770985a.76.1773284690367;
        Wed, 11 Mar 2026 20:04:50 -0700 (PDT)
X-Received: by 2002:a05:620a:1a23:b0:8cb:4c23:3de2 with SMTP id af79cd13be357-8cda1ae225emr633768585a.76.1773284689919;
        Wed, 11 Mar 2026 20:04:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156366682sm677501e87.72.2026.03.11.20.04.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 20:04:47 -0700 (PDT)
Date: Thu, 12 Mar 2026 05:04:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: disable WCN6750 and WPSS
Message-ID: <igjdwtp7ox244c4iqh6t3ilqvxrh6ann23m2lo5m7daxncyffa@e6a34rl74kln>
References: <20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com>
 <20260311031145.2285056-1-hangtian.zhu@oss.qualcomm.com>
 <wy46mrybpvnicmv2aljkyh6lu2gnzz4axl66r2efmfy6pr55b2@phsj7pghzd7r>
 <7aff8a49-ac47-4d93-8028-2710ba4eb2d7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7aff8a49-ac47-4d93-8028-2710ba4eb2d7@oss.qualcomm.com>
X-Proofpoint-GUID: ZUB98luJI5mVtzGg4-PFdkJeYNqKIiHJ
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b22d53 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=2hhhMYGc9Wu5Qa5RKXcA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: ZUB98luJI5mVtzGg4-PFdkJeYNqKIiHJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDAyMSBTYWx0ZWRfX6nc1uCd9Lvjb
 afz90ufxxa8LI/VfB5+zvETk2H+nPW7vDSUTX/mfEfChotcKt2dHo/AoNIu21WdnTi2GM+Q91FZ
 8D9hlpaWRxSiiBrMKfDdACe2VBtJVbgXk+dwlWjxX7HPneciqXkfkAW7gX3lEX9cVP/v0YeL4Wz
 YSg5bjpyuDFaKS8TWB3k5mvUJYnmdsp1n7TIzGVNTe0m6aNtWNy9wuql0pMjryMPqjFMqpNnsk4
 zX/CCgkYIO+84SkqcCOokCfR4iDF7pDUJHG5l5ZSR9XtgdyaykGPXjmmxmVwBVi1tzYoCnez6it
 sBIJWbLotSPN9hmpNSzZn0H68a7S1dkiqgxg3ZvACcrG88tB02+b2st4WxH0Xol4kMpqhEaSHtZ
 C5z53s9x1ergPvrPjFR4dw4ltNU5B1EgH9lWunxz3XC9NZJ/4oaFH6nG0UTUnfBlevCJh/zgru/
 yZp/ClZgaUcmnDH3+Kg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120021
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274392-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 118D026C8F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 03:06:08PM +0800, Hangtian Zhu wrote:
> 
> 
> On 3/11/2026 12:34, Dmitry Baryshkov wrote:
> > On Wed, Mar 11, 2026 at 11:11:45AM +0800, Hangtian Zhu wrote:
> >> From: Hangtian Zhu <hangtian@oss.qualcomm.com>
> >>
> >> Disable WCN6750 and WPSS on industrial mezzanine. On RB3 Gen2 industrial
> > 
> > You can't disable these devices on the mezzanine, they are not a part of
> > it.
> > 
> >> mezzanine platform, pcie0 lines are moved from WCN6750 to QPS615 pcie
> > 
> > PCIe0. How re they moved? What triggers the move?
> Please refer to: https://lore.kernel.org/all/20260305-industrial-mezzanine-pcie-v4-0-1f2c9d1344d7@oss.qualcomm.com/
> On RB3 Gen2 industrial mezzanine, WCN6750 is not connected, instead TC9563 PCIe bridge is connected to PCIe0.

THis doesn't answer the question, what triggers the move? Is it done
automatically? Is there a pin that is sourced by the carrier board?
Is there something else?

> 
> > 
> >> bridge. Hence disable WPSS and WCN6750 nodes for industrial mezzanine
> >> platform.
> >>
> >> Depends-on: https://lore.kernel.org/all/20260305-industrial-mezzanine-pcie-v4-2-1f2c9d1344d7@oss.qualcomm.com/
> > 
> > NAK. Don't invent non-standard tags.
> > 
> >>
> >> Signed-off-by: Hangtian Zhu <hangtian@oss.qualcomm.com>
> >> ---
> >>  .../dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso    | 8 ++++++++
> >>  1 file changed, 8 insertions(+)
> >>
> > 
> 

-- 
With best wishes
Dmitry


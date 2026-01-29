Return-Path: <devicetree+bounces-260674-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KB2gJICsemmv9AEAu9opvQ
	(envelope-from <devicetree+bounces-260674-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:40:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19763AA4C9
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:40:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F89E300F5C8
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F908244687;
	Thu, 29 Jan 2026 00:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JNsp9st8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ThTkjtWW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F86221F1F
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769647197; cv=none; b=oHOrKPEPe5vc8zcIJv1CBQsdbz75FE5jGn+D3sn/ONUlQ/LC6tsIKJJ7n3aGXn4i/TjbNciu3MUNgVFpx8aREguNzb1KO91RJNiFk4BCYRg0hn069/1dBEU7HSTMJJFKfFOLlBA720MkfGvJ/gAPy+6oExxsGJoqSqxFqTUYPvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769647197; c=relaxed/simple;
	bh=5o2W92PLG497tBjG4QqKVQldsWBISAwfWw3WFmiwXZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bL7dsrL6yceevld1uMCntT0XYLpFZwQLsWGVS2tgmBuwjlxSz01XYNrNNuDPPxTZ/xorLGTV+cYfjGLuPQW5v4TeRnSMeVDyWMztQYCgd39ibVUhste3Vr/khWXJGVHO+9xg3QY7v8+7iBJadJEPCH9+CZ+R9MNEgvcldLqRpFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JNsp9st8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ThTkjtWW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SI41c23906091
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:39:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BgucJZux864r4r2nJ7acWtQ9
	0OuvqPwqA3GgsXG2hLo=; b=JNsp9st8nqb0ck+qTf25AIhgIVUef9sQpfO7lom4
	3iJc2i7R1WFnUP5bVIJoyKo2bpRTIHCtUdnAYq5I6JcK37F3Zeo8oLSRYDY06ZlJ
	d7+0pwUDA0ihecchAhiDPJYfppBOhQV8he4UgksVgLyqDxNkPsMtQAKC+26eqG3t
	ddd2p/jxO4niy3GxbeevtOhlf9k7+l9ZgTljBw53hEwzieUM8OUxp0yWVBNPpSrQ
	DdvzzfASqvvRcB0fye9gYe5uh0tZaB+TtX7OQEscOCzPLJZvFP5J9NprTm4+O6My
	+rb+v5VBj6xf/R+ke6eXlko34os05Kofza3jWzVpNXek4A==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byjxht7tk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:39:55 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5ef2cbe9fa6so1316776137.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769647194; x=1770251994; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BgucJZux864r4r2nJ7acWtQ90OuvqPwqA3GgsXG2hLo=;
        b=ThTkjtWWYK5sCb8SIAq5acAKbL+bv2hTeKyConpSsKP+DPyqxxYPAlVurEAZMtCrF9
         qCvT85kh+OwPRjndtNoaPG0gKQB04b3nu1j0BZfQ7sPx554AHidbDjfa9Ykz7JH57bXA
         2B0ntTRkhiRlS7/ioqfZi5XP5ZdkYBtc41lLeMzZB2PR9ItJFMwF+k373oPKkci4JdSq
         ijTXCDdTTMwCc/nq3yNQs72mGNMi/pJvD+ZDZYZ+uchnSXFxBUZ9UsHZxInDBa3b18T9
         V5gj2A7yxbbVWgg4AejOEx+pYB+1Zr62esf4QWoTxii3wtUcqvJoOoCQjXUg71lsTtLK
         3OyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769647194; x=1770251994;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BgucJZux864r4r2nJ7acWtQ90OuvqPwqA3GgsXG2hLo=;
        b=O1++R6QR880y1XLICFECOD5JZr3hJrBPKekeyf06apa7iukEF239RjoGVZbw+ck5mM
         /1TOIjwaMcjwEnu6/VDAbOqA26KeH8LjZLf14qIVgOeFz85QahoO+n/6D1ow2Z27gC6m
         d3jmvi8lpWPPeFovJrwzImZ1XrALwQ4uD8M3bZW7cRxFJ6E8Z9lgmAvUO89Z11ZCqEHp
         9su13W7lr3A5iLOH3/HWCbU2GnJ8Tw1TitPqoy0+NXLw6ZR0VcOcdfXmvzz2Ann5xSKy
         ZdmJJRB1bt0oDHIXoeylf+xZaVluw4v61x9xxcGQ/CG2kwAtY1kbYnIEwhi0wlWQhEG6
         ZWsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcUBsVyQ+9Zn3qZvObZlmndkcXMHkZER02GjYgym6iPTd/7lR8xBmIyHcj//n+kUpKyo27/bHXceDE@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3JgaI/nbdWaYa9MO7iKIz9RDQ6q6rUpPO1BvPj678VxAB1wOt
	4c9RqVMv+vJALaD6aA/4fkXNYBIE6f2bVd5EsDxHe7Lp/Q/Auy1Gaak+p/0MT8McR9DXnjypvhx
	JzU7VNUt6nX+lc2TU99S1gRpL/O0Nxtena1W79YiRlBDaOEDKUqN4VNfydrwftO3T
X-Gm-Gg: AZuq6aK5yIa7G+JScxQq04h+wFUAFCLNZaX2/gZ8dY21vYlE1XrVEqkN2VDfRi0bLy+
	WiSWKH07jHt2WSJ0k+d6yHcAcoPuGgHTx9GTxEhVZ9m815vCsPC4euw4eixsRJh4k0jPE3G5iGZ
	bLxjxxVEev4GrgN1cmLtxSsAH7NSyGv2Vl2JiZKsbMxo1AhIOz10Kv8In74sVW5+XMJ87Oc/d7t
	/xuahLOwMldbmS8SrT0Ctg7vB+QyjT4pKbk6/0QRmtrFX7T9NL6eDd8JUkqsr/NEn5+gfNwrYha
	u+qWDMU7OMLytp/dYhtx6hK/mXBAV3RisDcH9xY11ONGK5faMUP4G+fqNFdK+URJcCWX21pSG3q
	Yq7O8ZOu9zf4p6PHbeVneRhr69qhKZ+LADVLY0avr6C2fJp0zvNcIIT/MIyd+KBeyNFaFcWU9Up
	TG+lV/QwgnldwO1uuvxERQG24=
X-Received: by 2002:a05:6102:370b:b0:5ef:a9fb:f1f3 with SMTP id ada2fe7eead31-5f72362dbf8mr2917937137.11.1769647194627;
        Wed, 28 Jan 2026 16:39:54 -0800 (PST)
X-Received: by 2002:a05:6102:370b:b0:5ef:a9fb:f1f3 with SMTP id ada2fe7eead31-5f72362dbf8mr2917924137.11.1769647194250;
        Wed, 28 Jan 2026 16:39:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e0a4dd30asm509038e87.63.2026.01.28.16.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:39:53 -0800 (PST)
Date: Thu, 29 Jan 2026 02:39:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/8] clk: qcom: camcc-x1p42100: Add support for camera
 clock controller
Message-ID: <bftoltz5p6rbvuhsialcoiynrhymilwyfqlhlhuvfodelsz6ms@5w2vd4hkof7g>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-5-b23de57df5ba@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-purwa-videocc-camcc-v1-5-b23de57df5ba@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: t2vHMk_PG7m8wxsIQeoA9A4Dh5LEGt2d
X-Proofpoint-GUID: t2vHMk_PG7m8wxsIQeoA9A4Dh5LEGt2d
X-Authority-Analysis: v=2.4 cv=b9G/I9Gx c=1 sm=1 tr=0 ts=697aac5b cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=OBcQ79OtfN4fMwN9YucA:9 a=CjuIK1q_8ugA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAwMiBTYWx0ZWRfX+cvK4ienruYW
 DyAHXc5Q+c2Du/6utBS7cIGCXqDVhBrQeFQyWWSGanWhl2YmI2F6COaunfd+70sVk3+Ocx/Y7zW
 7HpzG8jS3eFk5zafZBts3Txxfhenp9zH3VgoyDY2p114ph3uvRqEJL8+Q9b38PmkqIvzuEg0ZJY
 ETIpxpVRASWaioyCcQN3glFN0zuoNTYkWhQd8WouFxqrzuVn6AgmFEYMssoT7jito0kNUY0iQuw
 nMb9D9fgPLQXds1YgXu6sZB6j/ZK68eyqjJ/2e5eAe50FFxX9zrJ8GFORgCA8aSP6uia76BxeXT
 ejsno9Gs2B7aKeN1oYbRAVG9NuKffxLIwK+Z39MeeAtw/ehSfBXxFSEd3p/SUGUxck71pi1eOPc
 mORsCMjWe5XA8ZZx2Bnb1qgnWeAxlWv2m33T4GJZuA/JM0hBISE2yQPxIo0rKHLWhmVdFgBKNnV
 qC+NG59lGZt56inkFBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290002
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260674-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 19763AA4C9
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 12:56:36AM +0530, Jagadeesh Kona wrote:
> Add support for the camera clock controller for camera clients to
> be able to request for camcc clocks on X1P42100 platform.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig          |   10 +
>  drivers/clk/qcom/Makefile         |    1 +
>  drivers/clk/qcom/camcc-x1p42100.c | 2223 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 2234 insertions(+)

Again, this one is pretty similar to the one working for X1E80100. Can
they be merged?


-- 
With best wishes
Dmitry


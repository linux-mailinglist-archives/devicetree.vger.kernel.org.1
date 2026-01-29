Return-Path: <devicetree+bounces-260677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IALDLjWwemk79QEAu9opvQ
	(envelope-from <devicetree+bounces-260677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:56:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 674F5AA683
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:56:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 73323302DF6F
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35358257821;
	Thu, 29 Jan 2026 00:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fx0pyN6I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d51otLlU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BC725E469
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769647668; cv=none; b=Xw9MP9mb60+eQDEKrBmcQKnaF/SyRKSwgI/DEZ/chIGmfJ4VaKJFZnwryanB8Wypzjvee9xnkIq0+2xATaNekREGqYEFY1Hg/+E2si3z8I0wl9WVvp8mSw/h+D/2LkViW6UHCv+aq3mhV6+HMpWrEMmMdh8scaNqVWgKR+toqVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769647668; c=relaxed/simple;
	bh=tYazlBYdm9VwYHKviLexDeTJba+FzJJr1s5Kp2FfwRc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uLRJA5R0SyneRlVol8VdR5zBj3M97w404jJUtfCkr/qGIcjPq7NmF4eRZ9/Y+n2fLwvxdhrw0Xbn/+kAA+WuR1n7pFZU5034VuRjwRDfbSb9ApzpQCMYCKBKCo/islhmx/npuzamgy5AR/1mmcznduHb6gVZ2DwUFPP7EnIX/ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fx0pyN6I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d51otLlU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SGvNpE1315697
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:47:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DqDq1cvCNyW61HnnmnGzvOGO
	SfA+3QT1Lq6O2dEG8gs=; b=fx0pyN6I+XTIjRFqz2AlVAmtwnzbW9KP9iddaPfM
	9VnzJeIoTsS4nTuv5K1m+D4WKK7pHoeYj5fJsVGkV1XBLDC+GRo0psfrv1J1154K
	cKTTTCJygpvTI9sEERdEySqQoEZwo7TqHtqPo2k84xJ8JeTNQbO9k/ljNvkvqyTx
	iKxfEdG467JCS6xYmxOCfDXhzFceu6+YNiB4nEcphrYqBphrM4BVDOvZeuEnZuJl
	gYMCYeNBBzRiSekY6c7b8eC3+SuBcn1esSaEYhfxbh2hnBgJoBM+RfDIyBpU5ZQv
	ZdURWdDc7gdWCBx8z+An1Wu5J8rnJ9VeGdEsZwrPCfAj9Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bype8sbnh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:47:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6b4058909so106427285a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769647665; x=1770252465; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DqDq1cvCNyW61HnnmnGzvOGOSfA+3QT1Lq6O2dEG8gs=;
        b=d51otLlUcDMc+sqOamT4zTdnxKanOqIZg01kWXyTHFinx6+DHjJ+gy+sHS/pQ8YayK
         Abt9Ojg5Fi2HsLmTb/Lkx6Y1JJoV9zDY5QxQ6c3oOtk9SIqaPckOktg2mgmsa+A5ddQn
         GgeZQT8TxgYldyOLRXA2KzEEzh4DSuB6k77Bo1Q6a9iwxRtlh2yRl2ygb/gLUgzD2hGM
         cAMviR8bYOC4tuhim4Bxigd3DXcXqU2e+yw6LE4VTaMW0z0Vn5KDZtY66iUoUSQiFSwj
         L2rgIAQRDADb7y56LjQWXCMUoy+fYdDqz/8Qxw7b/rCa/Pos4N5UB17MzYDiA6e2qTdI
         +mDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769647665; x=1770252465;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DqDq1cvCNyW61HnnmnGzvOGOSfA+3QT1Lq6O2dEG8gs=;
        b=LOueBk2AaRtPXgcpceZ5218BByO7dyEJYyRxkChwXWnKh9NuaLOQvVKIkh6t5ySlY1
         NehfXArTMNoKVGOTyLs/r2p4SzIJRp/H50TT8Mte8+qGtdkysDkQxVcTWFef1cX1+0AJ
         BMR7l8hpALY/EOB+NTIx2csyZU1BsYtaO3yM2S+RA/DxYwtbTDBqs23imvSXnfHGE65n
         I7m84ySJE2+gKlATO9tFW1NzlHAwnaFIsPicnE3k1Bs/MU6Kyn1OF9VoRVww8sFcj+Oe
         GBftuOir5NtA/OGb4sUt2PH9HHjYRfojWQCdsXMxR3iXaf/sUCILjfHiOQi3C/YZWwmp
         S52Q==
X-Forwarded-Encrypted: i=1; AJvYcCVZNNOoxndPY4DS+kzdEqZRh7KRzUgOViyYVO/Hg01ClcrmWDMhIbFd2uSjgUMd+IdqPHY8+wqZ1/fJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxvFGb930tv7AeEZFTJ/+aOF/niKQ/S67slBgViTTDh+TycT41s
	VSawhv3vWqPNB5wwaZFC56tK7L0QBMVERUTjr4m0N+OYc4UPtmfF3qKtFf6UwzxL5NjNzU0yQxt
	dJGYfchyCSmTVYHS8n/985gkg0u0WD/8xAESqfo+iIKu43nry8//NGMpqU9H4IuhE
X-Gm-Gg: AZuq6aIiaB2uTbNldHeu8B69FWDpkZqweajTGdEjVdNZ6IkTIaRLD6hbY++xzpN33lp
	uNKINSZN5Ignz/LONp0l0py4mjhsqK385GqQ/+Wayt2cdkJtT/bvjVp6/or4FDLqUuJIF9AVV1g
	7IZL1ZXeu/UvE8uXlE+usZ9iifxdzvbAvzNOIsCOw0Nlfs+jXb/qbqV8VPfwYnjN5H4bJ01LqXy
	QhmQBF8Q1lToak+3aIjMLvxVUTb3HRZxa5lHskm4ddQu7n1cSwz/dp9/AKijTgsIhJyhK15sJNi
	4HBzEaKa9uV11ALHJdwQKwNnrCBCxhx5m+glAwpCFFOv7mH+HHxAqvLz2rs/YGbI62ITreVXzNm
	sSQyzlT9VKnhC0Af4LBqW7O7Uh5zJfI8iLZrY8JJqm3MwR0/fcfEznNdNJif6/4g0F3fY14S1wj
	oHaXc1gEzo0XL9mDSqjlwTsr8=
X-Received: by 2002:a05:620a:3705:b0:8c6:d309:212e with SMTP id af79cd13be357-8c70b906af1mr934997385a.63.1769647664996;
        Wed, 28 Jan 2026 16:47:44 -0800 (PST)
X-Received: by 2002:a05:620a:3705:b0:8c6:d309:212e with SMTP id af79cd13be357-8c70b906af1mr934994785a.63.1769647664493;
        Wed, 28 Jan 2026 16:47:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625c74bb2sm7270041fa.17.2026.01.28.16.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:47:43 -0800 (PST)
Date: Thu, 29 Jan 2026 02:47:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hongyang Zhao <hongyang.zhao@thundersoft.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Roger Shimizu <rosh@debian.org>
Subject: Re: [PATCH v2 2/3] drm/bridge: lt9611: Add support for single Port B
 input
Message-ID: <xlo7l73dzj2eah4skge2pc2uo7lnoqfyikeekazyrklnybdab2@37tlfbz2zqiw>
References: <20260128-rubikpi-next-20260116-v2-0-ba51ce8d2bd2@thundersoft.com>
 <20260128-rubikpi-next-20260116-v2-2-ba51ce8d2bd2@thundersoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-rubikpi-next-20260116-v2-2-ba51ce8d2bd2@thundersoft.com>
X-Proofpoint-ORIG-GUID: 0sxaWeRFc4iWh2TDgNTMaO3lbZ6dj25g
X-Authority-Analysis: v=2.4 cv=C5fkCAP+ c=1 sm=1 tr=0 ts=697aae31 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Wdb1h0LgAAAA:8 a=xNf9USuDAAAA:8 a=EUspDBNiAAAA:8 a=A0XAqx3_xGthHy5t7UgA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=j5gyrzqu0rbr1vhfHjzO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAwMyBTYWx0ZWRfXxICeN4NRoReZ
 QogL0F90schtGItGsAEhXXtx0TORjvwSJOkyI2Ul6zSAZ1u6wFUcsKlBtWZTPypOwFKMsKHxLj6
 JEHHjQHKdys7YlmCxK0NrsR7ntX3J8ZN5Nr+SmD3/7gDskv3C0SRgZJKAun9h7OpL5lV1ouqlc8
 oguMrmcs+4wnn4fLMLZJ1Pu/eM+ohOElTD8EKLFOoACtH4Yt+J/MAZyM0Tra3Ez9X0a9u2XI5i/
 z/GtW9dmj2Unowi7UHkr54LzOQfsMNoAtw6rkizX+6h6yOe8Y1vjSpSgIBGzJ1BYt+GGQKKqRmE
 kpNtNzMkNRNq2UISaLVfVa1NbyddatE0XRSz8EAbt/Dsnvte+4vYxEnJsr6GjcnT/9cAUAmAENi
 MtHdDhDU2V+Olrb27hSG//iQ8tNrlIYcbqx1VwfzX8Lmkv772f6WEM5rl+thKlwetpkL++jUGyq
 RdjvxRKyVzTHvLWkPsA==
X-Proofpoint-GUID: 0sxaWeRFc4iWh2TDgNTMaO3lbZ6dj25g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290003
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.34 / 15.00];
	URIBL_BLACK(7.50)[thundersoft.com:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_ALLOW(0.00)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	TAGGED_FROM(0.00)[bounces-260677-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,0.0.0.1:email,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	GREYLIST(0.00)[pass,body];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,lists.freedesktop.org,vger.kernel.org,debian.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.697];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10:c];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 674F5AA683
X-Rspamd-Action: add header
X-Spam: Yes

On Wed, Jan 28, 2026 at 07:15:46PM +0800, Hongyang Zhao wrote:
> The LT9611 has two DSI input ports. The driver currently assumes Port A
> is always used for single-port configurations. However, some boards
> connect DSI to Port B only.
> 
> Update the driver to detect which ports are populated from devicetree
> and configure the hardware accordingly:
> 
> - If only port@1 (Port B) is populated, configure port swap (0x8303
>   bit 6) and byte_clk source (0x8250 bit 3:2) for Port B operation
> - If both ports are populated, use dual-port mode (Port A + B)
> - If only port@0 (Port A) is populated, use single Port A (existing
>   behavior)
> 
> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> Reviewed-by: Roger Shimizu <rosh@debian.org>
> ---
>  drivers/gpu/drm/bridge/lontium-lt9611.c | 46 +++++++++++++++++++++++----------
>  1 file changed, 32 insertions(+), 14 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


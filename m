Return-Path: <devicetree+bounces-276971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GO9jCGJPumlUUAIAu9opvQ
	(envelope-from <devicetree+bounces-276971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:08:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2C62B6B6B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3BC93038149
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A27B369207;
	Wed, 18 Mar 2026 07:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NjXOlTdO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="beSRX8m/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF2D368960
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773817669; cv=none; b=dILhVEMwMxZTm4yWyt449QyZUwtyBC971t1r2lyuLmm91XNHrKIoSygfxqpU4+PpvXRdOUu/01TLorgiiD1YUC/FaOStFvEN5fFkhlu2tBqpkisS528QtDBtlA9olZdr+jFoRJ7oiAQUfX4K3hTUT2esKSPk1f89LzQpTrkRYOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773817669; c=relaxed/simple;
	bh=rp8gZo/G8CrNdKR5x68aWhcczyfAKdLpo61udB7kUm0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bmW1l1GFV3VKkY3o09ZqKKNyCh4ezS9oYKnYP0DkvYbqL8KSnUhtvup0lXtusU7g5vv8d6+esPW3aChPEwrVCvFsTDB66G8V8lCjRjd/FBUO3BCBW5/EFNNRQ/ZTF1FdPMsGY78aJqpPEu/wIqINVSc3MPzjvUEh4Otg6pha328=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NjXOlTdO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=beSRX8m/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I37pQe1632382
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:07:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i2rdDHXYPxCKAA2XTWkadTP5kTXD3VwNrVsXvmFPi+4=; b=NjXOlTdOE/VXXpHN
	x/QnzXNEbHRVDcuFhg3ogWVkczZIki43BMhs/iR614X99t7njU7n94OSuTtCVhJu
	FiWd/ejgAg7QIlGZx0t2ZDdVr+y5nRnv9PL6FA5GhTosWTQFu5/2gTat797zp5vQ
	6fpx7IBDQ7aSVyMv3Ql5CdlW7qyMwvYCRMStVbr3vbEAwgzcyAy7hFvaIW6pkn08
	86td0hWcXRZGKNDsuyZi5ggnZExZiti+T18mes0kHoMv02M7lv3uT3Arz9WJXZIw
	nCaIIRGl6SUpTx3XBP+MWo9Wo3w7DT6KaDZsFBkYggyDS1JJk15T5Xck8QahUAlg
	gSp4rw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyapujwwx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:07:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5091327215dso176375541cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 00:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773817667; x=1774422467; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i2rdDHXYPxCKAA2XTWkadTP5kTXD3VwNrVsXvmFPi+4=;
        b=beSRX8m/Iy6G7gSpgqxJwEOlhn0DCRbu+Fldk+Pi7n5h7dZP/RESss4l6tRteYfD7C
         s1gGwod8shCqflZL4PVMmTlqsc3HkzpSoYw67/uvCYcwtpl0msB/OvGvMkcRQdr3MqAJ
         VDU3WXH7Z9q7DCPA936at2bylYefdfo/qWHt27UnIwb4EwoYIidhFIJdmX+sOkyYmtKM
         2KRX1HDek3Y/ZWArALEObNJoih7FyAeO8NIzvoY4HuVUrD1Q/MCfxvsHK0fO4zzBnOc5
         FpEiJR7rTAsZi+4YyrXdqXQ0Kar/eWMzm+sRGlTxrvb/hHMBs9hn3a0sdNs1MNei5z7X
         jb3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773817667; x=1774422467;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i2rdDHXYPxCKAA2XTWkadTP5kTXD3VwNrVsXvmFPi+4=;
        b=jmGVp3//tgenXuz22T1Hdv0BrfzSrG30vJoU58nNhuzkBhqmF8GD1g2aWxe0RYhJpr
         GvggL1vQrLb+T9cE/yvg3nOBhR8vYMS5y6GXUIZY8uPzsUlQkKdcAsG6pZuvBieKNb+N
         e/PKQyTHc8lCVzIklmKMU2PAdEHiPWudw1N9vFnQZ7utv1tVvlOivqKk8SzRNZnvmLJH
         zY0WiKomgFriLMARkh3BFi+3n8xs1RfQzLme3qO3MTME4if62EelQknb+evQIULnVzNQ
         T69y6VKNYa0jhtszGNuhfu5iPmSEp4DZ6VJpnAQUUTQOhsjnnNuZAJ+DuuyZiHqIXnkd
         1/2g==
X-Forwarded-Encrypted: i=1; AJvYcCVhzc6710m2oN5TdjKSnwWfOJRT5SKqYDm7J6VxfMG/Ai7izz7dm43ydJScvB1b4USfEfi66HruLKs8@vger.kernel.org
X-Gm-Message-State: AOJu0Yzggj5VBeKLZbO3z9ZTpt+j4MCJByxh1n6tfZZha9dsMJ4XYjff
	Ou9otN7SgmHL09H64xBefEwOWRIoyPvXbCpbunLJyh8FpU4E+qWtuIaDVeMfS4p9kOucpRSpIUV
	ffRG8XWvxYZCPSf/tft08reQvIMVADGK2wE6DjgX6XAZgItJdtV6cLb7N5cUVqzkY
X-Gm-Gg: ATEYQzzEkF73h8nxcJlCQ05hFN2e7Fw+xHrDNu4tUwy6/0MA7mJMV52Wrl/Y+KHhuzY
	NNFp43il81ezoz8IO/kX/o2cfFeI+fLiVai26m3KueJPTRUp45S92IqmGs5JHPp0kqQ5yurnxNF
	77kY9b4RyN2WehSLoeY0KJK3Fy8F9MB7CydZM0q8IwSqdHUI6AjjwLQeq8JW3TQldhYQ7iVdro5
	XAMh5nDPuegCf9Uv+tnoyc7QzJ5y9E+KMvgveYvQRaP3AYCzQ+UPHSTFLEKMyhl7znH6UmKZ3fq
	ynuTqvc60McQ74W7acoZO5nDEUsXps64B/BGq1OJaxVjY+j6AJrkF7PXYXkJxwpB9soL37OzXbe
	HN0EmmmRAsL/sjdxVwTtAyHyDAvo3hY+sY/jIZqmEVRDtbR1/L49L6gVcLhpzs4iu0QHDdV8AxB
	JBTpu/9QJ0gIl2x+4LXFGOK+suntUeZ2R7l6c=
X-Received: by 2002:ac8:58ca:0:b0:509:35a7:2e57 with SMTP id d75a77b69052e-50b1485db17mr28670111cf.38.1773817666710;
        Wed, 18 Mar 2026 00:07:46 -0700 (PDT)
X-Received: by 2002:ac8:58ca:0:b0:509:35a7:2e57 with SMTP id d75a77b69052e-50b1485db17mr28669771cf.38.1773817666170;
        Wed, 18 Mar 2026 00:07:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bd54bdb39sm3914501fa.33.2026.03.18.00.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 00:07:45 -0700 (PDT)
Date: Wed, 18 Mar 2026 09:07:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yedaya Katsman <yedaya.ka@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kamil =?utf-8?B?R2/FgmRh?= <kamil.golda@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Kaustabh Chakraborty <kauschluss@disroot.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v5 2/3] drm: panel: Add Samsung S6E8FC0 DSI controller
 for M1906F9 panel
Message-ID: <toypfgi5hvyficlcjqcqal3soprwhwni2ypqg7khjniekwxv6s@yelffkw2tjzu>
References: <20260317-panel-patches-v5-0-ef99f7b280da@gmail.com>
 <20260317-panel-patches-v5-2-ef99f7b280da@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260317-panel-patches-v5-2-ef99f7b280da@gmail.com>
X-Authority-Analysis: v=2.4 cv=bKIb4f+Z c=1 sm=1 tr=0 ts=69ba4f43 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=sfOm8-O8AAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=8s1cotv8QL1OgUCTKcIA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA1OSBTYWx0ZWRfX8R2W15jRlZ4b
 bmGolHt8aQWivCG7GtqyDnbfrv98IJ1dT7sz2Sotv0G+3oZ85yBliXu9ebRZcTR5wz15W0fEi+N
 vGMgDzZ4TEh/qxzyxhROqbz5gEbHXuubpmNvsTgXF4q4MyBYhq/ItEam0VsMiXQXZjOVeHmlo3c
 I4y4Yib4JR9espuONF7CMFYeNv9+Wrp9nPOu/gQ26C1SezK2hT5qxb75lhcqyhQfErUifiaz2qO
 KU/qxEOLc6sCISRXOsJtERE14/G8UYDN2hANEAP0cytLWiWbBOhzD1T+jsutJNqDAB1D8Xv+QDP
 aYXY50zu8DE7buPLJ8nSwhayRuNxJQQcard7jMQMDrbaumM6SqYD+6/EcSiiCw6Har+6h0vZj0C
 T1+L5RMjTdVOx20y51owWo29hfoybvmDbKKe3jD6mf3TveviemsLEyCounnxP7heUDTQZK7+5f6
 sQY04LaMNTeac5vdnpw==
X-Proofpoint-GUID: zTEcU7IiKB6t2XbY3NsaD4dWyVlCk9wc
X-Proofpoint-ORIG-GUID: zTEcU7IiKB6t2XbY3NsaD4dWyVlCk9wc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180059
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276971-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,disroot.org,lists.sr.ht,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,protonmail.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7D2C62B6B6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 08:50:30PM +0200, Yedaya Katsman wrote:
> Add driver for Samsung S6E8FC0 DSI controller for M1906F9 video mode panel,
> found in Xiaomi Mi A3 mobile phone.
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> 
> ---
> 
> The downstream dts claims a max brightness of 2047, but seems to ignore the
> MSB.
> ---
>  MAINTAINERS                                        |   5 +
>  drivers/gpu/drm/panel/Kconfig                      |  13 +
>  drivers/gpu/drm/panel/Makefile                     |   1 +
>  .../gpu/drm/panel/panel-samsung-s6e8fc0-m1906f9.c  | 301 +++++++++++++++++++++
>  4 files changed, 320 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-307643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NX0eBRsDJGpW1gEAu9opvQ
	(envelope-from <devicetree+bounces-307643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 13:23:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABFD64D2DB
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 13:23:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=pGDdeadf;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=iJKAcUk+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307643-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307643-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DD9A3028C0C
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 11:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25056385509;
	Sat,  6 Jun 2026 11:21:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAF41FBEA8
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 11:21:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780744891; cv=none; b=UvW4cJLnvSvU+Sve0T1r1+2SslvkRakM43HcVvLveefOFRwc5v40UMMuVBtO1KgkbcxzV7k/Jj08F4kTv9Ka/1MKzMMGK5eYybTVR+CTj3wmTAG8/tlZv71alvS4ZpAuFhY9OA9V/ioaKgfaecxRkUZjlkHMcH2O7uCkQxucgkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780744891; c=relaxed/simple;
	bh=IO55ycN77ykj02j3o0MZ9btGWE/k+GO9wk67q5RYNTg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VNcnjOMlZhKn7MarQWK9s/NzrkBLUYfqVFk41Qd5FRN9mTUNzyZReriSQFcal5cVup7mkh+gfxRIOXqVL73ZcXR4f7Vpw4DXCwR7MeXmZVqoGBszp13EXIavGe/lor7TjU7GwR07J6+bFzMhUZens5ZYoalA95l8JS6ZSNlDALE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pGDdeadf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iJKAcUk+; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 656BHIog1250779
	for <devicetree@vger.kernel.org>; Sat, 6 Jun 2026 11:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lQwX1eeP9EXpHD1YE+j4Cxtk
	sRuCZmaeuF5xe4VQvg4=; b=pGDdeadf8tZKguvtsL8M4G44PZ0dZjOIy7ao3kua
	+RnVqHDoN4IjClHLSzbb7tcW9YPVRH49CTnKqKk3pWGQWz/0snlqR6U7iFivX8RT
	l3cw+p+XXZjY18/9cnYCtv8BXkuNWok1IOe8UHj452NL9V1KcGJMGPrgFgQVuRxU
	IVI9k8IUlrEx8OzkAUYNidaBWdb1yKtX16gIKZbaXzMWmgQOqNRgPJsgOP2azE4n
	h2G8vuYXibEQ+DCme706p31LYTYngC4Vd7d/qDh5ilBI+BgBFG958LHueBw+D4Ii
	NPKTwQLw1Cp9LQY6/dw0fzgEa0HMTUdyihKl26ng1W6Mwg==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emavf147v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Jun 2026 11:21:27 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-963bc9a24f0so2827098241.3
        for <devicetree@vger.kernel.org>; Sat, 06 Jun 2026 04:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780744887; x=1781349687; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lQwX1eeP9EXpHD1YE+j4CxtksRuCZmaeuF5xe4VQvg4=;
        b=iJKAcUk+Gs9eJu9pQK7C9BvlDl1c5aOiUedFo14HAQPMF9xFYcLgjvJWLeLxXMldy1
         KChRbiJu1EU2a8BfzDALJs5av8fAFC3X+jJMNJCDfYwExpuv9JqwdRo/zx1uN2pS8g+4
         yct++w0P9tdQGdy46H9RVthDxOU2ps9JdgCN8XinVyuaQpu9Ni6FQGev2uAfKXVNo1ak
         Tb8xQrFrkVEZkF9kl48YG4LGgi4cwVuo+Vx4KkHIZze8kDTX8IvmkvhoSZV3nBQH3I7v
         21QkOZlqSk4vSEWpEuqngMy+QN0abaVO9V8tFCc7dkeAuKak/n8+UPSptumdojDO9g6S
         UFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780744887; x=1781349687;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lQwX1eeP9EXpHD1YE+j4CxtksRuCZmaeuF5xe4VQvg4=;
        b=IUbG7QZlCXrkp3g4XK3pmH8Dt0sIqsGiKo1HsyBr4xB54FVueAGZMt7gK5WdjdWruR
         O9Y86j7Zwyx/NE8W2yrAhqmnDGwsxtuCJZfYHUadU4o8Jh9x78QEb8UaehyNnveSCIhh
         Tko91kcRx5Ea/gxC3fNgUq8866FmHg1rQRO8geNNOwaBR0w3+fDPQ4T2ZGwTOWiaKexz
         2SF4RJXfQGUf1JyvJo5dd5a4+3YiAJ2zBaz0NxTt951B3wSYOkkQHXc3KMYg2NZM6vIS
         2VIw158W+708X+u5A5UTqTdYfRIlgoDj3ThO16MQvbMDGkgFMp1iwMisihgqrB8RzF8I
         Nc2A==
X-Forwarded-Encrypted: i=1; AFNElJ+f7YIh+91U0TtcqFC0MPT+idlSc8Xiv593Yk/8aridHlq5nLVqOzNGAYoEqu7IYgTiKhCZJllr8wfS@vger.kernel.org
X-Gm-Message-State: AOJu0YwriuhC1gcwsnJq5oF4jBVh7C54Gk1F/1kOetiOj/ACQ572VNOV
	jltVAzlPlDrEB/4sVTHfcaGLQIwL1hspaOuNpH4WHNDrYQOVtyFAF6lPUFcgCarqH3ViEa8SZix
	i3CM29wiq9qnW+YZMHaqgdyhk6icr6ZSgwUA8wIiiYSrp/BihWdIFlvHJrljaTKaD
X-Gm-Gg: Acq92OE0b+f3HzQizLsSjzKja+sqd31+Ciw7BzXE9ohU/lUiTLYKTG3HZKsYx4xrQZy
	N44o+/y1eNhHIl2Qs8Oh/I2q3L/Se70f88vAud1S07xa3mTrtJxaGH9vMOn/VduiNpKH58XNtvS
	D8rNTU+rsrP9ZeMjF45C7RJeaGOS/MtXx9pKuL07jBaOqsoqe8dB7AHzJQpBJqbIN3XqJmRDQh3
	J3X9yns5lHBixK8Xpy7xRTr1Uw4Zb4q7JhHaoXI0immgR0eVtY6921dMCxHN6O8zBj5Q3N5VSR9
	72D1W1FYCx+3qQjWed64K6Eq5qVDy6kj8LI7WwIjzvFoEMAnReyQa5RrCjaG+v18uU9iMrsi9t9
	QfyG8Lxt9W6PEm64nqMu41xgpdCJTTrbW1+cGblX7CQq6fT8rYNkMzCm8RZo0woeu/TlfZRsYGQ
	vZHjZkF/TZEgrhQwgb9ovlyYe3qInUqsFQAeuvfgnEJxHf3g==
X-Received: by 2002:a05:6102:cc8:b0:62f:3abe:907f with SMTP id ada2fe7eead31-6feed1adbffmr4574376137.4.1780744887158;
        Sat, 06 Jun 2026 04:21:27 -0700 (PDT)
X-Received: by 2002:a05:6102:cc8:b0:62f:3abe:907f with SMTP id ada2fe7eead31-6feed1adbffmr4574362137.4.1780744886783;
        Sat, 06 Jun 2026 04:21:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97ac1esm2400684e87.54.2026.06.06.04.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jun 2026 04:21:24 -0700 (PDT)
Date: Sat, 6 Jun 2026 14:21:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: Oliver White <oliverjwhite07@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Felipe Balbi <balbi@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: usb: dwc3: document
 snps,reinit-phy-on-resume
Message-ID: <45e5pepjwfixymk26uodz3pqhe44n2duo5dp5aflajbh3xv2kl@3nhzdev6dxq6>
References: <20260601231236.20402-1-oliverjwhite07@gmail.com>
 <20260601231236.20402-2-oliverjwhite07@gmail.com>
 <20260605190638.GA4188454-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260605190638.GA4188454-robh@kernel.org>
X-Authority-Analysis: v=2.4 cv=I4JVgtgg c=1 sm=1 tr=0 ts=6a2402b7 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=pGLkceISAAAA:8
 a=Zo7aC9OJPaZIPdUTQJkA:9 a=CjuIK1q_8ugA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-ORIG-GUID: gZdQn_8ZO-TrfbsHonQlffG949REay1S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA2MDExMSBTYWx0ZWRfX47Xou+SzjMOo
 TNYtJltU2YYxZIUzwNyN/shiXNMXIvFJvviVZR/epHVLm0XErqutnnHMV3MB3SO1+0zuj157Q2G
 56nyUsGeWke5fky4kWKLsiuq/FbYKwJByoEj6GxVebD7oGw6Mj/zcdyuKTQjy+y+e7UnovKf50O
 6e1shB7fVwl7H452OFejI88hdVdKiECxNQyK7JtXVIvHynHghhndzUTpgsA7cvDyaeq4nFguh1Y
 /bVS3OvESSIGA7AuEuqKzdZZKW7m9lLRIluA/pImtgOoy4LEx87Cc1i0tRbMVoZtQkpsQtvrcEt
 CBeYLRtsmPOOpf6RcLHfGNewsCsC3g3Jc3tywEAc8hOgwAAS+V1TFwSrR+ekR8ggI+Lv3DpKghz
 4J065LLIcCvzUkMPnBT1pi4IBkXni+iJSnl26ZMT9s7J8b0gCXEEP043n4EHMqru30eDVnZveLe
 5vRvmPFgYLDAhEWQLBw==
X-Proofpoint-GUID: gZdQn_8ZO-TrfbsHonQlffG949REay1S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-06_03,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606060111
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307643-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:oliverjwhite07@gmail.com,m:gregkh@linuxfoundation.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:balbi@kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[gmail.com,linuxfoundation.org,kernel.org,synopsys.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,3nhzdev6dxq6:mid,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7ABFD64D2DB

On Fri, Jun 05, 2026 at 02:06:38PM -0500, Rob Herring wrote:
> On Tue, Jun 02, 2026 at 11:12:34AM +1200, Oliver White wrote:
> > Add the documentation for the 'snps,reinit-phy-on-resume' boolean
> > property. When set, the DWC3 core will perform a full phy_exit() +
> > phy_init() cycle on each USB2 PHY during the host-mode fast resume
> > path. This is needed on platforms where the USB2 PHY power domain
> > is gated during deep sleep even when device_may_wakeup is true.
> > 
> > Signed-off-by: Oliver White <oliverjwhite07@gmail.com>
> > ---
> >  .../devicetree/bindings/usb/snps,dwc3-common.yaml      | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
> > index 6c0b8b653824..d12f6ae81ab8 100644
> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
> > @@ -212,6 +212,16 @@ properties:
> >        When set, run the SOF/ITP counter based on ref_clk.
> >      type: boolean
> >  
> > +  snps,reinit-phy-on-resume:
> > +    description:
> > +      When set, the DWC3 will re-initialize the USB2 PHYs during the
> > +      host-mode fast resume path (device_may_wakeup). Some platforms
> > +      cut PHY power during deep sleep even when USB wake is enabled,
> > +      and the standard PHY runtime PM resume is insufficient to restore
> > +      the PHY register state. This quirk forces a full phy_exit() +
> > +      phy_init() cycle on each USB2 PHY.
> > +    type: boolean
> 
> This should be implied from a platform specific compatible string.

Platform as in the "root node compatible"?

-- 
With best wishes
Dmitry


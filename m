Return-Path: <devicetree+bounces-264390-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFJNI6ghi2lyQQAAu9opvQ
	(envelope-from <devicetree+bounces-264390-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:16:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA72C11A999
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:16:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D908A3034664
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0B05320A23;
	Tue, 10 Feb 2026 12:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hE3ve0/0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WnX5rnSA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9F230EF8F
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770725793; cv=none; b=F+h88TccNfatuzim49gZa8Rh9xUXX7+MgRKPnqdAeZlqHkL+Jpv2toXjzQJd1Zbxe7+fEYmx/rXqOPj2aGEBF4gOegFlEiqdLXYDNXqXPMfQRo/g9Rg7q1mTz4P4PYCOk97uJz1kQsmWkRXdJFzhqU/3cv4QeJG8gBIgsuz3FHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770725793; c=relaxed/simple;
	bh=1+lrzVw6gSIyoOyIYzGtS2gwiGoLRQerUtv2sBfRgm8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SKSg8Ciy6tMDzBFr0PKMP4r6EA9hLOMFeE6y2zMDacpO9qri2P4TCuquTVJDsrKj0Kn6dGJUl4k1fNnRCEARGPxW/1a2+zRywzf/0lMqYZEzixY3+MGC9TzfVhyrwEFXhY2Zdr1cFtKnvPvyMhRsYY9qyYmib7Xi12NpGGVaj6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hE3ve0/0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WnX5rnSA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A6vnxG441446
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:16:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6NTcd3AVs46EaEd/4Ke4nN0q
	XjsJrpAAcBTjMzzROA0=; b=hE3ve0/0ZtCE3dv+qmd/7MfCfjIrkKQlOK21qiig
	jXGOeXFnPynuqbAq1LV1cnlm+saPxvy9EsnJ3Oas66sXU0Eu8uYkN+FGAXGVj4Ve
	MDHq60A1nkjiUB2Ieyohp8KPSsLnWa45k5j5DJ8H0DgopRLlkOuC2er11Nmsucyw
	v0RFv4pjaJgZ+ky9UVpNxj8D/2SSgbg2Clg1IqP3WQR/O+0zQqSro6+NZzHRdE8f
	VfMp41rG5ylvh2FWqqMga/yEaWJD+y+fRBSBFfY6nSrxy9/daovT1Zoh//cf8bhm
	bwf9m6qHKvjYq4ge7mmEhWIYf+5x+sUqypLhSQ3ZzsQk2w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7qp9jh8c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:16:32 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-896fb2fb9d5so34808696d6.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770725791; x=1771330591; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6NTcd3AVs46EaEd/4Ke4nN0qXjsJrpAAcBTjMzzROA0=;
        b=WnX5rnSAEyMaKsAl8eTKpJjSmO0RtjyqCYdpMpRnuzfbGDRi8PtbcezNjxN+GJqsfX
         DK1NKbnf0Y1sq+6aIEBsuPNdO6DyfCNm+xQBbGFKO3GhWH6TkfjXfg2cq0UET+kRs4Zg
         tKnQb5pTpTx9X4cieYBgxpvdeij40oj676Cy+Mal/XuOQVTgVQQKWj2Ae1JDbniWmk7m
         6uQaK9PD3t1AYtaCg6DNPfbNGXrnCyqOF/BJPXdX7X3kHzhGWYZHH6GdXT8wKOh/xQVm
         sABzlaX/4UMxtaUMIv2+EM+CbYUUEBfLlJ3PkwA6canfYvxExj7mZ2z8jchF8Iq7SjPB
         Xlsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770725791; x=1771330591;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6NTcd3AVs46EaEd/4Ke4nN0qXjsJrpAAcBTjMzzROA0=;
        b=w75BapNx9NLiSPxYE/EDUmYY5Dk5Zu59LoJR8aC7A0/TAfL169TJBMYBcDzMWhSxdD
         0HthMaSQXRImJHyZOTWbvMD18dKCik4lenUymjvtk7BqGDEtM35cmyXek+RjnYB7fvbA
         M0pvNuI5Q1huqaFhh1gMsH4XbYchOaqNHBIDf7K+34UrPVkpwNdhzlJECTzJm97w+G/k
         lsjBVZryp6yQbcIhzTjy5kILJ1rVaCMkq91F9EHXfd/NLWSEoYJhmA7HDiOQX6mT5IjS
         ETHZuZuUxsQV8Lvxj2FQjsC+AF7wcHFsAcMLp0Du4qFmK82CtzKkxoFcsKGqSn3AKxPT
         Insw==
X-Forwarded-Encrypted: i=1; AJvYcCXJ/erf3qRjhSmx3wf4uxLjuiUn1x4PS4sw/agE3ea0WVCxUUKSc7Hw0S4fRBCZnoH6A3/IRyUcUV54@vger.kernel.org
X-Gm-Message-State: AOJu0YygTcg6tCefDZTvVZZMoICDNFvHlUAd/qyTg3qS3VXLIpZ6mdJE
	kUQwqcwT451SphlEuJvp0nKyMBiQRMz8V1vQxSKg+vOU54RiMmO/UU1C0IgFZ0ABlB8fvo0nQZH
	gZQx5AHFTfpGzmtrNFh4SwGR4/JG8TuD05BGgPeUYEhaKHIUJlC7LJZjtzZ5pCH2+Uqr6FtZM
X-Gm-Gg: AZuq6aJeuL5YakMfxUeMT57GObnEO8FAR14FtWsZ5BOXhm2p5eQRA5fxctOSoZCBqFG
	ECuZ5YQW0xf75WFHRBvhn6rfr+H4SUhM3INa9yEsUkUHa8JwyGxq5ZjFn/HyKF/dGMkU/4NuAU6
	/a/+M3OunUzrc66Tw+KyQ9S+TKsjNCkg4K2YGPYaefMBIeDKEcVGI3y1zq+7vjWvAS3SPFHpJd2
	45Ye9K6sJa69GQLjVr0MZ2OwakPfrolIsEwzGGuzH4Jayjlue2pmr9+03/LrksF7R3PHng5bhu5
	6dP6wBoiaZ5+SgL+ON+JlCCfMFM8XMQeDJK5Ih4+IKymQqfcuyYoDaZOOoqcifShF3xuc3l+ebl
	DkEF+RDABt6bUVJuicQz2HivPPxWx78uQaTNDb4jrAVDdT5P8g0nhZOTgJFoz9Ozjxai2ATXxk4
	xCnfwVdSRzj1qS3kPhKN7tR4Ldt9++pxmtvqY=
X-Received: by 2002:a05:620a:8acc:b0:8cb:1d9a:42ac with SMTP id af79cd13be357-8cb1d9a434fmr269629885a.51.1770725791013;
        Tue, 10 Feb 2026 04:16:31 -0800 (PST)
X-Received: by 2002:a05:620a:8acc:b0:8cb:1d9a:42ac with SMTP id af79cd13be357-8cb1d9a434fmr269627385a.51.1770725790546;
        Tue, 10 Feb 2026 04:16:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44e231d5sm3271065e87.81.2026.02.10.04.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:16:29 -0800 (PST)
Date: Tue, 10 Feb 2026 14:16:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, quic_mohamull@quicinc.com,
        quic_hbandi@quicinc.com, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
Subject: Re: [PATCH v3 2/2] Bluetooth: qca: add QCC2072 support
Message-ID: <erc5u6hzofidlf54dsz7htta55o4xwgihgh4tu6mqkg2ijz3fo@6hd6q6iljrfq>
References: <20260209080613.217578-1-vivek.sahu@oss.qualcomm.com>
 <20260209080613.217578-3-vivek.sahu@oss.qualcomm.com>
 <CAMRc=MfT7ourMH+ShJpnBAjv_uOb_ds0rxJOYaz_HsoT45dJYA@mail.gmail.com>
 <cbc0b42d-fb5f-45b8-9074-d0bcc64a9de1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cbc0b42d-fb5f-45b8-9074-d0bcc64a9de1@oss.qualcomm.com>
X-Proofpoint-GUID: e5xRZVGRhD1fpiXA8rUretAoRgBcUQvZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwMyBTYWx0ZWRfX6jZxh9QjhcbD
 YSelDWuT6AmJirAOF3iq7T+OEnDoVJCWMfiNqV64v92o8lb2yZ8MqFUwcQv/8tq5qQqWBVtm8Kd
 309rc85JZWVuZVYDkv0oOu8i82AGbw2DtqxkYe4vqb49SFDruU1QZzV39n4qP7h4Hqoa2uysw3L
 s2KaSSP8hTmkIYm94GtO5hrLy8jdXANO0B2V81Dx6oIUxM8fL8HGOXHFLLKdSQ6cSkE6WpcjbBk
 SRsfZg2ZI5KxzjT0Lg9FWtViTBBjQoM6zO9VroFNsRcKePWN0ivuLpJY8l0X2FnvnVNm2xoMCw1
 ZtLXjBPgM3MctwPlvc5m9QllIY/KrDpQMzAkGREXuNRN9FBz1Req/nQcJFzAs2cnl9UOnwOzIgm
 r5k4mrJZFtUG1XS1X8B/NPrZiu6RmVtiDm8Tr7AlQ3AwvCDCpj9QiwDduuqG4b4yXOao98OxnQF
 8G6In/KFEQLpFg/uWaw==
X-Authority-Analysis: v=2.4 cv=dP2rWeZb c=1 sm=1 tr=0 ts=698b21a0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=IUNqW5v9qaHhjVISCi0A:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: e5xRZVGRhD1fpiXA8rUretAoRgBcUQvZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100103
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-264390-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,quicinc.com,vger.kernel.org,holtmann.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EA72C11A999
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 05:41:13PM +0530, Vivek Sahu wrote:
> 
> On 2/9/2026 5:04 PM, Bartosz Golaszewski wrote:
> > On Mon, 9 Feb 2026 09:06:13 +0100, Vivek Sahu
> > <vivek.sahu@oss.qualcomm.com> said:
> > > QCC2072 is a family of WiFi/BT connectivity chip.
> > > It requires different firmware files and has different
> > > configurations , so add it as a separate SoC type.
> > > 
> > > Correct the sorting of other chipsets for better readability.
> > > 
> > > The firmware for these chips has been recently added to the
> > >      linux-firmware repository and will be a part of the upcoming
> > >      release.
> > Something is wrong with formatting here.
> > 
> > I would personally split the sorting and support for the new model into two
> > patches - without and with functional changes respectively - for easier review.
> > 
> > Bartosz
> 
> Yes, I'm now splitting this patch into 2 parts, one for sorting another one
> for new model
> 
> support. Please ignore this patch.

Please stop adding extra empty lines between (or fix your email client).

> 
> Sorting change has been raised with tittle "[PATCH v1] Bluetooth: qca:
> Refactor code on
> 
> the basis of chipset names". Please approve it at quickest so that we can
> raise new model
> 
> addition code changes on top of that.


Why couldn't you send it as 2 patches in a single series?

-- 
With best wishes
Dmitry


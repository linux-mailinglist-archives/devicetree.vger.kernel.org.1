Return-Path: <devicetree+bounces-260230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNTLG/LGeWl0zAEAu9opvQ
	(envelope-from <devicetree+bounces-260230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:21:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B129E298
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:21:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 68A383009397
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02EA030BF66;
	Wed, 28 Jan 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h72SgdpX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Nzy2sdHu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B6A631355C
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769588313; cv=none; b=kUSyuZTYDNrID4DN6KwioUc5+4WamdoBS4JWCcGaTpuBkHQdINF2KJimMEhXI3GbYsERkCZnnRXLs7zD91orZp6bXy9gPYyEyBm+pFDljCwcNLVg47SXlJohjQtwRrfFqewbsWrRUU2vC6mSx9wiB1dmnvrlGk4h2zpt9KwgVvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769588313; c=relaxed/simple;
	bh=mRnmIPwPuFBGoSOwRjYoyF9qWgPBIkgCj3F7bc10gfA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GwgYMAbnNkt/znfT1KcRf2kVBC7Zpwwuq9Y9TIN1ntAqWxQ8zMXBUhYWuXRrhp0NGk+6Gj79rQ7swLZRpz1gX3pzsi0cgLDTqKisu9XF48c351eTWlh8blybGOK+oaiBjCPY98XpzX6+Rh8B3BEepIkOArkAxuta9avCy9hdFzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h72SgdpX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Nzy2sdHu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S57sGd2438182
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:18:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Hv1CC3WnvZ62/mzoqWKFEsNi
	DJiNf6hLtHjTijYGbYs=; b=h72SgdpXbBsJcG5yABaqobnbFQW1SD35XKSbHiXI
	RHi3w7Uei4rdW0z8dJ3JsRB/TUcL8uBNpr/x8BIN0RWQJa6sk+evJAVO++i9bmN+
	zHl5Tab4t0wNIl9Lr/HZ/ckkWf9DK6Rm8tygprr2Hop/+yOB7zzMhWz4EEb6cNH3
	6I3kZhcDpv69X0E/EkFvGUGm/YwT6aLtQhlJtesTN45S/H6bEtcmep3c3l7SQu1V
	tDOYpKir9gGjKEqrEga7d+54tgZNzyk4tYgpyjPU+44I9nN8g9KPr06pwsjPBDRs
	ul28p353RKZnOD6EH0IxZkZx3Gi8cI2uJXUpgUDP4KB1pQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by355t5xm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:18:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70de6bd18so272515785a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769588310; x=1770193110; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Hv1CC3WnvZ62/mzoqWKFEsNiDJiNf6hLtHjTijYGbYs=;
        b=Nzy2sdHuUVU9oF1ckXPvXTs0mmsI9Wbb5lkUGgt6GdB8MDoDpXrotaGnIwBAGNZQ0Z
         misXrU7o4RB3ACwm53LRZu8rqzAo5gzCrh33+3zAJtgRQ+YFCMoYhzP/liIigzq8iI5E
         7RMFbvJwSvF/XU/biI2xUJpSr6oyR1skT1w+i6iU9FwRSB5FAFYuOd3DcnemZqBUxdpr
         A4ncD0sznGop32FMYF3jeExJw65m0oozs6L+kSbxUGxNFJwluwryy0vYc4OP5GVdSGhs
         5mRGIRTsaNjtjDe804ZLDUuXZ9Bu+IRylOXFn/AAtR0gwfIE9gKaFxeCJOfCLLfvbUU4
         4iEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769588310; x=1770193110;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hv1CC3WnvZ62/mzoqWKFEsNiDJiNf6hLtHjTijYGbYs=;
        b=phkWHVYxmZnvEd6+fSlNmp7rv2VUAdO5U/uoW2rgGNzQVY1TpC7lg07Zhg9eLTDAWP
         WXhPxyIRUE8dHrXOHR7Wl7CocjtX1pQmqudaaeDEopMekBhWzyQUELHPu1EfVwOLYOUd
         AHZKm8DGMRacAYZ6XDMS6okFAhcu/LfSN0wnoCs1tPSxlxQWo8a89uhf7G0i3CSN1gsQ
         27lpPFju6xx2Dr3YkPH355u7DPEXCu0rZt/iuwR3ugnzmlbhxjP5UNzBvP+dl6iabIFo
         8DfpBC/3c6gmHH7ME05OVYpQWecdDvo3VyxKf6yiHD7/i1GJVwgCdZ7mqffgjfbVyPjx
         wE3w==
X-Forwarded-Encrypted: i=1; AJvYcCWLZxVMSM1Ha7XELp6m9Weu+5dzHWIa7yAMs07qDKNL8C0MEVt1vnUz2U8ZIKM3XGtLzPQTol8XmVFx@vger.kernel.org
X-Gm-Message-State: AOJu0YxAqgzJuZ3RhLXDXEndTFDmawm2bHS/Rgx+aK65twQWRBWltwK6
	Fbr1rqHp65tTUN7aE3TkB+MqFOE/dxTiMj0SGn1prOosT+VB0yPFwYB3KrbElFj9BjURVJGWyoO
	aS+b9wDpY09C7WcHr3kD0+v2BlHc1aamaj8aHbbjEDNAac3SuiEE0tWbCcx62IGue
X-Gm-Gg: AZuq6aLC9B6lHqgLyGrCJnHKPl9YdoesDyfp9WL9GXZhdYDCuVnmjJS053yyYEVwWA3
	U8NtmN3a5VMAje8kbVrvA3uTa/n1aebo9ducHecDiMeNUIx7m/h1blxM8JoXLS709JNmvfFPoqn
	+FZV/jnZMqbdARmWQ90uHc4E3gJnyzZ97zPZlIbP6+K9k4Q6i0OGLa7WKGZ+MqXHSKOTu7sSnJe
	b5g7wI0DtmwcPnwPGMFF7OWwA7F1k3tw9EdrOX/SjBLruXQRVOBnZsNoKmh5lMtD9kk6LSjkiUW
	7YkU/uNdFoi+884ai7BP1tFx3+JOgMF/O2wYVQhv5DKE5iBjrKudo0MJvyN/thOQtuqMoIXXp7v
	/h3r40nWIBBNCObhkq1+fKD99
X-Received: by 2002:a05:620a:4084:b0:8c3:9be4:b209 with SMTP id af79cd13be357-8c70b862e00mr586254185a.20.1769588310127;
        Wed, 28 Jan 2026 00:18:30 -0800 (PST)
X-Received: by 2002:a05:620a:4084:b0:8c3:9be4:b209 with SMTP id af79cd13be357-8c70b862e00mr586251285a.20.1769588309534;
        Wed, 28 Jan 2026 00:18:29 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10f82aesm5359223f8f.19.2026.01.28.00.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:18:28 -0800 (PST)
Date: Wed, 28 Jan 2026 10:18:26 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/8] clk: qcom: videocc-x1p42100: Add support for video
 clock controller
Message-ID: <5gzop2avxsqrbukpfm6cw3xlnx6e2myhln4msgxsg7kqu4o7nq@h4un6vnp33j2>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-3-b23de57df5ba@oss.qualcomm.com>
 <795eed3f-7796-47e1-b4de-23424ab7062b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <795eed3f-7796-47e1-b4de-23424ab7062b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YNWSCBGx c=1 sm=1 tr=0 ts=6979c657 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=S7Vqdvs5AhOIsE-KuhsA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: WpHCINuu-G6XNXBOX7SrekeD0-sdgrgC
X-Proofpoint-GUID: WpHCINuu-G6XNXBOX7SrekeD0-sdgrgC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA2NyBTYWx0ZWRfX6CKiLB21TV81
 igxBnyVZ3Wjkgg1tnP1ukrEPsdXCZtL7vIt5yBurOCrX35G5Z2QiO1ye/EG2zaECLqxVOWeXH+o
 xtdJ0q10T+joMA9juu96n+OZZW9NSJncD7d8aeH3fNkpzg6RrEmzEwrlEbtuS4ae0SgzFSef9Zr
 QRntJwjGoQi+gBDKOYG1YlDEYotrlSpv7F6qQAvK4ovYXt1Gxzq+pk32ZE8icoIzwAFO+O6l0Kn
 UWThH+4OusNqUSRqzG5jCIhB0fUxpAn11xqcsh2HxBnxSusGiWZlQLU+/w4CLsWmauconwWAiKI
 YDf2HKaZlQ9P/drUGgwc13eBXRY1XzfLm+Ajm8If21luhsLDmnGoe2bFIZmi4owD/iXRbiispOH
 vGGL43migaIEV7owgBHnK75V9bB31ubQuGllJUL9pChZMAwt4Zkarj4+V8IzK7L0pKzC/TZo3qF
 eMma+J5+rOeaDDWs28A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280067
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260230-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 98B129E298
X-Rspamd-Action: no action

On 26-01-28 12:51:30, Taniya Das wrote:
> 
> 
> On 1/28/2026 12:56 AM, Jagadeesh Kona wrote:
> > Add support for the video clock controller for video clients to be
> > able to request for videocc clocks on X1P42100 platform.
> > 
> > Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> > ---
> >  drivers/clk/qcom/Kconfig            |  10 +
> >  drivers/clk/qcom/Makefile           |   1 +
> >  drivers/clk/qcom/videocc-x1p42100.c | 585 ++++++++++++++++++++++++++++++++++++
> >  3 files changed, 596 insertions(+)
> > 

[...]

> > +
> > +module_platform_driver(video_cc_x1p42100_driver);
> > +
> > +MODULE_DESCRIPTION("QTI VIDEOCC X1P42100 Driver");
> > +MODULE_LICENSE("GPL");
> > 
> 
> Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>

Please trim your replies. There is no point in scrolling all the way
to the bottom just to see a R-b tag.

Thanks,
Abel


Return-Path: <devicetree+bounces-264584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJTDMSHli2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:10:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD8D120B42
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:10:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40AF7301750B
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F1E2F83AC;
	Wed, 11 Feb 2026 02:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h+hcdOiT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KYajty78"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC892F5313
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775837; cv=none; b=qIYzBXqNeYD2cAVyMqvWUBm4hY7qCnRP5KnfPjhwfK8LlQghuaedFFHu4tv5SEzQ2+/tDZuiLNOQevv6BJuDINnIGdU/414E3LVwWcrVXzDe7F86jv572HptYCrRygG9Br2k3h5+za6EValh/I/0ZyYO55rEz7v6tiZykQei+4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775837; c=relaxed/simple;
	bh=9Z6h1bGe9CgoQSSMUNJuVCTKNijakjzuDHRPeAZJdNU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NAze6ZsBG2C2kKCnp+jIZaB38G/pmt2/8L7l8KVQOC39d2sa+KXTTAIuTPHYmaaTOHGq9LWhMT+JKP83UYI87g3+2TU6H6Rq7LVGRbgmwwlq1T0skVHanSA4ck1TGa33zDauhBy4bF694Okt8rNOz1AnjlGGa1U7dgof77B25Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h+hcdOiT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KYajty78; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B0ZUT74006707
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:10:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7LZYIvHQFvfA++bgwHK3mzEy
	wEhDTEnv9BBYFPH6Rvw=; b=h+hcdOiThR7T2hyql2+8TaYmIHR4q9ThmPFuLVIY
	xW40BeqeDqTY2RCXP5KRwk8DJayzfmtT42UB2WwqsFp194TdZe/A6/AFSobdCRpP
	cqDvyUMf35Ux9T6sXnvLNbSKlMLUfo4YoQu8675I+OtvHRUxvaST55eOghhpV6kc
	/vTxTryR9gPOxmIdtMgrMoFtYQT70tPOY1ojoDCaQZitvfv75zRhq8HnlLMoWwt4
	VgYgoRAqVQC8d/JFWYITOeD9rG9j63pzNbERw3YL8S5ZfuZyg3uMwjJBwYpBJSGt
	+m3rrpYgRLJTaYfmgyyS5dQE+QwaLyIcW1auZ6dF0pBcPw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8fbwr6ut-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:10:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a2ef071dso1973471085a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770775835; x=1771380635; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7LZYIvHQFvfA++bgwHK3mzEywEhDTEnv9BBYFPH6Rvw=;
        b=KYajty78UZsrZv/GGXnoNEYpYvscP7owruDA/Vzs1AKnYTMO4EVUULxcwwIGThOeAT
         ixlYeey/lJoZMALD+eme5v7VbEaM2zBvZp54CAw2plC8Rt1+Y4MxFgm4BTAqIEE/fimZ
         5lJzNp9PU0A1oaM0b0SqNkS38LpNtYRQIuH1VBXBReWOhatWLlhJXy9IYs7np/teYtD0
         G9QT6/dCv2+brMsVSlLfMjDePtCZaNXo16O+puz6Nov7YHI7DyQwd5kFhPfygUNxpiZv
         UOiJB/p4yeibPZS/7rTzgdvHgGT4oER1RVTukrXaFbV8qwjkTlsF1L/ZN5T7NHNiTuf+
         S0kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775835; x=1771380635;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7LZYIvHQFvfA++bgwHK3mzEywEhDTEnv9BBYFPH6Rvw=;
        b=H3Hjt4ZM8cIEG4DPdGYaxd9NF1LC3tf8blzwHhdBgIJvH3myODWfKIsHijdlKNUxDp
         r7nadCjNESGatiQz2mTLwbeplC82qLZc0U/D3Z6Am+ZOnh1we2/FLsyAlc43N1KtilfP
         wxfEIXYsWSPP00KqmOYrhpDw5/SejER2mtcCA5UFVnrSLHd7AYU0KgNQQ81B7VHyIdMh
         19wHJHceZoJZBbG39rT9LlvcNKorrYof324q02MO+kgsazaxdJ+yuMiLGPe7Txw4B5IE
         rflI8jUCqmNGlr7ihxNbdCfEDzb7vtiupJWKdVLEGOAM448KgLSXDcsn9b19PoF5VweR
         sOww==
X-Forwarded-Encrypted: i=1; AJvYcCV8j8WZ/aHz6OAURrK20dlIS8HdxgAhrRXATmclro/ODf6ypEGyL+enVoin7xIW45IdR4Q0jayYGMPr@vger.kernel.org
X-Gm-Message-State: AOJu0YwFvjMcHILa9F8szv0mEEnxFf9g+lv7aapy50dtkZ8KUe872CGF
	H6w9trEwd/SPeXlQHEGzdZIate4ocHdWLbkljnndABStMApSzx7+boDoWQm9bfrOV7xSEf4P2Jg
	gw7hQDoc0hRdLUfXCYhI4dU+/SFNVUAvqmBMfUxnpDkRD3JoWXA9ZdxJnvlCL2KieqGqyBPEV
X-Gm-Gg: AZuq6aKbjYB3wrQT17BW8LAJ3X1aeKP/ZP/D5lb523+wFvYRwNXHEmBGt3VqVcE70ju
	ip449gMGgQAQv8a6lBXgP1ra5pGYIZraHw8aSz9HQ3es2Q5iyks6RD15IjLl7AVoU/3/pKGsKMh
	z7IIP2BIILF3yDbx8q94Yk7T+McW+WXz9nGesphy5f1ecVLRcxaQXnBy65o0yEfGeBTJysff9Wb
	WlNZA1YGjTGbRYkg8D/tlBiJk8MZv2IOGfTyttEih38NY5DsofA8XthRFUNyYiXx16EN30bXG7a
	Kv5VFlbBk6T2w/LfvDJgJxW96LnFaYUs88PvcvyfEcWYsoBBTUXGOsNWqHkJJ17UAsEeovAAppG
	l3MFSOgZhYJ9AgvXuuGOwJEobaHviWluavYFvl0nzpcLDz+uml1gV1hpko50iOZp8B9266IyV6b
	Vz7BxlcKQd2gykmZML5tq0gvRM3dNuHkyrEGc=
X-Received: by 2002:a05:620a:44d6:b0:8c7:17b3:ae10 with SMTP id af79cd13be357-8cb280c508fmr187811885a.88.1770775834926;
        Tue, 10 Feb 2026 18:10:34 -0800 (PST)
X-Received: by 2002:a05:620a:44d6:b0:8c7:17b3:ae10 with SMTP id af79cd13be357-8cb280c508fmr187809385a.88.1770775834483;
        Tue, 10 Feb 2026 18:10:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5b6d7esm22728e87.85.2026.02.10.18.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:10:33 -0800 (PST)
Date: Wed, 11 Feb 2026 04:10:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Aleksandrs Vinarskis <alex@vinarskis.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1-asus-zenbook-a14: add HDMI port
Message-ID: <dftt63m7itjxdkqfef5r6nns3g54zvyj6g3orh62ccbznb3tuc@drkwjoq2rooq>
References: <20260211-zenbook-a14-improvements-v1-1-d970af6e25a3@vinarskis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211-zenbook-a14-improvements-v1-1-d970af6e25a3@vinarskis.com>
X-Authority-Analysis: v=2.4 cv=GM4F0+NK c=1 sm=1 tr=0 ts=698be51b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=I76Qk8w-AAAA:8
 a=EUspDBNiAAAA:8 a=EEZGpR_BkqUN9n9zRf0A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=vUPM0Wvl0xcrLs4nqPIT:22
X-Proofpoint-GUID: 3ckrOUmUcp4zZGAv514Sh7Vi98ulBu82
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDAxNiBTYWx0ZWRfX4Fr8zzJ5zlbs
 7ic/oAEfO3+ROVqHolJJwmIvhYJnWrTfoeFh1U6/MrrjrB8ZxIOxJXEELLOIGsXXqLpKGNq8NkR
 PG87mM7dEQrWPumQ3czmsCtpfNNMDpvdoCb6/Cr6XsNeGDgNGBpcoamHzvipaIau+CyQzJ0W4xN
 5mx0nLcBsh9PV92p5TR72lfIXrCKFlBywq720Lhh/MG+CJOuabPH0Rne6xQ5CsVEZhjrqnf5b5w
 DgqlrgHFED72AGBqDRP0RDXHhcAP2gcCI/KvLv7pcVM8DBds+kIvXge4JjH5HbvpB6c8CYEb3nc
 L4AcCjXHXfhO+j8EKMquDgrE6/oz4Ks68LY1biEKuXtLt8nEC4mJ3dNvReU6OoIjXfEuwYp8thh
 47C6XjaE9iBqWHyyyBFnjoLL+Rj7d7P4+yaioGMjW6WhbZ+b29s6Nwipe6orl7uBFoMJP9O3oMO
 bhxLFDn3rqKvAPDd7kw==
X-Proofpoint-ORIG-GUID: 3ckrOUmUcp4zZGAv514Sh7Vi98ulBu82
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110016
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264584-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,100hz:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4BD8D120B42
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 01:16:25AM +0100, Aleksandrs Vinarskis wrote:
> Add HDMI port that utilizes qmpphy via Parade PS185HDM DP-HDMI
> bridge.
> 
> Based on commit 34d76723c410 ("arm64: dts: qcom: x1e80100-vivobook-s15:
> add HDMI port")
> 
> Signed-off-by: Aleksandrs Vinarskis <alex@vinarskis.com>
> ---
> Successfully tested with 3440x1440@100hz, both hotplug and coldplug.
> ---
>  arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi | 79 +++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


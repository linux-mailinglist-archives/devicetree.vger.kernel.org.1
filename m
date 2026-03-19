Return-Path: <devicetree+bounces-278016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBw9HIVTvGkXwwIAu9opvQ
	(envelope-from <devicetree+bounces-278016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:50:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EC32D1CCB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:50:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE69730774F6
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF40358372;
	Thu, 19 Mar 2026 19:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V3YLXYGI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L/SiMi9o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D072E8B82
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773949825; cv=none; b=WeNH2+dcPcUMdkkepzS1M584D7y7Ww5+rLaYXZtm5u0cOhmWObx37+fOsdtR8AWvGTH6uNjW/DUmn6S0vku5Vu895iS93Uflp7L/D//YHxk9dhu3VI+HxWZwkVyIt9v1CJ0x6plzGLVO6qd8RKRJ6tVUHCh3RSxYMK5NlwoRgvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773949825; c=relaxed/simple;
	bh=i74+LUsljeq5OURT5idEOfUI+4H734ibDR81rFe92x0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aTJF/M/3vMtAThYea6lO3nWXRpPRdqFJC5lStPwFVy7ZSqapGreF4D/Jf32sgdBP3zaQMx60fbRphL/4OmVrNELPiuqWdAjNQF9kwh/juNMGNKKBbG7a0BoskPiAEJYTTwQ/gqDgbKZyzR0eUnUIiddIASi/Sje39DURJLnOdpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V3YLXYGI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L/SiMi9o; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62JEg4V83369542
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:50:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZWhyfQUUVgTuDV3BF0ZoGSyB
	bmACaRyf7XqBbb+fkzo=; b=V3YLXYGITNZAnyPHLOiWsytQDM30sKPDQi6cT5Vg
	IEFhg7QYUZQ4TLWL7/XX3EYzd+z4fMI4Yit3MjK461GkvCgdnI2IzFRGQDo65zwo
	+4RrnK5YyHpCAJLid33CzNuxfRCAFOoePwSDQFZUQDRCeHimi1zX2jSsO1r5rrrs
	68VCIUk12+Z/JotO80LAPvmBDUGpC4NmCurk0mHghpL+eynqcb+bZugxJXZAEu/3
	+0PWhClvdsj5LiyxQUFtZrrUVm4X7NTuD+mPicoejOWBwBx0ypT8yRc7oKANkWmC
	Hv8kXSEBmaQqW9AGNJ9tlE6ScNtMafC2NBddxwRsJDKCPw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00f9mjq6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:50:22 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-509070bda13so127018181cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773949822; x=1774554622; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZWhyfQUUVgTuDV3BF0ZoGSyBbmACaRyf7XqBbb+fkzo=;
        b=L/SiMi9ohuSCj0pLip29T3KZd7odwzFxzSGJPhmVIj/oyC9FI3Q25DxYqahjkAN4LW
         2toPzWSrkFkUXezovLsXjKRkWaRSSxOp/4Jo0RX9+0zpt6gsHpB8nqI2nbr88JYqp3Gf
         UMVJcfXV792GbL1ijgcqv4IWCnYF1xAJJ1Xxsmko/NWlNWTXEDd1jQZKgojf6Tt3U+50
         mUyigL6i6rzLsG1zCnj/F0r2AZp/4kmyjk3+CehCQWQSRy2yE+nhGNIyitE4MiQrVEcN
         ERjGnWURy6pY1G3bBNiC3W9s25vMOkdoAA2cMYl5eGSdaBKyFZlTGSiiNBGe3sg11h87
         WERg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773949822; x=1774554622;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZWhyfQUUVgTuDV3BF0ZoGSyBbmACaRyf7XqBbb+fkzo=;
        b=GQRVfrj4R5VRiqvemvudAyfEFEgZOWTYVq5W4FK8IblXioU3lB8xmW1fI1mPpY23mh
         8Lug9yVLYWJFnO51yEIVHR/pZrvy9VgWQ902baW5KIn8cPK50RU+DdPrlx9A62mHKPIG
         HumyT8KyBttu0mlDYuCjT2eJoAnTEs5GR1GGn8G9bhee0hvO5SNrpQPum9RpNA7xI6lz
         9aFH2BY0UmIWCBgsBJJPQFkMTXLK1bsbYmZhvNenPpQ+Hs7xzKAX28kHPXjeaPxiWjHL
         UxtEZpjmhUp7f58Wh5s/HhlJbhdNMGIOJI+/UtUYaF9N12JZQchAgu/qnEt0NYF/m3sE
         6yBg==
X-Forwarded-Encrypted: i=1; AJvYcCUPKQm5OOJ5398RDaupsNXSMieAY728DYwrB+yDsr6P2EYly3bynAMHzYxdl6/C/nDWSCPAbxkozVC8@vger.kernel.org
X-Gm-Message-State: AOJu0YzEm5KP2Yluyp0NlbMd3xInyxDvKbPiyiXsfxIonAlmc1Gfadcl
	MgF1HjSjLw/YQUkupp8xDFg+tBay83uX6n97jiD99paENYJm3F2QU4FPYlTP+uzaKBaD5nz2/6c
	IlXb/2UiBesJ4GoZ80jvf5fk1LFmhEa0dLCMwWKZNY5x2pJoiRIlBxWXqTTFZCLHZ
X-Gm-Gg: ATEYQzz6RxHaINHbqBReZsCRpnPKriApH5SeaSgl2BR9pj66d3Px/aDyFhFBTdvplLm
	lnjL2yOsuHbaZhTZuyMjxno414i5fGEMeWgUdoznfSRliUGVC2XCuufjQgHp0FXUtjDRgX6NqPV
	SIfosBJ+MnBXtEQolFgCePh1c/f+oeNT/GJfIhecd5gxF/IOYslDkxkCAQC+osxB8XlpShJqEgo
	JMW9aOSG7RzyN3Qm0hApQ3OixJDk6D2GRNVN6SjmGt0uD/0GMCwDoTninUJvgdNRu6hVlzQhn84
	KDVS1jrz0rWLP7T2iLyIGXG+CM6SDkDquenNDIwjo0r06OiKZBU80fxA8KyowPTcHvwssbfJpSM
	eE/H751To+PpmOc3xag7zX1pASyPoGfhcA4n82mlcS13TYeE4UfWxiWXMFur+T6rwsI7AuJ1BAf
	gbfcUfU2aD9f0Xvi+IwDoMCCNcr+zEysJ4NGI=
X-Received: by 2002:a05:622a:146:b0:509:144a:43bd with SMTP id d75a77b69052e-50b245b4292mr63844071cf.3.1773949822263;
        Thu, 19 Mar 2026 12:50:22 -0700 (PDT)
X-Received: by 2002:a05:622a:146:b0:509:144a:43bd with SMTP id d75a77b69052e-50b245b4292mr63843611cf.3.1773949821713;
        Thu, 19 Mar 2026 12:50:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a285207454sm96119e87.48.2026.03.19.12.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 12:50:20 -0700 (PDT)
Date: Thu, 19 Mar 2026 21:50:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v6 1/2] arm64: dts: qcom: glymur: Describe
 display-related nodes
Message-ID: <r7xzq25ilolljlucp2b7nsabcyvht7udgq3psbs5kt5qv25lo6@icdwtfygd3nm>
References: <20260319-dts-qcom-glymur-crd-add-edp-v6-0-f582e87ec874@oss.qualcomm.com>
 <20260319-dts-qcom-glymur-crd-add-edp-v6-1-f582e87ec874@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260319-dts-qcom-glymur-crd-add-edp-v6-1-f582e87ec874@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDE1OCBTYWx0ZWRfX6Oh136yOtZSP
 Nhb9JGf3CYA7NjLRNeMCTQcTf3bdMszZnQ9RcOGk8Pi8D/S92sE2ubEHNMTrwIyNzea839Joh2i
 03qHI7hIumwOdhluZQUvhwfTtbfgjNPsRFPyaQlBmmJXXCGcrZMhJXeizvtcGZKsgzVvmjg5Su6
 7si+sMjiMSZGIREHCsUpgHREek1abiSLUFdU4NnIRGslZ9eyGMLeFHV9UJO2CWBN35CuED9eQUJ
 ImCYTXDEptm31GCewE37EoAprVBimKQzKKD5Vywhc+gjT/OEaQGgA3oXriqUMszddpGd3S6EiZg
 u/G9h1KR28MsB7TPWr7LxCbo5y93PbjJEcMR1oiq0CX+zRh55qb1xeZ8uwO6rvKFAAv/NJMuEqb
 F0FxSQdBJ8ureXVs3PisSyi+sM/Kvs/uQ515f471lZaHYJMCVmOH6m9WjCbsqx21M/3RxzLywx/
 7x/vCxxnIALiKSU5Djg==
X-Proofpoint-GUID: e5KbewEpOxhrks9JyfbOZP56K7AVeVKQ
X-Proofpoint-ORIG-GUID: e5KbewEpOxhrks9JyfbOZP56K7AVeVKQ
X-Authority-Analysis: v=2.4 cv=MJttWcZl c=1 sm=1 tr=0 ts=69bc537e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=j_cfvXHPzrGlstGZ7DoA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_03,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190158
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278016-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D8EC32D1CCB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 05:15:14PM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> The MDSS (Mobile Display SubSystem) on Glymur provides four DisplayPort
> controllers. Describe them together with the display controller and eDP
> PHY. Also add the combo PHY link and vco_div clocks to the display clock
> controller, and connect the PHYs and DP endpoints in the graph.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 466 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 458 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-296990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAnbL92uBGp6NAIAu9opvQ
	(envelope-from <devicetree+bounces-296990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 19:03:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F02C5379F0
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 19:03:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9419D32DFAE1
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 16:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59124C6F18;
	Wed, 13 May 2026 16:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ub9SG6+J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MCWUwniz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB0B26E6F3
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 16:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778691148; cv=none; b=gFn7ybcufLazHTgZnDLkB0pGI11G+gU8INqoGpfV+qWojpkNQYH07wapUhM6MQg5WesDJVNePxhx5opYOKE199sPBVKQ25EwQV0DmEl0YjSviDiY+/w79tNUhY26VKFjZCX7mqZu5+j6Ayxdp+HnDs0fA/OebxgoZTBSnot+ow8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778691148; c=relaxed/simple;
	bh=qOKgjEVuqIbEtUVcQNUPmBWk/ToVLd8iHPeTuwLwbE4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k5AAUCiJJXw2jEFx0OPVuTx6zcnHBMQJ42PAgp596/aSiJ/Q33pBcGWwcxBzzs3TWI3dzcrcLvZaEe8TCk71q/oN/c+8/j1qEZ0J2pdDQAlj35X7a+ho9j2DU1kg1SwUKNHLKyuW1IRG9Ph2zVeGRrrWQTYPyyO2vrMbmDtTp2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ub9SG6+J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MCWUwniz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64DBqFuc3324658
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 16:52:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PQDKVHkpUsfpWP0216KpWZo/
	ckkZQvWAnsqZGCHLh74=; b=Ub9SG6+JgDbR98bvDLUhCV9iBCiaZ2TMHpDiSraS
	Kxee6/wCy2LOyFoS5fSuP/f6AN4+VlmVakSq+jruUriTHDoh8SSpyCvy+CwFiXpx
	kPO1H5Nl1vrZ22MN5zAsz3+ke1ipSWJSxSxmEzxK3didYf/fpqFQmF5Af5Vl/z2k
	i23RfLj2pmfIJnh9C8TS70J/VzJsi6ncVhIKLPjfyjVDmhe3okXnA5EEv3DXAHfZ
	i1J3q8RIFywnRTVNiLLvs108RhgG8wuOJ2IzBrhA26nc29JtS4G6OfteEprEiUz8
	hYGXeEKA7Rgqm7bkFCuiuZi8I8dieqvYDx/HrzTFRimuOg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4kvdah3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 16:52:26 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-631a49033bbso2386975137.1
        for <devicetree@vger.kernel.org>; Wed, 13 May 2026 09:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778691146; x=1779295946; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PQDKVHkpUsfpWP0216KpWZo/ckkZQvWAnsqZGCHLh74=;
        b=MCWUwnizNl2dVdl46XXX6IFnWSb2+6/IqtWz3fxgu9ObDb9bZEwch2t3JtjSZgRscw
         xzPn4GvH05hmJU1qBGseHEYfybegGKjbQ6xyGyYckrX+S2ec1JniV3GLuqI+NeY2cw0a
         /oOwQ38hqLTJ37cjdoCUwRQaFSm8fT/0ebConPy0DFv+D/XxIBWJuLgIzgZiR+Esg0IV
         zpEWLqGND6eSlH+meEbQaK5mM601W7e91y2eIQ6Y9I2CZMZwn8oWvpj0VsCPdzc52n9/
         x5OhnCDGsfSveUqUm2eTs0Iy5ds/xzmOmN5YjXsQLxdykOo/m4/P/nyK7hjX5ot9jXnp
         mFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778691146; x=1779295946;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PQDKVHkpUsfpWP0216KpWZo/ckkZQvWAnsqZGCHLh74=;
        b=YLzup5zcvG8ajwpJfvuIpD9dx8Cx+Qw/LTahM/+HQb0HbnoA9q4fkndF+lF1mWvDPY
         SQ0VBUVANymGsYa+GJOrJ4RYYFMDbHDmwE19UHEFLs1GkDCMI4aDt/I+OyHpk5AeJAyl
         wNJVLOvOPERSVBsOPB6jrUz8TgXpgAqQOf6GVjQ52Hf31A1liITrkAG4Sr5dz0VAf6ou
         ZpLE9trtEww8Xu3zdSCquSeLJhReKvKWWGpe/ra6TbAAoPIZXCb4dMuhGrauKG5EjJk/
         NElb5cmPw2Kz1YzN9xCGRltyVHSnEL2ZeTJBei1ad26C6M4ucP9ZQf8Nkk4CzVJWJaHd
         DyYQ==
X-Forwarded-Encrypted: i=1; AFNElJ/djYFAjnLuYg69MhT3Fol/bBV2fm3S1Dx/6zrvCuPNBUT9v7pwG4bd11M4saPNxurXolYeJiNdioky@vger.kernel.org
X-Gm-Message-State: AOJu0YwKFcbYNAVloU1V6LE52kGg52Cw2MsWpzhw2XfTKx+1NkE/ii5z
	WhsoWOYb7ARQImgyPEL4mH7vnDkGgThyYxZ+YXmgPK/AAMT2LDjwOg59ybEN7D3FQNZAzz9GyJN
	/JWe3hBptISy8Qiur85VjeEs3izmYnqQzTRsjaUhM7j2TMyYgsvmxtXqMycI7ndkw
X-Gm-Gg: Acq92OH2N8Ijcr06L1N+Pg9tPC3+nTC0jvEFGjnNrXop+3YR/bqqbsNOTr49P3VPsMv
	Q4rIgJRY9RWZyNHdtxSe+i1vB0fC2bxvWWp+u56vuDAgW/5L7DSVm9ikWOn5yKOI3yJkAxzhAh9
	kOc5AMrNNaXvq+avvjMmCxo5RdwzEOdwtAVnQ6qL47ehThPtS+a3dwzjoJxnjxGFIhvL1Hu6fei
	2B8e+VNtyHOzdh2dg6FPCXxXOX0+1dHDND8x8J4lvl2uqiJAz2ICyX70bToVIRblHvqJI3ZZWVd
	x1sJnoDzKRJow3NmE2z/rELxQ21ER7zCRzt3VuNZuxkaf2JJBoWnAza3j7AvjlqsMG71NkwFVrf
	ABmQb62XQHSgaKLLRatNvWI35mYm9IYCkyB47z/YPyaI24ogplJsf+ao9Guvin4WRFpqe6HSAcn
	4Evk0c4JyF33warkZZDK2g9r88/SslyiZnfXg=
X-Received: by 2002:a05:6102:a51:b0:632:29a5:2b27 with SMTP id ada2fe7eead31-6377239d243mr2364702137.3.1778691141090;
        Wed, 13 May 2026 09:52:21 -0700 (PDT)
X-Received: by 2002:a05:6102:a51:b0:632:29a5:2b27 with SMTP id ada2fe7eead31-6377239d243mr2364665137.3.1778691140453;
        Wed, 13 May 2026 09:52:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a8a956b3d0sm4096876e87.80.2026.05.13.09.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 09:52:19 -0700 (PDT)
Date: Wed, 13 May 2026 19:52:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH 4/8] arm64: dts: qcom: kaanapali: Add qfprom node
Message-ID: <smuahoo5kk23pmy6hl3ydnha4aak3xyalrkg4vydixoq4zrro4@rpb2c2oy7lko>
References: <20260512-kaana-gpu-dt-v1-0-13e1c07c2050@oss.qualcomm.com>
 <20260512-kaana-gpu-dt-v1-4-13e1c07c2050@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260512-kaana-gpu-dt-v1-4-13e1c07c2050@oss.qualcomm.com>
X-Proofpoint-GUID: cXo_l3TDxdJsH4PTrbfgUyLjk2v6hdo1
X-Proofpoint-ORIG-GUID: cXo_l3TDxdJsH4PTrbfgUyLjk2v6hdo1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE3MCBTYWx0ZWRfX8l3zXUoXO18f
 ab7rcqkdkHXO7BsXN7i0zVoTorOEYF8o9fwQ3dl5N2cBmZAIHEX9Rq8DHkxj1kBvxjizaSDFlw9
 MTlb8GMQLyKbKIOcRZCnaiTg7Gurwar0SX+PLY9rfrqh5N+PwMiuE0i8qc/g9wwK1S3hibA+kC2
 /RyarRoUCF6m1SYflFbwEsc1zerrvQ1dzXXjv0tmKkkvIvcl2dwa3NulY5KTa7sZL9E7wgTywTf
 xrzAR7Du7JvVZczbOyANOjsgjI8UbMNdmUn4lezHpMOoG1Bwj/h7osD+AApxBxxuvBXQHsj5XdK
 I1UYxE/OTONd3rF3tcTCQgFgtgUKNVVxw/x8TEWpIev0xDs0BiQjTEAh6I360jTYgmD++hPyURY
 ohZ3Kdbzz3TeB1cDAzQXZK/V+E1LKs5ylHMeHEYAKToQmrVdIaaAk6oNjonxCLY5GoYuZYnliMj
 1S67Kn9sBEhlTQhNuLA==
X-Authority-Analysis: v=2.4 cv=Iu0utr/g c=1 sm=1 tr=0 ts=6a04ac4a cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=UQAiW8fk4jwks4S4FoYA:9 a=CjuIK1q_8ugA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_01,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 adultscore=0 impostorscore=0
 bulkscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605050000 definitions=main-2605130170
X-Rspamd-Queue-Id: 1F02C5379F0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296990-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,arm.com,8bytes.org,oss.qualcomm.com,linux.dev,gmail.com,somainline.org,linux.intel.com,suse.de,ffwll.ch,poorly.run,lists.infradead.org,lists.linux.dev,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, May 12, 2026 at 03:53:18AM +0530, Akhil P Oommen wrote:
> From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> 
> Add the qfprom node and gpu related subnodes on Kaanapali SoC.

QFPROM, GPU

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

-- 
With best wishes
Dmitry


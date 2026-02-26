Return-Path: <devicetree+bounces-268573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCkUO3y6n2n5dQQAu9opvQ
	(envelope-from <devicetree+bounces-268573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:14:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2AB1A05F9
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 04:14:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D961B3003BC3
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 03:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 801BF37416F;
	Thu, 26 Feb 2026 03:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XVTiNERq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kqLbrpRS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499D834AB16
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772075544; cv=none; b=ShFFMwTbqFvLZhGnPhy25pF3XrZuJ6FLjFE93mZxMBvbG81EqMyIdu43yLXJYd3SRenn9rEhY7IYiqfkgmkvjRSE5FPz7B8iAqJPv2hm/VBdHoy+bdFHtCuTmTcEklPgD6Y/Hg3nnKz1o87bUse2vu77tZyuPaLZwEqt5DQkei4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772075544; c=relaxed/simple;
	bh=O3HuabJ4nGq96GPw15bwWMpCL+tZhEWVrYW5DaUaZM0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W1gPbUl/G0QUcz1jj6B+AF9uQMR/0LIfzl5zI3oRmpAd3GRu8aPnkoTMKRrvkHbWEMZoy2XwqjOtm4i6s78GeXIDrUFQLySNrSQpODidzBGf268gFtLH+9TD7K8WB0A8jJbCf8KAao3NO2Wt2oY7aOkX5lq9Sl9p/X57BnxVCTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XVTiNERq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kqLbrpRS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PK8UH8788731
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:12:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2zRpXPy3GqSm3ua7S9QJ3jUT
	2BD0Q3VmNL6eCFxTHG8=; b=XVTiNERqrEF1QPN6v+2jofz6boUeRn1YrThKz6wB
	+E9FNb9DB7iUtp+m+L/EJ3sB34jTN3hQoFrDseHuDUCLAy/OW0t5R8n4Oi8G6LYj
	B9+7LRCJjHtSOOu7WNd8RfEgbrxRuoc1gJaiKez9iIed3qJubYsCs+IdMEh7A2Do
	0nG9Utr/Sl5UGHV6sgl0PD6ROc4TMcb2otHbASnkC9PHaPRHxhO0Kb37Qmuk6TR4
	raYOC8ku2jkPcMW601nYgT50rkpX+fFz2icSNEPy987jYBxLPXkuyysKofuCYmCU
	BeC3YZGFmhaPFoQeGIS9Df1EE3onDsnOe7nBbVt+M3NUyw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chyv9jnmq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:12:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70d16d5a9so214950785a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 19:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772075541; x=1772680341; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2zRpXPy3GqSm3ua7S9QJ3jUT2BD0Q3VmNL6eCFxTHG8=;
        b=kqLbrpRSuCbGQ7Cpmn7es7tl1ObyDf/Q5F6HI+rf75Kljy19ntAEUvztN+RRPJAJqT
         Xw5GmnaVNAIKpGxnkzcMUmJh+Max+WizPrbrjw/8ggyzpI/uldCs9KGHWDCCDpOED99v
         uR7sDFI3a2qRbagpOGKnAG0eiyu8Jg9pVCk1AtAnMKSF8rUzRaRo8AUenCXygx2xP7Jj
         6KsBV209eOVJEa+5A+VpkOeESnzOlBLX++F4WFqLyhHU46x2V/Nyynx7h6FftsDSi/RX
         oFc8PZ0bjJfJ3W2+jczfhl4Q2If7U4zE9dCS6GnraWI0DvQgRHxqz3BHjv4rArQyHKEE
         YBLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772075541; x=1772680341;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2zRpXPy3GqSm3ua7S9QJ3jUT2BD0Q3VmNL6eCFxTHG8=;
        b=h8bmgdT0oYOTcZTVrJawgyklZpooAtg7IMmJD+gPtsfnGjGSuaXXlPuZkgmaIlewgu
         ETiEVuJ+TZ8Lh23K8araVc3IqufFSVXwsz+ybz1WOcfa4souY5fVbl77Kq5h5T5m+350
         aSZlFbHA6Eyg2mbU4U62OyqP/lXnT/UsTKSOf8XOIdJffbSH2A6TrRGS4oCVYYrcZr9w
         e9dsMvkTDaBmYBvYf6hkkRz1Lg4gq9sgHhC5hDbDPq5qJ/XU1QLXLqny6Q0EiUfBHCK+
         SF15i9RwD4eeiKBp8Z68wzK/OCtFPILWE9o7gjIgD/cZcXub9baKhFPLWzvAGpLvubo8
         4OWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL/u47n2fQGJM3dBql/Nmtape+jnaupuqsBo069OscT1h22DpX/e1E4Fgsj3TdQPNuL3DTuiNjHSbI@vger.kernel.org
X-Gm-Message-State: AOJu0YzGn9bJSY3ldWhl6FI396aEOyDlGaW+vdYzB/d+BSdqO4wssfp5
	U3S/dE/OYcfqdnph4cE2oDJIJz1xJMe8+TYE7Aa3+dEVueklhKt7XTvYqZTSszw8Ttbn3oZSxjG
	cFBtOL6ewHgQY6Jk2qHM8rX4uohW+rI8TNrsxXxg+DY//b2yKxLObKBMGTcp2x2l6
X-Gm-Gg: ATEYQzxsmfqQIfF/A6YSStwvxZg9DOtwZWOI2Qp4lTcZCG4c92trJ1KSarVumShwj7H
	d1GaUqmiMbKCvVGP/iNke0TXbFushj/y+dPv/eoh3ehXk4z39xfSuOZLpzo0+SDRWUyEgbLpPre
	8rtatT05ZQmpnx+jdnFoWM+5On9Zzj18icw5Axt26KCMKVV/Gun2VKb67pCR1lnuVKJk5WNryJW
	y0oH6Cwzzqq4s/NiSqXWO/mFa0q1GuRGNqVO7tI8rTcXuhbV8ZK1pW4bYnSncXLlHczmjY1w7aT
	IkOIxNIFwVKF3xgVsk1XF/0jUjMCwa9AwOKe9AU3kBzFRd3cLCjCua/pBaRkih5aDQPK2I4/8p+
	Wul3AiNLgIoxWexbEeSEIlDXuA7l1mCeC0evdvGy4RnswNzvV/PgAh8HcWA7JuXdkSdXXJ/PO6G
	mRNfOATtX0p6yXLnZrsTB5smfBAxQQ4hkE0a0=
X-Received: by 2002:a05:620a:4591:b0:8cb:b0f1:cf29 with SMTP id af79cd13be357-8cbbcff71a1mr354961485a.37.1772075541414;
        Wed, 25 Feb 2026 19:12:21 -0800 (PST)
X-Received: by 2002:a05:620a:4591:b0:8cb:b0f1:cf29 with SMTP id af79cd13be357-8cbbcff71a1mr354960185a.37.1772075540986;
        Wed, 25 Feb 2026 19:12:20 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2e52736sm1897381fa.0.2026.02.25.19.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 19:12:19 -0800 (PST)
Date: Thu, 26 Feb 2026 05:12:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: lemans: Add role-switch support
 and HS endpoint for tertiary USB controller
Message-ID: <af3af64f4v3kcm3up6exbwwakabzudaqiqpbpbgthszk44cu4t@obdo7pzjom65>
References: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
 <20260225093155.4162177-3-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225093155.4162177-3-swati.agarwal@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: fKKD94J5HyKzRj-SxDU5yAMjw0j-RxpO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDAyNSBTYWx0ZWRfX3rSvpulhRgzH
 RGNg8shZbPf0PIrBt1C0iIMWVhis1Uwgb4UkArIpH2l8P95q/40AvtJSv2yZjXUyGuGpS/t9A/m
 2mQG+3YavHYUR2kQrwwk3lYaviSpjX700J4xKsQJQq3rkQ1qEREN96gDjgVkvj/9FSnkMc1lIT6
 wagUC1IT3dSJytspMhN2N2p4KCZFqQRpOv+FXk95f8yuABVTHw2gs/OtRabTDJ5fFefQi8iWxFh
 LIllTKqpAOEB1SSZskxwPuHjmLDZNrKRjILVdWR56KC8OzOxRS+VjJzi5t4lqJY5mt9tu+smTRX
 ClHMcnLGRcLsE5tGaCwiJ4HbX8Lel+wKp3A2ssfPs5SpEaE/YsCcp45qpcJMyzUSQ4lS8mDIp5v
 nOKI5j+/VQkCzmVT9CsH7RW9YBkvbQhwlF2jbawlGJtEHvZIxWl53/vFFJnn4O27vms7o7K031Y
 l0Ad3DG1RHfgRBBXyWg==
X-Authority-Analysis: v=2.4 cv=GZwaXAXL c=1 sm=1 tr=0 ts=699fba16 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=4sf1UO7b2iwPJg_886cA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: fKKD94J5HyKzRj-SxDU5yAMjw0j-RxpO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 bulkscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260025
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268573-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2A2AB1A05F9
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 03:01:54PM +0530, Swati Agarwal wrote:
> Enable usb-role-switch for the tertiary USB controller on Lemans.
> 
> Additionally, add a port node with an HS endpoint so the controller can be
> linked through the DT graph to the corresponding connector.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


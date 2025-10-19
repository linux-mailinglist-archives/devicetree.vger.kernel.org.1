Return-Path: <devicetree+bounces-228518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D42BEE928
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 18:00:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8953E189B092
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 16:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 893C12EBBA1;
	Sun, 19 Oct 2025 16:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cl3aOc6S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC14155C87
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760889646; cv=none; b=RhTNa6dcdH3aXk17sETQnugfNY7pCOKgGwFn2KnmufZ/e8AJjnISmR9ceP2ZFvAGtDz0fjZ/jwftMyd7zdJeCcuq4065/SvHw4ucGnay1VlGpwXUC6AocKHHZKXB2Ise45RS3Qi5e+4thPwH+ZPxLiKbkKoGW4GXwZBuhJ6gPtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760889646; c=relaxed/simple;
	bh=Kf85A626unFOvqMadxHZ9Cr1Bq/4e78kA3D9mxQntak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=buaFWowNPxNftiXQabF9tL8AhBma+X8Q9svwL8W1G1Ml0FjXWlleZaCgdL1gaQrsAGinBLqz4RFK+WGGx0poxJhXUl+07KC+ldnejzkFrrCavL6a7UqcpanwTfuEdZQ+5ZeSBaJI7JCW9bHcp5BrXo0aAPcn5/FQA8mx7EETGyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cl3aOc6S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59J5qJZu030462
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:00:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=I0aOhuHfsf8NnOCKsGXsoFF5
	VUAwjGMlD/AzJt3MbXQ=; b=cl3aOc6Sy5pydot+kRNSrbkrFxMsjMCn4XrvpzKh
	bpf3Ug8jW7hWdR7wKP+GUa051yguULly1KjOX9wHKqyCwoz9CG1hr/L42bSmyCTK
	ruWSzOAAgiB+K4z9GHh/aPHnnHLggkFh+LTf9Fb4x9ZN+GoNMKgEOp+GXiRvlv8L
	f68H8OCb6ywMtZrm1rE2fNGaX9HouCgG7OplN0st47ppI4spbBykC/v96Flia6RX
	9zf0fGflY7wsSNr7FnJZeoE/WS5Yv7fhQ2AxJTW3mUdG9faUdxhGlMdyO/XF986q
	eX/uGS50zfMH7kY2EeldZ685pW7BEWSKkqw93gmrJ63NLA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v343tk9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:00:44 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-87c6f88fda2so77315616d6.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 09:00:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760889643; x=1761494443;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I0aOhuHfsf8NnOCKsGXsoFF5VUAwjGMlD/AzJt3MbXQ=;
        b=LlkrOyvXrbF4+walIRSjIRq2bnmpUCXpB749yLqj2DQ+/ZA7dOPpMhzEVABv8G/l3t
         sKSmjXEGLclDDCZ1Rvi0loE5NUuO420IOPtwro6ygzlxBNrUZXWEblsRk4L4O7O6ROCa
         uR+lCpADotvVUAQS0nBaXY8YgtjCi//nr5uHsJxa8iOsdIrYxxwl5TTYK/vTu1tOvtMc
         XjHNup8rzLFjD4B+tWss2VJe84lyiqvVdCEK0dqHmYcPPxt7FLSmEwX/E8MSlkeB1JTu
         mUSdT/ezJXEjjXKVo3Qck0sjRtiz6oiMV8FTgb8nGmeL4huore6Dv30mSpDfexsBoM5r
         R94w==
X-Forwarded-Encrypted: i=1; AJvYcCWpKIenkyjmLjdY+N7PlKBksPa4LJ99ZNltXwPjotYfQgFBIHQCxOxtCEt3Hf7mBMCks6UlIbN6f7jt@vger.kernel.org
X-Gm-Message-State: AOJu0YzrT4x6h5uYh91GzbPV2UIkwAmYY+/E9Z93p+YZwEdNrTsQRxyU
	60bqbHJSiwFR1dohBEY6WruC9cKTibyq0WYj5ehpWRzCYqjGeDV/si9f2kAtTTY90La9svMq/5Q
	D3axKF2Yxny2RWr0Qvelc0SgHN0hpJz4l8HB78MJV6mrPItaBKUMfEAO+9jO6JGpx
X-Gm-Gg: ASbGncs7vZEbPAP7vx09+9cBrsZOABAgtcHjrzGno9Yt87xfYhaxOjfU9v6RV5nPoZY
	bmjAf7Tly1dvdNyz9tS3PLgoyt9fRG+zoNq7CxiMJ7YXQnITHPknm9oHdv3YtTvkwDXuPxKwGl+
	rv3ny/xspb08yyxGV9RP2oLazsawu/kD3thyeGrp7H5yAHC+y6v+9PRtlkFeb9mfJJfjVau5TvO
	ldauXO+IRAqpZTmlOrBJUKKxGuizXFPNuSFxETU6KH/l8nC3nYXqBLnFSGVV9gN/5HCSmtKY6Q5
	Ox3dXtjFW4jslxcxuvbCltSWWsDu7J2kKpJLNznfOiF3XWhneMuJno+2ijkQDGj3BQdUHYPH7oS
	rDDE/4Uc5N/EWJamaBeClSapv7W2zjvqUhw3RLpOBAJM6wqyADkSRxW6UbVN7FLb4fPqOfY+VY4
	nzwmqxaWYXOG0=
X-Received: by 2002:a05:622a:587:b0:4e8:916f:9716 with SMTP id d75a77b69052e-4e89c56ff04mr156963561cf.36.1760889642834;
        Sun, 19 Oct 2025 09:00:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxIuS6L7f7xl2z7A/qtPnCnl8+CWdxgG0dYfEbSDh9YuNhHQTedtbsmxKzGddTEFlE02CDlQ==
X-Received: by 2002:a05:622a:587:b0:4e8:916f:9716 with SMTP id d75a77b69052e-4e89c56ff04mr156962901cf.36.1760889642395;
        Sun, 19 Oct 2025 09:00:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a9508d89sm15105791fa.37.2025.10.19.09.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 09:00:41 -0700 (PDT)
Date: Sun, 19 Oct 2025 19:00:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Restrict
 resets per each device
Message-ID: <i36io3dee54fngsiwavyzzxsqgfoxezwm26gi22jf5nzcmeyxc@kkd7s2oh7jpl>
References: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
X-Proofpoint-GUID: GTyZbv1QsBMmGQuPrie9wz_-v0HcW7xR
X-Proofpoint-ORIG-GUID: GTyZbv1QsBMmGQuPrie9wz_-v0HcW7xR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX3u/KW+Dg9X4F
 ffoctpi+ltBotSqikWGwIrV5fIZ6ye2gpz0HBHS7Jp7iC3rZ8HdIoMMdmnSUZrDuXKKVGU+yEFi
 MbqyApW6xmPhsH6XqgS30RP1hSsB+qT8IxVP5Bx460UjmrwSJOk8t8L+AdHbE7+QoF76OBCJh4z
 wH5IhRXlrpmrvldatLaypr/d3tU1mYE2To3cK37MxHvXCMJ5bsmCKxbpdZ6iguEBi7dE06rQsft
 Ir4k76UrMOjKR5adX+pgPhwRiscKD0710Ei8NWlVdnYd5VFTP9ru34DIHpcFL0b28ilKsYigB/l
 J496/lrlPy4M8kNr3BywozxWdluprROK1CrMZA1J7LP6Q4xy93tXcrBCRoi597IZaFbyrPAP9cW
 AQfp3eNcyswqt00bAi4k/S6AluKyCg==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f50b2c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=hUDxmADzl2bKAqMNfzUA:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

On Fri, Oct 17, 2025 at 06:59:20AM +0200, Krzysztof Kozlowski wrote:
> Bindings should be complete, thus complete the constraints for the
> resets by adding missing compatibles for devices with two resets and
> "else:" clause narrowing them for all other devices.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


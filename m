Return-Path: <devicetree+bounces-158745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C98A67EA9
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4192F7A2D1F
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3741DF240;
	Tue, 18 Mar 2025 21:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WKD8esFq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9656917A311
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742333561; cv=none; b=TjUD6rlNyXWNP6vKMYk8ro9S1w2MRlfsWhn+BIaZmmEqq4gkUvnVPYGgauudkMPZ+Tk+/T/Lk11KDxWQWgzPoz2AXRK8D5ZIlnpv5cs3Lg17YYXah1qnFXWv9iGaQkp21TLxxkjIZEXtzCcko7tovBWVDa2aN2YAN929ZKWSkac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742333561; c=relaxed/simple;
	bh=xCefQxY5eX5TyNCZN3Ts5F4MHBnzagPkrKVWljYA6ds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nNzV9YbNzjdl799Y7EieSZQNuiZqLeTT04hRwfF0lA1mSqNSdnu3mIr7LlK0mV9edo6lAmlbAErlGDwaO1douvj0+Jsnx+HaCZDL2YMOWH3snUDz+srzEMFKs3R9jChnc+VKmKscRr3CU/v/DovEUGwZiVBU753RVA7eIoaktxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WKD8esFq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IIBQAH005360
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:32:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gPOW806eFczV4bEYj1EqtuH0
	iSacm+l0DRcJzd65XIw=; b=WKD8esFqZrV95QoSeR3zdxinsFLgvlt0u8ZV3+e+
	jxfwffHHsek43tma6P/I41dD/v8OtZUKnhgTotqISLh1foCrVGsJ/xbJOk7YdguR
	ZWPcz+hKACRRSJxCPSAQ7aAp2bIJi4fJ52ZUOt7U9eJ+SZt1qOSQDAgl9eJqcVC3
	8HwaBYbNM9XMsgB+bYyADwQliMETakQf86XyHxJq87EqET5V23ZbFsz01Ath3O8/
	t8sahk7Ay7npnjNrcwkQ4G3tTvaZuvFFnLSTigy1fWPtVQdUcItb+nGC+n3t9oSZ
	o7qPwWV9i2lUAlsJU6irZmIsxJmeH2OtN6jpeOsosljoFw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fdvxgder-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:32:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c3c17f91dbso1058631385a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:32:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742333544; x=1742938344;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gPOW806eFczV4bEYj1EqtuH0iSacm+l0DRcJzd65XIw=;
        b=vjlhvk3wMJspgcfxXesvgUoX80KLh+TpfgVHp9hu23oRTXFmnrceCEGDgHlKdtrpp2
         DjioHoqyLGDkvuc/+CgSfcq0Yw+Rv0VSsHADqGLs5HP7i3TVaDMbQUuPrb3X8EKc7AVY
         sMY3yZyiW7G8qmTH7DwGx3OGJVQiLpSnlaGidlfXh3OdDQN/syfLlb//2/EWfAtlTYO3
         zFLlmt+pZY5ywjpsFM0Vpw1ysle/aGxej2U7fr1sDPljvRPEPYv2KmpKc/MdePKpZhR7
         Z7OeRogIZi0OLz4RstuJf9MKsH5IhvMTs73F1QusTiKRrk0xG56vzhcU0zpmYuuXRBcX
         aMJA==
X-Forwarded-Encrypted: i=1; AJvYcCUjfW+v2mMwDpt2yWEnOilshNx6Jr7sIlVNjWb+ZfwpHIRqs/Vl2U8x//KQHzH3aAHtWWgsJE7QjWbo@vger.kernel.org
X-Gm-Message-State: AOJu0YwneMw6Jtom6l+Ow+eLWlfnZ8doOuEy40pVNQN71MSo1GCA07ky
	rDADy32kWbYfGSN5pfhyx6CVwZi5pl/RUmTcMtKpxpripLAeAk6/i+B9Rb+z7DdJmNbpBHjEEU2
	Qr2RJiiGyzGVfwN8CVcY93lMVzTgkQoq7vs9nssUgl/jhhG6iXwmxNBRAvwJw
X-Gm-Gg: ASbGncvvEySUg3vwioBc7CMXKFHzjRS+zMeNDk4cSvI3mAnHpwczJWG8tC0d6MtmT3K
	RZRC5qbeRAROFquS0c/QIuV4KBse9qwEqZMHmnBMETgaTIIx+HnL88O6Q7p7u1CX+875tB8HDJV
	oYixzNLJktWXh7/TZ2/4ZgwUEOdcy4tQUnQAgK6xDwl5kYfnTHKffkG44NMBz5PWVtGiDdovBBZ
	Q9zRjc9KUTDJEG0yerSwveOzysoqEv0NZ5hIT/5Ivpqa1x3nt5GNVl+OZhxaPfgmLDPRmZ021rY
	8DUrfprrXBMmalCM0eVQedctKQZg/fq/MqlQwFicB5cESXacG1rx6oOKQh1jvWuPquUdHLmDHN6
	YzmY=
X-Received: by 2002:a05:620a:1a90:b0:7c5:5343:8c2c with SMTP id af79cd13be357-7c5a83d1517mr35364185a.27.1742333544241;
        Tue, 18 Mar 2025 14:32:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMdxu78my2UQBc4VCvzpYeoYb898Sl+qrEPDXLGkA8XwpYzSSkbR6Z5orjrN/urRBvEFLanA==
X-Received: by 2002:a05:620a:1a90:b0:7c5:5343:8c2c with SMTP id af79cd13be357-7c5a83d1517mr35361185a.27.1742333543863;
        Tue, 18 Mar 2025 14:32:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7bee7fsm1774919e87.54.2025.03.18.14.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 14:32:22 -0700 (PDT)
Date: Tue, 18 Mar 2025 23:32:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 4/8] arm64: dts: qcom: msm8998: Remove mdss_hdmi_phy
 phandle argument
Message-ID: <pxnpqoolslizrgvjvr3mblxz5hhedwx22xkhrwck56g7cdlmjt@3r7l5cmmqn65>
References: <20250318-topic-more_dt_bindings_fixes-v1-0-cb36882ea9cc@oss.qualcomm.com>
 <20250318-topic-more_dt_bindings_fixes-v1-4-cb36882ea9cc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-topic-more_dt_bindings_fixes-v1-4-cb36882ea9cc@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SKhCVPvH c=1 sm=1 tr=0 ts=67d9e676 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=flz5pWXUi7tf7Cl3TxAA:9 a=CjuIK1q_8ugA:10 a=f-3eBOmM0es_zl1mbYjY:22
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: YhKGGkpcnUhDXkMT91540qXum7MdM9_o
X-Proofpoint-GUID: YhKGGkpcnUhDXkMT91540qXum7MdM9_o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_10,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=407 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 bulkscore=0 mlxscore=0 suspectscore=0 phishscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503180156

On Tue, Mar 18, 2025 at 07:35:17PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The node has #clock-cells = <0>, as it only provides a single clock
> output.
> 
> This leads to a turbo sneaky bug, where the dt checker shows that we
> have additional clocks in the array:
> 
> clock-controller@c8c0000: clocks: [[3, 0], [39, 178], [156, 1],
> [156, 0], [157, 1], [157, 0], [158], [0], [0], [0], [39, 184]]
> is too long
> 
> ..which happens due to dtc interpreting <&mdss_hdmi_phy 0> as
> <&mdss_hdmi_phy>, <0> after taking cells into account.
> 
> Remove the superfluous argument to both silence the warning and fix
> the index-based lookup of subsequent entries in "clocks".
> 
> Fixes: 2150c87db80c ("arm64: dts: qcom: msm8998: add HDMI nodes")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


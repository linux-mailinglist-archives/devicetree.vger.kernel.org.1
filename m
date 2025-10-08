Return-Path: <devicetree+bounces-224540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D2DBC5099
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:57:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B02AA35330A
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A922283FCD;
	Wed,  8 Oct 2025 12:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IIbl+IQD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A12628314B
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759928198; cv=none; b=AIfXaywCF1k+Pwi3u/jjuw6WFNx2838WmMA43GPXWiPEVelzOWX8VW3layUGym9wLclAv+gCWJCIPCjgIFAKal6PhZxNOGjzqerAE5HNhl3kSBACc28LYVDwUyPDlgdc7Geac20saw/DHcYYos315oeDynhgj8Em3sAPeU0VHCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759928198; c=relaxed/simple;
	bh=1VuEM3I+wo+gJRNNQsGhpeUty/mbEGcmXM06dhM39KA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SA75Pt1SYE8qkk/3S3iTDyb1SPW5FvoWs3as7n4/wBDIMhe+Av4S48H44VPS1CYHiSPd3VFQRQykE+aKfKB6ZiDHzO0Om60HTRIDPDwsmBJXeWDZBIr/GNf1NUdzkF1/rPzekYMbc7m9wraLueAwMadBy5X59TxwrCS0R291Ai8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IIbl+IQD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890P0X011898
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:56:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hiCtiNo8qpPT2bD5wSeikfNE
	shBu8SbNM8ccn6WVAMg=; b=IIbl+IQDbyYec5n93I9xSrvDr9V6umKQqcMHSc13
	5a2OBGOWfCmrcUrGhIJSFxSCIbNzZnLOQEKbvvPVB1iCpYMHlvURQIiZJPob+/+M
	F1k0DIObpkfLrc3odcHe5u8UdXeQ62UV1Iz5wvAucXCvL/K/LVzWCD5phqquG/R5
	jN3WpE0VjMHZ342v6MsOGP/zHDtzWG1U0oEvnP4AP4zmFwQni37yxTItFsuBVfr1
	DzHbt1xUApCUM6N47IQgrhDn0GQLCEjvesQHcO5ESqe735MlaEgAnx3H0fXop64i
	K89bQJkDZhE90En1vVkrKsJKgL9Q11PkzNLKPuv86Yj0fw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mnkpwdj4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:56:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e0e7caf22eso204626541cf.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:56:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759928194; x=1760532994;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hiCtiNo8qpPT2bD5wSeikfNEshBu8SbNM8ccn6WVAMg=;
        b=m5QqYekuu1LTMOiFQkN68ijNYMVnwpHFf94s76iA5GuQkcY7Au9Cc3CHJHGHaKdNg6
         eIMUSs17dUrRNwYmJrwiNTpINrA5oGvKUDXnwnXxYM5/QgED8jBnrTg2UX2mDk449h+f
         ZIwYKVsYwaS065WdqJeOG1kNUAewO8uIR3/WZfoZ0KuGH4iDmQxz1Zc/DfNMxt32h49y
         S44TBsO6NGqcYcrn3BXJGJJ5feTrN/yBLtLiBrAnU7UFtJhF/QWLffvIQ+7qmekgEdlL
         2UC9i8XrMfplspYQTxzeD9+nj/w2mRSA4nDKYZj5AhytZW+HmmiwrIeAiH17jpOUAJqq
         ykcw==
X-Forwarded-Encrypted: i=1; AJvYcCX1jGzOjdcgMgo4MypfiS+cESLL8E+X3MpGkW3CZQkGu924lxQP5rY6nvp01YBSrAPwGfBNjHMvDbTc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz15jxOsrtq8TzzQgSUijxthWI71gUVY8gRadnZa9l0Hx7tXu0g
	mx8Zy0Az4StZKe82Wo1fvut4Vvo9uBIySB8D/tZtR4glAsHn5kU3SX1KXNuvASUezFI8OOeAPnd
	qKOhwJNdBy6uE+FQVe9xRUwbLX4IrASmmjqRoqln1mPOJJaNT2G9zQ4vQR7Tsbbrm
X-Gm-Gg: ASbGnctMyuY6RLL5j8eaVgwvFlYMpJ8yCHUMi0jj6D7t/5EWgyb36XymDnRJxH2zU8v
	IUUdTI8YU3VNsr60NLi+wGSOxxLwND7FDhPgqZjkr+QVCxnH5Beamr3vE7sAyzMswSRdo0Ius6K
	vrOrn8miT0ozFTRmDIrRhLzn90IF50hL/ehgrpt7rq/uKHFy8V1jW7VzJrLkTojPE8FZVAKuazb
	e/8jDSkN+PKRzON9AvgNitrgcMxYKt01bjrIf/xjwGboaUQ65TUzTlWjLDqq4RYU0wJGI1iWKvn
	XvxOCX00wFCW0EunCkSrQnLczj58/gqOWORAVOOuC7dEMDm4MfaRfO9OiqM4yXJY/v6LJvjM94i
	NW4HovyyEg0+wU9TOnxKO8NbFegwmtTdNBhL9DEltigu1AycirbD2PslJ0g==
X-Received: by 2002:a05:622a:1991:b0:4d0:fbd5:4cd5 with SMTP id d75a77b69052e-4e6eacb3cc6mr46912251cf.11.1759928194423;
        Wed, 08 Oct 2025 05:56:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhF0fqQEIszukwundy9NKl7UcbsMGK/tT9v7Zk57QUPhf5ki+jTRUeEtc46h45Talc6F2Zbw==
X-Received: by 2002:a05:622a:1991:b0:4d0:fbd5:4cd5 with SMTP id d75a77b69052e-4e6eacb3cc6mr46908921cf.11.1759928189856;
        Wed, 08 Oct 2025 05:56:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b011a7e5asm7195676e87.113.2025.10.08.05.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 05:56:28 -0700 (PDT)
Date: Wed, 8 Oct 2025 15:56:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/24] arm64: defconfig: Enable Glymur configs for boot
 to shell
Message-ID: <d3nyfefrqactlma56wt2kjmb2zj7tvul6hlphjtxcide5szshw@omnsdj7eqxrm>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-2-24b601bbecc0@oss.qualcomm.com>
 <wzhfv4v5urehjjlldsdznrnv244pdzpuolofalvj3cerscipch@7gkb5dvjwl4i>
 <d7125f03-ae6e-4907-a739-840b68593804@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d7125f03-ae6e-4907-a739-840b68593804@oss.qualcomm.com>
X-Proofpoint-GUID: 3iC2Iwiq4PAZkIxszJK9LbcPtqro5E9u
X-Proofpoint-ORIG-GUID: 3iC2Iwiq4PAZkIxszJK9LbcPtqro5E9u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDE2OCBTYWx0ZWRfX1zTN+NyGD/0o
 /I+6Uy/SpKaBLwJNOEohl6oxRyNynFahDSeeUG4XrQHYI2no7d21+IZqLztw8qv8GrND2ySgZVV
 IN/tNl3GEWjtZ4px63qtD8NKhj9tiBszylOfjDWqNBUhxlCCuvEcfosg7BBY++poCqwYSvNrsX1
 VaICLhfg+czlvMIS2GYcxlWXfdOEVdaIasptJXVHTDksoC0AkgmTjGtT3jEz+RQeyMLjaHrhOUV
 R4MfFDXXMfrU1vrijzfYIEBmgzMZnkt1y7rucyJR8OckhVOPa6EkfAj2ywImSUwH7HmvR9+NASD
 bZNLQverbMVFvpD3Tuoru4EsPxe5YVz7AHTttgdDCpyTIR4PnBmWo1Cy1sL6VBSK/Iuj8a52q+T
 UrVHKyziwVg4iYAnw557Jo+8Sd6xZQ==
X-Authority-Analysis: v=2.4 cv=BuCQAIX5 c=1 sm=1 tr=0 ts=68e65f84 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=HAf9aL_hb54jzGR_yskA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060168

On Wed, Oct 08, 2025 at 04:56:17PM +0530, Pankaj Patil wrote:
> On 9/25/2025 11:01 PM, Dmitry Baryshkov wrote:
> > On Thu, Sep 25, 2025 at 12:02:10PM +0530, Pankaj Patil wrote:
> >> The serial engine must be properly setup before kernel reaches
> >> "init",so UART driver and its dependencies needs to be built in.
> >> Enable its dependency clocks,interconnect and pinctrl as built-in
> >> to boot Glymur CRD board to UART console with full USB support.
> >>
> >> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/configs/defconfig | 6 ++++++
> >>  1 file changed, 6 insertions(+)
> >>
> >> @@ -1641,6 +1645,7 @@ CONFIG_PHY_QCOM_QMP=m
> >>  CONFIG_PHY_QCOM_QUSB2=m
> >>  CONFIG_PHY_QCOM_EUSB2_REPEATER=m
> >>  CONFIG_PHY_QCOM_M31_USB=m
> >> +CONFIG_PHY_QCOM_M31_EUSB=m
> > Is this also a dependency for UART?
> 
> No, it's a dependency for USB, commit message mentions
> full USB support being enabled

Please rephrase the commit message to make it more obvious (yes, I
missed the USB part).

> 
> >>  CONFIG_PHY_QCOM_USB_HS=m
> >>  CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
> >>  CONFIG_PHY_QCOM_USB_HS_28NM=m
> >> @@ -1718,6 +1723,7 @@ CONFIG_INTERCONNECT_IMX8MN=m
> >>  CONFIG_INTERCONNECT_IMX8MQ=m
> >>  CONFIG_INTERCONNECT_IMX8MP=y
> >>  CONFIG_INTERCONNECT_QCOM=y
> >> +CONFIG_INTERCONNECT_QCOM_GLYMUR=y
> >>  CONFIG_INTERCONNECT_QCOM_MSM8916=m
> >>  CONFIG_INTERCONNECT_QCOM_MSM8996=y
> >>  CONFIG_INTERCONNECT_QCOM_OSM_L3=m
> >>
> >> -- 
> >> 2.34.1
> >>
> 

-- 
With best wishes
Dmitry


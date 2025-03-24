Return-Path: <devicetree+bounces-160114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D26A6D8B8
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 11:57:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55B683B0106
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 10:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 614561A5B87;
	Mon, 24 Mar 2025 10:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pxAL2vnt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E9A25DCF1
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 10:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742813808; cv=none; b=P0TGsVUUibMQ0KPMSm+zVwTFbmxP3gIIAxjkImV6TSgyrBgZjO0FEEfrbyVNBBbx364+oO7OZp5Xl597kXnuc3py+EaSB0mNFKL4R1zJwBSbze0FI8ovx5eG6gaqabRK0YqMRihf1nRpEjpcxl3rjgCwk+SRh7oWpqeIdzzKfNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742813808; c=relaxed/simple;
	bh=kPYx8cgyNK+kHSQtkC7ctNP4NXMxSAtiBwiPNiHZre4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DkOg5ub+qRGFkbhczuKeEAP1uOdE4NYqIH1eb5FC6W4x1VjPhtpEApMQwXKlpBEVT9Cic/gUM/M2e4ust+wGyoTcqTxQgHtPB1rEJWn/VCjvVEgLkzq+TcRlY30/j40+hRYOG4PMO5siV1imGAVkLsHBabol5bCLQiA89U8znwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pxAL2vnt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52O9PNnL030730
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 10:56:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XDqyeQYxCMC6oQIBhg40FWZB
	5CKH/Iz5ri1KriEvBUk=; b=pxAL2vntZ2ENa/lRMqDeJIm5Ivg5QAmnxGSio22r
	5sOGbVMTzcqXFdhF512KImGQx03mXpemZRkiF+80QRdW1IEcRGhpBosjhyNbSOz6
	noIV2sKbm5pFbdJ8p4KeWXupsbn0LF7n8DZiTvJQzVybinFlL8RvrWsTH/8WhCNO
	tVXvQlyZTutDGpgwPhN9x08XHjWoUDI0PkyH4ghZGyNtTpBgu64VKw2cKnuQYC7Y
	Tchli7YC3VzAmZfTCyF3mFUHGWn2TX018/Y/EAVCDzSJBppZf7BUm83DrNfLtjxG
	3CGSzw1FwB39OZxiqKV2b1R8QpuRdbQrdoJmIbbENRpkyQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hmt042dg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 10:56:45 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7bb849aa5fbso1091798985a.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 03:56:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742813804; x=1743418604;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XDqyeQYxCMC6oQIBhg40FWZB5CKH/Iz5ri1KriEvBUk=;
        b=NmyTU5kEfY19UhhLeZS4WidzpNv7nJYgnEu3I0hZmslXmGi7RETZetAmj+CkkIH1V1
         uYio7eN19QJuKSWSoyIprj1JHCKbKgJvzxcaHeG6gy9eFkluLAodm2oLidUYC1vutmGm
         CvOdCYgyeEkSy8GSHweBXPPzhMHnw10eaCqe5tK4dVFoMR5rQJ47vmptelCszxxnIa3I
         +H9vomSDDKuK1+R3RtmwarSVeEPLQECNB73KRDG3/cLyOa7X3qv7ebAQQu3/0aTxn2GN
         ZhvYdYyABAgpTApm8vKr0/6Bb2ykRSZvPngbK/z4FtHA+MKZ7joI+z250L9hnw7uNhoe
         064A==
X-Forwarded-Encrypted: i=1; AJvYcCX9XZ0Ox+82CCTnyArsrBWz+jEuBrlezY3HKgcnUHgRh3TaBzZLL7TGsnlemoQEn57xCQpF8ZQCBxep@vger.kernel.org
X-Gm-Message-State: AOJu0YydP1MyLFpQrHKJlH7DKtmaRvOzCMbqCVWF8PtGQbg+kXPPt+8x
	fzc+h/gnQNc2anUUdGeaHuVnsp0f8rrYE5sUIctwgG2nvvtGV9Lgn0pgnqi6x+9SCsmfpFWuvYL
	7Rp+mGSi8YvVFms+oHnSVJwRaoqxAzBhkJjC01kig/uRMpAFKs8x2myJUAeQi
X-Gm-Gg: ASbGncvp/cYB27GmdmE5PcOwf8sa+DsZhAd46l3IjuFljs0doZCM/ei3AP7IHaBjzeD
	2Rmyn5KabBKjB/YSsWunnAUEWXB8PjKptXZWC0ch251SLwMQnPbrfSXYRqkCpptxO3OHQ1UVt9s
	DCv1jNJDNLUoHHXvw6YlejiScadvna2sMOraFm59yUkWkRN5Rmjfh/pwciqX1XVeto7bM5BGC4K
	HZKX9EUgKxK3lSFEu2Quebeaubcc+UmLZUyWL/TdWFRLrGN8hKqdOOwASyH7lyZlfnkLxMdGxJy
	Z0RiymOOR5ZXY89MU0hMzRcqmkRB5Ec5CPdmqiupXVH02gRYKwdUwmLgiyFlsVNoW2XSeUrQQd9
	IUPk=
X-Received: by 2002:a05:620a:269a:b0:7c5:3c0a:ab78 with SMTP id af79cd13be357-7c5ba14428dmr1425654085a.14.1742813804454;
        Mon, 24 Mar 2025 03:56:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHr0zZwwEN0C3pwdFAW2oW4ST3woWsczcIVhfpohhK/s4eaR0iSzFfgzBbIorwxbfn/58dsFA==
X-Received: by 2002:a05:620a:269a:b0:7c5:3c0a:ab78 with SMTP id af79cd13be357-7c5ba14428dmr1425651885a.14.1742813804016;
        Mon, 24 Mar 2025 03:56:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad651243bsm1078937e87.249.2025.03.24.03.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 03:56:41 -0700 (PDT)
Date: Mon, 24 Mar 2025 12:56:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sm6350: Add video clock
 controller
Message-ID: <2dt3oescrflodyud7mnnji5enj66slgte3cynrqp5bbmnie2vl@sjb2fv73xbnv>
References: <20250324-sm6350-videocc-v2-0-cc22386433f4@fairphone.com>
 <20250324-sm6350-videocc-v2-4-cc22386433f4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324-sm6350-videocc-v2-4-cc22386433f4@fairphone.com>
X-Proofpoint-GUID: TvgQ4Eg2Iawl2Uv8wGyyLUiuqlgzIXBf
X-Proofpoint-ORIG-GUID: TvgQ4Eg2Iawl2Uv8wGyyLUiuqlgzIXBf
X-Authority-Analysis: v=2.4 cv=aqGyCTZV c=1 sm=1 tr=0 ts=67e13a6d cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=1crZ-aHStTAuZ86CvOAA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_04,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=885 bulkscore=0
 impostorscore=0 suspectscore=0 mlxscore=0 phishscore=0 adultscore=0
 spamscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240079

On Mon, Mar 24, 2025 at 09:41:04AM +0100, Luca Weiss wrote:
> Add a node for the videocc found on the SM6350 SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


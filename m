Return-Path: <devicetree+bounces-217772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE9FB59309
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43BAF1BC19A1
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C32622F8BC5;
	Tue, 16 Sep 2025 10:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DmiW6rvf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5884D2DC76B
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017477; cv=none; b=OLEU4FJAwERLwsdIKtWZ4bh3qfDbKt2ULwBn7FhQKwXlevXIbOBniYDYIh4vTvOPw4yW0mMntVW9TO2Ceu7HlzRUtyH+o8jMxwCrM3yfej9EhakDIsMHU25DN/0mPHt5oZbeGn6pcRccJlfNJYF1Cm3cck7jZ/2rRvX3+9mmoT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017477; c=relaxed/simple;
	bh=Senl6G5y2kjgDQnYbNw5Eo8uk0FX5ScdfFCK2ebKnMg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LcU6tKTjHVmqXFGn+Zsj5if5wUmigMDXaTcdLuabhE58RjEbt1WOiYmknTFTsmt9nuNkDcX+9G7vld3BsocmJVsIjzv+opswiKiZScxP0gclZQbzomcem3Myp/ARWWKGLnRZ8MUS+mDvOx+fISaJvxzf70yrFVDzHQ10/Pjg0mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DmiW6rvf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G3q3bL012731
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:11:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4zWarvLQaWsU823mOnf/9QZs
	pHRdOWsN0EgD2XaoFVw=; b=DmiW6rvfu2QZrBXt1xcnd/cQeGrzTJgx1rYY1wv8
	9wJQXTuX3dFgY5AKJ1Ym8tAcj44YZKjXFinuXhy5bgdgm5o0fH1u6mRJP747fsqs
	FSryIrDKNd+F4p9o0cETFDdkss5mOlLVI+GFCfv4nqiKeLfVTvuAvKNPuGrYBufH
	07ViD+MCxAI9J6YcFnPp/4rc7dGAu5l0uAcTqcfOSNOArt1hNZqGIN5oboacPV/+
	R56SHkZHQ6vFEyyrMrjfP+GRqfu0Tn3+VLhCYUJB1dUkt/6kSno8rzlVWWomka97
	3hYW74tVD2R1m3I6tSaiPbIXboD2xKnEtkeq49nZzcRKhA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g12m4b0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:11:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5e178be7eso148559901cf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:11:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758017473; x=1758622273;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4zWarvLQaWsU823mOnf/9QZspHRdOWsN0EgD2XaoFVw=;
        b=uhxINzPLexAthpubaKbgm/7t3or/cZZEYovGdcqd0s+XN1osDCXDOTbz5ctiD1SvKR
         NXinBkvu5fle9s3KLV8Ift6v6DUt3JWbSckSCunxWxnWagfSrnmfGqwXeCIZkmH/jpLE
         bbB2jvW4hROoUFhvPNZcG4BiSmk0ceY8t1w39HLuvYRiMvpqcUlGm2QxZwWpiaglIXUy
         b1GB54DgYLVZAbF4YOJI2RE4TfmaZF5lGMEp88qj6Ti4LHFjulsoW9vv94AKydSIBWnN
         M+ErEpe0Yt037XrrhMnJOv57WoP/wr3JzhNIyHeDCPT8B+NrPtAj8bhIOHFU77TU60zW
         8X3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUAnTxL1+uU0ptaf8r04VHfgR8PuLDlxkVG76ZtwPQxn8rwSWtPWVEb/fyABcAfP/xD3z0lum51pyix@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0LVBuvcOm3t0ld3aVl70fF3IUl7677+E0r29NosQldMkKSKde
	cHKIvcw+jDi0EVkdcy8PJXZuyPGwgkLMyAkUUkhZRLuDXkj12Ph8ioSyEgbsf3MFov64eGmCUNa
	l+4wfsruSCFt92iVJRgnKaXwlMTgbOl8hGP65YfMjxKgwlyL33+j1MFxNbAnWUdcnvuFN8fRR
X-Gm-Gg: ASbGncvdqvGdgI77wdUYMG+eMB9d+cRYkvlRka4XnFP6uWq/7iy/TQjPwIc4srFj7E/
	d6cjz+Tz75WWqucQ/ZjqJ0oqC4RPGuW+PET1Yg9XnlSFhFjJePNAoJjtdBOEPWjyaUWoxXmtaMp
	MbGyRY+Qmaiv09IBsRHIZuHBwRUtduVMleZn2Lj5bdX+FBh9uAXHLyEpKkVhtZ2GIEgFzH4ioVs
	xx7s95d6/n+nqvNTaPcn1EmVra0iiTGE3yq3Fsm679CyLxLiv0q1BhNkDKrBxMJhsYzRBmWag5N
	xcEw0LIV61++PuyiPIEY4jG8XWyTv3tq7bAs4HNV6Swsdn1cGZDxuwtbNnSaEtNEbO+v2Nks1le
	hu44bp2f8MgmvTr5TGgEaOlQhE4qLRN+0MGhiLnWoJTomUi6fIXUH
X-Received: by 2002:a05:622a:4247:b0:4b7:a907:bae3 with SMTP id d75a77b69052e-4b7a907be09mr73861551cf.83.1758017472789;
        Tue, 16 Sep 2025 03:11:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2nSW+Tgo9EtUqjkqnT6uhsmX8sWmrNT+suj6UsQLiHDt68XvEFnu/O56i03mtbQPeIPMa4w==
X-Received: by 2002:a05:622a:4247:b0:4b7:a907:bae3 with SMTP id d75a77b69052e-4b7a907be09mr73861211cf.83.1758017472359;
        Tue, 16 Sep 2025 03:11:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65d11f49sm4336890e87.142.2025.09.16.03.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:11:11 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:11:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm6350: Add interconnect support
 to UFS
Message-ID: <nxu3omwiy627fqubg5zhff2cnyvoeod77tlqpcz4bqfkyfewpt@ob2la5knpnrp>
References: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
 <20250314-sm6350-ufs-things-v1-3-3600362cc52c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250314-sm6350-ufs-things-v1-3-3600362cc52c@fairphone.com>
X-Proofpoint-ORIG-GUID: NJX4jsu0HezfSAmHRqiH4EfFurjpiKIw
X-Proofpoint-GUID: NJX4jsu0HezfSAmHRqiH4EfFurjpiKIw
X-Authority-Analysis: v=2.4 cv=E5PNpbdl c=1 sm=1 tr=0 ts=68c937c2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=_cXTkGicC_EJ3ct5vroA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NiBTYWx0ZWRfXwXKu4kIE2vGw
 4eH03PC7oi7Z41/1Mw6NlKwR56O+Vky3s/OSqW8adAMT52w7xQ2ywNa3caobQgh6XrBzROqQ/vO
 4NoQwmrL9N+38bceipRA4UE4L2asLgJ68oslEVWjwWEvFzozWuq6bRxTkvO0fvsVGoHhxWEjIbs
 WaJ9CPaPWc5BJeZdESzkjeu5FZMoXfajTYg8vVtQqUgvt5n+IrPAO46jeLk6yGEPLcbjLojM+Sp
 w8zkLN4p9PUXVNgMtGBvXLyCdByvGmyCToWvzcaitLqKEbFRg6SQ3L89SZWT36mi2LK9O5o8MMj
 P/h3E/g6mESTVX3U3fydf7K/dx+ZOjcSqQCnXFfIz4mjn9klno3ZyvCHqL3rqMtxez86UmXDdn9
 EvZAVsZp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150086

On Fri, Mar 14, 2025 at 10:17:04AM +0100, Luca Weiss wrote:
> Define the two NoC paths used by UFS: ufs-ddr and cpu-ufs.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


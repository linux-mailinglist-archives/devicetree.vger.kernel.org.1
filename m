Return-Path: <devicetree+bounces-197797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D13BB0AC6C
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 01:01:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3879AC156B
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 23:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC7D226541;
	Fri, 18 Jul 2025 23:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eGdaFKpp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B275322332E
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 23:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752879685; cv=none; b=m+g0pgoVl+8NXOp/AtG1vLRJW+a6XWPj12ZbPxvAUyeeo/Hsm8S6yUd0YnRGcEuwjiYbqLIWvEIfQrl4l1mTB6YpQO2OE3dcnkt6wPlB2zHE8N+dRmCxlh8XXXtEACSqQcJ00lEpeD3HSdT98xhtBDLxUdaxWs14TJyNsi3GFqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752879685; c=relaxed/simple;
	bh=o1MhyC7RjS7VgJz0VSkaMv32v+76Isf0N7bHiSxUwrA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i6CH+HHpQqbt9WaKDKPUYzG9YxVNzAuBabgEjGA8H69F/XkrcKNWHUBstMBNMvuokM5eJvdCMu4MaVayy3+S22QzRoErKT9/u7cSgM8MXwrpcKNIIP8U35FqKrca6Af2arfwrbjelQWMqD1oEjlxkSjLVCaJ//BNFm4Z74LwY/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eGdaFKpp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IHSqEe007297
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 23:01:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xounN+Z0k90J1xcOu2qxIF/k
	zUJ4PTRWo/eJEBF8yyQ=; b=eGdaFKppVPxyOPbPOHp7874GCxQPuoj9aGXk3d0V
	sBFpfLndDHmxSy1sxEG7kivH33ulxXSlVwAFKn+PZOTf3Qsrtg9vbw+HhDl7EgEc
	7svHTr751m/gr/crMpD3FA8zIMLgCuiJMkHe7KIsWhx1Hk3eLcSj6UnlMMjbmidV
	mSyCHQcBpAbTXkLPMYmNS1GnxmPAC/VFl6VQ7+kBx6tAUu23un6d0Uq3U+i5QJFE
	08GHkE5mC8pOxEhE+fnGs88rDhr7sdBqfN4VJiNjKaFIe/AhBYf26OgWOC4Z3TkB
	WNv7RNBzuAq64HbFODJiht5RrU0OLsa1nMRYb7xRWLWraQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfcaeac6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 23:01:22 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-87ecabfe1aeso455553241.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 16:01:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752879681; x=1753484481;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xounN+Z0k90J1xcOu2qxIF/kzUJ4PTRWo/eJEBF8yyQ=;
        b=VAPVJ/+FxY6QpJJDyQpVIIQA19tKIYswjdcAZJq0GSgbQQwGw/O4YGLRpnRB3Ky3wS
         o7hJIGXCyIKxyzIWM5Ef9OEE4Xlx22L4TS+APb/EQXdEvrjUNzBhKmC4TM2reg98qHng
         e18Dhqcs4WoEXsob7tJXA0O0ny4zqcFCgoW/KLG5nTgokzzAEiLHKFqW+lpebE3+jVs3
         pLgwrqfCkLh+lFpIIW6un/hxE5qXNQx9U3YJR/GPdx0RFc3i3fcxkZpbpYN4B8rXGQiv
         wVOsdFwy2xS8T+Jd993LyZgzFsilOrHw3AUCO+dLCOYYzM9zgJa/Zd11oByNvXNskT/1
         PvJg==
X-Forwarded-Encrypted: i=1; AJvYcCVF4l4hXaWqp5W3dKDa9ZvD3EWCMrzxUWlK0lhv86A9kEMEGRBp5k8PaWfd7OjBb77gNa+/sqikY7BS@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/M9eW91Q2MjIojgcjNi1KpKp/mjybAyH5GHXeh8SUc2EQXihu
	d5Yrri0fWhkDwOUIUd2U8LQ1HckdvxBZUe4stEEihqHgFMluUSyqyX8E3H8jKGscZoQOmEOoXMe
	Qpu4mfPfGTetSrYLnmnaVQysHGmqJz6+s3e6YIml85y7SZuvXOAVTpo1cinPomT0f
X-Gm-Gg: ASbGnctU4QWc7mmGdsMepWRP09CtJ0EZeUjk9y1F8wRfMBftDK3bHALYwGoNqMS9z7S
	A7d6t3E0ZR2dxUwIKShh4GOhM/J5LXEnfna4QdamL7sIwXGEYI4rHwmKxuQiZNAcU/cmVBInLPH
	g4BQ/mm/vdtW0pLKGVJFQsHknXB9He88YjABfR5+rQrLC4zFpcTg0vb9IUfWRG2yVohMCtuyqbK
	BmXTIPOqWs/Js/4pGnXQQOwnogxB4tBg/vEcZOb8as6pgO9aZqPenUzMnCEKfDgDYFlRnprPOk3
	SlvLC28N3wmjI4cIyGDDK4T5IO0LP/iELZAztTvAFWOr/2j6GZwajkmLF4SrhNKclOGI6CBWfxf
	6wrwYCNSVxCq54ujR8Ro9s01rGbITHMEcyQGd35EMHBccHoEBSxYv
X-Received: by 2002:a05:6102:149f:b0:4eb:e04c:f5ed with SMTP id ada2fe7eead31-4f955a7a6bdmr6898930137.2.1752879681522;
        Fri, 18 Jul 2025 16:01:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgHNVAt2FNfbpkxkswFgS8/fnxZDo97stUFORKL3rP3beeFKI+AoJdG8668ZH5nxa680wOPg==
X-Received: by 2002:a05:6102:149f:b0:4eb:e04c:f5ed with SMTP id ada2fe7eead31-4f955a7a6bdmr6898826137.2.1752879680955;
        Fri, 18 Jul 2025 16:01:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91f0b15sm3730461fa.93.2025.07.18.16.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 16:01:20 -0700 (PDT)
Date: Sat, 19 Jul 2025 02:01:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sc8180x: Add video clock
 controller node
Message-ID: <f2grec2qahffqgeiirr4i55uv4i344bnj7qocapsjodev7rbdq@dptsliaosgjo>
References: <20250710-sc8180x-videocc-dt-v4-0-07a9d9d5e0e6@quicinc.com>
 <20250710-sc8180x-videocc-dt-v4-2-07a9d9d5e0e6@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250710-sc8180x-videocc-dt-v4-2-07a9d9d5e0e6@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDE5MCBTYWx0ZWRfX6dyDQjrZbb6T
 JUZ7h2Qzi0XpDXUhXzPO01uXi04mUweFnIekYNAWJ30zPa36NQmNbZCvn1fM1tRPTi6cR+OILb/
 7xJU650BtzNxvkeKg3brq5rF9NYpEHIZZ1DiwoX73DMu4AIC7O1589Pfcx2TtN2T9whb9tYX8b2
 mxfZ8tG8QB8e0DJF/t1cs8VoekTZ1xeJ6kL8I2YGhPkyXP8SuSy8Z64lMeDkxSrh1a/w3gUTwdf
 iVQHFVxfiR4JzjzKx+roV8vPlBMKYTLlZ1gwa5ymrtJ3ZA7LLAfMopB/aoA6c/WemBS0RCFcyui
 KZZfx512cilJSBTQzlR5SSuxhi5Kl3zYQmFLQiKTb15ha/aY1/jdFYUEVl5yqk3ZihpEglFlUja
 y4tyjFWMgN/4gJ/kXcP55JR+iN9N2wW8W5GDF5q1ZnwDCTBAIKF5p3sHxSGe6ZGuTWCt85rl
X-Proofpoint-GUID: _YvF0FJv0i1ERSokFVrmt9Xou-aFwZbe
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=687ad242 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=gRvX9a0DaF5FQXGff3AA:9
 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: _YvF0FJv0i1ERSokFVrmt9Xou-aFwZbe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_05,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=863 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180190

On Thu, Jul 10, 2025 at 06:30:40PM +0530, Satya Priya Kakitapalli wrote:
> Add device node for video clock controller on Qualcomm
> sc8180x platform.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


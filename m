Return-Path: <devicetree+bounces-217116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BA262B56D71
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:35:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0246B7A3386
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:33:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C314D1A8F6D;
	Mon, 15 Sep 2025 00:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="InJyrGx7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B85D1A38F9
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757896497; cv=none; b=L/14v1UGd0iqo7kkQztwLkCkkebj8+ba1oKrAqnCBYBo/ejLH+QQXXWTmpNxsC+700f16ZpNJGD5HYmdmvSS16dWqC/kUScrPG/xbBVa34nbK5fNMJBMILlCd8JNNPE7en/xfl9gI8JFF7+4XLH8/SVg3uEyQmu5RkYtk0rFtFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757896497; c=relaxed/simple;
	bh=Ap6BvAu67TPOd/kk2f3cFFCFX5r8s8b09wUwhreYot4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d/ljERYjsWK0J7EHFxvdkrg74HNOl64JNVgtFN4zibu/r7W0bUfBGWPUwLHw8Ie+2tJvGQkI4yP1ws5ssjvo5au4jN7GQdhD/2uOVIvkoYlODI0UypMZuIhyEtyk8mNOIp4haRPAJCkshKXajFhjltfsQ3+wFSW5Gje7M1X9T+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=InJyrGx7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EFsoMr003134
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:34:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lGewii8KU16KWNh30RwGnFP7
	62rCSny6t/W4YZ9CFUM=; b=InJyrGx7hsia05YukjgpX0Kjo736Trmhb+FKJ3Jw
	eu7YlLQ7erqwWnii0FRAqhmLRU2XTGI9atIEoqYRaz7LBzwMT8vjEijf/lfL3G8H
	r5HOG+8LeuiygPpnTRE4Ep+7Kq8VUTEX2QI+SVBI5Gh/1mPh/RBSSSvqQ6zhgc6Z
	5QQwxuMPdV7uKQlrkJVxoL+oXi70N7NdSwD3lhtKI9aISHpXmM03kE1d3tb/wkYV
	aDfJq7wg1VSQSYbwEskUJcQTErASM3r1q/0XRJ24TOUXF4lNTjozdLuVMEc7z4Pv
	6ebPMBCdfonWmQrVC2kQzruXgGb6XLrQHPFz2fe7UJOUHw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950pv2yut-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:34:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5f818eea9so74380621cf.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:34:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757896494; x=1758501294;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lGewii8KU16KWNh30RwGnFP762rCSny6t/W4YZ9CFUM=;
        b=CcLVS9TdHm5oZTd5Hys+cV8UaOdZZmhhhDsSiOy1Qdp8ql6a95Avb5t3bC9iXXN3Dv
         s77NAgUW5uCSBL6LRWxuOkaFjpyA1Y1Xx4v5IxxaAtAn7rzSybgydxuLmzqrwMJnsECi
         W5jWgqhrkQ7qsnvJun6EfBn/gpGxuxAdxdUKL3Hv3xOmQkUB9eO/i5QJ2EDeaPYAvaRp
         WOxbjSusLkjyPYcvS3Pjb9iFhG4atU8FXBCDd25qKmVzLXN+p9Y0IkWrWicU2ZxfMyJB
         y6iikvu/UMlfAqgXeoLlOlsU+WRNaAgC7MLswuT/GKkdQGg71l2KJKy9lEkCxjsUTybA
         UGiw==
X-Forwarded-Encrypted: i=1; AJvYcCXWdYQF3qde/SZmdjKh98S6FngXv+4Xh6d35OPniSoxbHKJpWDTDpL8K7lsHIsmlj/GipdaTYFpZN0O@vger.kernel.org
X-Gm-Message-State: AOJu0YzLCk0STLw7KTnVK/IM0fvajAosesdGSyn/xQ6iiqx25WsAKK0b
	NuWU5D+LoKCbRVvWZfU6FRw8BHf7wmm0dIDFQwD/pWdiya8m1SB0XbjEzt/34JQLgSnhiz9a05t
	RmnTaDRVngKB2d5WnLrjGw229U7vYzDt9YnpSCEH4pcvaahhVNumSFPhvYV+5yuK8
X-Gm-Gg: ASbGncv3CKyng6vhFFj1qfm0VnCqnXJbkOjTXb3MRswABD/UakVb+3MJWvKOBWAB4XR
	ZQYgsTgpjVSbGBebvQb7MYwFIvtTsu0q8aVGjG4Nlzlmsib0BjA2uepARpSDSpYMVXyIjvb5vml
	QnfUQ8A7kQXjroReyv1O4q+AO/DAc8caJI+5fsTwNeAyMZd7AnZfCHTv44bXZkgPfA2rKv4cPin
	FBrKvHekGMxLs3jhAmhJ3Pl2EOh0IZq0IYNJQM8fMKfELEm6ly6DRCcyxnSe06YxjXunF5p5vfj
	+ds99cdFJBzIbjEj8Wi8G6Gv4f4aPykO95KIUx64QvpTu4TOrRXqCAxRBqTwfPFTlL/CiuS+oDz
	110KEFQA3+DAqFeVafaDxIRegc97czdgprTIFBz2fdGGffmA1vMWO
X-Received: by 2002:a05:622a:424b:b0:4b7:9972:1d80 with SMTP id d75a77b69052e-4b79beb2e36mr41318381cf.59.1757896494587;
        Sun, 14 Sep 2025 17:34:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGK17MhvQUFlGwF5rLwpdOVGDSuvWgdkehTixyi7M88M9ljpaUk6U27iQhobiT/FdRmhff5SQ==
X-Received: by 2002:a05:622a:424b:b0:4b7:9972:1d80 with SMTP id d75a77b69052e-4b79beb2e36mr41318201cf.59.1757896494167;
        Sun, 14 Sep 2025 17:34:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1c014ca6sm25669561fa.61.2025.09.14.17.34.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:34:53 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:34:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH 09/11] arm64: dts: qcom: sdm845-lg-common: Add
 chassis-type
Message-ID: <ywzzmigvtlimmnhhk7pw4vjzbyqx4v2o33g75nmowg6t67kxgb@ptwjrg5i2zgs>
References: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
 <20250913-judyln-dts-v1-9-23b4b7790dce@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913-judyln-dts-v1-9-23b4b7790dce@postmarketos.org>
X-Proofpoint-ORIG-GUID: ScBPSUcLUcza5WrY68dq5yL5nu8Wby_F
X-Authority-Analysis: v=2.4 cv=PsWTbxM3 c=1 sm=1 tr=0 ts=68c75f2f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8 a=xpcYJZ5K4HInNErYrfIA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: ScBPSUcLUcza5WrY68dq5yL5nu8Wby_F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyOSBTYWx0ZWRfX8FjA8HM1zMRO
 v8CcW3s4zf5EMqdOD3edVxV5An6WVH4EzcRK/3Io2TULVUA/m3KnNisoKq9BGD8BSvbdylZJP7L
 VykKl9l0IWuygLUREZ2RlB/hq8BbClFilvM9g3IaWUIUn5WgoUijmzwmXoWGzx5dg12zMvuR2Ox
 ErlR1ws1DMn8rFWQsyzC9UwknAmsvjEh11BmnN6W55Ce+0K7otbvLpA0qP8vtDs8esbn87KZgro
 +56WEfTFaBxloM/UoRQUzJDT2ZEUFlPTwU3vkOZ33J8vSliomv1FwerMWqPwuT8rSs7f8OFxDby
 31qTybglCbAHt2+kRd3Ro75sgrLGPGdgOBQXYYiRasETWf8mFSc5iWi3uU0aEWbQINssjsnh/kT
 IW4LCxIc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130029

On Sat, Sep 13, 2025 at 04:56:42PM -0700, Paul Sajna wrote:
> The sdm845-lg devices are all phones, therefore handset chassis
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


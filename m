Return-Path: <devicetree+bounces-217095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 857F8B56D1B
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:06:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2ACAD16840C
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F22E523A;
	Mon, 15 Sep 2025 00:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FIYNwaEN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCACE4C6C
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757894781; cv=none; b=d/G8LH6Hxb1Z0p55H9IpgOTakvqQFgLENqq32FcUiAi0o5BeDUPMOb/QQrNIz5Byeyu0xvvUkQrkWs80nn9HNEZUq0J2P49s16rlrT4ZplFrzOf2sdF/kdJAHdAHp750gvsNJgXq+zK7rEzNCWg0v4We66vXsmfZqgpdcIXE9Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757894781; c=relaxed/simple;
	bh=Dqe1Cg5giHlE8FfDPw1ihTTHUPS9HmWkI+UbpNJRTT0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W4TQfcgc1rVMmKg3Lk6/mPS0cLO0yQmMG94TBZkMFeFudb7DiDrheRBZUeXUH7TKOd0MvuvwgtHKATrFC6HIzkD9JcBif/yScEaffTf3b2hMcsWpT3WMlsMJWw5l8lS3OCSVSafBNrzgXknjK8iFvwBtJTevPw/FiFuokl1jYo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FIYNwaEN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EMO6p4020431
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:06:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rUWfnCXYMbvlNnNtwmtXfPa3
	/YiLs33rLe2Pfq0TGqI=; b=FIYNwaENPjay8cpa9Q8tvr2UrM6XKJ18/sFEd6tQ
	8Yq96zPOV24iGah4DnF2UCsXQYO9eZtvkPad6Q6eBgATIWg9M0eWOYwvAM/dgCcc
	z9C6DmLd+WrRgNNlkAj3BjLZErAVVE+/FHxfRnCn0CShijIp+qJzVOmJrhSRvkq1
	+YqwYwv07aXuSwH2p57y7iKkeli/2PVWnCcSp1b70kRr9mN/BxYaCw1wV0FBcLtV
	Tmwoo+4Kg8OIjGkQPb+K+eJY/7QcRqTFfTsH0PP3SbKy1wymyZNy/8+STgEQCxKj
	yti1DpSGM2g1DhhsxNsS/nCA83fVT2IMR91u7iJ9iPdJMA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma301h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:06:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b548745115so95666491cf.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:06:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757894773; x=1758499573;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rUWfnCXYMbvlNnNtwmtXfPa3/YiLs33rLe2Pfq0TGqI=;
        b=pqVQoITebLZTf/Kw86egGSIwshgbaTFcfpYehwQMFVikRcZYtGLyxCmBLo9vXFgvZW
         k3tSTKTZKRNKg6RcL+83OjC7WAxmCVhIgWG8wNEr3g7jv0o6SAeWDw/1yFImRwijP2z8
         Zp4CWRwCuIjgCUNxRfVP8r3PTjt9TuXolFepZTrgzK89kVS5hkjFFZr+Hn2tI5X8I45d
         fYn74QHwDwARZwFpXdfmuUM8jBMWJSYN95VLk82PWoY7X7nK/bts6CwLYB75IP0s5Xrp
         949ijnLfaWeJOgQ/blu/6AcNw2hmTVgQcZwkhfBOGXu9PNrqcbjb2ub9ffqpI8uKL71I
         ORuQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4phKGseK0T8WM/eHjSFslylSppwQu2Cd/Hz4Ix9h/SWQY2VyMLrecVSie5pwfYWdVdw/24UiZbcg0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9OVJL1hl06jnjEF+ZuBNGOsrg9hTMibbpenNSPfrQpzepYCsc
	RQeGVc8RlHwrE41+lQze5c4sG7CFihz1VzIV6DuR6CTG702g9GS+GwHRkwRG2S5EwCpwvPsrzFK
	Pf8v6mCunksi10FGpccP3uaMzh82A8seU69N+kk+olfiVn7xR/yCBr7CPpJwN/WP5
X-Gm-Gg: ASbGncvCRREcDrvH46/NKNg0Ojb5SugfguM/n/AogZ3SDKWWqrj9qA983jDIDa4LRxz
	A5xvCdfBtnfmlbE2lwaxXfFxv70i3K/PRd1YxKYfZtjgTfNy/hQ2gKJjRYhvvrWTCdO1RFKa5Io
	qW6yqm4dxEjAuhRSeegjPQSqEz7lAawNCUYBqTGjcz3LptTk4goUMwvHvpEqL88ljS89jBm1y7f
	NLuhdl67u/bv5v9tmmCZpSfzutXTQMtYhkUJLLpZYSu1dG1JPUY0P1SA0n5OijLjLFVdkcYpMm/
	B8REsm7dS4ttprTQ7MnwLTVvNBT91Xe0ffqg9kZ3IKXsXJXCvsW2022DRHNKpifIoOd2uRmT947
	3+MkuTxTqy+hb+W8J0WNYk0/eQPgEHB4AuYTfDbvjoCr/z6/8DSE4
X-Received: by 2002:a05:622a:1984:b0:4b3:1861:f0d3 with SMTP id d75a77b69052e-4b6346900aemr188109751cf.5.1757894772752;
        Sun, 14 Sep 2025 17:06:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3PRvVn7znJ9Xl7ejGe09TyXRJjYQjtDCuH7AaFTaz9V7/sVQErN8Kn5Nv/AADIuzWW/vSKg==
X-Received: by 2002:a05:622a:1984:b0:4b3:1861:f0d3 with SMTP id d75a77b69052e-4b6346900aemr188109491cf.5.1757894772290;
        Sun, 14 Sep 2025 17:06:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57108354ab0sm2485995e87.152.2025.09.14.17.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:06:11 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:06:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-gpio@vger.kernel.org, David Heidelberg <david@ixit.cz>,
        Max Shevchenko <wctrl@proton.me>, Rudraksha Gupta <guptarud@gmail.com>,
        Shinjo Park <peremen@gmail.com>
Subject: Re: [PATCH 3/6] ARM: dts: qcom: msm8960: add I2C nodes for gsbi10
 and gsbi12
Message-ID: <5fai4wijjgka6gb7b7svqrcicq6amn56mhuxqozoozdpv2njhc@miynx5iswfet>
References: <20250915-msm8960-reorder-v1-0-84cadcd7c6e3@smankusors.com>
 <20250915-msm8960-reorder-v1-3-84cadcd7c6e3@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-msm8960-reorder-v1-3-84cadcd7c6e3@smankusors.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX9IouNGRAC1xt
 ijPj7yWFAcA6Q7nMwufdu8eh41JdrZ8t9nWYfdKxWvEvKCsRhMD2OvG90JNWy7o/MLkBFeIsNrV
 P2OacRarliKoLSSgReYyuInCTR5z5IUzA2t4DTgaVhC+SXIMw9Q7y/Zgb2CvLgh+Nb0A+Z8J5E7
 6QZg1o+ciYY89G5iBa8/Zjw60b7OhTex0ER4a2obW8XdKcL1cUprcP9Ec6unL5sUibJWrm+ix0T
 6G8PdDJabE/SbbburfsvV/enT3TJI8txXtbbUmYSjv8Xp2cSapW2+tlGoKcqrdmFc0SF4yWlew4
 DxCVVQjDSIgb6lL1z1NPvZLgET3sQL7vK2mWU3KT+6DgDhobkMfsL2rNTyn29tI/C35F8RbzGbl
 1bxBukt2
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c75875 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8 a=yphT_XpnuJS82ywStm4A:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-ORIG-GUID: zIDBg8S28wjV8B458PJx0RveQceG6oXG
X-Proofpoint-GUID: zIDBg8S28wjV8B458PJx0RveQceG6oXG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019

On Sun, Sep 14, 2025 at 06:34:51PM +0000, Antony Kurniawan Soemardi wrote:
> These are present on msm8960 and are required for devices such as the
> Sony Xperia SP, which has NFC wired to gsbi10 and various motion
> sensors wired to gsbi12.
> 
> The nodes are added disabled by default.
> 
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 94 ++++++++++++++++++++++++++++++++
>  1 file changed, 94 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


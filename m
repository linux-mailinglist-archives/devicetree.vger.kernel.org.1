Return-Path: <devicetree+bounces-161249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 295C1A7329E
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 13:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB2BA3B0EB0
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 12:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EE02144C2;
	Thu, 27 Mar 2025 12:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gAOtRGf5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFC71E52D
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743079919; cv=none; b=CS//83392K5dx91zodXCQgjuuKwDuGdrsXunYaajzPBLqrW3qUlk4T0wQchSKiPt3fHqj8G+EtqMXf0hen6sdLAWDtAH0WDqdrqcq5BIPxzzlQbJYWsNCNnl5ZEHen+GU3ry0ENdtIH53CbqalYJ78wt70uNx+wG2ckEV3NpxRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743079919; c=relaxed/simple;
	bh=pRLWHIKpxAtnCsh/nWytTFegaJTWyktX21VnT7GCvIo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Awd5i1otWMRUusWsq8VJ9na9ZyqRUj/rS9Qouj5gYczhBqPxO5e4FbyPQreGQpGfiEpRfEcbkETV50V4YPjS59WmJdp4y5EsN00Dsq5ia9tAvh2eYEzfRUwkNmm4/2SScPGpirRnqDSOZDkBW6uKvUKWVlpJh0Yv1UHQh3Fl0NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gAOtRGf5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52R5k3vR026007
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:51:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZBCOV1uS/N7q5vX7EpjTo/9T
	Wfdmz7+2VNj9q/T3SCs=; b=gAOtRGf5Nzmo64jBZiIHDDs3YAc/W3YAzO5z9R/h
	XNhqWje1P/Hs+azhIs2c6Na1UYsaAWm5ovfGaZa1zaqp0VrWMy4+/IWTVNqiLPON
	6mfk74eUNZdx3Ki1YKlvzjuuYfBDm4sVTTHBkvJqhCnBVISB1tULL8rfmQvIZGOW
	JdMLLyL1WYC/FBKGUOs55Biu1tpnK9JBwYlfjDzJPIBR+RTJBOTnJZYIGz7dHadX
	khKxpY8vxhrm+8sXk1BE4DjB090m3rgMHyAO0JY35t2HfxMtU0Hgbp9R0nf7D8rZ
	qpl8C+aiTIMCRvW/IkSxOGLg2HADmj6Ohzj2NVqd/DFR5w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kmd4rja4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 12:51:56 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c3c8f8ab79so142646085a.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 05:51:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743079915; x=1743684715;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZBCOV1uS/N7q5vX7EpjTo/9TWfdmz7+2VNj9q/T3SCs=;
        b=T7VhSg/sjA/uSxH6B+jcT1DYvlw93CT/QzWas+ynaDvpbW6zJg640e+UW6+idbcYU8
         Gd7FbKHeAyvsWpUQnqiaoQ/SZDd54M5Y5uhuCfq0Iobg1DVSc9jpzMtlVCOiCl/qH87Z
         d3Jgv1o0amcMZW5v4k7vclmEPTAdiUb/FtcSEk5kjQYHECXIMlERhZQqPit4tNmU2wqw
         6ZjqBQM5V37cqRLV6TYNFqXp1jcz3CEJAy3nZHB8ItD35ARNTDdu9v2OkNqFiUQ4iUBX
         EWTrceSwf2COt3Bo5w//Br23uj/hTwg7Iwqip+ZNbzoq/jH4YTTDtInsa+pLJSOvCTnU
         FJgw==
X-Forwarded-Encrypted: i=1; AJvYcCWoczfgY3yJik3FlGq9EI2/lqBVLRXR1+VeGHb7hlXETuxqofTSEwGNiO/uNt30dDemgG5S/z0qQLBt@vger.kernel.org
X-Gm-Message-State: AOJu0YxMyola//BX1XXlWO4MszknFrIuxfHnREEBrzLVTdt85/0WNxMi
	vIN+ZInUyRuJL8/MPDn/+gTSW5PUhN6bLIJE5VtscnoWdW20wKy+4KR9/xhEQt5FhYStJizZUah
	al4WOZOkDxJ/fd6+UWOZu4ASgWeh+gA6M/RTEVfoyoR7aVyWAY1G7cnU8A+uN
X-Gm-Gg: ASbGnctfFhBdmaVHda6yH8K9gx5/AxxzC7H2WpjFShVJ96ZmFWQiOreg+uNiZ3ag8rl
	GrELEoZa7vHz128um9YGedfhvNfrtpjBVgPX8S9iHDNts3ThC+P/p77bNSyrTqz8VlP9chirdQu
	8nBgUq+xGn4ePAG65FCT38WM5Obcl3q27+Jxh8MwZrwt+Y9MwA2RNxAEwVpODqg+aqddr6d+OKm
	OJeCL6A0dgyJ2zI1B2StGRsvUP7e1N6OZ9N8wWCYHLgODaf2sD+so/pCJWxiAyhoeec1fQW6bjw
	b51GVfn8T7PSc9eRuYjgISk+D04ZRtRHgAJAcFOLHb/pMUIeG5OzNBYKVU6F9L0O/gj6AvEqnWQ
	kJuc=
X-Received: by 2002:a05:620a:3721:b0:7c0:c3ea:6982 with SMTP id af79cd13be357-7c5ed9f1e39mr435497685a.14.1743079915415;
        Thu, 27 Mar 2025 05:51:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFuF29Y3nfHrrwUHt/LBXhkbdI4Z2Cs7fMFZYNi77Mai7aCOVA5UqjiL7PGwH+dL5lO9sti4g==
X-Received: by 2002:a05:620a:3721:b0:7c0:c3ea:6982 with SMTP id af79cd13be357-7c5ed9f1e39mr435492985a.14.1743079914922;
        Thu, 27 Mar 2025 05:51:54 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad647b468sm2073129e87.59.2025.03.27.05.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 05:51:53 -0700 (PDT)
Date: Thu, 27 Mar 2025 14:51:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 07/18] clk: qcom: videocc-sm8450: Move PLL & clk
 configuration to really probe
Message-ID: <bqhjxv5rrho2os5tswhl5pjn3s7gbdsuebnadptfaiml2dgnt2@aac5t7c4zvfc>
References: <20250327-videocc-pll-multi-pd-voting-v3-0-895fafd62627@quicinc.com>
 <20250327-videocc-pll-multi-pd-voting-v3-7-895fafd62627@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327-videocc-pll-multi-pd-voting-v3-7-895fafd62627@quicinc.com>
X-Proofpoint-ORIG-GUID: opxZuJQ8H5_emIUB3l08AIm9hnifgL9I
X-Proofpoint-GUID: opxZuJQ8H5_emIUB3l08AIm9hnifgL9I
X-Authority-Analysis: v=2.4 cv=QLZoRhLL c=1 sm=1 tr=0 ts=67e549ec cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=CXQnK64LRHhqnx0rWp8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_01,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0
 mlxlogscore=999 mlxscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270088

On Thu, Mar 27, 2025 at 03:22:27PM +0530, Jagadeesh Kona wrote:
> Video PLLs on SM8450/SM8475 require both MMCX and MXC rails to be kept ON
> to configure the PLLs properly. Hence move runtime power management, PLL
> configuration and enable critical clocks to qcom_cc_really_probe() which
> ensures all required power domains are in enabled state before configuring
> the PLLs or enabling the clocks.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  drivers/clk/qcom/videocc-sm8450.c | 54 +++++++++++++++------------------------
>  1 file changed, 21 insertions(+), 33 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


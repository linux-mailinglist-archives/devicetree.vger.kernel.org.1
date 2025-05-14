Return-Path: <devicetree+bounces-177442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D69A7AB77D9
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 23:23:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70C6C1B6739E
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 21:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4AF6296729;
	Wed, 14 May 2025 21:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CLebyzUa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A5B29617F
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747257821; cv=none; b=TT7iBZ83lBvoyGOlggOgzC1Lb0ePgqxuX6Eb4yLfQ0iNj+fcRVWfkzHTc3QzEQC26JmfTFsYPrZDzMezeKYDD8WFoh15+SiaVhj68gJG2iLPmKZLxzWu+JIw72cSVah15j5Oz3S/LN3w06th4PG7KjXj7y5lzf1ztGMkdU0kfEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747257821; c=relaxed/simple;
	bh=BUTPCdxYE0KBSr9Fr+4DkW6Crfw+tCtmVXfSMC+Z33I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bSnlBn84bmwVNW2mg0C/34GgAi1su+IAF6XFoyNimqaVcQeZTafgb3j9ivxUJQ+xDZchDcFSCH02TMajtLrQnO9Lta2Zoi9+bX8JVhw7mYJwXVNY9GLJhVWtoduWUqCFawn+z/6y7xRfBINT2OXiYUzWRJ9Hg9tUB9EyqNsVf+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CLebyzUa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EL6t1j003093
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:23:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vaaYWPBvIHzxnTRnla3Zb3Vn
	Q4iu9qj3qxbcJAJI5CQ=; b=CLebyzUaTFAHK5pzea73BO1Vs7S5P39S5JrVgMVh
	EzzBrre5Of5EEAn2Tb/IfbwknI8g6Ar00GRkEA2JLSMWDpgbpeJP0kO1R2R37C4X
	ghfyat5MNDmBNlN5G3VdRqdf8rVU8WL6mgZ7Ax8SicF8yMwxPn7DQ+9/j+917sb+
	hN1Oa4FHKGdYE6+wMLvKFwtWdiLJtulROtQraGZA5X/Or1Ddi+K0+LLpJ/whj0Qn
	NEpvuhexLuWU10OyFxbJ1W1YLdZlwIRfZw3SCVRzw6wrQAgYqXtlHeYKfjOVGQZi
	7yDJdMUz4xI5fRFFHrI8Dy+fScc4Lhp/BJ9YAH5sA6ZXpg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcrc2vq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:23:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c54a6b0c70so21947785a.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:23:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747257818; x=1747862618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vaaYWPBvIHzxnTRnla3Zb3VnQ4iu9qj3qxbcJAJI5CQ=;
        b=kIVTsqhvb+xBkaXHUCozkCyyiklmqs+u53jlhapA/tRGXbuGcrLTM/gH9mSLf6ggY/
         HI52rAiqNJ3lH5YVJJb2d7q7oKxMuHWsWq7JhTwmbQGVny98rVE4ev2M9UxXIsgOSSSP
         YSy1vnCWOBVUuCdBo9SfPJZY5sL2lOlz+Rm+PuVgdsQ2WyZODm5zOAOgM0XuBMZk5OO0
         FOwr+4KRsPPT2GwZX/yx+Cly/dL9XYhzJBk3grB7EB1tH8cmKSc+gHzlHZFIsCI1kWS5
         qjjDpmpZrzhuLX78Rg/PLBjJm0LsH6spxGUsEulku/fyl52RKDoIETw2J1VhsidAjv8K
         3eug==
X-Forwarded-Encrypted: i=1; AJvYcCWKG2vIFNCCn2Uq744y3dV6sKgQ2kPqrripM/0lLGWumietxRcyAFSWm65xuwX8ruxyjx6VtemIQUle@vger.kernel.org
X-Gm-Message-State: AOJu0YxhGvYu1+mg/C9Z/U/d9Gaoha5EH+o35Q0bwDELJmQr/5A/FIc8
	ISeMq6LQTn/6eiB5Zwujb7xy3p3FO4Z7+cWKjdrUTCZwoHRzjlyU0rHT86/MyArAZS9IdvU98Cq
	AQhxY0Pu97QWqY/Q0qY++3E4TX4ehQfwYGC2kAuY4la2KmqJm2+JOWeaFvCnB
X-Gm-Gg: ASbGncs99FDnuyTMk6UsqPkpzY85XYSCO7cE0vcqOEtbSrbH4uUyye66LPveRhx8ruZ
	XveDCSOKT09Mm8czbnLXpqTRqJs/UZE2mF4whOn3qTDQjbQ2SGer6trTbo1Yo52d/S+e7Jjku/t
	/J3B1gDUQ1Oti2KFrdPA5D7+SfR8hcJjnFBe7f0EWCbB304kLETAmcZaa+soJCnTHR1f4x6/Ab0
	I7IYcx9pc61g84/236bRFaRThPB60dKav+kkB9QnD3l5L2pnrNIrxDCzVY8YYr0mUPdjZJ9DCFA
	7ZXURhUtT6T9j4XxDxJXpQoiDy6BpULdg5wcFBLZ3SNAY/MTwHSOEVhjOz0u0AfxPzPI0xHRaas
	=
X-Received: by 2002:a05:620a:f0e:b0:7ca:f41a:4844 with SMTP id af79cd13be357-7cd2888fad9mr834860185a.53.1747257818067;
        Wed, 14 May 2025 14:23:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKk/aEqt1gPJl+u51T5UjY95/XJdn9iYDGEHP11yzCdYiBQxpQ5KUK8fADScjUo9PVc62aHg==
X-Received: by 2002:a05:620a:f0e:b0:7ca:f41a:4844 with SMTP id af79cd13be357-7cd2888fad9mr834857285a.53.1747257817673;
        Wed, 14 May 2025 14:23:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64bf8ecsm2380641e87.187.2025.05.14.14.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 14:23:35 -0700 (PDT)
Date: Thu, 15 May 2025 00:23:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v4 17/18] arm64: dts: qcom: sm8550: Additionally manage
 MXC power domain in camcc
Message-ID: <7csmi64osxghv3mkcxwfhxlwodzwvpbull36htrkmcjzngbgk4@go4wmvfvhqst>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-17-571c63297d01@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-17-571c63297d01@quicinc.com>
X-Proofpoint-ORIG-GUID: yIL5L9xOnD6hqXEG1jGcnybe8EpInjr1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDE5OCBTYWx0ZWRfX6SSnbqEiL4AB
 tglbxQfXQgNrSfBziu0arWhVN/vuQgSmDhkdcZRTCXY3B3k4T+u3R/08OiMMXVw/Q3kSGrAv/I8
 wZEH7R1NELE6vv75X+uA9ylRCp/v1cXlf/pJTxlOnubtV/ieFF2xxFwSvDxxEpUwPQxry4DMFfA
 Q041777jzBIaYz4RdhwgoKmFsu3Itjo8PExG1OQX7b5ZXldRzO4uEMpmnzUQiv/bICS4egeaY99
 CxlQj+PCBUhUUsSJ9Annf5NmGzbcahS4afXn2V+ppvbRDzvYTruqHWRwLXIpMdQg9wu16rSRngu
 0LGNAaL9j1oBO8fPOvLaCzMPuTHYPLolTVWuiacZ3RwbXr3bC2IV0L9dZHZzjVhPNoPfOZc9WRJ
 oVKmPpZ+AuTwzWBbk5iQgMoMddmOFb5dArfWbFraWuaJFaHBVf1NdYfEDH7pbsDkdJdSNUip
X-Authority-Analysis: v=2.4 cv=K7UiHzWI c=1 sm=1 tr=0 ts=682509da cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=9YvV8F1douotiZniFPIA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: yIL5L9xOnD6hqXEG1jGcnybe8EpInjr1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_04,2025-05-14_03,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxlogscore=520 clxscore=1015 bulkscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140198

On Thu, May 15, 2025 at 12:39:02AM +0530, Jagadeesh Kona wrote:
> From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> 
> Camcc requires both MMCX and MXC rails to be powered ON to configure
> the camera PLLs on SM8550 platform. Hence add MXC power domain to
> camcc node on SM8550. While at it, update SM8550_MMCX macro to RPMHPD_MMCX
> to align towards common macros.
> 
> Fixes: e271b59e39a6f ("arm64: dts: qcom: sm8550: Add camera clock controller")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> Reviewed-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-211628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85551B3FBD6
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39B56166571
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 10:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CA672EFD99;
	Tue,  2 Sep 2025 10:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SvgMUzYx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E742EE5FC
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 10:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756807644; cv=none; b=UV4xg0m+jnDjwDyVFVeKTzWhVYhjEBazYotY8tQljchQLeXrz2K3gCxmvRpLazX1C47lFKKWNvNd2DN95B8Yr8WaPxlYo/amwGYuEILgq2+EHagDDuDU4Yi781e2o++RRaNI3kHPiMeg/bn3T1Jd6+2uQloCJtHuy26QkT/Dn5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756807644; c=relaxed/simple;
	bh=SH7iW9GAQZcbs1Y11U+SsJVQU2myZgWlogyzSHF5AvA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=npr9uYvOhsgz+9r3MX1rIV7GrCqSq9gaIeRGDoCUslk3hj2UBeJyKbA6zB0Ic/Gri+MFxnw+yfVdxxBsvdai3tWQ5AqJC/gh/T8ZUxHoRKu32jTDF+xaD/kdLAOphnwmprhIrMMAvJcMNFQf0yy7lNaQf2A8O50NNgaX3QJJ6cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SvgMUzYx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822RqDR017322
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 10:07:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lioLz+MVb+lNAwEehrq912Az
	AcaUt5myxr/iYapOUHk=; b=SvgMUzYxGKdZZyKPhp1OwR6qTyNBlKhCOywOuZjT
	m2PHwjCOpXk0RstPf8TVPfcw+I8DnE5FYwJH85mR8yL3WAGkdRdBAt3KZ0J8ff0X
	tu3gOSYtQgcwXmwFu0SrG62EqNz9UlkzJ5jZecOdMJeNr/ilnazVs2rJV9HRUKNc
	LB8eLtxrT77Vj0vnUb6rT7ipr51cDfdEQE0OCdCwt8NgFkYzIHN04CImk7Q0JhZ3
	c4mmP3OOpAp3kmW39ju/kvvuC1l6KKP7R/yxAWLWmKESkC3jLmJ5uMCnJ1xh0VFu
	JWmXuHIlQ/SNQsA9nXpYpIB4dIj81gu7jnnGgI7Sjr3pEg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk8y7d5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 10:07:21 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7f2942a1aa1so1410070285a.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 03:07:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756807640; x=1757412440;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lioLz+MVb+lNAwEehrq912AzAcaUt5myxr/iYapOUHk=;
        b=Y+k/JFXCuuMfOaYZBLr1tEaUGVXk6LGw9avmfholgkR+kA6XRZrFbBZtr0FkRKxXR4
         0FgzzP7Vvu1ZmHWT6Fpbo/3NZzOC6gSiVeIWtTtTIiGKo3QPNbm81cKBCoQRWny2LP5m
         VDeK/qykic4TIHFxlJ2Mq1lxjFFzfdwXa1LZ7E3lvvbaMYUpT7Q8/jY2u307VJE23suZ
         VVWwr7t78g6DzuJpfHlZPyunMec+sODPQHQsUh6jHvjBJobwhVfHdWSOGnECfc8HDs41
         xmspMKiIIPgojE636f7RtYkE56MddDgbwxNpD2+ssCfaePIkFyMzf6cdkeSmMgGj9Mn4
         peAw==
X-Forwarded-Encrypted: i=1; AJvYcCUnMsoeFMK9EA8SEHODa2rPFhlXdEJ4nyfxP42JOndbjuaRkkkIGGunJsamu/NmolVS9v1ebMD2U+AR@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx8NYP7o2Lt0J645LxDjKTUMlgVZKamq35c7gPGWk3FpX81bAj
	lPYrcwblqda9gWr4Ur3fj0DdxEDaGAl8Exk+4S/MYKbtMbEBPIS83jc02T0NY5WyhVqQC6mFI7Z
	R7cuAU9E/X1wWR4SpMljzC3OZ1wR5tN5UhZMBDhvKFTV7xGF6/6WnMpXrC7RsSywJ
X-Gm-Gg: ASbGncsVNe3DMZcgZ9TGhAaukLmSBDKnQ7YFBmWkGagTlj+S3yPwv84HW7VHpz7ayf8
	bst1HytApKyK3kP6EIy7k+ZO95tNhG6KZxoirNWQTzls1dEQQxu+ePfHkSUEUkWsbirL4d0hC4Q
	XKah0ZGJqNK/LSXNrt26JmNrcY18wEafH1R42cH+fJmiq0S1aAymr8koZthGh4eYfdbNabsrIoQ
	gIMq6deuJjsnNJ6fPCCQ4SvpVvetFKqopFhkYLRb/zAJcqmWgHV+S0yGgtd2vWnWAK+NtsiONvp
	i0YMG0gKJexMqu4dpuXkr+2E4BKu/q4/k5P4m5A5zV5qWvEfMqH7jprl8lLsJYr8E2zYslca5s+
	Qpda0qk1sZMb2SEA29nj+y2bIkn7ggXhYLXL2VvHEmg98lPse0eGE
X-Received: by 2002:a05:6214:1d01:b0:70e:782e:b259 with SMTP id 6a1803df08f44-70fa99552edmr115899526d6.26.1756807640320;
        Tue, 02 Sep 2025 03:07:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgdoQnMA6U5z0bGZ7Wuiih/B4hBhoB6kk4Yipx1tsvtcSQs2cJZx7DcWOnC6cpn/6Cs6Hvdw==
X-Received: by 2002:a05:6214:1d01:b0:70e:782e:b259 with SMTP id 6a1803df08f44-70fa99552edmr115898976d6.26.1756807639672;
        Tue, 02 Sep 2025 03:07:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c50317sm3922901fa.2.2025.09.02.03.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 03:07:18 -0700 (PDT)
Date: Tue, 2 Sep 2025 13:07:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 8/9] arm64: dts: qcom: sm6350: correct DP
 compatibility strings
Message-ID: <37ax7uhzopemvmz5fgtayzz3hmnxmfcbyjhwgfgkdglynuo5oj@fud24vsqodnj>
References: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
 <20250829-dp_mst_bindings-v7-8-2b268a43917b@oss.qualcomm.com>
 <20250901-defiant-illegal-marmot-7ce0db@kuoka>
 <abkkn4f7uca6tzjasltyysxecuuirxxvbjz6l6re5v4z6jlmuh@ugz6jtw6vo4n>
 <ddd0f518-f9e1-49e8-bbaf-b810adcd35b3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ddd0f518-f9e1-49e8-bbaf-b810adcd35b3@linaro.org>
X-Proofpoint-GUID: aaZ4evgJKeKDD-b8tJgmKCCj7vjW3LVl
X-Proofpoint-ORIG-GUID: aaZ4evgJKeKDD-b8tJgmKCCj7vjW3LVl
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b6c1d9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=1RLsJLrTPffC7TqSMS0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX+Vaowef0jGm7
 4SsqJTKkAk0DerNPCdq+CSzumnZ7fXS1y7fpOrhQEyM5HLeT1QmN4cuEuLwnbVT6WWgDpNVfp6e
 I8Rvowd59SL8lQlt6l/G0IyVArP0fUVNKIqDGhTKqZgh5PZJjW6qSU/+8j3JLOjSyYADknlf7xH
 +4WdZq4E7Oiml1SfOh4GEVYKdCU9cRLZwkHK5dMOAwP7AktHMZh/vHNHeNHG+cW3jH73IqBFTm5
 whl7IrnIXClMY5U17C4mrNs12Sg5DWOYIdK5PrRPRh0QiZmRtxFdMSxPue1wu7O+C2CbtSCFTug
 gWaDXmyPjrNd5EH8rP+uvr5OmGxgz7FEGs63Ihsyj4JmL/N0K6BrtjG40C4mLaeQLoaohs7vnR1
 0WvTnxAr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

On Tue, Sep 02, 2025 at 08:07:22AM +0200, Krzysztof Kozlowski wrote:
> On 02/09/2025 06:04, Dmitry Baryshkov wrote:
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> >>> index 2493b9611dcb675f4c33794ecc0ee9e8823e24d4..8459b27cacc72a4827a2e289e669163ad6250059 100644
> >>> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> >>> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> >>> @@ -2249,7 +2249,7 @@ opp-560000000 {
> >>>  			};
> >>>  
> >>>  			mdss_dp: displayport-controller@ae90000 {
> >>> -				compatible = "qcom,sm6350-dp", "qcom,sm8350-dp";
> >>> +				compatible = "qcom,sm6350-dp", "qcom,sc7180-dp";
> >>
> >> No, that's breaking all the users.
> > 
> > WHy though? Both old and new lines are using fallbacks to bind the
> > driver to the device.
> 
> Kernel has sc7180 fallback, but what if other DTS user does not and that
> other user was relying on sm8350 fallback compatible? That other user
> won't have sm6350 dedicated handling as well.

Oh, a user which has SM8350 support, wants to support SM6350, but
doesn't support SC7180 DP? How hypothetical should be our users?

> 
> That breaking of users I meant.
> 
> With the kernel it should work, assuming SC7180-dp was introduced
> similar time as 8350-dp.

SC7180 DP was introduced several years ahead of SM8350, if my memory
doesn't deceive me.

> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry


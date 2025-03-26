Return-Path: <devicetree+bounces-161007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3CAA71CE9
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 18:19:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 294AD3A27AC
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50EFA1F9F47;
	Wed, 26 Mar 2025 17:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WkaRsmdO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70261FBEB0
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743009430; cv=none; b=YEFX/pWkNcH1ZXd82vlf+7cLWZ2q5t5brJAVJnAoYy+RXla2X5U7XdZhkSbsYnkGxb+ttJzMIKSvugtdVunsIvSJfPyVI/exdYD8H4QWoJx9v2xMd0eeQ4Sh//gTDkv7wapLYeVkj4/h5VvRdHL7aUV9H4je89fkj2ZhrYY4TxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743009430; c=relaxed/simple;
	bh=ULQll42SpXp13/9+pqAM5sMEpJ0dbiOa04Hrg2p6sXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W4t0td6kRHWwG3atDOYQjVSDorktlzKmEUDq6nGJvmM44ta4R63Zd0CX4ygWQDckWLNh6+FFvlvvAdsMu24BpTRLpt6k3fsr/nurWRFTZln2xIBs84hnWfdURyi30D9p4SP8uEbjYQh65/VmFTK+2hNd9cRhLcQx3Y4p1KWxJdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WkaRsmdO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QF5mfa012815
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:17:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=57VyLFaymf8F9QU36mtSjFzj
	QMz+UO59TFULkEduc7g=; b=WkaRsmdOaVzXTCXblrwhQ7etqbA9GJ8a7O3AI+A9
	N0aYAr1dPUV3QNo7t/pkbcW+NO+iEvGg/FhM9wvxzlzKbVGoaLdaOWu7Lus9tdWK
	eeWnWdgTGREkjZkoH5mPlJs1uDrUOyPamsEQE1mLHUM0OzXHwjCbcktrPOpLn0KI
	FSSHkY/5RPHbY9o1KMFMG19zZmEHRmsbOXHQbdQ0KJoxLe9vNpN/+/7n7qRP9ra+
	CfXNNIR7+oMYjE8KbVScA1tOl8++kb1GHuf//T2T3RnP/3cSkNmNum80TBXHlhqa
	FjGMwnYhOGsU9+vVp1znwKEYZ0IKzEzlto7Kl3IB4VCVRw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kyr9kjv1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:17:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c593ce5e2eso22929585a.3
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 10:17:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743009427; x=1743614227;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=57VyLFaymf8F9QU36mtSjFzjQMz+UO59TFULkEduc7g=;
        b=Kp9HLYef6vzuWNHaJUB0GYmW9d9232UeDbyD4LKHSGlXikIvuBnSHBa3PDn2Pe0mHO
         JbSvhkIQu2TlOac55k5OLrI2RIR3kgNtuFUL3VaWbzdf2+JPP6CXsh44GRcsj7klcT+1
         kgPhI5P8Fhgjr2YYvZjIVL0Y0/Br8SrkPULFFGZUs/qKkJ6lmrasPn7wKs/2N07W2Mg4
         QYtf6xK4O2Fz0ArG2Rk7fcS3PZZ6kSGHvOkiKYSR125P8RLpKNA+sYSxZqMbeLx6rjvA
         77Y0Sjwg1diqQRlmkQSBImu0YA8c6/FHfHsxNczhI+FEPJHFf5AzT3+VI3FCyZdMHEx5
         dygQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWy5LExasrX281hiVn9lhxiPLwPTdn0OoUCornAW6rxTAaH+UzgeF2kNZAkDsQCKF5o6Fxw1r2OsVH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7CCRzLe0ISQPHa7st3kE7b+ZD5ZUkLEbXmz9gDEVYZ3O3TR9T
	NEdDEmF8yZm5ZvyBPbInmVUBU7StJnpcAKNf2KbBJzeAJux3f3uYPYzyOJkpAPForEmzaEEhlWX
	o5Ay4RXZvmRemgRggfat8GpUHD/ailE8VP9mgumxl+p2JMExHSe9iZvem5Enh
X-Gm-Gg: ASbGnctljKcxH4HuImuVt4XhCpU75UQcScI3puxPnMqNA9Lz5zIyslxF4KCK6ANZSm6
	UUsL9BwKisTkUlsZdneeUhx0m3ajBc1PSA2V0mi8jaU3Jf5DWqOTy4y+EZof4DexCffXMUhYlqB
	molgq3UnG3Vc91G2cpQIGcE0plY4/4e4oXbU738RBzNOIXGujYJFggRQP0lrrp2ZYl5NrKkqpyp
	hEYDD6PnzXXCcRG3YeNDMT0ARPwEnkje72svmaK+0XGThCe9iAV/o0fshQr+iYqjFvO3+DJ1O+X
	kqGRph0giDgR8JaaNrO0rmKN9CC1juoJ+Ax8f8xTnc67A4dUcsIAf2NqsW2FFAfu73w5fo7DEqm
	SNMQ=
X-Received: by 2002:a05:620a:2483:b0:7c5:df79:f2f with SMTP id af79cd13be357-7c5ed9f2cd8mr77467685a.18.1743009426602;
        Wed, 26 Mar 2025 10:17:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZVayB4qjwN0UyX1tnhJiLkSyjaqLbzhmrB0L0YbneGkZGXSc7GvgkWAaXLuLzkuqSASIp2Q==
X-Received: by 2002:a05:620a:2483:b0:7c5:df79:f2f with SMTP id af79cd13be357-7c5ed9f2cd8mr77462885a.18.1743009426112;
        Wed, 26 Mar 2025 10:17:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d8f4280sm21672611fa.73.2025.03.26.10.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 10:17:05 -0700 (PDT)
Date: Wed, 26 Mar 2025 19:17:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Christopher Obbard <christopher.obbard@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Rui Miguel Silva <rui.silva@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/4] drm/dp: fallback to maximum when PWM bit count is
 zero
Message-ID: <jbowz36pz7es7koc3abi3maw6ytz4auuobhkmkqelvwavilqkr@gxgsdhao3skr>
References: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
 <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-4-e9bc7c9d30cc@linaro.org>
 <2cfdf7f3-56a6-495e-83cf-1921a2e0ef8d@oss.qualcomm.com>
 <CACr-zFBFpqgHVRiH37ooeVJ4Jk1UA4AhP5J5L5yV8_CHBTG07g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACr-zFBFpqgHVRiH37ooeVJ4Jk1UA4AhP5J5L5yV8_CHBTG07g@mail.gmail.com>
X-Proofpoint-GUID: V2_eGurAveLZCaubaacjx28t-g70CngF
X-Authority-Analysis: v=2.4 cv=UblRSLSN c=1 sm=1 tr=0 ts=67e43693 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=cpwuP4bK5o1WZ1zuufgA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: V2_eGurAveLZCaubaacjx28t-g70CngF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_08,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 mlxscore=0 impostorscore=0
 adultscore=0 clxscore=1015 mlxlogscore=980 bulkscore=0 malwarescore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260106

On Wed, Mar 26, 2025 at 03:08:30PM +0000, Christopher Obbard wrote:
> Hi Dmitry,
> 
> On Tue, 25 Mar 2025 at 22:53, Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On 25/03/2025 21:21, Christopher Obbard wrote:
> > > Some eDP devices report DP_EDP_PWMGEN_BIT_COUNT as 0, but still provide
> > > valid non-zero MIN and MAX values. This patch reworks the logic to
> > > fallback to the max value in such cases, ensuring correct backlight PWM
> > > configuration even when the bit count value is not explicitly set.
> >
> > I don't think this matches the eDP standard. It tells to use MIN if
> > BIT_COUNT is less than MIN, if I understand it correctly.
> 
> Thanks for your comment; that's a good point.
> 
> I need to re-read this section of the spec; but at least on this
> hardware I printed the values of the registers and it seems like
> MIN and MAX are the same, so I could switch the patch around to use
> MIN in the next version.

SGTM.

-- 
With best wishes
Dmitry


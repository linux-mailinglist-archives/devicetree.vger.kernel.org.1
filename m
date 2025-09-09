Return-Path: <devicetree+bounces-214795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CE915B4A6F1
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 11:12:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9490C18881F2
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 09:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8307B2868B7;
	Tue,  9 Sep 2025 09:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nLKhNHL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB5D275854
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 09:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757408984; cv=none; b=qx9DFCPNLsUcYOe4jQ1FqDIez5aBxW6ur6yXTnBg0bcqVqKHwORHbTY/Xpoya6Unhsf2PQDrXT1R1wZ+BzqYxYALJ3sQMKivw4WO7UDZYn+4lPSDA109gnR5oFvL9xMeRJpJYvVCZWg0lWH3U22bO7G+uoTKQxC0liPE40aCGwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757408984; c=relaxed/simple;
	bh=+iRk3GZBaP2PL9IMjGaAxI8oj1q+MIx1QCjF6rwLYrc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mEp3v37bucFriC2rby9vBH6yZ8/DvTeIQ+pRH7Ymf2HsEewQYxciCzK+EkMjeGAtEGvWA+ji6+8pg4hRpGcgAXETJBmB6x0Yhp7XgMGHhLNtttpejawaIWxJbaRgt3h20tPbYz6Iflx/6Cp/5zbHYH7wINXxNtO1c6A5ZRCT/ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nLKhNHL2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896T8Yx021764
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 09:09:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xQLSJJKoOAxMywKNQ5ccnaCy0rBzwUBIGaUQg1SaW2A=; b=nLKhNHL2ewzJOPud
	lZhZtHzpkeoIViVIMcU7VaJf1n28xgKVWSCY74A8qqc8NAsyDfDPdgpNfqKqs5S8
	DALDhvWpu1iOU0eZEeKh014H+CYEOpDICzIvxMlPWJus7mG+vTUN4h6bt3qfUMDH
	raoRK5dImM2TjFOePAWN8g4xZcgx3keguaBxIibSZNzQUrGaAqjJB4XakATEAHqz
	JYk9zbodMs8kWnhZUhgKP0OcE/rqc57I3sDRiyfNHOd2O3K62rq1rgRdydDLUNIZ
	2BHXMxLQ3EPK9L+UizGxe8aL00oltypYg3Hx3Rps+iaVKr/LafMXbKmeKswA7izl
	xOaggQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8ypuc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 09:09:41 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-72a0a533d63so3933796d6.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 02:09:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757408981; x=1758013781;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xQLSJJKoOAxMywKNQ5ccnaCy0rBzwUBIGaUQg1SaW2A=;
        b=gsxfll3QyFbuWy/rVr50oW77zivM0dFO4kOL5EhKdYFZ4ztma+OxO2KbZI0jKhDEvy
         e+GiTMOOgLTHkSpdchrb5OoIDnGxrYcEn9/8ue0ILkK3/pyAezxqDuBdR/krOCiLreUw
         eQzokdSuqK9l5C/VbNRScTT5fZb8wgZs8/eJDtdf57vMvlSRhN+sFiGuzd6LleSPw44N
         fWwYetOgKre4tLvGzI3Ra5OZ9FMqelGj2WXVbIaRbmmb6lUPX/jmp/gx5iX5WmFkE6qp
         TV/3nAaOO2F/RuL8spMjLNm9PJnS7UpGYwEtenthM8UTrIUxI2FwOwdpN1P2viUhQ9U2
         94Yg==
X-Forwarded-Encrypted: i=1; AJvYcCUKonEHU3KZ5WzuJW2xbr3I+qYz8EV7Nxp7/9wvPwv87iJxzt1EB4HLVlmzsp9c5QkAawx0Tnup29gr@vger.kernel.org
X-Gm-Message-State: AOJu0YzmBBzTFYxHYeat+KAlsBWhACKD0nqkChjOziV/r/5isBw0U1lL
	gIWdz11dgacd0uhoG8jcDPSqtHPl7RKiM4MwYju3EKD09bla5ayA4kaK1PTxH/f8Tw37EaD9Equ
	MK7ZRQ15AdpnDUnS+QtFuRIf4PUC9oE8mja8IQ6PV0x3Ze5taRjrTTsYp9DOM/+6F
X-Gm-Gg: ASbGnct8ffkSquiWbLSSeChNUZX6iFQ7l+QYD7CPSNGpQQz+wXJ+sgE6IahZnQG34l8
	uHOX8P+IL8CRBRL8Xn7PsT1lnGpFzInA6ApAdsf3nZg4sCKvuuCvloQEPnkI8n2BDQNNywnabS7
	YErpLbXUFrDy7uA5oENP5oFRbf+jQT/b4dMCWppQvgHEf7H16UQfVFA6sWqbtJvzgOESgCnGWMS
	ZVe43k0tOyzaMxkZXT+SGTZaIA9yDv2SQD9WD5uLGO/9OaBQ9j4a1tIdO7l+NW0LuVnOiJFB83x
	BVULTQQ4InhcqnS7W0XRWDx32PmGm/bB4uMri25+8739zLKZBXIYUsdCHciqfD/MLmBUpUSxQVK
	ufaT863a/55IhX67gq1crBQ==
X-Received: by 2002:a05:622a:190f:b0:4b5:f4c0:5fd with SMTP id d75a77b69052e-4b5f8531717mr75858891cf.8.1757408980779;
        Tue, 09 Sep 2025 02:09:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElaS7VsMyAK4sn1lpqAU55/RUqGD6nhMUESe+uEL6+M2kFs4PMy1dM3B8kVdWzzm0FbO3i4Q==
X-Received: by 2002:a05:622a:190f:b0:4b5:f4c0:5fd with SMTP id d75a77b69052e-4b5f8531717mr75858671cf.8.1757408980330;
        Tue, 09 Sep 2025 02:09:40 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff0d9b1b53sm2545589166b.96.2025.09.09.02.09.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 02:09:39 -0700 (PDT)
Message-ID: <b879cf3f-4216-4fe8-94a8-48244efbffd4@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 11:09:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/6] arm64: dts: qcom: lemans: Add GPU cooling
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250909-a663-gpu-support-v5-0-761fa0a876bf@oss.qualcomm.com>
 <20250909-a663-gpu-support-v5-4-761fa0a876bf@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250909-a663-gpu-support-v5-4-761fa0a876bf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68bfeed5 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=7IyadIS-_L4Ux7daf1QA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: XQgRiiR6nsiu8Df5i8fpKSqqID2GHpM5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfXxgLCn7I274RN
 AGu7h1h8HDXO/ScBmKU1eoyLfRNZ9bUnc8mvP00WT4bQw1TzoJkJXes+jNuICArru/g+wTcd4qs
 hJLmQHp5hLJlrkUaEP0e0Cl4Pldd2Fqral5KVu2lywkjvCA/z5F9mRLhAmId6ZisB60+mCu4oaK
 lug7Mv/u0nM/HlCTzFqt/yWDsEwfgcNu/gPr1+diWbDNYNhuBcDyFQIO17HITveIVyT2V4o+jnu
 S4KxKb0gHUr3q/KYllZ/wGHgWd8zjWyNsiPLKfoeX6qleRg6fuSAiMkfl7A1UgTWNXcpWUqb2Em
 FpZtN4xte/E4SD18Ka9THrs1b7EjiYuSV2HU9l1G1gXiPabYWZSC6VVHebtW35JSoXcgFv4BFrw
 YbBg4RjK
X-Proofpoint-ORIG-GUID: XQgRiiR6nsiu8Df5i8fpKSqqID2GHpM5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

On 9/8/25 9:39 PM, Akhil P Oommen wrote:
> From: Gaurav Kohli <quic_gkohli@quicinc.com>
> 
> Unlike the CPU, the GPU does not throttle its speed automatically when it
> reaches high temperatures.
> 
> Set up GPU cooling by throttling the GPU speed
> when reaching 105°C.
> 
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

you'll probably want to turn the 115 trip point into 'critical'
(which is fine to do in a separate patch)

Konrad


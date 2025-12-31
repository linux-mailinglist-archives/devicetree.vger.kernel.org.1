Return-Path: <devicetree+bounces-250813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF864CEBF61
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:29:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D4106300644B
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67B3C328638;
	Wed, 31 Dec 2025 12:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e85aK0XT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qis+Kvhn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB3632AAC1
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767184174; cv=none; b=eLiXjztyd2BOnZY8GTOZREQYdVZWspu5WPeIZlzGkQQOZxd3txZICk/eD4eBmw+h+9TOyiddjKzEdnESqYVxhKN2e1tnpIjo7FsOWJrk8c0Z+tEsIRFva3o5C05fdfDwZKcMysS73T1TpB4psH/ZhUwgGHYUu9HSjCrM+EUpEIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767184174; c=relaxed/simple;
	bh=bkkABUwp/F6fICqUxbIiVM61m3GHA2kaRAtvcOEMVzg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cVN4sh1QW27DwgTgiAQg2F3gzH4EL0lYJkohlUHae8Y0W96P0izdzMkeVhUB55U/0Dr+5TYIMtEDxkc2GTWDCCsg49q4uIPu44tc5Q//qR5Kx9KANpRYrPWFGMRZwCgaxhK33efW7WlczYiyyO7QfNppIUanJ3+klMyQ7/NjGcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e85aK0XT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qis+Kvhn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV5Gl5a3538683
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:29:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KFud8qCRw7D7DQF64mtGmDdTqmMXZ97Xc4c1B/Av8pM=; b=e85aK0XT7X6B556g
	rSxyb4cR/aBwAXUbyRNOcVz2c+e9H99AQXq5xS9XRXEfpes7PKwtVHRQRte8T/12
	ymrAgYI30cJoBKrp+D0r9b8EtAP4mzPTd7YuyxkHnT8khKUy68xOuR0/CcOuka46
	D8pOTkH1rx0J70wek8q7vjW6l0hD6S0uiF6lCS75DebTMSVwBLNBGKSOP30zqvCL
	L5i9IbPWnOVEZSAEoMjRtC3BLq23yT+j8XnfTzkndecFzf97ygjQePjL7+07txuY
	TXTXWBTZ4g/t4qdKEr/lexZrQKrGG3F3YRtEbQwCC81lbnJXm4s1seEKW8xOMvzb
	rVj3zA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc88ykhfs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:29:32 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f357ab5757so48490991cf.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767184171; x=1767788971; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KFud8qCRw7D7DQF64mtGmDdTqmMXZ97Xc4c1B/Av8pM=;
        b=Qis+KvhnEers8YznYVjUS5vL+3wYSv0w3QzacyOwSlj7SWPnIC7m1LUBnYk23M4ILL
         Z0JlFxL8CmJvab8zBO3S+6sVkX3+H3a1nQeX/zwWTQKKpOPAvc/gB2vwEguSGIoifkCN
         Q4doau+1pL0K3LsMrkkqPiHtMy55t645MZJERzqxapAq9AnXV2yIdWJ3FReY842mmlJV
         tY/oZlzaT/WKmH643IMXm/e5K6j2wSpquVJJQAOZwUk8I/giCXY/JS1SpLb9o+nVb9ss
         Jelm7W2RlCEqECxP94/4iqnkZ5tefK/+6PDNwiNrtCuGUjQEIqCjG9sp7gacDixGVOp8
         sMwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767184171; x=1767788971;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KFud8qCRw7D7DQF64mtGmDdTqmMXZ97Xc4c1B/Av8pM=;
        b=Zfc0h8B7EikDsJlXW2IDzm/4d0Iyc5VUGu9DNwuUk1Lizt9hgQ8xrSByqzcdXGX0Ie
         ucufNHU+HKF7WM+TA823NYwSp6b4ywaGkeRjDVeU+YmQYT6kN06tcFNjaRLNFAlQikPd
         3VUbXgEH6OQILeT8LVCDSVYFoMzYRWojeo7o2m49NskH+HZjuDIJjOpgjCqzcwjOXaBh
         L4WrkOdv64KhP3I6oPUaoTATSPReASiA2IgnW/qGJ1vAwTEpkBMMZj3FJkgNfOLuujRp
         uHA+0Tqn4FgfdWOVzTeeYtSsr/wTspiISMkv+m/uZhd3SHi3Igv4N+q3jIyxh78/tSgC
         2XuA==
X-Forwarded-Encrypted: i=1; AJvYcCW2oSCt0Miqt8Vpf1uugjvn9l0bzzRJ91nvrytbFbes18wXghEv4TRYHGEfLwV4nvWpqRvtW1QMYVit@vger.kernel.org
X-Gm-Message-State: AOJu0YwSAHGD5i1ppjxtN25wvNxbG3tWZIrA6oRhdY77zXwL6ef1169q
	Dmd7O0KkAYFeaXVtu5n3e/WIyRx79aMGz1uT1v/nR1rjtzekDAMZ5pQwTcrcHjgELbnapBL06B0
	M0tWYWotxLOH0uYlGumYPsnK53w+b+KReNXOaYRa7yplTctCb5eK/thMw2rMQCm+7
X-Gm-Gg: AY/fxX4M/zGz3Qrk68i0oYfVaGxEa8VpyFRoAGO3M0fdzIxAAlQWGf//fZ3uz7XZ555
	8yjR1nR2ivocJhhQIP0EtuTvhl19hMhpFbO7aENXbCFcIEWWL0JThJncPDoIATH43e4yKrO619c
	fY2/D29eAnjZhtuuZtw01aT2ixeJ1/fz4867Z8mBMaaYRuJtvP5bB893NxX3AQpaXwAF65h/tkX
	UN8r70frvHuJ8zqdMS/vZQmlWvH4xHwUdL1KI2JxbVE9X2Yq+Stpa3awby3UWRZCoIAPRtn5Smv
	Au9C+WFPwqZwStyGrpJ+eIBXHkBxB4jOho+7vAGfpZM/iZxcRFaNZ2NlexvSNwHyzgyHxpI+Y4a
	7ja+rOLp7WXx29nKOxazA39JswnmI3KnGOMIa3XCvzWsp+51PNq53Iel8QOH14EM2Uw==
X-Received: by 2002:ac8:5891:0:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4f4abccd72amr410542421cf.2.1767184171265;
        Wed, 31 Dec 2025 04:29:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHhDVqUtx8723JBX42anoDu6k15qa+jqxNz2Sh0hjnvTQAr+BDlp8CHnTosrIcyTDnpDaKPvQ==
X-Received: by 2002:ac8:5891:0:b0:4f1:840a:c90f with SMTP id d75a77b69052e-4f4abccd72amr410542181cf.2.1767184170897;
        Wed, 31 Dec 2025 04:29:30 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ecb9sm3877057366b.56.2025.12.31.04.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 04:29:30 -0800 (PST)
Message-ID: <f30d26e1-068d-4af7-adc3-9cd03617ecd1@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 13:29:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/8] drm/msm/a6xx: Retrieve gmu core range by index
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
 <20251231-qcs615-spin-2-v6-1-da87debf6883@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231-qcs615-spin-2-v6-1-da87debf6883@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=POcCOPqC c=1 sm=1 tr=0 ts=6955172c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bmOu7kEL96IPmD5EUUcA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: SpokUha8z819nf0B-b6k-e5LNDXCdlFM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwOSBTYWx0ZWRfX1yo9Mm56YSSL
 4OE3vY5U1I9ikMhBLl+EMPMYrOdLN61JC0FK7qpyaASWZ+B28rszARlkqwdGTuf/QyVuF/7Fcw5
 4Yx2GzdN5LjO6o5FJzD/LMdBtB3cnJZt0ShxGc66IhacGMi42k6DbmbhvtmcqXlLZ9q26VSc0R0
 Q+HL0/MG+3ZbIZQaI0COKzgUWq1S44NiHkJzxqODvJA9rl3ZQHcrVh734oRFjuvgDtZ/JQU/8Ny
 0FaUicNaisXfQkvX/Cqsu5piHGEVsEFsczb/10wn87lvDLx+51AhoeSvWrzap08gKD+oEQ4DF0Y
 K1MnXe9KhgzVDPi1cI8MT3aUvpNFh1sJx/K3b0GdqiIXxqzgipPJWW8ohSsYOXspSIy0LQGBkXb
 0HTu27OaAVf4GeBDV8Jrl152SjnGBvRwKVMM0CCJeKXbpM4fKaxFTFaWWbJkGATXX95p0VCXXhr
 cwN4z2NK4mlbYEa1S4A==
X-Proofpoint-GUID: SpokUha8z819nf0B-b6k-e5LNDXCdlFM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310109

On 12/31/25 9:45 AM, Akhil P Oommen wrote:
> Some GPUs like A612 doesn't use a named register range resource. This
> is because the reg-name property is discouraged when there is just a
> single resource.
> 
> To address this, retrieve the 'gmu' register range by its index. It is
> always guaranteed to be at index 0.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


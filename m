Return-Path: <devicetree+bounces-239400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05552C64847
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:58:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18AF23B0C8E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8317334C05;
	Mon, 17 Nov 2025 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PX/4W7hA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HsYVMytP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A553346B2
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763387434; cv=none; b=qDuEZgRVSMO9syi07qASUP0Qm7ZcuWQbJxgMHiCXKGvewRac1TPrkKvCRBCmtuvC3u+E9jQlvh0WdzLfibjDWJ1qWDc16oyW+w3dcTFRBY5gHyZbyztpBdy9j1LZlH0tFRPaN8pWzu8EiPSMWtOVUZODNob43L4jW3BFEAwsBrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763387434; c=relaxed/simple;
	bh=HMlQVCG+R/tnnr+eT5WRAPtdgzvwu0W9zCEs98XyUEg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q0VRhxczRsF4L4EXItWMQDInoZHZ/mPg50zNUGfOurtFR7LiV8BPK9iaruWagc7D+NSCaZqoMWIhSgX8pOpxBVhqP8JvQ8RKYEKOnyJApL41e9f1150z7Znh4GhERimwS60S6cBxceeuUeMscIhP/I0nj9/IuEds8g0gmiBaHow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PX/4W7hA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HsYVMytP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHB2TfM3916549
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:50:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lvFEnQh6WsbJ0vLH7CsfSNA/lxJzrUa4BNt4cTrgzrI=; b=PX/4W7hAtb+NmP/D
	DuKug9m3Hm2yU5s33kJxoCkoHR+wh4b2+g2xeel9Vp8mSn/tnzO08ay1ox7AWX4b
	op5msKi8sACXc04FaBX+et7RscbNqkUsgc0kVoPv4xm4F3j955+UI2g9ys5qiJrz
	i6HpXnza7//Q2ljkAQmMI1GaEaBbAwOyFly4a+J9C9FTwLzLypcnGPKwQqltp/Zh
	vHlMW/OOdAdpdIdMxW0KraDuuaOAuVvwoZnMDG5mX1gC/0GWhYh7CA7hLzr9YEIa
	kZBEDZzoqPzNJBaoUVT5XEBU0wacRjkDwv+VCLO34LVUq9ZYEph1iyfSMttbHNRb
	2mLvcQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2fx8ev1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 13:50:31 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee07f794fcso6431821cf.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 05:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763387431; x=1763992231; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lvFEnQh6WsbJ0vLH7CsfSNA/lxJzrUa4BNt4cTrgzrI=;
        b=HsYVMytPbDWU7NJABX1L3R3/n+232vzkVn3pPOmSTBkPvYr8+jZ91cZLNZSI5CiDwB
         L7401l/ZQnDRN0+dWw3kCgQ6NhqgXR0lOmsTJ0IWTZo/OjWNohjxCrFYSUuUVY5dfy/t
         08yzUgl7xy1JcquZolg7oh2HawWGOJ3w4bye7ewysXLJp9nV/jdl319+TQD/T4YZ+KYR
         g+JrSRJIDv+UohqMMWBvYq/0hwCZFTPGz2IRHanEt1I/g6eP89UoZ/WZseu6nINX6TI3
         18buLb4HBw6nsY2CUlU8JJgl8Jq3dXqmYysG7NFA3ZSpY2ZKNEynGznkiBilL5bgBKX0
         3u6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763387431; x=1763992231;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lvFEnQh6WsbJ0vLH7CsfSNA/lxJzrUa4BNt4cTrgzrI=;
        b=frQtV9//Lx4vL6qz6+DsG7Lh+gpzXnY6gMbqGF84Bpyn+ETWaAMQ5TojUU9g8ysISn
         y+Eq18fLv3ndgJEYKBI6UNJo8UAFX3UgLab2ZsGVUcLzXmi0eFTRJBG8mwwtnAS4XfH9
         GScuSptfbC7XASMTo0eyMVg2HxxFGnj7a5aMqFqO/Vc83Wo73CYLSWfVbnrQf7H/hvoa
         WQkx/bwOLBoPUccJkge1FZBL7uUosTvpSAmWNgT6cnxM0PLe+dJHaokrgvhmxnedsVs2
         EZ6CxOUa2KqsYgnoUG4Hbl/ixFhmJKc/6ZPNDUQyj/SER0dnxt2uT8EzCf+qJvXclMpP
         GQxA==
X-Forwarded-Encrypted: i=1; AJvYcCWFRy0+wmv7tXSDKQrH/jyBMp9628IjkVF3NRKbkGYFPobmInjrrGenVk8PfVJo/qc4HtyzflI3GlGp@vger.kernel.org
X-Gm-Message-State: AOJu0YzyvQbAkH48Ru3LQYFji686UeG4s8D7qeIeE/e2p6abDDTMvOKA
	KMwveGHuVbSJKO0i1K0kZJRh6GHXQ20bPeqnxBqw097inNY/9Ori/xMrRdr2VNX2TfMUCrdFtLI
	2vRPdTX9OxdDNlPeRdI1lPwr1L9+/DlN+cYYAhubndfDb9xi8MwlQMIcZXac5fS1G
X-Gm-Gg: ASbGncuD/rpGnzFtmEg8fGPGzuoWScW9OpkvWALYw+y5450WjqAFgo+WDvXOfw12Wo5
	FIrRYmLSHgLOyYCk4WpMsG/eTCYdGsk+IdfJ/FIfXXWjPYZPp4ZUbnhS/J+R+a14aPbAZwxbZbo
	AHZaJOvp6NVqqh5a+3s/5UpnA0ijRHA4GLXwLKEqoye7HWr7L2E5oxYdSa22vRSJD/cNSVSMLd6
	GRyPEB5MLXClKU+KFHFEYFe1cQtLLQM21Z0+vy6mLUhkFm54ztr2cPgBVZdT8aLG3bcwf6pC+NW
	+WnUAWIN7ulqK9mOBmxm6lv4c5pY8WEmIGtFlwR7Y0C3jo0jKlB9TTKJtDKcPtqfXha+KWV5/Eu
	lgPIznGxdJcU6Y1MardkmbOXl6EKUalrPMNuEBU97lWpRvCwwU1N4owpJ
X-Received: by 2002:a05:622a:649:b0:4ee:2bff:2d5b with SMTP id d75a77b69052e-4ee2bff3fa9mr6241241cf.5.1763387431324;
        Mon, 17 Nov 2025 05:50:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjWmYBibGGO4VVkCRYHGaDX2kTPI8sZqYMgUjVxzQ8jb1+nJYy1qhnAgJV28u9l3nhMUCv5g==
X-Received: by 2002:a05:622a:649:b0:4ee:2bff:2d5b with SMTP id d75a77b69052e-4ee2bff3fa9mr6240961cf.5.1763387430883;
        Mon, 17 Nov 2025 05:50:30 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a2d746bsm10153800a12.0.2025.11.17.05.50.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 05:50:30 -0800 (PST)
Message-ID: <8e3c5d46-1d59-4636-87ad-e3d39e66bd9d@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 14:50:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: hamoa-iot-evk: enable pwm rg leds
To: Tingguo Cheng <tingguoc@hu-tingguoc-lv.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>, kernel@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Fenglin Wu <fenglin.wu@oss.qualcomm.com>
References: <20251114-add-rgb-led-for-hamoa-iot-evk-v3-1-5df1fcd68374@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114-add-rgb-led-for-hamoa-iot-evk-v3-1-5df1fcd68374@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 1RJLMNbsN6W1A0gMOeYYOWvN6lkLlVF_
X-Authority-Analysis: v=2.4 cv=EIELElZC c=1 sm=1 tr=0 ts=691b2827 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=4KYP6g0EmVGi8g6oHDgA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 1RJLMNbsN6W1A0gMOeYYOWvN6lkLlVF_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDExNyBTYWx0ZWRfX4/o5Zbgb5LCQ
 1rV1w7wtGFcrJKIjqeiu6cylnCVeYQopU4Hq0743eWtYFmeaBgYM8zNACgLZdZ2XnJXgYJ4Ncwh
 676cO7LIWuvFZzUFJj4ZTmCnrLRD89N9xdfaUXDtfBmBosj6xTKqxMYfiqAfg/TfPQ2P66wZwxD
 jDZPP7e6D5Wl9SfSo4ReQH2YKOLmGiik6+p0+aU16kehreN3BGbNJ3prrSu3cq3fTplyGYD8alk
 7pnNxLVe1lk+ORayvPSLwLnvEAHyIDgADz7zR6pRqYTdExQpqL8ejldMw1hjjK4uQIXkVRS5AkD
 KaOtT42vC+1bFKkJ1n4mQAnH/Yl/rR27s+1gKim0segDzQUgxR4KxzNDPxVYpkgs6yYtcYGnZ4O
 tlKJdBpexSdX7DiYuweXZUC11+UHrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170117

On 11/14/25 9:13 AM, 'Tingguo Cheng' via kernel wrote:
> From: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> 
> Add RED and GREEN LED channels for the RGB device connected to PMC8380C
> PWM-LED pins. Omit BLUE channel to match default hardware setup where
> it's tied to EDL indicator.
> 
> Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> ---
> Changes in v3:
> - Rebased on next-20251113.
> - Validated the function based on the patch "[PATCH] leds: rgb: leds-qcom-lpg: Allow LED_COLOR_ID_MULTI".

I sent the patch now, thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


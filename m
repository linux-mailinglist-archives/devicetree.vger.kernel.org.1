Return-Path: <devicetree+bounces-202919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14034B1F3CE
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 11:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DA5E3B6FCF
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AD64254AE7;
	Sat,  9 Aug 2025 09:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ocsQvtQy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB042343C7
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 09:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754732544; cv=none; b=kyfcyZdGoTRTyeUWg+EYZWh3zpB+iluSjl6fpWo35NgDZJ76FPKJayQVjirKbGPSN/fUeN62S8EEWOWg/92szIAmZvN87D20HwbQk7VPljGvaXKqtcDCegyGP/TVaYUpLSWgdmRZ8uc1Ktd4KtDmZEdd2FKHaeFsz8mEdrNxWOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754732544; c=relaxed/simple;
	bh=ifWR+5YTYXsRgjzxK77i+K01IrQXJ9sN/mQ5f08sldc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cjuPttJ2PYIgXlif6EOBmbJTMmizg8GgjdfsH3PS5QSWosiaXkPSnu1GbeHK5+eCjrDIt1zt0cDK1Ae9zZk2Pih+n5nh4JrrySaJhMMfIMmywgsVqu3stru5/yrbKJ30zjaDDZ8QLPMu95mniWLlgiZcM1+CY69BsGfKsrOIv6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ocsQvtQy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5793LnoU012616
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 09:42:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0372A92yO+6UzrCsBHxULUhC
	eOFsZLUB9BV4b4k/xxs=; b=ocsQvtQyl+rIznivUSMnxJKWoVXw8tKVWP6aYCXo
	NoHoZ0Jw7brxIgxyFnV3yYdTcCN6r/UlIC/aMOEbRvK/8UerXk6qmA12Ct1TlBOv
	o8DCZL6Crc5ta5YkxutyQi73btgUpCaN6DjoONU69PTVTT+on3F2UQ3LC81fAbi+
	F/07w6P0a4NmCPipL2pp0TgOXi1wW5NbMLxINvBS0OFrhd+j5CWMee8VkZuWIWWb
	de+pYI4cAFy000ra0b0tHARUtRxrTEAVhlXPGaTzRiGSTIhgXzQDdBCJHyvHJZas
	HO/EU9BDjWja1gqrdSMkpIIoU97qVHocFssoAoSTHsCoRQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dv1fgmpr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 09:42:21 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4af22e50c00so71470211cf.1
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 02:42:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754732540; x=1755337340;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0372A92yO+6UzrCsBHxULUhCeOFsZLUB9BV4b4k/xxs=;
        b=B7OpRsJ64jZiI4vPCUJDUXBIAk0ahN9PMBbWxlGB61RB1Terdw++NmepetfmVagI47
         tyoWvHpDIZJZ1vLiLVz6n0seXiaKkAJnvN2K3aaDVwVlZCm8IWLt7FFfZKFRsE1kY+aP
         t/oo2dSBrJPCGlO+UtTDJYkhIoBV8VBrJQMvy9EKGL1GBf6InPnHWhDNS9UIz8fikdrv
         0h2dnigeE4fIpE9rv7ckEMvYAUJmeKMrFBZ60VyJrt8+ZWhFsHk0NlEgdZdsE/GCiRs0
         rJKaUoTRWD2yVbP3HbXefG2sR4WsfoOEeTgXY54OQUjcccXn7RwnTTs1i0jgZ4KFY9SP
         YIQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUlRmF3V700ORAVyXdChvSOgpaUSMVJBmSIA8CqaZlO6qLE0CJ7aWCtk/9bKcPbmdTEuDb3AvJgUs6@vger.kernel.org
X-Gm-Message-State: AOJu0Yydh9Dik7ahmNttfmhhDG7ixxMGpcDuXbcVcZipfubY552mEQ8k
	RxiabxnBta2hHcpSoh79QVuLQIr2kQOiF+7QA4ul/kEohWsDr3MtirllOm+ENVbnjGBP5DB8eBg
	/uoTZvAWLPFm+zHq8VPh0Vu+8HmbxL9PA5XUUKsUy0R7RrsRtcjivkREramAEWGnA
X-Gm-Gg: ASbGnctWjwX7O8GXzPjkYwNNJMky5nPQj0niZExuj7cqcaDpQDRIVtf/6fmISMG3w98
	oG0uj6QGghEkAL52EWN63Rrl3XYyr8JLYQobOn8IHRoAhmhzDTo3+riPwe5uvb6ssJvnXUKZwZD
	ctVlS963JgRVlwkiUt4TXxNh4tclyUZV0tHk2nwDevgJG7UGXIKLGiXKtwQYKaxm+ZIncXEAmB+
	sVOy87MH1S8Enig327YLAwwZZDMdjvGwIfdVSVMzyFffOqrZuptzWf2nDQmOSO6ciFft2df8IFG
	M35/7x0To6WBmM0C5+zQtKgQKDZrKI/I/AORHkKOfBod7FvhANGXM8I9YoH+VBmOhgBAOK/7uBx
	yaxRTYsztw3ceJhqhh4rW8RWwswKd7RJTIgk4eTfwGi654VqziTVE
X-Received: by 2002:a05:622a:5294:b0:4b0:b39c:af01 with SMTP id d75a77b69052e-4b0b39cb116mr61368471cf.4.1754732540299;
        Sat, 09 Aug 2025 02:42:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESERnHKkIRpuJX4iR1miZrmVl0om2FZb47EtMDQ9dwoDLbFFiSfbashWKXj5hwmlVMBtCJHg==
X-Received: by 2002:a05:622a:5294:b0:4b0:b39c:af01 with SMTP id d75a77b69052e-4b0b39cb116mr61368281cf.4.1754732539900;
        Sat, 09 Aug 2025 02:42:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cc8c2e556sm164796e87.105.2025.08.09.02.42.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:42:19 -0700 (PDT)
Date: Sat, 9 Aug 2025 12:42:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH DO NOT MERGE RFC v2 2/3] arm64: dts: qcom: sm8750-mtp:
 Enable Iris codec
Message-ID: <pb3yyyjpffjb5u4oorv2rfo634h6v52gytmevn36k5xeqxhjwn@xj7x3dmaxwv3>
References: <20250806-b4-sm8750-iris-dts-v2-0-2ce197525eed@linaro.org>
 <20250806-b4-sm8750-iris-dts-v2-2-2ce197525eed@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806-b4-sm8750-iris-dts-v2-2-2ce197525eed@linaro.org>
X-Proofpoint-GUID: 9qAGEgCVi2H1m4yV7b9Fa_vsYRaxIDdM
X-Authority-Analysis: v=2.4 cv=cLTgskeN c=1 sm=1 tr=0 ts=689717fd cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=CFmXjhnyot7mmrd5IyEA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMyBTYWx0ZWRfX2kgCAD84lEFQ
 jYo0f9jEB5dq0uKEHKEOBfmMmLN098WvsbBXWGcXXm8FBTqQaBo9altt2+LpS4igaNTUFRp59ms
 u/WAZeKwGFdSCGtWwFt556Lsshsmx/o4iFg7G2iOxgJDFc1tFOC8Evfrc90/7IqtQnWbEMroWQx
 QWLgJ9aTFfDn7rgTjV3n2ALuP3ppekvhJgGriGBGFsdZLVlrBIOaNkRmMZEYPZbud2ERlTnZhcO
 ybUC3ButcAsqCytVDRh7hth62dFabYKsahQv+RwKERAnZ4CjwMMondk5na66qoYqx2PmP68pxyC
 DsmwMIP6wX0Imye4OxAIgu4zz6w2UCxqVhZ3r1dj5B/J34ksb2lT7UHHQWRT4bHv+FX2BvQTwdU
 ptMv8tNp
X-Proofpoint-ORIG-GUID: 9qAGEgCVi2H1m4yV7b9Fa_vsYRaxIDdM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090003

On Wed, Aug 06, 2025 at 02:38:31PM +0200, Krzysztof Kozlowski wrote:
> Enable on SM8750 MTP the Iris video codec for accelerated video
> encoding/decoding.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Do not merge because firmware (hard-coded in the driver) is not released.

I don't think we have been delaying enablement of the hardware for these
reasons. The user might have other ways to get the firmware (or to
disable the device) in DT.

-- 
With best wishes
Dmitry


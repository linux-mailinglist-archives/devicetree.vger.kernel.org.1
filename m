Return-Path: <devicetree+bounces-239714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C42C689D7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:44:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BB3FD4F5533
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08606329C59;
	Tue, 18 Nov 2025 09:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vx549b7w";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iZbsLIf7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50FD2FBDEE
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763458790; cv=none; b=mg99X/w8wbIYiOXu+Ggg8XrvzRG39Y5arBodh8DMJsgtlBwX5gMOJM/gXu2qKsN13f8hNKxW80ILF01tzvQ555oHCDiDoOQ7hrX4QA0OnZOoPa6KpcOEc+/GE+ySrWaEMmIIyNrByOW63oV7/YoM46Dei73Gl1LZwIdfV/9GMbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763458790; c=relaxed/simple;
	bh=mfRRUUiLEUM00WsS0T61tZsOtb8UlFWYBb8fTQshtjQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T3zdvQSJjvq2uesJvS28D59qvZJKmd9aaHlH5zb4nxLC9cBAsjRAOKyhoOlfPXQgQDvJCZjjlOFV7AVB3MA+gboC0/nacvVWGTk203QkjcBx5vx5q9i33PuZVDITdvIM5TMleFy/N8ShGv/xAbGcl09+4pViT5rpu8HHA4FfN1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vx549b7w; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iZbsLIf7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6fV2E2272113
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:39:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lpxskyOt/DUyd+JK+oswxenNWQqg6JO7PsHwIirxqQk=; b=Vx549b7wmIT1t9Ld
	Vk+BjWJn1YsWUZZd+IrS1liaqjSeSlv+OzGHA4JB4gZmyzXyU/4+WUHVZPC4YYSd
	KH8d4aIsSh6nAD9o1lf2caJauqu/n/pu7VXhCfRdEdzb7yElftD7Ti6GQcTSOgoo
	kzH6geewdDtKAav8jpREcv0UP693nhRMgWJQRRAfpMmbj05eqaLIIBKXM0KTM91Y
	72OosjmZ4mJNKLgM4/aEXSZueB4dicC12uHISlPiOL2RQdpMDHZlFvI6kX+/sgOX
	0X3CTGuLJeD64IlXQ+07BXbLQMbnEOQ8WkeaOY+9sJMaUrWnwhS8fRJ/cI6eCS6F
	K+2T4g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agkrmgha0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 09:39:47 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ede0bd2154so19336251cf.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 01:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763458787; x=1764063587; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lpxskyOt/DUyd+JK+oswxenNWQqg6JO7PsHwIirxqQk=;
        b=iZbsLIf7WrrK9TjnMGrDs5oM6MKwt6THWzmbJIAGx7tS9F60+L+82kxsROyA3H2u5h
         UeGZKTjEggbtKPIccqCFjbmQhRf+KROINqQGkYmPR1wZxnYg9QnFLQHt30LiVq2sxo5N
         x+47v/BjrFhGLDvILBZjcDd9CcWar/KlQbiTwQ+fKZGuZ+K4s3PbzP5d05jVf+LDNVJG
         Oiat4E0XGSVgfRYEukdeyEzhR1R13vpg4yPrMW6HUuLaeEpUWAys5V8kQG5XCM4hc7Oz
         cCa2r/rgDBxUYYsa7RftGMohxbmyghSyNRTXNA8CJYNYmi4nYMjwldT5db5IUyzatBnO
         1KCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763458787; x=1764063587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lpxskyOt/DUyd+JK+oswxenNWQqg6JO7PsHwIirxqQk=;
        b=b7yMpTPPDFHcMK+6Yw/AU1mDyufO3hjevT0KoT/y/eVBWrU5Oxc1uVn9GgE3UyeSXy
         Cm/79hqtjGy3uPKZd8zZdUiTYphHD1pV8zE9xyBUMURJan9AjjYxQ3eESTrsz7XgGADk
         gK2PF6Y3rrcxf3iQRQA0Ai5OMSgtyg1WByEZgMfQBJ2bjiKHrKRszne1pWYLTmr85R1i
         YfjHHHNb2MtTBy2jbFp+wHPZJWYmzB1g5+CQUSkuQc1sIFAgK6eVMt6LGGqMvNjscxvl
         W4OE4S+otmILJ9Tk5LyJeVvuLAdUrumNNQQ0fzg6p5orkKd2y2DraM0VPpab0+yOkYok
         KndA==
X-Forwarded-Encrypted: i=1; AJvYcCUrZnFWm1P6W6p9zWSz71XioPWlQ66KNGwhdb2GoHXBRQRH5KeLFtogm0Kav2Ag6XzzQykTBq4uTUkC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8LxKbW9ZfuPH4oTLOf5Z/KSXmI61GCwkoQYd7hNKE9WFLxD0x
	iwkwXv9RLbW3ZoMmZfduyUV9oDO0cSPXGrjyOS6oHyVlA+1XafR0p262I/jHvjbEs2BEZsvQLUC
	uUhC7Q8jHU6ZlIu+JMTzGlTUadAnR1S25Fr+R6FCZcwfj+RnzQpIbNq4OSCHB+PuJ
X-Gm-Gg: ASbGncvYn2BRCoFxSVgnlLHj7P+P+2HoNlA/G+Q6tE816j1CK2fprlI88f9BhdU6yLQ
	ZbDs7sAEKf5T0glIPG5YYxPYZj22IkgjPBuLxVRlHM6HK2mKwkY1lWfOSNSjmk/YiJSygPy41xA
	KsCz7pMYPtlr5mi7fcAUthpCAzguiNu1tNQW1GSmRUC8ssRQaG5fDkpxgw2vgAH1EPxPj94Zo8i
	IfauH6AeFcpF3Eg8tRx0J02Zwv7+4vKhXH9+jVeUAP7qs8OGv45RTtPJimldxbOSs+k7v7oal7k
	3Hc5jSmsEOLb4e+J57M5EHX4TuQStItuiG8SDjmPD5z+F1HCxqX27LRJA5s5MGlxjB51Dkxqzoq
	AOgQFg1m09/cZCHCq07MbKl7xPQaIjUAnHo+LyQcoP5a9YBIBgrRBnI5AxKBeXN6dKR4=
X-Received: by 2002:ac8:5a47:0:b0:4ee:1e33:bc45 with SMTP id d75a77b69052e-4ee3140eb67mr19637881cf.5.1763458787182;
        Tue, 18 Nov 2025 01:39:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGM2XznaRPw4t1ZV3qwqJLsICwQEZb87oxLhz3lJ4o/WnzQaq3sDjaNpuPz0cNrOC+2yawjJg==
X-Received: by 2002:ac8:5a47:0:b0:4ee:1e33:bc45 with SMTP id d75a77b69052e-4ee3140eb67mr19637651cf.5.1763458786765;
        Tue, 18 Nov 2025 01:39:46 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fda8a7bsm1283095866b.54.2025.11.18.01.39.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 01:39:45 -0800 (PST)
Message-ID: <875788df-3702-47be-83d5-e34619b31083@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 10:39:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] clk: qcom: branch: Extend invert logic for branch2
 mem clocks
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
 <20251118-sm8750-videocc-v2-v4-3-049882a70c9f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-sm8750-videocc-v2-v4-3-049882a70c9f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA3NiBTYWx0ZWRfX+F0TQCnPSB50
 cnO98GZhrf3up3B9eYOlmFocPfwP6+xpNR4LphUP3fwHFSpyZKujBFWyyX9U5jSLhGlN6Z/ZnrX
 o83YreZANl7kQyvRRwu/KBbupoPfCBVcXk/AcD5AuO1AjN8bK6PZ2VHZOKfojkR7TodWf0zdtxX
 FUs/J6hBmCJnLrgdU17pipOuVCpNiFUNg0H5HGIrBNSB8qMEOIuzIAHEL8FMf25/e4jK/OwWkGc
 7uRgc+98frDOYLrxP+6+TW8M5dBCxt7a1MHbjE+W6oHcikLIOv4HD87ehvGLrl01K8+leVpbwSR
 ME4HbhkVbuU6bYydRfd3/YZvCRfpcLenWv+dFtonbVg9g0GLqjTGK4sb6cT0VrRq7IeIeXo0J5A
 pvlZAQwGCx43hyR+EATd+UR4x9/6ew==
X-Proofpoint-ORIG-GUID: ARoLTvFt5cKOqjDo21lLW6rb-yJGk6GC
X-Proofpoint-GUID: ARoLTvFt5cKOqjDo21lLW6rb-yJGk6GC
X-Authority-Analysis: v=2.4 cv=JfWxbEKV c=1 sm=1 tr=0 ts=691c3ee3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8EbF_sMYILjvT3iq7EYA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 spamscore=0
 impostorscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180076

On 11/18/25 8:17 AM, Taniya Das wrote:
> Some clock branches require inverted logic for memory gating, where
> disabling the memory involves setting a bit and enabling it involves
> clearing the same bit. This behavior differs from the standard approach
> memory branch clocks ops where enabling typically sets the bit.
> 
> The mem_enable_invert to allow conditional handling of these sequences
> of the inverted control logic for memory operations required on those
> memory clock branches.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


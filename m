Return-Path: <devicetree+bounces-155651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A31A57B3D
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 15:49:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F5DA1885EE9
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 14:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E90A01FC8;
	Sat,  8 Mar 2025 14:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XdlAcI8m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD83140E30
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741445376; cv=none; b=QPfG5UWOJjDg2XwCR/EBDiG2yvkN3vxSmZScHmD3V6/uT0bWQ1rsGzQdsoEYzyioNLLdci5BSTVVWXkbPtcECScHjHQZ22a+MAy6TA5jSNYmk/Rr/CwpM60TWcsNj0A7vPzqy8ul7EDBsVGcJio87DnjwO0df/ll7gisrsoeQrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741445376; c=relaxed/simple;
	bh=p8FE6Yce4UFFPFp8RPlL6Zq6MyjvmqNXaWFwHY6Xcwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YdKxaiV2tRUxrmfZFt/QmsfEY6sz0IVFbb2xNArm4y+AYZyUyLAHpx66qyWgO8/BUuiTs/9dNCOnFA8b/qNZTPE08W6PdSRCbKaMGdYxzZsk6gcIatp9QLmCKdYOCrzU2Rd3AZohEHd+mfhxhxZfOFePdGSOa1ZFfyDmVwdeUEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XdlAcI8m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52892iiv006354
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 14:25:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ajkDcMXkTChhLB9nQXqXX4w1XlD/zn/bmx5ISWyGiDE=; b=XdlAcI8mJvT5ZzSC
	BYdYS14qi2YMrDMG0SARJc7twAMD4ylW/xAiRf7VdzLeQ0p2B88dgMBNI3Vd9/lB
	yg5bLTeegaMxv8TOxoKsro/HOMyWUoyS4XxoEWam/FQftEmPaY8gg+TpfSGOCd41
	5agraq4czLhmGRvhKscIk7UyEvzH1gk2B+vpDRV31EbIc+BIR50KmaoqruxUT+LY
	LueVsidQh+p4yB6nHt5hsOnSE2AGC9vMWSo2R7P+0YGy2exaMsVMwEaqrIepPj5F
	wUgZQnRQ2/y2AM5ss+YTNtGIe4uENpkPfwtM6bdha7fBjl3T7QTn8eZ/p/5Bbl94
	vYh30w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f1jrp60-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 14:25:10 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-476783cbdb8so264221cf.1
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 06:25:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741443910; x=1742048710;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ajkDcMXkTChhLB9nQXqXX4w1XlD/zn/bmx5ISWyGiDE=;
        b=RRbMYGq0lZ9iB7+QlosDoiiNV2KwJ4mJ3ZvHLy5H++SZjF9+r+oQLUrHSVGQvmwv5M
         PfqiMv8wBEeZUHJ3n3Y3Wy4AcWcSSGxTNZvYeAu+LZGK2OHkCOQHeWgwr7xNRGbUd5aM
         zRhSkgVK2+PP8YWZuF+MB35RfFQu9G4PkqPxhjo9dztC8BZEPt+Ke/DZ9hq5g7txCbax
         WYsowciTKsh18DP70AGBOvSRQnDcdwOg9k9n9X1f/TC+zVMvElM7IXMtmTpap/d2sS2i
         YX4uaXUR+n6RnFNFLjwERLzddo/7u5VzMPMj4Zmkc0PCY9hX9CSCO9GrHnX6YVhYleZL
         3S8g==
X-Forwarded-Encrypted: i=1; AJvYcCWTyNQWFctTcfnQpcDQFeAO1ekR6IUVWVTgxXVd0AMwDHMyoZ9HlBjp9fIbF/8nsBD/X7Q3TJIiGq3V@vger.kernel.org
X-Gm-Message-State: AOJu0YztsQFg1swbIe7sm71sSEsCRfg4u0x78lJJhPv9dFMNTsH1CN+B
	vo+heaxs/LXH76VhxcRnm4SwXAKLU3QMqpjtZSrk3MDSDmmJ7gVweJ8T9lqdgMLMOkrR2Zq96AJ
	PH7y/PfvElcR3HyhVC0y8f5c9vq/TOeSeocGEi3qQ3rvfEwlrDzz2SxsrIHrY
X-Gm-Gg: ASbGncsjZOEOjCfzpF/EGpQaa29HNUVmlv4q8Cn59g+JcfPC+nMp/SrJ2YVRkxO0hcU
	+XCTwhaj6SkfrLqVxrGr2bnSi5aaGLvi75YFosivqrlftbImi/hNHLq7xsvq7mbxNtM6Ctsj8hN
	rK0XP706bBg8W8yRBIxUZ8mAe5mt47y7w63lEDNbfAS+6sUS0kL0ArBuWZhZUSgMTwVtIuyS1nE
	GluZYAKg260Npr+XIBDL1Q6FfPa3FssRujIeg8YBwvPHiv3Wul8J++KA6In9oWNfRJk6Q0/6x+g
	33uDGtJja3W3HmRvrP8kaPCM9RTeN4lj6w5Zu/V6dhu7hdv/k65oe/Ell/Yj/WoHt/NlAQ==
X-Received: by 2002:a05:6214:d6b:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e908d8568cmr15818326d6.6.1741443909939;
        Sat, 08 Mar 2025 06:25:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGf5Bpdb+EwGJ+DUwof9ezxDFy4IdGxQr6SUgAcI78hiBLBYecPa0sQ6yprSMZOTAU4uNWqGA==
X-Received: by 2002:a05:6214:d6b:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e908d8568cmr15818006d6.6.1741443909472;
        Sat, 08 Mar 2025 06:25:09 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac23973b09asm438894266b.119.2025.03.08.06.25.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 06:25:08 -0800 (PST)
Message-ID: <e2d84147-c061-4f12-a44b-f60919625f77@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 15:25:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] phy: qualcomm: qcom-uniphy-pcie 28LP add support
 for IPQ5018
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, kishon@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, kw@linux.com, lpieralisi@kernel.org,
        manivannan.sadhasivam@linaro.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com,
        vkoul@kernel.org, quic_srichara@quicinc.com
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883A6C7E8FA6810089453149DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
 <oeu6wkfhx2masvendoweoufzit6dcwwer5bakzvg75dz3uc4bj@bwuj4slnb24e>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <oeu6wkfhx2masvendoweoufzit6dcwwer5bakzvg75dz3uc4bj@bwuj4slnb24e>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ctthk04i c=1 sm=1 tr=0 ts=67cc5346 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=Bxonh79IiWxE7T-ZNUwA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 5yFamHvFhcoA3ri9AndZItJZ3gbslWRd
X-Proofpoint-GUID: 5yFamHvFhcoA3ri9AndZItJZ3gbslWRd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_05,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 phishscore=0 adultscore=0 mlxscore=0 impostorscore=0 mlxlogscore=809
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080108

On 5.03.2025 9:39 PM, Dmitry Baryshkov wrote:
> On Wed, Mar 05, 2025 at 05:41:27PM +0400, George Moussalem wrote:
>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>
>> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Something is wrong here. There can't be two authors for the patch.

It may be that Nitheesh was the original author, whose patch was then
picked up by Sricharan for sending (no additional notices of
co-development), but George later did the same, forgetting to remove
Sricharan from the chain.

Konrad


Return-Path: <devicetree+bounces-113064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9159A477D
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 21:59:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C990C1C2295F
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 19:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2083D20697C;
	Fri, 18 Oct 2024 19:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zko4Iu/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6029F20694D
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 19:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729281559; cv=none; b=VT6xhdQyDQbw8U8Pi11tsnPmUCeoQDk/VFaTrucw34X2JRKX/J6Wn1qb10f5zXWZfDerhEllQUcJF6+XR+nsSbvV3dNjRgieGrNgsfewzVhj4YPISTPjC5pO8+KrKsWrLbTfQFHRhd/aHKawnxBuxQvLb9gLltBqbEowFK+Jk7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729281559; c=relaxed/simple;
	bh=CEmrsUwiqonWzgawy3ueFgeB41mwbqo7+gOs2/7JXxc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oefAGTIbcViKVWTLhUL7UJDJjkAo9ra6eEWgc/AODfOWSi+g0Ufq2wLVxY6c0EuXeK0yCsFlkY/mUe8fYiGSX3H/ybRk9d5qe1FUAXPtnLEjisp0dyxyLbUD7rG/wRbvDo3q5X2lVo6joLRukS8CNbLv6y7sPRHl3xBHJgOJ078=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zko4Iu/k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49IDk2GY016592
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 19:59:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GtzyPpyoTEN3UDvWYwHTNe83We0wDabg1lie2peb5Eg=; b=Zko4Iu/kP6lkrIxh
	48wssYcseqzJkOr3JL1kOacHpqyKrLt1qmwOCccU3yzF/+SfwqvXsHUu+OuNNaFi
	1TiDOH94nV21XrJtRR0ujvNb+JiYh4xIhmCHV9sbI8aeArnq45MSrmEtt3jJ6yTB
	VQRsJhucQiwFacsHIBrG0e60G7muDZf+XfKgW/G5R+Nch8wsB+6/grQBjtyHGumN
	rRY7JorJtYc5F+H8kA2Qf19JTMI6yT6ZWQQrmAD0pe+U2olzeLFmUol2aCMp0sur
	mhFOJK/RWQ8IsqhmaXuvKLoZmUvK0r7dolbLd4cMQpBQbfDQ3a7Yuyfq83Mp/MT6
	JxFdDg==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42bh3paj5g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 19:59:16 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-84fcaad02eeso76511241.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 12:59:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729281555; x=1729886355;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GtzyPpyoTEN3UDvWYwHTNe83We0wDabg1lie2peb5Eg=;
        b=i/cZyGfnRd5bybtYY4jWIM/uDjawT4akn1mGkCrgbAngkBC7bVNAXvxGbBXkn13fNP
         NsgXTTtTN+GMkwzb1wfJ47HHIAWrPWBs74AO93W2TYYRTyqyPGOgj5wNI4g2xW5W3rNQ
         Pay/bzZg9h6LOs0JiDxldhY5E0kMMiVYFrGkFjGETA91VwvV+ZmJg2FCSw3xbstyZLmJ
         IJTg1B+NxGBdvSpDDywHQIZnlrLpTxEyKfQabNzlhJ4vzcChHE1jIZCwdnfm21n7Evxy
         7SSbkDV6vo1343Q1FiFesjEArZygKT1nxnqVM6c1e1HwGA2SVTLS5FAw3YGnOzOE1y2M
         804Q==
X-Forwarded-Encrypted: i=1; AJvYcCVDO29pIX358FiiEQ/5ooomvKZwetUTIzlwIgR1CXsH6pJB65FT48IAcgdCK6PxSuojM7ndw9MffXxW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3dxpJetJjh7IUqdfD8QBprTSRYwlD1w/MR5OmKnFkzY8GDDdZ
	OzuMMO2we3C1BMP+nBOqVEW58urDgfZX+fYx7wHusEn0kiIuQ8T9XHMsBmT7UkuJ/2oQrg9jwdy
	K44y9iIuUGSDZAC9VOQItn1YSHfJg06OTGHmDLh3bxBgM1OTGtYPyL+IABTOz
X-Received: by 2002:a05:6102:54a8:b0:49b:ef23:7e51 with SMTP id ada2fe7eead31-4a5d6bc803fmr1508789137.6.1729281555371;
        Fri, 18 Oct 2024 12:59:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUOqqLw7SE6fFgn6NiiKUFLQbPuBT4Oy/qN4waDZtdNfBEdyY6hIjCp5xAruGWfN49WHtsZg==
X-Received: by 2002:a05:6102:54a8:b0:49b:ef23:7e51 with SMTP id ada2fe7eead31-4a5d6bc803fmr1508764137.6.1729281554980;
        Fri, 18 Oct 2024 12:59:14 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a68a8e8b0sm133131866b.42.2024.10.18.12.59.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 12:59:13 -0700 (PDT)
Message-ID: <66244403-373a-42d0-82c0-08127854b41e@oss.qualcomm.com>
Date: Fri, 18 Oct 2024 21:59:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/22] wifi: ath12k: add ath12k_hw_ring_mask for
 IPQ5332
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>, ath12k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        P Praneesh <quic_ppranees@quicinc.com>,
        Balamurugan S <quic_bselvara@quicinc.com>
References: <20241015182637.955753-1-quic_rajkbhag@quicinc.com>
 <20241015182637.955753-7-quic_rajkbhag@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241015182637.955753-7-quic_rajkbhag@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: KakTPIE2rXWQEjfrDcguh90BPDEl4kR_
X-Proofpoint-ORIG-GUID: KakTPIE2rXWQEjfrDcguh90BPDEl4kR_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 phishscore=0 priorityscore=1501 spamscore=0 mlxlogscore=749
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410180127

On 15.10.2024 8:26 PM, Raj Kumar Bhagat wrote:
> From: P Praneesh <quic_ppranees@quicinc.com>
> 
> Add ath12k_hw_ring_mask for new ath12k AHB based WiFi device IPQ5332.
> 
> Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
> Tested-on: QCN9274 hw2.0 PCI WLAN.WBE.1.1.1-00210-QCAHKSWPL_SILICONZ-1
> 
> Signed-off-by: P Praneesh <quic_ppranees@quicinc.com>
> Co-developed-by: Balamurugan S <quic_bselvara@quicinc.com>
> Signed-off-by: Balamurugan S <quic_bselvara@quicinc.com>
> Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
> ---

Same comment as previous patch, it seems like patch 3 is incomplete
without this and a couple later ones

Konrad


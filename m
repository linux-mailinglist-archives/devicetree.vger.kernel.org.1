Return-Path: <devicetree+bounces-158600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF50A67684
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 15:37:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26FF6176C3D
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091C920371E;
	Tue, 18 Mar 2025 14:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lCp2FSEZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718E920D4E2
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742308616; cv=none; b=ZQEXb+//+BXncE3IhRfTTwWXi7qgbdX5VuYNXWtXxcaWWHsNt6kC0HDVgECCjXEQcK1nDztsV0Pvy+uI4bURMsAVBtS37du6Doe4RGO6kT5fjYjejmF7s8syiO5LdpsU0a2ggpZvpoFL8tLS/nPAeN3Dj7a1g8PZIb1a6XVIn98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742308616; c=relaxed/simple;
	bh=TS7yAlFtyA4w+UW6DGl+TwS8HEWTF86imH2nDVNImpU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XbKqy0HWB8NgwK9UJ/uLH7KA8wsr9axaThJKLqcIDo2b0yZHFnZvyurxeuCc/HGRiLb9w5NgLLNromHXq/7Zf4rlImpEe7VN2uneFg0Ghm/lypzoeL1wEwynoHKWH/7ouSRU6SKRBAh7ZQ3NIf2xlxlAr9XvVXjnui9xOWXa8xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lCp2FSEZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IAVf5p027198
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:36:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3i/WfiJsCWYWSa50/DOQ09XMPER/DM23N59KdrrCh2s=; b=lCp2FSEZ5VcXhX2I
	U9+rycuZP8W8+f0tpC10IUwXwN8oaI2SUkcDf42s6Qsa/6hPG7UbzNClNmbVZqPQ
	DdNpCBiXqazzByvi1h6fqNio/WY/9nAz7jeESH1yjX0pT+tMYIuNnlloi79EF+A1
	0xTkwZx4vg0/YyuIzFRaAiG9FpZi+6K9a75sPrbgC2yk/vyrEmMP63hiaFnyPjq+
	mWu8EJy6sr75BiAc7ejnCAYQSZtbfnyDyk4uPrUjtsP7fCbIGnh8RUjLiPT+Ydcg
	LKbouWsS/a5X9C7UmDZhw3GrkesBcj6L4f3fvIwwt5r6oZ0/c3vVMEwVPhRTd4EB
	/YpiqQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwtj85h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:36:54 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8fd4ef023so18741636d6.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 07:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742308613; x=1742913413;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3i/WfiJsCWYWSa50/DOQ09XMPER/DM23N59KdrrCh2s=;
        b=s7km4qphb4qIDi19a+kI26IYFIJaJPi05CWlqETd/0GmhcWm97ctja1M8rHPJtFaRg
         2ojtTX8LBOSASP5SQ6lRaWEnfRzTGg0XEKtuIR+Ex1544mYlNXuPlLuToajEAt1ye6it
         xmuT7qD0J74190kt9j6ck8CQ1JZWtXAxTHkEFJevG9KVxvbmZLyGz3g4PWGpeasKwrZo
         hEGw5cN5C2jabD3VCmgeh5O/KHjNUZfX7o/HGeScZM9i+c2qGnhdRg66N6DMNT39rw5U
         79p23YO9OnzrclFHz4NjPZ+H4Cpq8zb1hVJZ+AzkhmirwJh0/ao4iYFFumTONAwdqgYC
         8XFQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/lvylq8EMGzyk7XWpoVDV6KWv7lRzWsG0GFFf6OTK9V2/1QGZ3psI5nhMJfKD5HCTEYuUN9OSRsft@vger.kernel.org
X-Gm-Message-State: AOJu0YwtdmXvOCT4F+raZ1mlgeJJdHMGAlk5IC90f/a1fPF23A00+zRN
	Knfey5eb5c6fBTmc7V1BqRZUb/zYCVs3b575qFaLuCMtPyJ7L1SV+Y2nOTfsiujziIdwrHT+46n
	toAb7TiTQOZykm187gKamxQRzV7DVGnUUPiWpEDja42eGaXfd7mboUCrCL+5J
X-Gm-Gg: ASbGncsg9D4W6WhQdJvYrQDGDpbJW+Z0KmKbRkk/7yZmgefDazErqPkUDPjBN1T+W6A
	5EwJyFKCVczgjYFjwE1Yds4CF17Tiud7uT131AggBJ07V6fqWTolBhHkl9TGqNwOXqlpC6qX1QH
	tW4KXM1O2VXEs1U3bT1riVh5VX97SFk9orK522H/uCwOOueDBouvxA3piGtucjWnYwvcXaRq/2k
	SsHYsLrxhpq5PRnp2QNzbMJl6sFGLZPb5mYOc0XL4NYSjmHborp4ee8tgBK7QeCUIAgdHaRXmuz
	kPpTeGBme0W88dISS1QhnFhNGUT0bpyrz9BO+WAZySze54ETy0Kznxu5yx5tn7Fp+MV5JA==
X-Received: by 2002:a05:6214:2aad:b0:6e8:98ce:dd75 with SMTP id 6a1803df08f44-6eaeaafd099mr79752946d6.9.1742308613345;
        Tue, 18 Mar 2025 07:36:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH630QmTtlvTyt7LsuCuoPjQARwW1UMfX8DJMZr/yM3CDhlOmPUiz46vASZy9uXmEk0lZZbDA==
X-Received: by 2002:a05:6214:2aad:b0:6e8:98ce:dd75 with SMTP id 6a1803df08f44-6eaeaafd099mr79752666d6.9.1742308613012;
        Tue, 18 Mar 2025 07:36:53 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a40f61sm854429366b.134.2025.03.18.07.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 07:36:52 -0700 (PDT)
Message-ID: <c8b872ed-62fa-4c56-97ac-d01c400d621c@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 15:36:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/10] ARM: dts: qcom: apq8064: add missing clocks to
 the timer node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
References: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
 <20250318-fix-nexus-4-v2-6-bcedd1406790@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250318-fix-nexus-4-v2-6-bcedd1406790@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: N-dcR8IhD8V_LzN0jAoiJY9p6fq9nr06
X-Proofpoint-ORIG-GUID: N-dcR8IhD8V_LzN0jAoiJY9p6fq9nr06
X-Authority-Analysis: v=2.4 cv=UoJjN/wB c=1 sm=1 tr=0 ts=67d98506 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=Jgmzq8KhWWce1OBKEKoA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=923
 phishscore=0 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180107

On 3/18/25 2:21 PM, Dmitry Baryshkov wrote:
> In order to fix DT schema warning and describe hardware properly, add
> missing sleep clock to the timer node.
> 
> Fixes: f335b8af4fd5 ("ARM: dts: qcom: Add initial APQ8064 SoC and IFC6410 board device trees")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

This is not strictly related to this patch, but this node/binding:

* clock-frequency seems unused
* "qcom,msm-timer" seems to have never been present in drivers/watchdog,
  arch/arm/mach-qcom or arch/arm/mach-msm

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


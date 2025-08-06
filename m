Return-Path: <devicetree+bounces-202138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37032B1C295
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 10:59:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6EB43A7BA4
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 08:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA93F289367;
	Wed,  6 Aug 2025 08:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ksDURSDQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422FF289357
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 08:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754470782; cv=none; b=pc+1p3M8np8pFzPJstpwtGqwmja8yP6ifeGoTs8aRrpuC7L6xQIsUYefCAJpK1bWaPQFoKDFcCxIm23iW7/CpAsSPT6sVzkIhItkZGtcYJ1Qfd2ieL1GSBsLQZofFlPjTmoqoPKLFJ9dXVqT26QPR62e/y5JUmRQWBFxqahNZn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754470782; c=relaxed/simple;
	bh=q4t94x/anFdOrgcXsZYc5vYSpEuzz6zj7mjRs/IWGqI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qhgwXRfZH7+0zAINIBGJ9ya+aT16BS2ZySuOhbmpQITU+frGDQFl27g/6Eg3+/NggZOMaqKhTuQwzwJRrG006gi5V3MTQf0c8OpCO/rhI/xjvVP9eQ5PyoaHvR6Xg6qs07OcYMVjha45TK278wCpQsKjetzZao16bVX6qkDGqvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ksDURSDQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5766LPUZ010363
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 08:59:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c9I/PRnvwO+XAYuNdl+hXvdMXnF4nGQyuJTKHNoBE+s=; b=ksDURSDQKWTiq7qX
	/VjuPogM6lDUZx4KB/rQ3ZuuzyFazP6W6oIvdTWEdvXbLcbciAnZ+yC0mkyvZmOv
	CjODee7bCnFWdEQ5cum5huQV4ROS4Epy0JIV5H6Tv3GsYrdd6ZccnMPZaimvuOud
	QTdQOMUrCvMf32S4K8BjBRaB64oWJ3cr6ehPaJ4DuYHKvaHFDig41u+Y5xSQSyy/
	QcjICPFmt1qKXOT5rJiZmGTwPg6cslzOpB1tSDgxptiTGakp6qOisi5WZMjpNoxP
	/GK9zkv5TosWv8tAr3SKifv0N4k+x5DeJQlCLwf0ZXyRtcxVIn9EQ1d/nH8CQj/V
	QPDzaw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy7t3dm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 08:59:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4af23fa7c0cso12844671cf.2
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 01:59:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754470779; x=1755075579;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c9I/PRnvwO+XAYuNdl+hXvdMXnF4nGQyuJTKHNoBE+s=;
        b=J9L3XrS06UMb7XXWL9MRhIfV07mOeqTsIVhin3Dq4Z5NfGcX67qEjNRKCArWREFt8u
         S/FWZmlp1Hctd6pskKXFfJ7SOsFGs4NXXEJP442bEZEm44jh4EG/fLcUUiCuuYcObXqW
         4WQBrtudXNlp6x/KR8QXzGZ73WvCnBJMF9wVXCU9I3VoZGRyVlG2UO8gcWyiqC/At3CC
         NUp7/1/M+Ib6D8cRAOCCrd61D8iN7Fy4jzEpkGSKZSrUzfP7yLSS8V2YKEB5R2WZkC7d
         Zo6bxu1dPVEIJTEPSr6ohITAftZsKoY+jpY9BAuoNI5oiw7iiHQYucAqZEanTLaNh0Iz
         glBg==
X-Forwarded-Encrypted: i=1; AJvYcCUvZFOO84ISovCg3k6a81DPAMAWs0jBWVDLc0I7GJfNzle6icJ11hmA0mjYW3kHz92Lgj30zWVj2Q29@vger.kernel.org
X-Gm-Message-State: AOJu0YyoeJX+/kFA09uSNdPV9UyKZHeuXLWIfn3pcHAOBOCOZbHuebvg
	Ch9fC3DC0oB+9HuqpvuIi8kpLPAqtuDD0kQUVKW3aEe3L3FSOo08Wsayd5lKd/QP+VKcPZz13ak
	XlfRjZuKcA9a+ZAV6otRYlEZ5MzLI/wGAW+FRx+SDfakdUEMJPjYG98wLyou/7D19
X-Gm-Gg: ASbGncuZ8wavMoPHefkcFNUApK2aK6JRWRZDsCFvT7fmwV/lx7Si9Ad/IHOcg0Olojq
	Wsm+MsNwkubOUammIhQKWJlIJgRm15tG4SzZWkoQNfpEFYr3LX/u6A3me/Wp4fqVipSsS9xDlwv
	VqlAFCIfe81xHxcKe3DLvAjSDwxzzdocXdtNq6CX5p228nTvKslJVnMQ1oG4NdteqD+4vJlgaOP
	KqfWk76DCwdoe2gnNpqa3Cs9O3fi8QwpiEo4bvCVNugu4dGS/SMqV7JoW5MIkT7qZ5b6JG7FF7q
	SNNB4JdsD8r6zL7dDC1RE7I55p3JZj6bvT/AZ/lfKWjB703OQv4HfJFm+ss98IDaxKhy5pll0bd
	GZPi5I8i9D36TgZqRbw==
X-Received: by 2002:a05:622a:609:b0:4ae:6b49:4d7c with SMTP id d75a77b69052e-4b0915d25a2mr12806271cf.12.1754470778763;
        Wed, 06 Aug 2025 01:59:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdf6mYk0vm8CTUCUOiGdpuR4DjfOcWPVGZsk5L2Aq3igXFKb2AjbidwZTi756A4BnYvppCtg==
X-Received: by 2002:a05:622a:609:b0:4ae:6b49:4d7c with SMTP id d75a77b69052e-4b0915d25a2mr12806081cf.12.1754470778117;
        Wed, 06 Aug 2025 01:59:38 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a076620sm1052660566b.10.2025.08.06.01.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 01:59:37 -0700 (PDT)
Message-ID: <ecaf893a-0c47-466f-b8b7-54f9ad166b80@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 10:59:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/6] soc: qcom: ubwc: Add QCS8300 UBWC cfg
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250806-mdssdt_qcs8300-v6-0-dbc17a8b86af@quicinc.com>
 <20250806-mdssdt_qcs8300-v6-5-dbc17a8b86af@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250806-mdssdt_qcs8300-v6-5-dbc17a8b86af@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Mftsu4/f c=1 sm=1 tr=0 ts=6893197c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=qcYK-ZiiYIKsHLxbHAsA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: mVDi-lyEvA0ECYAoH_S1qe22cT9I2fkp
X-Proofpoint-GUID: mVDi-lyEvA0ECYAoH_S1qe22cT9I2fkp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX0ZJ6S1GtWP6e
 OpJfSUD3eZrgkAEZSKv3XahIEHgmk7L2chMQWdfb6+NN3hcagsATLjABBSMb2HFNW0Y/ZoEkcSN
 KNVRiqWPd27zdQ1wQyJA7AusBPcaDkUYGL8jRzDlCMZRpFyhNLy+Dqe2O8P3yfFSk7XofpcF4D4
 KG4cxcTJl868pmaKNkRWIYDJZAvXqR5BPygQnCOXnOAO918DZcAFoFokZHnqnbMqJErEE4wdhVY
 QCYm5sWaWYi+TWx73haaGZd8FRzzZ0P/QYnck+p+eBsZnFiPl6kSbt1/TQfdGiT99onl7a3I+oj
 rXU/hbOfHhTTfaGbGJUja7hBMzPKXIyNEk3+inIRiI9jmyayobS3tShF3WIGx7n3T6XoZW8hTL1
 EnMY9qL1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_02,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On 8/6/25 5:16 AM, Yongxing Mou wrote:
> The QCS8300 supports UBWC 4.0 and 4 channels LP5 memory interface. Use
> the SC8280XP as fallback for QCS8300 according to the specification.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


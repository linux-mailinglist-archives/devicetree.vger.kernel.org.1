Return-Path: <devicetree+bounces-170601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8D9A9B938
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 22:31:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01B073B44A6
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 20:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 429B821E0A8;
	Thu, 24 Apr 2025 20:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z7+mfPAG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1A01F4CAF
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745526657; cv=none; b=hOEhw/2dO/t93mvlgfeDdsUATE6lDB1E9Das9mO07zKQdjscRYNOyzeBI1UVPK0tqdOfiZOUHKPt/5XxrD3lI6E4cy20koWIE1RAXCItk+Z4BeBAKEowfr/xp2Pan0g3sFxGBCxViHr+s/vw68Ze+6mUwqXm+3i8elMLTYJU7yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745526657; c=relaxed/simple;
	bh=11+oZqY3yPlj1UCXYYlzVbHujQ3EtK+Zuk1U8d/56t0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Jp5egLOpGJ2P9GNzeHEqL/CTorDVA+0sAo8YjxumvPBaB7NfZUvfpC7H5Me7asF2v3GV/z27PRmr3vc+N78pqjgFsvf8SGA7Ere4KXEjxQh3zhxdYqDXLwmka56zUsWjwHMSVDA25DxSlLyt9eNBA3mnLD5NsE+TBTHO35SH9jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z7+mfPAG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53OJn8rf009761
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:30:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OrVdlXQhwAviji/junUKUi6SBanWhUpShBjAwIaBg80=; b=Z7+mfPAGnR09NHFV
	KLkeeJm3ChXIVqJ8GC/yJbRe990eCzUB1qJpd9v8c+nWi/1FsHZ4wOfPfqhy26Op
	uCOj/giDN/qRtDNuO4KZt0RMAu+JwCuHxGRpOAfMXi5vSYZEtyO4Pjrtg9y05FaG
	FjvX6OAc9Irx9xhguvLbAuxcIFPNo5XS1DVtmklYE1xg29kgwLa54Nhrfv9wJ6ly
	QZpOMSL1m5P4/Ad1eQ4hCLTPeone40T3t4hiVCnSwccx2oHZPfC+/VfCH4+x/Ss6
	ZkYswBq+ntvtLu3Sw/kMFBAzUc0F6LwmxCN32qto3ZWyGDJlISQpYyUYbULX6MAu
	zRPxyQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1pvp2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:30:54 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c545ac340aso19958685a.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:30:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745526653; x=1746131453;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OrVdlXQhwAviji/junUKUi6SBanWhUpShBjAwIaBg80=;
        b=HK8UtGHyTX3hUg+CrAAENGQ3WmL5av8TrJbnWctT8a0bnn3Wx7v2aL4wgICwzpMlNl
         vYUlDgD9R1SkGatKZmUwVpeS3maZ7wYtU/nVQDyGA6/iEXDU1TxZJxpIT8GDx8SjHc08
         h+jsobk0rRFZCWFlYPU8lCQZib189y40lbEtGXybUE9r+n4arS17qO6Z3It/wBliWbBL
         aAy5OmM9rLEZKdYl1txcfvQim2F9O+zdCj8a+joD6hZZ7bomabRENXIjnf/IsZw3hWPQ
         0KNhG6ZFafMTHSW/u/h4oiU6F2Foicesy0V4q7QWcSpG3WG7Hoz54mM2LlySV/E6WCth
         r3xQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8JokgiiKbF+bdJa+IRhLi6Hw0YWIzL/2i4150efGOR3bjQKHjkuWT5XijXmmp8jfplBZ6vXyYiX80@vger.kernel.org
X-Gm-Message-State: AOJu0YxxRDrMfP0+SDQQIuh1qdvkUcGKtlHXj0nwzfbIx0y5DVCNxkjU
	2jmXhUNfx7qJ6O8iFPPY3CCQe7xxIf4o/UqNuQ8MS2z/dRIn8T/Jf8iYCa1/LEdXZIQ5JSfvp0V
	YZnENBwYMUCaSphutC//BJm8P+PHvzEBa+bgJiuEwdypoY8JgdFWqwBF3Xs2vQkwXbj6X
X-Gm-Gg: ASbGnct8rVlv16e1uTzhdLrXQb+XEEB7+0mOJ4eBnwuuIyzZJV/YCL4A/hlNWh6AvRd
	QSCIOOGHMyL56Pkz5ffFXOPqYrYs4PP7j3/ptYdLdXg/UEpK67mZ/OXQ2vdBpbdmRb1+B8OJhg/
	dy67pEzJ7/67r+McN/V9dCwsGYBZzgCtaCxUblyLV1DzdFAmIvJPES5B//EFIu8YU9GDYkm6TWH
	5PetyDT262p/c/TfKFD2M0wPSgKlR3vVfk/MATtDAHVqzKaqs5Cg2iN2D86/jFdAhdw0Fzhgfu/
	SdfLeCjvFHpyFehS2nTijvj78PjaL7LwOUwo/Kp4mQPFXwI2wpy8nnfLsea5eFuAdzg=
X-Received: by 2002:a05:620a:258d:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7c956e829b0mr246689985a.2.1745526653225;
        Thu, 24 Apr 2025 13:30:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRa8MtoW+3I01aUlFs+8CuH59Beo6wFJpbOz4qs/fVt4IP/6FFeT/Y8XMq6k6m3P0kyt9hcQ==
X-Received: by 2002:a05:620a:258d:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7c956e829b0mr246688085a.2.1745526652896;
        Thu, 24 Apr 2025 13:30:52 -0700 (PDT)
Received: from [192.168.65.221] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecf9a47sm14437366b.104.2025.04.24.13.30.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 13:30:52 -0700 (PDT)
Message-ID: <6b286132-1c56-43c1-a61e-0e067a73b615@oss.qualcomm.com>
Date: Thu, 24 Apr 2025 22:30:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] dt-bindings: arm: Add CoreSight QMI component
 description
To: Mao Jinlong <quic_jinlmao@quicinc.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250424115854.2328190-1-quic_jinlmao@quicinc.com>
 <20250424115854.2328190-2-quic_jinlmao@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250424115854.2328190-2-quic_jinlmao@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gv3jnjN0RBLWJM0Y_UZ4XwF-4b_TgP5L
X-Proofpoint-ORIG-GUID: gv3jnjN0RBLWJM0Y_UZ4XwF-4b_TgP5L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDE0NCBTYWx0ZWRfXyoU4MQ4Av0hE mLo6CvaYdmApQejuIJeSgmaHgUT5l8hdELQ1a7xD1WK3s1QO6FNC27m3d8PGLH/R6TZCQTSuvvj CqJGXuDdFF4mfG8Ue2aFzt4tPs1YSDIcmZfsFcCau30CmJ61t05O4Yn+i9faFgXw+OMDXbGt4hB
 uZdLJlN7erAH4I3lx5netaXIexpNh32NDT/+JQcOCMcmjp55ycXgrfKRtOIz/FMFIOVyca5NFK8 zmi+z9PSbU1a/3pdu1zMjgysvXe7PW7t4cDUG1myg621i9asoczOh3M8wEq3cUOJc1Kp+nE3h4B RC2XNL//PJm4RVCOKXNciKZxMeXjXfbX0jKfrmFUFx7H0a2UU+ZsSeYSQGJ7eDOGUOX8J8Jwa1C
 tsaYpU6lE6Szb3u0sH48wY9rK9M4kRrgDD6dbaofN7ho/DtR0lXOJoeF8Xtl4jYd2ClhIlVG
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=680a9f7e cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=7qhtKZ1Szi6igWG7shAA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-24_09,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=783 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240144

On 4/24/25 1:58 PM, Mao Jinlong wrote:
> Add new coresight-qmi.yaml file describing the bindings required
> to define qmi node in the device trees.
> 
> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> ---

Is the service-id hardcoded/well-known? If so, we can drop
this devicetree node and create a new platform device (& probe the
related driver) based on the presence of qcom,qmi-id that you add
in patch 3

Konrad



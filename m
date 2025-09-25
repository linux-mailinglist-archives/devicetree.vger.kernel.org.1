Return-Path: <devicetree+bounces-221373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 840CEB9F0A4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:56:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF73A4E371E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130832FC86A;
	Thu, 25 Sep 2025 11:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ghK7Gy6U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677462FBE07
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758801363; cv=none; b=IIbaURExKsyKDqV+Fp+bspTkxmffKXTVH6WkryilVDymmVg2faGwrP6dLvONcsDDkfJJJDTJIJ6a40joGXvU3MSVgSD1oMv0ETj23p4qsQHL0jEbMKQx5z2n4Im8DE5B8wfHKP/f/7NbCj0FzxOg7iDSIL+gTOZv8WggVFmNOS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758801363; c=relaxed/simple;
	bh=yl52+8t16PBY6bibfVojwBzJQIRHVSQe2DfRABhpTfs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kXT5s0wSY8euXUFc6Q0n4YQto7gly/vKj3p8HOYB6/tCxiTA3CRuU0LiUW8yW7bOUAJhJ9DItidwJ2if6sajWbgHBdWVCfItNyWyrUk54Q1NNXOB43MK2CXlZWGw1QGGWFZIAXIZaRjkrwHOk60n2GXf/xCjsZ4J8+N/iqk/Mfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ghK7Gy6U; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9SN1F017470
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:56:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BGho4vei24vHpadg3iVDOtkY/sdrfcEeDXVF20xwVL8=; b=ghK7Gy6U3dP69nus
	K1EkoylRUWcWiCXq0RJWUTUIDslnKTYIHtym5SsrlCV3DqbpJ0wmWG+Qwox+Rkqo
	RYHN7hqkRRN0CgBNpntNwi4aqvODBgLrJ9YOjIYqZRZvSWzL8cLJnNbbS36VvlzJ
	Emq8L3BY1a0PDv2NF3CvlLZbHu+MxBTVzEz7tSbBUWepAP9McKfal87L3qLf3yyN
	bJ5B3haiQ1PHNUle9LGPf90aKlFbeRvadOQLjp9ZcDnyvee23rnt5jm0mzWKbnR5
	t4ms2exDANoscV2QbpvVNnGKKtBtDa6zHwFDvhNgu64wwQ6Do9ARbw48SbsF+eaC
	NXjFrw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvk1a15-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:56:00 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7f4bca2f925so2042936d6.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:56:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758801359; x=1759406159;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BGho4vei24vHpadg3iVDOtkY/sdrfcEeDXVF20xwVL8=;
        b=hwoSMmKtxlsArRNglHcaOTfFG46MI3S13HdeY+ldGNYs4ai5a0gA6LJFoq19Crxxrv
         Y9gRdyAJiLl62B7BPlHmqDFrYNmPmVAYbGEbrYgwoh9tf5pm7Vfgqf1vnwIXXRbgu4B/
         afAMtDKtj3u9hPOCz1tGDo4P43EcCaXkSxDmr2zu9A93/X6dy43UcTvVmsfsoBkVOjhH
         k/ZyoXs100RXOxvcNz+HCk5cRIR08QBLwMXfMh39xQeYie/p31nYrag0KHIMRFH3odii
         P67WwGIqvXFshLmdE1vJYZ2v/fuzf/b2gD1nV0UHTPF57uN9kIlMzH/h99CzXKJTJXjx
         cK4w==
X-Forwarded-Encrypted: i=1; AJvYcCVquMxMI/RqgNLONH2UwYkrmYTKpBH7xgykMrs9Q9pyTmruZ/xIaIyNppQYdBeyww6qnMnFQ6QaqtSX@vger.kernel.org
X-Gm-Message-State: AOJu0YynFzzF901XgtGbtCP+PFGU+r0tzGmAMqTjczYFWBViC9cbquJL
	2sfd4ZIfzVzQnSJXPf4/K0s8crA+onyyYLsn1/ue+js6934tR0fMLMGuAN6dBy+wmuS66fU+hF2
	0Cq63uaatMc1Zi2xzgTxWE1qkFGRpxJlMukz8ICGZYmy090SIEbJnKt+IwUxxcqYU
X-Gm-Gg: ASbGncvfEMF19ymkaXLf39oFoI6EuUEqCZGzNtm/cR+8nyCsOP+qNJNdezqCFk5JpTn
	C2Afg3Kv4tznHlJ/LfCvmXfIn2S0zeDBhSVSmMtLGiLyhD3TenU4LLrg1bsc3PpcFUhoz+EN+ku
	wAzMbBIDx1zMPUw2kPLWxCrJgIc6IheBeOyP/ecJ6MyQu5n5sMu+RxApRelwPFVViGhrdEIp69j
	UgUkh+vTyg0Ird4eA7EWaMwYyzglxx1wh2RC7vggZ8eY5MxWopuJ47K99KD3aTwNtoWcSsRkBSn
	U6R5yYJb76Brye3tCUIJlWw0W5HZ6M4U5zTOcBO9v+NxTfCd7Cm3f+iSTUm1KWss183+85eRjlE
	+BcFcrW12mkglMpBun6n1Tg==
X-Received: by 2002:ac8:5d08:0:b0:4d7:9039:2e87 with SMTP id d75a77b69052e-4da47c063ffmr28296791cf.1.1758801359227;
        Thu, 25 Sep 2025 04:55:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfws3DHjZ7NiFj2AF7AaqOeOE+RAgqdSMayjchEUwDWrTLQ8HNN+0mGYgmyc++RfEn9OQlxA==
X-Received: by 2002:ac8:5d08:0:b0:4d7:9039:2e87 with SMTP id d75a77b69052e-4da47c063ffmr28296531cf.1.1758801358755;
        Thu, 25 Sep 2025 04:55:58 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d168dsm160195466b.4.2025.09.25.04.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 04:55:58 -0700 (PDT)
Message-ID: <ee4f25d6-d04a-42fd-8b72-6b272e750b9c@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 13:55:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: phy: Add QMP UFS PHY compatible for
 Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
 <20250924-knp-ufs-v1-2-42e0955a1f7c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-ufs-v1-2-42e0955a1f7c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: iBzuw_Cj_4CCYmwP-ZEQgNoVJlmBSDGl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfXyEvWiPEBXbOv
 lT4uGJpKv5sFG4mW53SesCt5wsKb0ZKYPiuch51URQWRPU7FEbdpUshIz5nLOBQiPtvdOYv2FkR
 pRbCZwXVlykNPuBGmhfSgUKxnHk5JlvZ4pQ/xRGOIu9MqRK7KzgylBqyl/Vuc9UsCoiLgX8gFXL
 yL6o3uROgnWGFOpQxVs0JrinB99WYTfp0cbayibTWHrXF2xFnlM7VnCyYCoSPWmlBrx97xMiwAo
 LF62JyXY8g/P/wzZKWT+aL4IAniQivfk04HONX3G2Otjjr6SkkRyEoF+VS8YHBIBf+T9Sm5yZ20
 qpO3PobtyfvP5k0VWOX4p1J9+/zJe7HlzzuVbCSHs60zeaPCrXGjN0OIEPH+FG6gmD0Bk1VR85B
 BSMIrlhX
X-Proofpoint-GUID: iBzuw_Cj_4CCYmwP-ZEQgNoVJlmBSDGl
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d52dd0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=mUVx_TFFIgGiSlsxcIcA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

On 9/25/25 1:29 AM, Jingyi Wang wrote:
> Document the QMP UFS PHY compatible for Qualcomm Kaanapali to support
> physical layer functionality for UFS found on the SoC. Use fallback to
> indicate the compatibility of the QMP UFS PHY on the Kaanapali with that
> on the SM8750.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

I can confirm the SW expectations are identical, down to the programming
sequences (mostly, there's some minor adjustments that MAY be specific
to 8750/8750QRD, but IDK if that matters or if the docs haven't been
updated)

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad



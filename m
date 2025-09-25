Return-Path: <devicetree+bounces-221275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46980B9E363
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:10:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56E501BC302C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:11:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B88C27FB03;
	Thu, 25 Sep 2025 09:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pcpo4Dcm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B773627AC59
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758791423; cv=none; b=dmbG320X1tzBmZxcAyV1npFEL36qgajqEbi6PYIY0i7xur23lyNy++b8+zMWncrwh9n8tNDxbFp+Pf2BzHQTPTid7mzxRCyifWT10JMklhZMrmaVHf1OudzPL0PqXm85m5G7GLmmhUIts+/KeMfdnGZiTN0ZeottGw7vt2ioucE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758791423; c=relaxed/simple;
	bh=VaO3i7T1b7yOwRkFlMNKwsdMGDTOTdR9OM8uKc1xL/Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cnmipIWBpaH//SYlrXoTiiLPxEtY9kYkFyoQfCDcOpt7sXRRKhjsbv8bDB5niBFMi97jjEOCz/IxN9rAv4JvPewfXJ16HIBt90Onx/798x1KzDJQ/url0rtxtQuKiYvJoLYjDMHRXmU4ov0Q5jJUkyrVg8mu/j1ktzcr4KJ5fbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pcpo4Dcm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0KfHc025136
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:10:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eYZzVW9nVW8KA6tqECyGN+RNlHNLZrOF+4bwFfwCiLE=; b=Pcpo4DcmW+oDY+r+
	rZDyKMfWtqOYmhDD+enL9K3uf+OTqlFyAXN/08CmPZ3ClsBOpmOvqZYc2iq9jzh+
	ZNZfVXyO3GFnzRhVce+wuD/Vi7/nu1KcCHDXjAU4+T+Mp2XXuEpf/CV+ajux7p3D
	/nQW/mMp7q7mXkLksJUAlDZncJak4r6Vf/neAeWxxctL6Jx6VRqBRgMGxgWTd4V7
	r8P2lldig94Y5NjiLSbYD6CxB49v2JzmeKngy8C9KKJD11te01a4oMGirqXLoir7
	8sWfk/7Zs8ZAcisVSWptv7S0ItJSbiOGBVD7kesJwCflFdYvGBABAZ0s3aKQHwzb
	D0F46w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv17gxh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:10:20 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-85e95d986e2so580485a.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:10:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758791412; x=1759396212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eYZzVW9nVW8KA6tqECyGN+RNlHNLZrOF+4bwFfwCiLE=;
        b=mGCM0H2tEqTJ1kGlIpNqikgf85JeseKYMZWc3WHUwQfNh+TW8V04USVW//hkbpGCUR
         MB7kKl1Tkf1OtmDPxoHlOGzJlqKwhWcW948V9tTVVC/76tyZFghGvRzM1X0JWXCH5KvI
         yg1UlWsDujUIvyvpkGl0qAAUuT0rz/B6AaZ8XpkOrypK0oi9JWqivewNt+Uv7a9HlzuU
         TdOtGGp7paXqHOwmaWPA9PQmjQKwgAk3c01+jEazak3X6hqyun7/3OlWt7eDopdt7kIQ
         ABAmPxryevvcoZdmFKlg9wYkNm5quFQVCcupkLbcDKXTaZvuR9ujdWVeWyYoI30V+sV1
         QoQw==
X-Forwarded-Encrypted: i=1; AJvYcCVL322m1YD4FCSvUKdmXG6BL3Urrc2wKUDvh4W4uRrQ6hXzB3CNwP8EyeYri/0ccAHbRf9tI6jQxKzO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx319BwlLnSu1kWSN2WVkdUS9EnnTBMhYuUlEkZEPID/+BIuKMS
	n2L28Hrj1AUx9omJf0D7B1fG0sUIr6GtT1n0y2yuVDINB0lXKGWh2YhOiZw6kF8qZAWDdVTRDYY
	brjQukmV7qXUxHycH6HpQTVSWvXLSWSV2kpGbEhkilHGmY+qJpxUOshQPco36Ur6t
X-Gm-Gg: ASbGnctj1XGqfopD3MeUyWyzeifX0fIxS38NaklNucmfkKf+hqPUXrGt1DowtW3U6i0
	5pDNOOcbAIT6C3Tq0KZ72I40LP3gqJvD4wgfoEHWmpm0JgowfmGVGzllatGNJ1uiy8vYTo7W/Li
	zFFwBJa1bGT9w11me6he6Vm9kifR7ovZFbtUVBXWxUuLF9a0fyhLSvySVy9v1E+lw2Cj/J/B2oP
	UpJ68JmlCVkI66TJFiYeZaAOMQLBlanCqvc4ZtrNryOs435oXaB5iERNJ8DUr8SknuNBHv0v4Kc
	zvgrM1G2WcK3JK+jpQym+gZp9RfjXfNjwJhnJNX8U8RL/fuePBI190qAiVSecPzt+IaIJebQVDF
	Zb5Cg6tTLVIOD3RinDrlF1g==
X-Received: by 2002:a05:620a:1a0f:b0:827:52b2:42be with SMTP id af79cd13be357-85adf5d2741mr246323785a.1.1758791412056;
        Thu, 25 Sep 2025 02:10:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGADNWi8FxPoW2rbFkEpU+q5ie6LXLacUuiyEXFSNUKEa5yYt7K4AF5EOvbsvCoObZuswbrig==
X-Received: by 2002:a05:620a:1a0f:b0:827:52b2:42be with SMTP id af79cd13be357-85adf5d2741mr246319685a.1.1758791411237;
        Thu, 25 Sep 2025 02:10:11 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353fa65a62sm126307366b.47.2025.09.25.02.10.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:10:10 -0700 (PDT)
Message-ID: <ab28a715-6b5e-4adc-8889-f47ee2e18d5c@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:10:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] media: iris: Move vpu register defines to common
 header file
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-5-e323c0b3c0cd@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-knp_video-v1-5-e323c0b3c0cd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: nlzUoH0wsqF83JYDDPbQ0UnrjtOO7Eb3
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d506fc cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=-FEiAWMsPlssRVfEe-4A:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfXwItYITn3qL/2
 ye0tXzN3FOSoFQG5Dn2/25TruxYC4HTMGN/IoYZJ8cwnjuE/dBlrM63AkK1PtSjPZQTdUROsi3Y
 v0b1PWRUMqTdlUR+Bcl3BuFiTT97U7E2xXBeQyUKS3G2Xvh5l4CH+kFi1CD/LpDdTB0pbmzB001
 t6kZX8gRALchAFrkZcushyFtRA91g297nMevbCXodqJyYZNahJdVQIym6feUMde00F/1ibum/WP
 NZxk74denE0UxfTWGhtJ1tBoxY3DIe1YGxm7Q/Boa/7vk5X0ARPMmWvKlVZaT8OsVncE83HuPhK
 rjjY1IRX7cqJ35GDW+khTNvjF4hPfWDsXq72OVgiSxIMxNY3AJmE5SS+Qmx6IR9s/0Op5YKcTC4
 ML5AlyoI
X-Proofpoint-ORIG-GUID: nlzUoH0wsqF83JYDDPbQ0UnrjtOO7Eb3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On 9/25/25 1:14 AM, Vikash Garodia wrote:
> Some of vpu4 register defines are common with vpu3x. Move those into the
> common register defines header. This is done to reuse the defines for
> vpu4 in subsequent patch which enables the power sequence for vpu4.
> 
> Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
> Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/iris_vpu3x.c      | 36 ----------------------
>  drivers/media/platform/qcom/iris/iris_vpu_common.c | 23 --------------
>  .../platform/qcom/iris/iris_vpu_register_defines.h | 29 +++++++++++++++++

This is a slippery slope. I think it's better if you explicitly say
the header file contains the register map of VPU3 instead, as let's say
VPU5 may add a random register in the middle (pushing some existing ones
+0x4 down). Such changes are annoying to debug, and we've unfortunately
been there on Adreno..

Because you're using this for a single common function that is both acting
upon the same registers and performing the same operations on them across
VPU35 and VPU4, it's okay to de-static-ize the function from iris_vpu3.c and
refer to it from vpu4 ops, keeping the register map private to the former
file which I think will end up less error-prone for the future.

Konrad


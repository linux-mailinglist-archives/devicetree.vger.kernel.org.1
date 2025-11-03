Return-Path: <devicetree+bounces-234343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 44139C2B8F0
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 13:01:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5BDCD4EDF7C
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 11:55:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E1EE306B21;
	Mon,  3 Nov 2025 11:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LPUQZ8sW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J3MCHhvY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D5D302179
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 11:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762170898; cv=none; b=E3JlRZWfvttMcSfFdPBde7IUJa9n7Jgl76IKTOVBriz1Tk7OBkonQJak7IOEIFo3zVmZz1MBPSJ/w8xbkXjJROJVjE+AoxIelpw7SxCnxFthICxQwifme2BRA7gNeRRN9ADYEn0JZ4t8LXhkTHrxJDGVKk9YbapPLMLFKekMS+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762170898; c=relaxed/simple;
	bh=kymNW3xvi1sY3bz8PVTKGKJ8R9T74mxEzswK6AeZ+oo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t4zjsXWr79gJfDqLLXoiy+wKFvPshuMQkmm7S32VnVDCMvBQlZcIxggYfELHZuq2xRNELGaMN6I9L/c6RU1h1lgIeiJwdUnGZOWuUcXDXsWMFYWF8mSTs7S6ztptWK1P7V4Fu2hQMF1/v6B3GdUGs0IGuS17ftRe3sy45FoDVJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LPUQZ8sW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J3MCHhvY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A36IhUK2247233
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 11:54:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dEVyFu+6bmZTYlafiA3YdKMFFRK2WLWXWR9I9stKUZA=; b=LPUQZ8sWqOiyTluv
	YCLmfyLYcLyPYJ/m8b9jvJF9GvfzefAZYZNx2oN5QxqjNMopkNS4nCsGOFix6KWT
	cG63U01NJ0MEwNLMEi+u/rzf4EYrKTKj8JSXxIskmfkJtw3rdMcH/HTFR/FbvyEw
	GxIqK9se5Y1IM/bBO/OZqsYpsvjkf48kRPlyD4T5AzzHV4rHG1MoIU9evzXqUi84
	8SxCZuyUOXex35AAkuBJFgOdmWDMgXyP1pYZ276BPfakRdGBrVDh56JHEJe/UG2N
	kvrm0+aNLW6R2VdYx6hL2M4W0xC3lFNImNt+gMa1DwbmQob5jTjdjjgE1wvz2ycb
	9FwiXw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6q0yh0uu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:54:56 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88057e35c5bso320256d6.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 03:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762170895; x=1762775695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dEVyFu+6bmZTYlafiA3YdKMFFRK2WLWXWR9I9stKUZA=;
        b=J3MCHhvYMsNaWycXWruWNmoZB7VcW0i52GJpKjOhyVShOVz0kD+TKqWN8xOmpL9K4k
         WwIlMZJqqjWH8meNzeGPGbjor7J3E/k36eHuYCnmCMbYu8twljyLIIoL8IKv1sqepIzg
         DTxaakA/Uf6ZodBNSu/Sr5OXr8kChFWlRMGbchoN36yQGjP2pBNGNzL/lvbV3QLXevRB
         iJIe4uBGSw4wbVU5rwfB5WF4Dc7RDFBwL9tr6jxK1OAOxPH/LMKmyJNMemefq0fFY1cl
         nws02TeZ+U369H3WYsnF71aqk/5PeN9Czip+J6enpv9aPOPqBEpFcTljg9vKvIGi/JFZ
         3ArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762170895; x=1762775695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dEVyFu+6bmZTYlafiA3YdKMFFRK2WLWXWR9I9stKUZA=;
        b=uZWhdLDIgYco+d5ctqUwu2nW4UzIxrRdPRIr89jSLRDyfeNe4oow1AtIX/nJN8j/ZV
         t5q3FpimDXo6x6JrRvKKtAbS0VasRddymCoixmTt+NpAVLcRA1G9Z3qviYaWPhyGkpCH
         OitQMr9s/9SH3drXgetnjE3u0RjUbPCGuNHz26pqXTEsLs2AxEeOFh3+Rr2acOM4xges
         Aj0bpxsfAeiZbmrgqvHkpdJdCoUiOS7NLH0zuosaxUGV1GC+sF26cToxVNi4LzGD9Myb
         6EVU4XKNTz/WjEh5WTLOH1oMZa7s0W8WTb2Lq7POkT8wzNZI/3RyaB41D4VrxQ8OK9D6
         UdXg==
X-Forwarded-Encrypted: i=1; AJvYcCUaWeL8keU+y6XdT2aZyTPFOtPHt8HJnCKy6rHPV7acVITYhq7k+L86b7OCTV6220TVvDfXTwHInal3@vger.kernel.org
X-Gm-Message-State: AOJu0YwdiszGJlOfvzRojTQRbgROXsjpGV9FNcwvuxdc6PFBqksjUd/3
	qPn28FAao0Ev5kfgCrP4VxsSQR2WFbtMZ2OoEnh2R2hG6ozBz4aFfwemmdwAvng0j/lPxkZuWOY
	rzffmLyv/jPRXreFghmZiQ2DACAc08l0ZxBgfLxgqmSFIPGpzvnNGvj9X3xpgqeQ8
X-Gm-Gg: ASbGncsP5s/FNChlluv7NKS1HguFviemw5i86ziZkp2sDbQzh+8dmXS0uYAELMnzHck
	fU40+2BS2DmMftcTsiUFYTaeB9lIwtGUe/xuVrMLXtyJZ1xgULXVI9/tFFHeC9cQtwMlDWjs1ag
	nhIF0nv33Y2/1FGAxzLDsQG+pbVPlLfzYZ221IPVrgGybJJreESXAv9euz9z8E574PEBMFePIFD
	oIKqbiAV2bAhi7ThjhNH1TXDwaOEqLAgxGPKfi4aG7EdR6T3SnpGvjT/G9CHfMjyZPnCn5UP4ne
	Q4BAhLNTYaibx7nP14XcIRh8WyX79/grEFZqk0+06FJPJAQYN4GYgDO4de9pvTgn42y89q4u2an
	0OGLiHVmTD0OZlXbLJ9pN1viRjasxiCbAOBzZOP49z8WqEo+84IZzWrUL
X-Received: by 2002:a05:6214:19c9:b0:880:51f0:5b92 with SMTP id 6a1803df08f44-88051f062e8mr39427316d6.1.1762170895347;
        Mon, 03 Nov 2025 03:54:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMiDz+lDCli9dZFeqHisvcD0Vrq2kRQUKbIV6KqRS7V1M4g3Nb4MKb8S5qdZwNotx5iYmXow==
X-Received: by 2002:a05:6214:19c9:b0:880:51f0:5b92 with SMTP id 6a1803df08f44-88051f062e8mr39427096d6.1.1762170894821;
        Mon, 03 Nov 2025 03:54:54 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70b8191679sm376641866b.39.2025.11.03.03.54.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 03:54:54 -0800 (PST)
Message-ID: <c58dd9d3-2689-4a73-a854-04cff5b44216@oss.qualcomm.com>
Date: Mon, 3 Nov 2025 12:54:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: qcs615: add the GPU SMMU node
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Qingqing Zhou <quic_qqzhou@quicinc.com>,
        Jie Zhang <quic_jiezh@quicinc.com>
References: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
 <20251017-qcs615-spin-2-v1-4-0baa44f80905@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251017-qcs615-spin-2-v1-4-0baa44f80905@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NYbrFmD4 c=1 sm=1 tr=0 ts=69089810 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=iFl-POHFLS5oe-sZTncA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: -oVejCAqBvw4npLNFRwQUcNCbdRfvSoc
X-Proofpoint-ORIG-GUID: -oVejCAqBvw4npLNFRwQUcNCbdRfvSoc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDEwOCBTYWx0ZWRfXxgoukrrzKL5M
 Ynqbjime7YxA/ndufKAjBqpAYYQrkZV3C2znGCHmlaELmxGNdimlXWdVHMg3F2QG5EsnnTvpYvF
 tsivRiSSmrepuqDduIEJLg3P77IhIxTm6tcwClNw3DgOGT69AyDbFYJH3NZW6GIWlz5qrNDc1td
 F3rmD4wlHT9HGd+AYdNz7ktX7W0B+kULZE8fVkrI7hka2wN4uPYKLoK0Ex53klDzN1udgez+kpv
 jjQN2g3OW9XN1kW7ausmcl1izIW4pz08HGjeyFRm79FqizhEpzf92nPGO4d6sGnxdoTXaLMqu7O
 zXXa28aW8yEnTHbuT1DU5+Fw3i1QjAU4wbsAApg3TgJvOUitEpweZhmfuVgUzbgYv1KKcU0Puhr
 z9f8LNAAS+eeyZZ/elvuJkZNlne2bg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-11-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030108

On 10/17/25 7:08 PM, Akhil P Oommen wrote:
> From: Qingqing Zhou <quic_qqzhou@quicinc.com>
> 
> Add the Adreno GPU SMMU node for QCS615 platform.
> 
> Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6150.dtsi | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
> index 3d2a1cb02b628a5db7ca14bea784429be5a020f9..e62b062c543657b6fd8f9aba7ad595855d8134d6 100644
> --- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
> @@ -1700,6 +1700,33 @@ gpucc: clock-controller@5090000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		adreno_smmu: iommu@50a0000 {
> +			compatible = "qcom,qcs615-smmu-500", "qcom,adreno-smmu",
> +				     "qcom,smmu-500", "arm,mmu-500";
> +			reg = <0x0 0x50a0000 0x0 0x10000>;

sz = 0x40000> +			#iommu-cells = <2>;
> +			#global-interrupts = <1>;
> +			dma-coherent;

please adjust the property order to match x1e80100/hamoa.dtsi

the values look OK

Konrad


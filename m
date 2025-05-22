Return-Path: <devicetree+bounces-179709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDF4AC1325
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 20:16:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC311171856
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 18:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35ABE2AD2D;
	Thu, 22 May 2025 18:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Io9dp5Rh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D09727715
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747937793; cv=none; b=I6abr1HBnPZaEBzmh9zPl3GNjyzUwv0hCVojgtNx6KH0Pyi9xXz/0F7vsr0w8Tray8LsxgBLA8Hzm3MmyGxWL0cD1VrNNvVD2BqiEBblMagY4QLOw8HpUR5LJQj2CQmjhSWaGI1q4isogHuaawHAomQux3aVFvajRgib4HcvM9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747937793; c=relaxed/simple;
	bh=secQdXXEgFxsmOhPWrTAs0k7BqWC8fL1By+eEVP1/k8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=js+0jItCggitCV8FNiqOMZD8OihAbY7FqkWiGsrrypz8buOR1ylCh/NQ3OKqyVWkF/QAy0IcLRfi0roaBKNsmVwqXNj87G2K9x8SowYbryZr1bTKgiiim3iDhSyOjwSfAcheI8eKOOeE0zrKZBICLiDgn49Wk+t3QeADr3KtA6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Io9dp5Rh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54MHgeHu014011
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:16:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vd80H0upZK9Jr0k83Vkq4eqyU3PiY5TNFpb8R/4mM3w=; b=Io9dp5RhA7L7TC+1
	vFW+pX18qrmNfTtj/2tCqrg0pn/HnJtkR5o9c+TjVaLOFCN9SfBuYLtNpjje9yMh
	s++10oSTVaAOFwpLAQ7BKfFcM4/VuJsErHNxqiTUbH8q7nBn2DCZ5xKRcOUoMJHj
	dg+V1lnsKGnoh28C6WcSE8Dvv4OvR2AK7iwx6u0mZ6GIR1zuXdOd5x6BM/fyQhFE
	Nj2J1R9fxlJ6Xz7AQP4rmgOKB20Ti3aYHKWIf6tkC8cMSgl9cvegslS9c/3ejJK5
	0W7YXYKaqroxyE0LEK3NCnPZcZ0FXy9CRQnttlGncHqmSYhDWbRuqfSChL69zy0P
	TY6PGQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9ya92-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:16:28 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c552802e9fso204369985a.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 11:16:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747937788; x=1748542588;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vd80H0upZK9Jr0k83Vkq4eqyU3PiY5TNFpb8R/4mM3w=;
        b=ffMmkY+fybxszvNJUfBS3hrZnG2TOHF+8y1WJO5SAXKpxye0TvfDCvMjMmmq1TM8/W
         2Raq3J7FR8FvyAST2rCT7EBiSWwFLrUex8aZx298429RPNyGuQN1RGJ+ymaC/zb7wyIQ
         KINKXuB60lFbL4GVrmP8sKqyjuALZdVct4dRqOm4bfcCO4KvUzYP8DfTbzSdLa++aZgG
         J204AEepVF7dAG3mGTJ07kgKOVI3p8MZLUnGD137bLxbfnJ97Uir0mUEJhr8hbVnPjUK
         lwe2XHRS6Me7n3FeNZDLYTKhVlIU2SBkR2VPvsSa12aHByNSw8bRV3IKy0DHUAQ2tXAs
         4rFw==
X-Forwarded-Encrypted: i=1; AJvYcCU1je9sYPSQsQ5if1/NTQwzo563YneSFsYvQunImAXHFJQG+E8/C/+ToBqLyZUivLRlWdO4PTE6KagP@vger.kernel.org
X-Gm-Message-State: AOJu0YzSTA/EoT6ZrBtQ0bZuPds12WasFNSseiQHM8alAuX/Zc+1E2Sv
	mv5IMP5pz5YNObxnCNRUrJ+5MH6PFxNNIj7AECac1w2SbS1E2Ln9THfLLAwXTYJA9faH70J9uUB
	so8nVpAWvS/AI6KPq4x4gGrQm1jJAAP4+WUN1M6atpg4ne73fcSotCEEDRGHMwPxt
X-Gm-Gg: ASbGncsUjU8RP+5A4uCHft91Ix7GREIT8rXASUXqhAnLgsMBkGVRCZf8MrsaqwYBoz8
	E4FoX3xK7LxtqVdenIqN2awJ7gdRBFbZfqBJ5MZTFqQ4/iVzwAvntppH5oS+uIeK8oKMLUSILmc
	j5LFn3RMmR6oyFw75ZRVECqs1bGbGe6B9EkfRhcfQWmAF19Z/gd75VI+G9uLa8Phs6rYtxA35Gd
	gvX0bPwlCsie4+TCnIOhf7a0HR4useTtioke3yxrQDRx/FTJGKffkNtdj60PcN0KBgPmq2wOC2W
	wVXdH///qZvKKrvKJii+PXlI0vbm+GHv735I1LiIcbl6NWfdLwlV4e0UtsVnQWya4A==
X-Received: by 2002:a05:620a:27cf:b0:7ca:e519:6585 with SMTP id af79cd13be357-7cd467237e8mr1424903885a.4.1747937788068;
        Thu, 22 May 2025 11:16:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7zzhGT/5VJb4RVwNUci3BKE6HkwyeAUZ42nE2+lAjreHoCnTgE4GqyoQ4ph1hnGhM2Vtkwg==
X-Received: by 2002:a05:620a:27cf:b0:7ca:e519:6585 with SMTP id af79cd13be357-7cd467237e8mr1424902085a.4.1747937787705;
        Thu, 22 May 2025 11:16:27 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d06dfa4sm1119265866b.57.2025.05.22.11.16.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 11:16:27 -0700 (PDT)
Message-ID: <fd2b7010-7935-4299-9b72-e12d41014d25@oss.qualcomm.com>
Date: Thu, 22 May 2025 20:16:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] arm64: dts: qcom: qrb4210-rb2: add VA capture
 support
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Mark Brown <broonie@kernel.org>, linux-sound@vger.kernel.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20250522-rb2_audio_v3-v3-0-9eeb08cab9dc@linaro.org>
 <20250522-rb2_audio_v3-v3-12-9eeb08cab9dc@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250522-rb2_audio_v3-v3-12-9eeb08cab9dc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=682f69fc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=tiHu44C2SuCey4_Rhg0A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: dmOVMSEUwBcBEXTKUtwa5bkjHP5dKJPS
X-Proofpoint-GUID: dmOVMSEUwBcBEXTKUtwa5bkjHP5dKJPS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDE4NCBTYWx0ZWRfX8PPefXO5D0UX
 493XZgwFefaEwcoJwfiIqQATI1Wi0lbSdPL/YLStvWsKkxMCMtK50eEHxV7XwX1s86TVPKgtX7A
 +gnX3vTYB3AHKx+W3eshZ6zFaffz8e2QA/dqx24TwIRSvFQ3FEYoDryU4OnZHflvDsnKO31Am2E
 GH5a11hV3B5lJTWJTCDP2DcqIlCLl61loFRZRL27hTSF1CD0gYKG9iriahX0vpWGw5A2bWrRrRp
 Rqru9OsVzu1s4mjSDssuuu4e8/ZxQnO5/Z2qSYooKFO3atH2pPVeou5jY5m0Ze8kJCwQcMYMxke
 5q9dn8DOUDI4THomXvKhXnwwT2DCXSC0PzBd+xPrCgyLSWCVR7RUeUYb/4b0fuHonCnwRLG4JYV
 /E5BrNWymc4eWSFSBm0sH843fMiSjNI1eFNvYAmEcTs7UiKy5Z8SdkjwOg03RKe/3KbwP/0W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_08,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=915 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220184

On 5/22/25 7:41 PM, Alexey Klimov wrote:
> Add support for audio capture using onboard DMIC. It is directly
> connected to vamacro and txmacro without any soundwire interfaces.
> 
> The capture was verified using the following commands:
> 
> amixer -c0 cset iface=MIXER,name='MultiMedia3 Mixer VA_CODEC_DMA_TX_0' 1
> amixer -c0 cset iface=MIXER,name='VA_AIF1_CAP Mixer DEC0' 1
> amixer -c0 cset iface=MIXER,name='VA_DEC0 Volume' 110
> amixer -c0 cset iface=MIXER,name='VA DMIC MUX0' 2
> 
> arecord -D hw:0,2 -f S16_LE -c 2 -r 48000 -d 5 record.wav
> 
> Cc: Srinivas Kandagatla <srini@kernel.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-234156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 20993C29384
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 18:18:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EC9B64E1F96
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 17:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 432822DC33B;
	Sun,  2 Nov 2025 17:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aye8SA+T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L/54NvK5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5040223702
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 17:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762103894; cv=none; b=XCaec3MR9ojIAxbnNhsYlNKrX+Fk4DN4fRjxBrXxnosMVFc6R9JHpK18NuetWOMnYTmvQSLqrr0hjQ4BKiogdT3MdMNGK5xw9dIB0Lp3edTaamNT5KRHyWTgIkGSlxa+RYaS5ch+JzX1GZWSs1zUmDK1dzZjGNkSCfsyfvVLmxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762103894; c=relaxed/simple;
	bh=NtlclFDbgys6p/QZHwkycv/xOaVB2gh9fmk/1OBfx+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kHBhBciYYfElVCdWfl58M7f/g9tkS4AqJMgEhnz97p7Om01Cra+7JXtGvRhd+qeeaqt/mNHTGH2Zpa+l5VcZOoUOWuQiptftTrBx3kEMQahWZL7Lihl4V6KqO21oTLesPuecm6D+q6gw38KJ4ALg/8UNqR7QHwQ+oZRg1aMia6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aye8SA+T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L/54NvK5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2GfWHk631368
	for <devicetree@vger.kernel.org>; Sun, 2 Nov 2025 17:18:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aeRZyUZYi7aX+RIWfhNiPeJfiMbKLxGi7DdTStgd/lY=; b=aye8SA+TyfdJA0q8
	kP7bvDa+LzwXA+x0BQ7mIzZTrtd8EcQs1D77yFy34t7mDozG2puIVEviq1qWJZEp
	hT0PXOqdeglDSR+2o3XWVYjbhWsy+SaUs6c8V+JI8DePuKJcGasmNlblPEkjCA6f
	Wete+uYpfeXhG+VNG9l+0XhpLC9Uu2Sou2NZoykIopKYjGiKgz3dqxAL5HNvA/rm
	hLsztnELG8QVZZgM2fmorj9IFTdEyGs5UR/wNR8GZZA+rOvT7ESRsboQRjqzxVAh
	/+g12HuOH6e4ywEQAQ/wIQWhwlEsDBUmgm4Gl+Ccxn0Re+JrkC587gv4ddGNNRbH
	u2eJjQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a57weakpu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 17:18:11 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4eb9e480c15so55868271cf.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 09:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762103891; x=1762708691; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aeRZyUZYi7aX+RIWfhNiPeJfiMbKLxGi7DdTStgd/lY=;
        b=L/54NvK5K2oEfnGJz9MuqHwHMvmiJIW3BHe8MUOf87uUCLQ+RwsQbVfNJUL0b5kRV3
         BQM8f3mSmVLChFpuob2kehnc1Seq0cCU7Gk8RmEZInmJvF4U5FhMPOC88UdfXhE3fJix
         bO0Q+qEEImrpb2EMvpXxbWJZ5oZP5dtj3lhVR6vnd8wKDRDiwmnfDieXLlFdATo9tEkW
         fSp1Z1ynus1HqsM0O98/d0lwoVF/dL+h8j0JWCwYisDUZVhrYd/kj804W5ERJUcm6Hvp
         PvLwISyJpDo8zKCikF0qJTU7/xrhQZZgUXDaoXb0bOJae3IufuO8OG0r/tcIfmv6IV8O
         t5og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762103891; x=1762708691;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aeRZyUZYi7aX+RIWfhNiPeJfiMbKLxGi7DdTStgd/lY=;
        b=G/tjh1usCsCIGEAGnIeNfsl+xLL/IIZSwUUT3ZrCzuutOwEzFXk+Jrgt4gvcamQswr
         BOFdTRajz2SjFMhyffZLVrbRe4htPXFPwOB4Bbj9akJ1KieKvBzlnv3bm5xxcH+JenkL
         BZWvL2ljfxF7+NDIDHKDVFU/tvcjWglNpAS5nz+OInZMmBcovMMyHKK+c37BgRuUq2jX
         GGfMFVt+B60CXd+H/lDY8WhgOHP69BzaO+iBvVJ8tWOilsAJ8b9UTMkFLnfqtNjX91LE
         VqYQ507S9vKPLCePULAdxCK+KSy4RMcA1s+jP16Qjuj668Br9u9uCSoRPaKtE+2cwr+u
         +Fjw==
X-Forwarded-Encrypted: i=1; AJvYcCVR3ZG+RF4vSHk74nyXnYLT2WPuaU3EoM0baKkx3W2bv2djkbz7vH8QtX2ZFH7shua6v18fwJZIrSkx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+0C3V+FqbHPRS6gHAVggrfhWC+RJp3jBHEs1inTgeiPkuXTC8
	SEn7h1yF9nHQKQ0qAr5Fx9R7a8g5dxv9cqrIJ8zcMiKILPzg4KKCT5K98PACS8MOuJc23YagXWp
	nmpz9no0P/8uAJQ5sUW/E0alpoHuTCVSHdpnEY7DXu41aDqZc+0pV6BWbP2i1YY1C
X-Gm-Gg: ASbGncuusrV+PsjakiCgUeOIBTx8+n9OSpBiavAa6u+Dc4Wa30cLMW75s9eDDvyiFig
	V4utqijeCRpf8Vuk0g3uSeT7oVUmdDV3fXC94IZtAe9Amnui5Xm+OKAethQ9haTKkZ7SQW/YXVy
	+cSbfbKXVRD/QuAf6uYxk5XZNTUsqlpv2gZ6EWGBmRXU7oqsTCob8i5XqLFXU5u9LxNekuti95+
	VuChdZd9Tt0UcR9qgWcIfswJe8vuQctndJWdSkTnxYupVnnlvmfEUMrBS/74kvL2X4UMzbYCHli
	VW6Ybt/Pq8HsehFWHuD0jiD+y7bMlKC2RTfS46ChfmK+uDIApsU3ezqDqstr5nYOrRGMBmiZDOW
	/0qOEayA89xHmuFAHBXBrNAVKHoovtfHGJ4ZegNjwNLHn2S4SfASl1inUE7aUZQ==
X-Received: by 2002:ac8:5ad6:0:b0:4eb:a8ba:947b with SMTP id d75a77b69052e-4ed30df2e84mr137632281cf.24.1762103890916;
        Sun, 02 Nov 2025 09:18:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCiw3q1aivkOxuxe8tCdcM9EP+t0I9h3ckG6VtvfFNsJQhBR6kF6ZE1dwvvuxyHVpWI1743Q==
X-Received: by 2002:ac8:5ad6:0:b0:4eb:a8ba:947b with SMTP id d75a77b69052e-4ed30df2e84mr137631821cf.24.1762103890321;
        Sun, 02 Nov 2025 09:18:10 -0800 (PST)
Received: from [192.168.10.38] (91-154-146-251.elisa-laajakaista.fi. [91.154.146.251])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59425d28de5sm1164418e87.59.2025.11.02.09.18.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Nov 2025 09:18:09 -0800 (PST)
Message-ID: <d777a9e1-43f9-4028-a342-e723dd2c800f@oss.qualcomm.com>
Date: Sun, 2 Nov 2025 19:18:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] arm64: dts: qcom: lemans-evk: Add OTG support for
 primary USB controller
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251102165126.2799143-1-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20251102165126.2799143-1-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69079253 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=CKk/IlMN6Gw3Dq31eR3Dfg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=7mYrOhUVQ_mZITg_WmQA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: KjpwgLrb05ODD0HLJSuDOq6izhpahkvs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAyMDE2MCBTYWx0ZWRfX6nP12vM4g/iB
 MGlnn71RyWlP73/dKM9I0CNYyLIIferoBKwM2t/Nh72Hh3oxTLD/v7xPNtu8eQ3uDY3pajwJmOU
 1sKEXJc1FyvPA94ndHB8cWq25c7ejv93yZ8o0fLxCbmsMB/gmNMWbvRj762vm2/r5cwW5ecSftA
 EnVEF5TBAe6FLY/76hFXa58+IRN17FoVSd0nH963LmyChQIxcMfpzNjsHAUwdDM80+vaxd/1/ki
 7eYdk0Q9QbKtYiQeC06SNZhFrXvEFic+vOZMoQODqQRA9TgO578dKs4YQIdH2XO/SNtVpTT8Pbs
 meub+1C/CUHf0Z40wVKpatTo2EqIjVke5d5MTzHYRMWz1dbXp+0eMDGp70MX6IU6NQsmHQEawll
 H7yzUVjApQNuM66oIF8UUxQwH6P/cg==
X-Proofpoint-GUID: KjpwgLrb05ODD0HLJSuDOq6izhpahkvs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511020160

On 02/11/2025 18:51, Krishna Kurapati wrote:
> Enable OTG support for primary USB controller on EVK Platform. Add
> HD3SS3220 Type-C port controller present between Type-C port and SoC
> that provides role switch notifications to controller.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
> Changes in v4:
> - Moved remote endpoints to SoC file.
> - Renamed vbus regulator name.
> - Moved usb-role-swich property to SoC file.
> 
> Changes in v3:
> - Moved "usb-role-switch" to lemans dtsi file
> - Moved vbus supply to connector node
> 
> Link to v3 DT:
> https://lore.kernel.org/all/20251024182138.2744861-1-krishna.kurapati@oss.qualcomm.com/
> 
> Link to v2:
> https://lore.kernel.org/all/20251008180036.1770735-1-krishna.kurapati@oss.qualcomm.com/
> 
> Link to v6 bindings and driver changes:
> https://lore.kernel.org/all/20251102164819.2798754-1-krishna.kurapati@oss.qualcomm.com/
> 
>   arch/arm64/boot/dts/qcom/lemans-evk.dts | 108 +++++++++++++++++++++++-
>   arch/arm64/boot/dts/qcom/lemans.dtsi    |  20 +++++
>   2 files changed, 126 insertions(+), 2 deletions(-)
> 

> @@ -454,6 +492,53 @@ &gpi_dma2 {
>   	status = "okay";
>   };
>   
> +&pmm8654au_2_gpios {
> +	usb0_intr_state: usb0-intr-state {
> +		pins = "gpio5";
> +		function = "normal";
> +		input-enable;
> +		bias-pull-up;
> +		power-source = <0>;
> +	};
> +};

Why is this chunk here? Please check that the DTB is sorted.

> +
> +&i2c11 {
> +	status = "okay";
> +
-- 
With best wishes
Dmitry


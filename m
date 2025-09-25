Return-Path: <devicetree+bounces-221366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D25B4B9EF61
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AD0238614D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC9D82FC014;
	Thu, 25 Sep 2025 11:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aVYNYtTB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E182FB993
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758800579; cv=none; b=gMuxhLPv3oeBVMZFLGdxZNg5KmNMStqMo1gm/OmtdhBYOfawafWYk2+7jc4mWgykMeq80onjmfZhKKzWc9sR3lTVIEDuYZpCTcaYdtbzTClX36CiXWvTBsiWxGSfQmhsUiEJ7YBkfQVJku9lXFQE8gVMSRDyjsWsjIV7fG7N8uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758800579; c=relaxed/simple;
	bh=VlRsKP0AlZXEr4syIqGk997jZca3LzoEn8FL2OlekIE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=icNCo6xnotQMevep3dOPw4YX8chgOX42n9lqxGzlIYNi5aEzaMB1An5xaaUJtYttjZ3UWet/RPK8REPtb8uqTiFiNCeB7uR9OOcUC86a60T2kOAywkmNdrziZ1KG7ITklIttduZ47kwD1YutdRfTVeEUpK0LldT4P3lvnSWosa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aVYNYtTB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9EH3u001842
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:42:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hyoJlzEOQKYfqNHKoaUcAIRDzSzD2tltxogjlfJtGns=; b=aVYNYtTBYXtSmk58
	7CiczI7tYSwmHc0oxDkTipdO7KsqVRp/KCJNqg+kMobplAwxgpQrD+AVtN2hDZPL
	6Z3dWy7TRVwReegLkdjj/IVuRoQpGWafl2NNnBNifJsyG3T2HW3Qcp3It5ICaw93
	HyrZEJ/vmgaFBTklkFKdHtxSJQTpiogzkmtGOm7QlE+OWY7Ih2AcP85nska6ekuF
	zA+m4WnxwcUu21Hj0d3a+o7Irhzj+gMCOX3ecyf+ytac5b3PgMNPvaXJIaPcOcfW
	SGqy8ZORPEGQNq/OsrUzWHEF0pUVmyrSZPm4LY1/+lTbzTa0MzjdB7w0+m3dKich
	E6uzng==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98qwf9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:42:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3ca5e94d3so1159111cf.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:42:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758800576; x=1759405376;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hyoJlzEOQKYfqNHKoaUcAIRDzSzD2tltxogjlfJtGns=;
        b=SGU6IaoC6IBzbigxEpXfJArpjIx9vUH/ow9DKUJpHLwZtqup+p5Xvxvfdht/PqMri2
         2NK1xk8OO0zzxhv9pF5UyvF8AxqK7oGUqJZyq1CGbxBCyBMioYEsUX6eQCA1zEnvAH80
         LGbDoi1OGgP+OVqdm+6sfbqQqPuCGasbTwFTBUXjRmX1eKfjKO1AmDRfxE1S4NZjdMf9
         DcVdrQPVwfXhIRxn+UfxkuuQqWsgY2tMbbY/mVDvV9hMXRUuEdIf3GBoMrX+Zr+8Ns20
         PFPBbKhTUnVKL4fOV8A1o5c1ViBlmFECknXgZ/vmdgxYp1gHM/elpxDPUJH2lw6UrNNd
         8Fzg==
X-Forwarded-Encrypted: i=1; AJvYcCWTrBqRf3ceu9CIS9PDtxXcidZ3Ky3V7HVVtJF264dK9h92EzuuGtvMGDg0kHt87ET/SfsudFG3BHRY@vger.kernel.org
X-Gm-Message-State: AOJu0YysPARQ2GhPTqNWj573vUn1kpMCxSXnytiB13LGA5EntSmJY6nK
	yLmRo2ZBud1R8pquFgtWiWIccJMNhLj2wTsZZve+kePTHOIvN+dnRHxlts+ZNd0YP0EPyuo9IQG
	Yz2Fp8485UcA+rNMvcUVfEv/DW72lfbql57M2mWs+f0n7tU+KrncJO7nZkaTOW8Me
X-Gm-Gg: ASbGncsRAe58AQIIkCmoF87EX/4KTIka9m3Eogzjb/kwqXOM2b6KHISXZFrLkBTzR9t
	SESDuhcIuc7s5CTLv3GnqTUWnbTfe/whfO0725zJSgf1PrSWw5W/lX2TD0pvcPn97QFaekFpWQ/
	FsAx532Gf6UvSVETw3U8aaJvikBihZgkHbsHwYe5L+EuwsZ7hHZi0Ff3N6XrcVjAOYwqx4VDB7z
	s+e3fFNSEHM2HhdX8rx4nUhJIrIWBCAERuDq2cZ7WvSYQ4vCgFRh22TD6J4HPxpdjjgqEYk3KRt
	bluk4su9ZjwZu3mPzB3YKjY8ReoS8PsR1cXSCK1jZSZ+ZO8nQ37/CS/uF+DIuqVwgVNd6qC1sL+
	bx19Pxeh6EX7ESsOIjyErDw==
X-Received: by 2002:a05:622a:1905:b0:4d5:eedd:6893 with SMTP id d75a77b69052e-4da4b806fefmr26721901cf.10.1758800576266;
        Thu, 25 Sep 2025 04:42:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWGRWLaOiykmDKGvjnmGh5TU7kHhYj22O4CIawL/S0c53YrQcQatBuiNwrwRSEZhIS+hFkJA==
X-Received: by 2002:a05:622a:1905:b0:4d5:eedd:6893 with SMTP id d75a77b69052e-4da4b806fefmr26721661cf.10.1758800575833;
        Thu, 25 Sep 2025 04:42:55 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3629886sm1091846a12.2.2025.09.25.04.42.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 04:42:55 -0700 (PDT)
Message-ID: <b7855860-410b-4d32-afd4-84d61cac4a79@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 13:42:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] remoteproc: qcom_q6v5_pas: Add SoCCP node on
 Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
 <20250924-knp-remoteproc-v1-6-611bf7be8329@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-remoteproc-v1-6-611bf7be8329@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2ZktJZO7axtVVNkbn5e-PLGC3Xd7tVqz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX1LHXo73V1mVs
 +b8p5UaKR5hZ9Lf+L2PmlnmWIQzszbuJgVyijBynblHS/clfmOvWsHzuqSoyZQ7jPEKbDpUqGj/
 T/Ur8ryDCGcAIaMl7S6mkCZxysYQwq/Fm8h4lxs9EjYXVkoPtqdtfzLSweC5SDNq7wZOSN84T3J
 rXNuMbCb6JaYnWmUeEcySgltzoskibbyT2DlXUwIXfPNtIapwv6ZAhuG0n54Gn1MTBd6wVKZNdL
 /jq1lnA0NFcLXHtAjVBKD3qGOr3Cv5qfkUSyNUUYAmue1N3T2nkUpd6BnTTioGN9Mlwj2Z1cZ61
 qZiDvK7DRUKv3tuF3eHNOjiDv+76ePPe1DcpBU3Wgz93jv+ytJ0sFzgNOLgAzPcCSQOYYBh8FEL
 5rwYDhoK
X-Proofpoint-ORIG-GUID: 2ZktJZO7axtVVNkbn5e-PLGC3Xd7tVqz
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d52ac1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=pQmoqa-UAMS7fspmYOgA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

On 9/25/25 1:37 AM, Jingyi Wang wrote:
> The SoC Control Processor (SoCCP) is small RISC-V MCU that controls
> USB Type-C, battery charging and various other functions on Qualcomm SoCs.
> It provides a solution for control-plane processing, reducing per-subsystem
> microcontroller reinvention. Add support for SoCCP PAS loader on Kaanapali
> platform.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index 99163e48a76a..5007e1706699 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -1487,7 +1487,25 @@ static const struct qcom_pas_data sm8750_mpss_resource = {
>  	.region_assign_vmid = QCOM_SCM_VMID_MSS_MSA,
>  };
>  
> +static const struct qcom_pas_data kaanapali_soccp_resource = {
> +	.crash_reason_smem = 656,
> +	.firmware_name = "soccp.mdt",
> +	.dtb_firmware_name = "soccp_dtb.mdt",

.mbn?

Konrad


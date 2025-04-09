Return-Path: <devicetree+bounces-164967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 582ECA8309C
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 21:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A6DD1B63A9A
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 19:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94D3A1F8743;
	Wed,  9 Apr 2025 19:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hlfA5Ahw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC7A143748
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 19:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744227368; cv=none; b=ULa3fQWMvq5jUPelq8qU484jHJ47guwemiDGNG67IRyXE/DZdVebJyXnoyRqoCrdMbkfobRFcUThoM6hEpAxM7G54wLsQyTeY8clyRHJ1v+btAAVAYscaPnesuLbaApSBD1uLegv7ITZKhI36SVKDWDcL679E+j2nef644Zg0TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744227368; c=relaxed/simple;
	bh=q+lcMiYiF4Zs/DmAL2Oi3dHMksS541Zh66fS3kn2pt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H7DXb3AoJYJPZjWagYiEHfkyBiUE7NEAe064zZSUMXxQismU3PzakNpEfgC4SVekylSNteMMeIsYEv0lizBkWZwOhQyqH+XupLXWsdzBLdN9ud+D9YUTzYrdqBjgEpZclJ6XJTjgsJyaJsdhqJW1MLPQpP9I+07553t6aAv+6PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hlfA5Ahw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HIJtX015731
	for <devicetree@vger.kernel.org>; Wed, 9 Apr 2025 19:36:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xg4gglFlMSPH8uroLUFeSE+mo3fY13vXdlUAOYaQXvk=; b=hlfA5AhwKTmJXo0u
	U8YuMAnf+pNTTeXMTNXeL4Kk1UYTN926vTAUtXmpSHA+O7m44iEj2W3WCsNY3iVm
	Md4clGHIPsLqD7yL1IkFw7aputJtk0Oi/ckyKjleE6az1wyxzlD4yUYo2BpIKqS9
	Lf+pFHobsK+PC+LImKHFkVIIA9mkPQkcqbJskRpsijKOxeuzfDmVjMi0bdrUp1HE
	jWUv4O/XGBugyDUzNZTgfj1VXTTyRBjD8etc0iI2dXpWkvzxeWKlgh62fDNvA0Tq
	yDlZqFH9FQ7Z+9JYABgekKMB0nsIlwj7aMfdQrbrIIF47GrRG1L48Kf3Jr2jUcbB
	YjpDCQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd2vhgr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 19:36:05 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4767ca7a333so14650591cf.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 12:36:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744227364; x=1744832164;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xg4gglFlMSPH8uroLUFeSE+mo3fY13vXdlUAOYaQXvk=;
        b=kuGDPiZukacOydHewkZUUgOviskzDuOOKTHc3e2S3lwCoq9bnrIKKyR1JEgS+XnbD9
         SerD7djof/pkzfEioUrada3IkHJgz4qXpjMf4myp050tUN/tkMxZMfBJDttSlYKhyvt2
         xJdisxKeGyG6WmLjMuRuuxf98eHy7od9BM9zS3nPa7CK87xvnJHux6TTkzItfm5m9GU1
         npUxv0C6ym1fPNfa7YoWIAZOiewkf7fAqgYhgjo5dHpWV3/krB3OPjkI1lbEpttfKB6U
         si8+vzN908iMk5YTZ5dBmaBqVBRi9cQ6XaidLY8C8EdA5QU2bMCg4V+zqjnMa9TvgCbA
         5J/w==
X-Forwarded-Encrypted: i=1; AJvYcCWb2WYnfzYAeQDla0sSXVqCwBF/JL0QT6bWn1TwOIkcpf8OdgH6sT+VVK2QYJoPzVXaTDHqNYxAEhQd@vger.kernel.org
X-Gm-Message-State: AOJu0YzI50S8tkjN8avh6Ax1IXLcycYgWtiP6Lk4iXLSErU5+bq5UXEP
	D9yC+4yDynxYabwGz8qja6eg4pz8zwiL9oB09EF3XKdIbuvXnl12IZEj94rbf/SLUfNxvseCrtv
	hkYzMLAf2KYzO/x9QvFBgvVGfSfORr2OZPI1VTIN1NQ2WU5nOUHLH85uHpHLW
X-Gm-Gg: ASbGncvgcqMXaUpHvFOmSavlm2oE7HLMMd3qi14wzz4ydPyeuRUzFBCdIlSDoakcrUJ
	98yT+5EE5SLubbIhRZ9d3Ob/J2qKklzxCERUcLuatWLWVHXPLm49FH0DJLku25PjOUwJUcuyUyR
	8cT9l50vN6P/sPNwOu0cKrk4dd6ShTTKlV5xlacmHYaRcmtHhih4Y0E/71qzh9Mjvljn++SRPJN
	/2tvW7eKFi4Nsj5Pu5YsG5rywYIuHL8Y4oNrRLSyPf+cuK671aFVm9kSFAH8tGjT2ERJ3fLUqvU
	VrkqHwZYIQya5qTOq9BkdeZAoag2rk9rtIqtIeAyDHAnYsVzVeeHpMRZ5OQRlOIRzA==
X-Received: by 2002:ac8:7f54:0:b0:476:add4:d2b5 with SMTP id d75a77b69052e-4795f2a707amr21338271cf.2.1744227364307;
        Wed, 09 Apr 2025 12:36:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzay3VZZepsmM9A4vI/1F99F4nMG5OrhfefQ5BDrrfDP/vK8YWyTspjDGjy7hXNzM/DFRvaw==
X-Received: by 2002:ac8:7f54:0:b0:476:add4:d2b5 with SMTP id d75a77b69052e-4795f2a707amr21338101cf.2.1744227363890;
        Wed, 09 Apr 2025 12:36:03 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f2fbc08667sm1184993a12.25.2025.04.09.12.36.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 12:36:02 -0700 (PDT)
Message-ID: <a80b5d0c-8e45-4b48-a160-3dce84479601@oss.qualcomm.com>
Date: Wed, 9 Apr 2025 21:36:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: ipq5424: fix and relocate uart1 gpio
 configurations
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_srichara@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: quic_varada@quicinc.com
References: <20250318064939.3638381-1-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250318064939.3638381-1-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: p41YtbN-p4ZBVayMDzhrKDZL0C_nxUc0
X-Proofpoint-GUID: p41YtbN-p4ZBVayMDzhrKDZL0C_nxUc0
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f6cc25 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=F70ovye7vTPOdvq2yL0A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=818 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090131

On 3/18/25 7:49 AM, Manikanta Mylavarapu wrote:
> Update the bias configuration for UART1 TX and RX pins to ensure correct
> settings for RDP466.
> 
> Additionally, move the UART1 GPIO configurations from the common .dtsi
> file to the RDP-specific .dts files to account for differing bias
> configurations across RDPs of IPQ5424.
> 
> Fixes: 1a91d2a6021e ("arm64: dts: qcom: add IPQ5424 SoC and rdp466 board support")
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
> Changes in V2:
> 	- Consolidated uart1_tx_state and uart1_rx_state nodes into a
> 	  single qup_uart1_default_state node, which includes the
> 	  configuration for both UART1 TX and RX pins.
> 	- Inserted a blank line before the status property in the UART1
> 	  node.
> 	- Fixed review comments from Kathiravan Thirumoorthy.
> 
>  arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 19 ++++++++++++++++++-
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi       |  7 -------
>  2 files changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> index b9752e8d579e..f0cba6b2be70 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -102,6 +102,22 @@ &ssphy_0 {
>  };
>  
>  &tlmm {
> +	qup_uart1_default_state: qup-uart1-default-state {
> +		uart1-tx-pins {
> +			pins = "gpio44";
> +			function = "uart1";
> +			drive-strength = <8>;
> +			bias-pull-down;

Pull*down* on TX? Are there noise issues or similar?

Konrad


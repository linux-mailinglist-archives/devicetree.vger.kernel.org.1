Return-Path: <devicetree+bounces-130405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE5B9EFABE
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:22:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FB33188FE23
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B7F422FDE0;
	Thu, 12 Dec 2024 18:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FSm+w1dk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EE8D222D7D
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734027024; cv=none; b=W6LvBbUhiCX33W0UWlULBtC+qTgpCwAin863Bs0PR6MNU5zJ7ZIiZDnx7OFQb04JsKZjMp711vrtSOiB2RaeOV5BhKsz/EGjszwL+0KYgHLLEid+4UUMVtHz28VJ/p1dnpJqDr7eT62b9jhwnkgckQr+dv6u7yGl5cQOtHIJiNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734027024; c=relaxed/simple;
	bh=GKTTcjBEeSZeiJ8bhEH8F3E/pS+49HFcXCQMFH/dT18=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yk3KN6vAvwM6gSssG8evOrY/CbJIlID2NksTGBKn8qx3W2GhrE5VEGGtQsrWWcJaqJF0ZYaDydhZDinQBYh46/PUj6hwZnn9L1TBkpfkpQRrJaO/0b4+fHfaOMsN5pi1BbX5nHimJNp4z+kNBiBGE4MuRhneGsXKmvdpuTPGBz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FSm+w1dk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCHqVaZ027441
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:10:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1FUj4soR9AUdQNld/bQSRsXn0FXdGtEai1ID/hsXUIs=; b=FSm+w1dkopBbf24N
	Usx1iuGq1pEPIzeeGMOJy+2WVucPFNPCy4ADjB722Yge2kZ1wtJ97zmCaBKGJ73d
	3D/9cZ1q3JKcUwPtZcAYqLdEimB6KQV5RE0ZHQeKLcoCgrdM/oanQTQweZe7eb1v
	LzTLgHgSlbMBqoYvYEuHiJPlk1v4mffZEZey8XtkzIVnX7bK7k8K23XuhNo+bREj
	FXvgCsIOHBIGqD9BCht4IqIvxDl8Y8+cJpA6ETaj8akLsZicjDdG02xMGsXI0GNi
	fi+x6xoaX+cJLvDiBCAKFSvWjezuL+lz4ZGlYD5YblFCDmesETeK5khEU+oc2HM0
	kv82fg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43etn8y3w6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:10:21 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467975f1b53so2320641cf.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:10:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734027020; x=1734631820;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1FUj4soR9AUdQNld/bQSRsXn0FXdGtEai1ID/hsXUIs=;
        b=O+jRLO0hq/sybMZXihElUEHwcVbmffXDwoy+scus+KepBfxxHe3IgBjoG9Eoj7jEsK
         1p3xfIBI3iViqKsa222sa0pdGzyyPprxR/Ex2D9aagzXkimakeXfKYSUWn7WIKYbT8Dp
         9zUdrO5pz84N9GHauPZUYSzglWzENii3uSS/m/b/3hIrtXv43afFIyqn6y/cdlSNt14X
         XhV0KaqNWOLT8r43IBVyRsWRtcLnPJxfb1p8S1SUV3RxKjA1pZuO61NpBitquMQ0AjE9
         LT5nVAEccmirJ1u8Ur3GvwN/ATpIHR39Rgf61w9Eg0zmRWBuDsJTmNkdiI6Q670uQ59W
         USZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUEwwcE+v7P1sU5t13RSmO+QXsDIQ/wwJx/nQwVva3yJp+xXQZR+8zC0YfSmZr0vK1GfrExI/GbKWP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxth8tzYaBKPW2QYUDvZZ88zl304SGYfVmfIy8tuH8B+HpcLN8Z
	iif3+V0y36hCmU2c8kDLZdSj+as/t906ttWeg62/LjViIWT6YH/H5pK0jp2bNcVZ118Q+T2Q7vL
	SUKm9IwlRZf2xCCc1DMovWM/6hR3UFEqgad6wwk3drxPOkYzMPAUxZXa4IwfS
X-Gm-Gg: ASbGncsznqs7+Cv1fRlr8hwbE0JOm5EekTPN+Mrxar2CljI8kZVFG3phv/dw77J38VE
	7+ATXXhnI0Mvc2JBGAaRW+kdJ1FO5nbRkLfR8PuxXexcmx0oSyi9rVc5moX8aO3wy/6G+5sad5f
	KQQbBlhSKm46SS/h01IWU3nwkxucyRxrxcnqdEr8A+qRRCumG2/4a8hh2Tp2J/1ODh5X13J0wpJ
	NtKXUYwyX13zsZgqC+uWzp4x7987UQtQB4QbZExZALuiU/1cvc0rBLdwFHbQpQ7or0vUGW7I8ox
	k1sUhi7SNFn3BewabUTsyLZOeGUwvNibf/csiw==
X-Received: by 2002:a05:622a:4d43:b0:466:8e17:cd1f with SMTP id d75a77b69052e-467a14eee88mr8694441cf.3.1734027020473;
        Thu, 12 Dec 2024 10:10:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHAT0Dd8qrNs4/u/0d7kMCEBVCHLFMIYx3vhDAgJhWDhv8pg0Ug+v3gzjuOU/R0oQ+mXU1aQQ==
X-Received: by 2002:a05:622a:4d43:b0:466:8e17:cd1f with SMTP id d75a77b69052e-467a14eee88mr8694141cf.3.1734027020014;
        Thu, 12 Dec 2024 10:10:20 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa66b96a249sm771327866b.159.2024.12.12.10.10.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:10:19 -0800 (PST)
Message-ID: <5943f27b-1123-44b3-b93d-56fc45512d3b@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:10:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: Add support for secondary USB
 node on QCS615
To: Song Xue <quic_songxue@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
References: <20241211-add_usb_host_mode_for_qcs615-v2-0-2c4abdf67635@quicinc.com>
 <20241211-add_usb_host_mode_for_qcs615-v2-1-2c4abdf67635@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241211-add_usb_host_mode_for_qcs615-v2-1-2c4abdf67635@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: k47fAqJ3qHticQ1bN0_9kW1ki26fWqBd
X-Proofpoint-GUID: k47fAqJ3qHticQ1bN0_9kW1ki26fWqBd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0 mlxscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120129

On 11.12.2024 9:26 AM, Song Xue wrote:
> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> 
> Add support for secondary USB controller and its high-speed phy
> on QCS615.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Co-developed-by: Song Xue <quic_songxue@quicinc.com>
> Signed-off-by: Song Xue <quic_songxue@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 76 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 76 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index b8388dcca94cd8f4e6f1360305d5f6c7fff4eec3..651c6c8b8bc40886139fa235874e834928e14e77 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -3079,6 +3079,20 @@ usb_1_hsphy: phy@88e2000 {
>  			status = "disabled";
>  		};
>  
> +		usb_hsphy_2: phy@88e3000 {
> +			compatible = "qcom,qcs615-qusb2-phy";
> +			reg = <0x0 0x088e3000 0x0 0x180>;
> +
> +			clocks = <&gcc GCC_AHB2PHY_WEST_CLK>, <&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "cfg_ahb", "ref";

Having this be a vertical list would be nice

Nonetheless, this looks good and the magic numbers all line
up with what the computer tells me. You may want to check
with Krishna Kurapati whether snps,parkmode-disable-ss-quirk
here as well.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


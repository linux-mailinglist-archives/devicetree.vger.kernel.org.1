Return-Path: <devicetree+bounces-132883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 157E99F8715
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 22:35:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6196916F243
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0DB1C07EC;
	Thu, 19 Dec 2024 21:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="StYEXxLF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656D21BC066
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734644095; cv=none; b=I+b5QnA/ord2slz+fJ7lhcyaGZB8A4X1pauOrux3NzDlSHSa1cS/3Cki5r2hjODapdMkhCmzD7t6/L/ymx/sx/d2C0iYpZo+CswsX7MvdMsO5tUJH0TgyD4htClwjEzgToZWyq8hwV353wsHQJw5aUSJ59YKCMpp+QwGEse5pAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734644095; c=relaxed/simple;
	bh=EDwfbnFQhamTwYpt13p2WAt2bfbKSJIxLOy57KvYyn0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K8ksqBYO97uNL/0L+4B8+IUM9beqRaqQgZ3VY3stNhwyiZ1pSYSemsHLqQehObCRnnvSl3aIMfTD9NXgIqd6pUJBSnqiaQQO2pUU0G5ZrpZDtDHCHd1tevmuu+NXCcCfeiLOmtzSsG93/L0prELb4kpOHHhM7baJ1g4lMXlRZEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=StYEXxLF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJK9i6C000583
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:34:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tnnxDdh3Ddg+joVXVofvYsyNFGq/oIrBrCCuqTFAbSA=; b=StYEXxLFeccHNWFy
	y5+0OMtPgPNPInYzVqSdUq62t7Cg1MQwNDlTsihdmh9OVmxukCtyrNyTQpl7uRcX
	ofu64Sbyh5Eka7Rixcsevc8RGjrVGQ5r7zhxz9ocf40WPNof+JoDwj14y5MLww/7
	xG3U4/uHnGcUrhWYzfaLxojEZht77NcvROjaETObLQTnH5jIMXvmuwZEdHkqSI0k
	w9ujDZzOQQ2c1XVHIq6lRscI4vtwwEe7uCgNekXf7l+EUqrovO/3OIv9UTceTJsY
	RxP+L7JNhE2KOqN86mq6sBGFAz7o+c9VSq3uf15OURiP9PXxDG3xbVGndo6O27H0
	znAnPA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mt9g061g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 21:34:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46792962c90so1984121cf.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 13:34:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734644092; x=1735248892;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tnnxDdh3Ddg+joVXVofvYsyNFGq/oIrBrCCuqTFAbSA=;
        b=Uq0BzWLR6OMo5rbOAmjFZm1z/9bfnnrV11SiMG60bFU49CsIsq7zPMjwjgQ6USUm4c
         uUtMjEXbTGqpcCQNts4Fi4BHBp/hwIh9/GHDZzJkd36c1yXUhWG9ri5RI8wPCw/aE/Et
         IkorxgR+OlMgqiy5QrNB+fNxQ2YOB1nJ5qlnJpsWRVEok1RQZ4zpsd9RwI5FDLmIx7N1
         kntDP/n6t+RivZVLUB49SLuyzfZCAS/ytHhzi+tUknv+KwxNiSAZ3KN9sdJfeZ3qkSdg
         ZASGb63nhflkK8RyWvCVZCppmYcVf7efqByvsVzBWNkJjRz9v/Qow893BXLXo14J9QKp
         lh3g==
X-Forwarded-Encrypted: i=1; AJvYcCV6CZcj3Knq/XMEbiqrM+hC8flQWyOlrw4xFvCoFPTWVwEAKBhPr6U9TY6ibnpiJ3Lrpxo7Y4Ma1UZK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3+y5gPsKtPvPAU+L6xYG+XCMXuvImcnreXNSJCgMNV+ZpSWYY
	hpvtPz0Gm88FmeGbjJMyjXoOSw+2UlHr2rFvobs5J5qXcHMlypFGHH1+FqKPZVno8+TVsSnScuo
	kcPWHcevXe8RtJA0+6SCC/jNawyqLnBT/6fl2B0W2cZJWht0g4fC7GDRUW3WE
X-Gm-Gg: ASbGncvWollOMC5E1a1wXn/llbhZD4T90PJLqm6XIEQX1aP5/znjkLoUV0ceewHmvES
	0W/k/b/vto4wAwEa3Zw7DQdWVp4oPfl5ENNZxnL/5PCcAn0guzYvDfVb0yaIgIctofRwGPBl/hI
	VUawFmiQhVID4mFPtYICAxGBH+eRmIl4dafOGY2GVXgScppPynCjvD1rTYFlyflaVIX45bNRqg8
	4eyRg/jfI/3Ki1TDttuyeo632plwuRhO+5AH1q9wsRhX6mCXDYecZbQhlGP3Cz7S4Vuk5kguI/M
	DdDJ9u8S7DJx1R72ePX3dLthHEwtUgWJd6Q=
X-Received: by 2002:a05:622a:391:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-46a4a8b605amr3438121cf.3.1734644091816;
        Thu, 19 Dec 2024 13:34:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVjawbA10Ym60gE7irfkFrd/QhB0O9kTyh4GjAE2jzgSGUi1LyX7S4W/jTHrm9J8Pl6KGrUA==
X-Received: by 2002:a05:622a:391:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-46a4a8b605amr3437771cf.3.1734644091398;
        Thu, 19 Dec 2024 13:34:51 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80675a6ddsm1006047a12.3.2024.12.19.13.34.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 13:34:50 -0800 (PST)
Message-ID: <a33c3da8-0f38-4194-9eb5-249cf6848928@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 22:34:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: ipq5332-rdp441: Enable PCIe phys
 and controllers
To: Varadarajan Narayanan <quic_varada@quicinc.com>, bhelgaas@google.com,
        lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
        quic_srichara@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241217100359.4017214-1-quic_varada@quicinc.com>
 <20241217100359.4017214-6-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241217100359.4017214-6-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: RiTzgXO7u4-sOaE2lW4dPCEIoFlZcBQw
X-Proofpoint-ORIG-GUID: RiTzgXO7u4-sOaE2lW4dPCEIoFlZcBQw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 mlxlogscore=967 clxscore=1015 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190171

On 17.12.2024 11:03 AM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Enable the PCIe controller and PHY nodes for RDP 441.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v3: Reorder nodes alphabetically
>     Fix commit subject
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts | 74 +++++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> index 846413817e9a..2be23827b481 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> @@ -32,6 +32,32 @@ &sdhc {
>  	status = "okay";
>  };
>  
> +&pcie0_phy {
> +	status = "okay";
> +};
> +
> +&pcie0 {

Node names with suffixes sort below node names without suffixes

Python's PartialEq for strings works well for determining this

>>> 'pcie0_phy' < 'pcie0'
False

>>> 'a' < 'b'
True

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie0_default>;

Please follow this order:

property-n
property-names

> +
> +	perst-gpios = <&tlmm 38 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 39 GPIO_ACTIVE_LOW>;
> +	status = "okay";

And keep a newline before status

Konrad


Return-Path: <devicetree+bounces-127587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D60799E5C56
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:58:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A96B1163961
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03909221477;
	Thu,  5 Dec 2024 16:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UsPhLu6r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668A8165EFC
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733417906; cv=none; b=vGcCkcvCkdiaCEGgVsE+IO1/JG+dOGBIDlYAvO8rtAhuBS4tou4kjFrlgu7+1+kU8NtVpLVD7qNxU2o1XaK1bS/la7HOAtHeSwXpZATFCcGCAlkcGzDhkj8JJven8gPJAvgk/mpLMOO1ammtx76KBVWuuw5mwkZiFaBIIxbsIXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733417906; c=relaxed/simple;
	bh=inCbXkwUzPcSLvpsaPPDZfCM12NcD0fYXXxPtBqpNnU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W75w/i68sa8yI+BS/1j4G2BILrASNwWKhaQWITZZqYHiRvfT/CV2oRM3MS2RSt3LylabCc4ZC9CflA1kwlqUW4DebolnVePiNh3AxG2C7dSOOK+c68stSPFcmq+IWZY/yee4AWoSdtzskEwmGxp5TN4+Lgt0b8nli+98W5v2rWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UsPhLu6r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5G1nVv030966
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:58:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lvYEHuLrFacd4tRRJuuJxO6xcj+0DaH3kv4nnEJbJa4=; b=UsPhLu6riXg0XWs7
	hEZnl5ShhTpuyrx7sviAjFccQ2TLQQlMnIgY2nx8H9KwXM1s41o3cev2nUNmRO7/
	9jc5qctUPLAchs+IiQcl//6kYTmJmAi41PYUfd7YQyamoO1R1q4GiZ7nr/QwhHbH
	1+sWHdc2qllGXlg5aWRzTJ4u7tV0EmBivdlPxvfItWXWFWbMfohOCo8Vl5H0IUuA
	GAPcVEaaxFlwiQ3IOt4w2xSMXQ5rJHmdMFn5xkJz+cXCsEfMfkw+zcOGr02RqENu
	qOYfQMkAbN36dZLwdTbVeyvSlAxvJqQ/OmMY/O9vCK8TFigjj51VVfp1AlqKXa4l
	TK6Vtg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w910a7k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:58:24 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d87f10a5c7so2987726d6.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:58:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733417903; x=1734022703;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lvYEHuLrFacd4tRRJuuJxO6xcj+0DaH3kv4nnEJbJa4=;
        b=QcUWa4xzCWMYw1nGvcWpBHTWFuAhlftvnlEVaqgtJS4vlKV1RU/GMdov2E5Q7MYSJi
         uhS17nsaxul7Dbw4di8/kRHFiNUjs5yM37M/tC6pAFtQn3np1q5NzccJQ8YPPOUdpHOp
         C9aAXYXYc0dSBpO0r6bV+/Sfji4j0DIDY9wKSxHJ643etFZ5sWsIQTQu14NsKngo4A2T
         svYppnpjsi6ZQZTkoBHwPB/UrH6dDOyHCMPIlg98q1K+pMqrrr5LrvKsNksfYDJLfqo+
         qFiI1TXhnilebJX4B/YXBRB4JmH/kAaqEbvzcK8vAUVW/8M/gftIJgyviWrIPKpVuZVD
         RItQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDRPFl9tYTf4gYUdEIixbSTs1pJfk+GUVribKDZrlVmcwUuYY4DCfhtF0Ool7UiCCr6qloeAbZECER@vger.kernel.org
X-Gm-Message-State: AOJu0YwKrK7F31oY1tc5e2VSxFOpWkt5LjSnAafHs2f6loqVXYDdTaMI
	yFu2xba/XP8q6M3PBAJhTdsApao0cuBMo7/+ZVKuGFwKDjSwVQmmSvuOrgsPiW/ZlDmuYz6yd2+
	IMy+YW9AUV43kK4GxpVwHZsIJBeQv2B2vaxpr0cTrvApLP21PmS4s3J8l/v9c
X-Gm-Gg: ASbGnct3SidlVEMW4Hm+gx2fquFgefXYzMyr5bPXS23whi+oQgmVXTNtt2Lv8Dfa4WR
	UKe3DDech8K3jGMYHoEkdRbgfeq1oDsOL9pWt9uo0m+zv7BvKHtY+B7jXyELWN41stxmn7B6NQm
	MuhcmAvKQIVC/vkJsOFq3HUXdtc/+u57GNze9zdtDB837uLuONShWH/rVuzzOZ6x1oc8yBfbUnM
	0+iScq568FACe+yPA4l7aoFoTOAWz/DojQ4aBBT5HuhKKEMZvsP0uYguPyAU6PKkbhMk4wd897j
	Trn7stufzqm9i9ujDWdJr2z8FzNP2is=
X-Received: by 2002:a05:6214:529c:b0:6d8:aa37:fe17 with SMTP id 6a1803df08f44-6d8b72b8ce1mr64771056d6.5.1733417903456;
        Thu, 05 Dec 2024 08:58:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3gkUNAmqO6vru/PCoJ4kSNmbvskxFZvs6Kgllqc/8lYi31ikybio9azXiwqqimK8yIfYovw==
X-Received: by 2002:a05:6214:529c:b0:6d8:aa37:fe17 with SMTP id 6a1803df08f44-6d8b72b8ce1mr64770836d6.5.1733417903026;
        Thu, 05 Dec 2024 08:58:23 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260ea41bsm114574166b.192.2024.12.05.08.58.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:58:21 -0800 (PST)
Message-ID: <8a8cdb54-93b9-4093-8e85-f3d698d66e22@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:58:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: ipq5332: Enable PCIe phys and
 controllers
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-7-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204113329.3195627-7-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rOHn85Gfc2O3mtwNp2euDKOCpZgDNLU0
X-Proofpoint-GUID: rOHn85Gfc2O3mtwNp2euDKOCpZgDNLU0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 bulkscore=0
 impostorscore=0 phishscore=0 suspectscore=0 adultscore=0 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050124

On 4.12.2024 12:33 PM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Enable the PCIe controller and PHY nodes for RDP 441.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts | 74 +++++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> index 846413817e9a..83eca8435cff 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
> @@ -62,4 +62,78 @@ data-pins {
>  			bias-pull-up;
>  		};
>  	};
> +
> +	pcie0_default: pcie0-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio37";
> +			function = "pcie0_clk";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio38";
> +			function = "gpio";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +			output-low;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio39";
> +			function = "pcie0_wake";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	pcie1_default: pcie1-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio46";
> +			function = "pcie1_clk";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio47";
> +			function = "gpio";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +			output-low;
> +		};
> +
> +		wake-n-pins {
> +			pins = "gpio48";
> +			function = "pcie1_wake";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +	};
> +};
> +
> +&pcie0_phy {
> +	status = "okay";
> +};

'p' < 't', please put this before &tlmm

Also, would this be something to put into rdp-common?

Do we still use all of these variants?

$ ls arch/arm64/boot/dts/qcom/ipq5332-rdp*.dts
  arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts
  arch/arm64/boot/dts/qcom/ipq5332-rdp442.dts
  arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts
  arch/arm64/boot/dts/qcom/ipq5332-rdp474.dts

Konrad


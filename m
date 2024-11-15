Return-Path: <devicetree+bounces-122238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B40B9CF4A1
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 20:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA78DB2F08E
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 19:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC0F1E104E;
	Fri, 15 Nov 2024 19:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Twyiu6vh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2EB1D435C
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 19:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731697917; cv=none; b=Dmr7BCuPUdzepJb6ICMpUabPhsqHStEeu8TNNuVAxa82bmAvI8lg+3Ezh2FV71forpMci46bJDkFBi6PNhlt0wkd8FH/gJq3uj3uIbzBgKjDExa+zCV8t3brHSfCMsGyZSIBkBAQYccq8cM/SWxRPNw5iaC40iqm+Fuu2do+y8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731697917; c=relaxed/simple;
	bh=1Krt92pNvWCnlz4ziZBq35cten9mPKPpoYmUs7vYb0I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uQq392o5Gb60BTiS4OG/qs3D9iALdMkfzF0qcNDJko79VGpURXDkh8BHB+nl9UAasNLmLx/4JPNEm1sNUkNqFKefHWkpy9xG7U+nlCLpegVLa/lrk8FYQGRnc2FkYoFPJtjOpfSBmNcVwIIFAa7d/RF60J28N0VY7PEDzR29ZVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Twyiu6vh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AFCTTxT002666
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 19:11:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oNWqqLzGcGPWlxdHygK3rqDNf1gWjTRbW1EXE3/TxDA=; b=Twyiu6vhsr06RU3z
	2Vdf03X/OLVQALJcjwztkNLaaz4m6Z6B5UglV33OjAfN536yKZNCZ0k2cAB7kSLf
	GNx8iJ323WU2tEt7fMZeIJXuvrLlTtycrxyOY0/mJEWuuncsb3yjOkPRFUeh8qC9
	PFt4lBtUz+mH6FXqufn/8xsYR7fdLPaTOpQ8zYziIy8SdpwCwu94aUVCxzyFnwOF
	w+Jd7Il22B7n1x2EEa8gGiSw/nDSL1wSJ9WZ2Qzu76UPHnixydY3h6lcOyyUlN0f
	8kGzoRQaBgAyY517vJfXod+SzU6wiEYVASQ1hx4zeBEGlp4FpwLwuc63wpOi9mLU
	8+DMGA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ww6dtmvn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 19:11:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-460f924d8bcso3853081cf.2
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 11:11:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731697912; x=1732302712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oNWqqLzGcGPWlxdHygK3rqDNf1gWjTRbW1EXE3/TxDA=;
        b=X1IzOyZ1cgXIZlJUlIm7Tv8dnFK8z6bfF1qnJZnsNCXm1IBl1tA9UoesshczWpeeuS
         DJCkgp7WVY0HQaMAcm6lueEVZOxsyrv2YQEgxcOiTQ5N/dSWvxnLf0GFemkTXfuyhaK4
         JbFNA0Y1t6WM3+EOM6SCzyqUSkPrEPE/m80Z/CNDHPNjHra7EobClXXiY0WvdIkfbzHW
         wdCjfEOBwt6Ka5jwjhxhIPFx86bdN2wdXo2qaInhQNfURsHDnTFSFjeHetaiDPdDlHLp
         bxFucfO+uKdDP3i5SGc9UWf2aD0ETeouV+ZUriXcaKTUCu7/VaspsmMLtVP+XKhzN2Ej
         tWeg==
X-Forwarded-Encrypted: i=1; AJvYcCU9tIWcW8mh5JvvPC0YyUMxSH2HqPicP2ZgZmGwipbIstrvisWBsm8TrxDbBtcz3les6HHgavL6fgcd@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd8ZMCFJZ+i67yYIBSrXNjWp0GVn/QPxHXonCGPsTqU1nfe9OW
	X08HEybzEVmmWfXlrfIJn4eH/1RbBFObWqILnk9XiKELxp43ztw/bB7F6QTnCT423cbULrH7KAp
	lbhhbcAkMStYmfM3KAlqpoEKSL/dJ+H0SJE2g5HnYXbJIwweENLsBQ+dtI/wn
X-Gm-Gg: ASbGnct7NE/sV4sFIoFm7RsW0CEtBqaseZZsUSRVtQYv+Js9odQmwij906avz6jCm8g
	pnCwezJNyIQ+3aH5ckjE7m9QPc6moTY/regFVF9tAwwTFK0Gg2hHbrO6nz6LA+ESN2NN6KH6mPX
	d1jeFPvZOpXOC+V3K4BMsQkqGxJqdwxcoTClI8XdpHwxhb6gKK9fqJ9yZx0TUjPUNfLUFFOxNWV
	5ZLJ8P9U++bS0TjEU84HCle2PLN4+cQblkAeB9q+YJWoeg9TIKYEV5A5NXF6thiNM4bReYCaWX+
	3gM1uOJbfXc7ZntGnM8QEiL7DXMP86c=
X-Received: by 2002:a05:622a:1442:b0:462:c24c:a3cd with SMTP id d75a77b69052e-46363de973fmr24011351cf.3.1731697912479;
        Fri, 15 Nov 2024 11:11:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHoJ6uiVG4NDBcbXVF7hLurg6c/ZatD58ZGlI56wghztdbwU8rJbTRjRniZqH2vAHFmNo+WGg==
X-Received: by 2002:a05:622a:1442:b0:462:c24c:a3cd with SMTP id d75a77b69052e-46363de973fmr24011081cf.3.1731697911951;
        Fri, 15 Nov 2024 11:11:51 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df265bbsm207556866b.38.2024.11.15.11.11.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 11:11:51 -0800 (PST)
Message-ID: <1e902d79-5dad-4d12-a80e-464dbcf851c3@oss.qualcomm.com>
Date: Fri, 15 Nov 2024 20:11:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcs615: add ethernet node
To: Yijie Yang <quic_yijiyang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com
References: <20241010-dts_qcs615-v1-0-05f27f6ac4d3@quicinc.com>
 <20241010-dts_qcs615-v1-1-05f27f6ac4d3@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241010-dts_qcs615-v1-1-05f27f6ac4d3@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 2SwAdsWbLqwBESspf44BDcVDwa2L1vOR
X-Proofpoint-GUID: 2SwAdsWbLqwBESspf44BDcVDwa2L1vOR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 adultscore=0 mlxlogscore=999 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411150162

On 10.10.2024 5:05 AM, Yijie Yang wrote:
> Add ethqos ethernet controller node for QCS615 SoC.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 0d8fb557cf48..ba737cd89679 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -420,6 +420,33 @@ soc: soc@0 {
>  		#address-cells = <2>;
>  		#size-cells = <2>;
>  
> +		ethernet: ethernet@20000 {
> +			compatible = "qcom,qcs615-ethqos", "qcom,sm8150-ethqos";
> +			reg = <0x0 0x20000 0x0 0x10000>,
> +			      <0x0 0x36000 0x0 0x100>;

Please pad the address part to 8 hex digits with leading zeroes

> +			reg-names = "stmmaceth", "rgmii";
> +
> +			clocks = <&gcc GCC_EMAC_AXI_CLK>,
> +			         <&gcc GCC_EMAC_SLV_AHB_CLK>,
> +			         <&gcc GCC_EMAC_PTP_CLK>,
> +			         <&gcc GCC_EMAC_RGMII_CLK>;
> +			clock-names = "stmmaceth", "pclk", "ptp_ref", "rgmii";

Please make this a vertical list, just like clocks

Konrad


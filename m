Return-Path: <devicetree+bounces-221388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5471DB9F353
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38FD8172224
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 856AF2FFDF8;
	Thu, 25 Sep 2025 12:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ael7FWl/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E865B2FE587
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758802817; cv=none; b=gMNwyWA9luCvC4W8KZEfNRlg18pVlUTPkk+1KsU/CbGpXaZXclZeiF82ASXAV+iVPvqlQ7TGUpEGo+D944dDUXFPGvYmP0y1lWMbIahWrIE4kgyTnLppCsR/XO1cyEVD3bEQyYOrlFiMEFTYLrMe+1piKWMfPO7yMyNBvvngELU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758802817; c=relaxed/simple;
	bh=nkjFcRUmQdVbBKA+yiCUYtFNLnfkF7akgO0G61kibjY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iIxmtim4ZL+oW8jN6Yih8Qx5i0v9WuoUTN2BNFKUv19qADFTqxcVVY2hZ0D9Hok+K4qjM3V4o16yhC4xCvc2MBMO/PqpI/mzDTgGOhG+YfwytgqrGdAKKmjvZjERyWPoq1RvdZ3gQ44fGF+NStc0zo3N3e5d0ohJcusf+czAy2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ael7FWl/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9C3wd021569
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:20:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y3WO2u8skIHyvmA2dL9l/HFQcv/2c0lN3eXWLNIsu0Q=; b=Ael7FWl/qOcVO9eU
	8AUUcSdvwGAdm40qGKQUtKI2caPDyFBF3vlV5hDfSwj1kCzd6i4IhSaLHojKzQfs
	Fetx19gAAEtFQ1/xxgVVRBAd4gddzP5d2TiiUq6y4laSm4U5dLKtjxyMsjtahlbD
	MEKynNy5mMG80y8J2O8iUKeryZtEwCcz37pp26ATuBnrCLfWtwuoGEJnQW7F4eL6
	A2m+GoVTNTzHvqTtTFA7tKvMRMKBIrLXoKB9donpmtIAttGpadg8wXLMp2cKAR7s
	r1NYALUM7i9XMLokWPYwbhljWvxMo5ZTnLpdAQmSBa8MhHtb4mhSg+ix9bOVT+mo
	CK/IgA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budafm10-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:20:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-819d2492a75so43273685a.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:20:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758802810; x=1759407610;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y3WO2u8skIHyvmA2dL9l/HFQcv/2c0lN3eXWLNIsu0Q=;
        b=WLQzotFaDVzo0gM2yualarhiUb2vA3FjSUe5tm5dgSTSv5jo7NjB3R8cCsNht7V42n
         4jJlGnP1wDOs6pZD2CUn/bkXzxKvKsZn4pPGOOK5VoNJJcB1Yz2bkKF4CIot3HXTXK8w
         W58QpgpYPmUOYXBBQwZS8dTW1Ra9kHyxQxHBwMXKRvtaDLsWE7+oH7RO1AJVV58amd1C
         acXr3kmFneHQFzw9tpsFdqAZKDOtYl24r1oTtPxvnlVoeTuwVfnK5EZCKzvtBoe9cZYu
         ZtHR+sGAAM5NFqR6QpyC6us+UP75wlWHxHmGEVVFiVq7Z/rLKTs41dXXGJ0gMwW5hGTY
         D4hg==
X-Forwarded-Encrypted: i=1; AJvYcCWOsuhw6dGUVf/Izuy0W8lnOfat0Ozab6anyo+9qLavZWDIugFcHx26kz11m0afieSTLHoc9+edmCzC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5koPeWkPIaVEsdAfuL7W9buA5ZFoeKFHEnXJP6ULoOeOHB4gQ
	w0Pp8vAn0cApheCv+93yMIfSEGMTUdgaqeAmaRsOpCXqtpQRASM3DPrXPIn6C3aeah0xiBlNAmg
	HwWG2y7HpDZXi9ltb8i7Oa5Na6oxf4hmRt4eYJaIECj/JzpGWrueGSMRRIqwV/XO8
X-Gm-Gg: ASbGncuYbllIr4Ae0hQxCSEBI9m9cKLkmeNmjMc6oV4ie/W0TevHRKqu3NuwDTKtuIM
	iDtqfHyBFop3bWdjip146snjvd4tBMrjVO6NQwMM28eJkh1D86gYfPobxWKV7skMltBwzXgW0Av
	NdxCeUzGdXjLcgtol3OX2peofwuLZmBIqakvR3/0nJ+rJy0JdDZVrgYLjXkVeQYIVbDLgUNz6tP
	JJh486NtYntaRDe4n+DtKviGGP+IxALw8CXKqoINT8FK6I+dVmIrIEdw3dgk5bmJyacTswkH3Kt
	EB+BDwHFXgJwmj0MOs0Yg/C6/DPi8QegB0e3gFc6CwvBE7opdnm/fAJ9fC6Z1aJzpThXkjiaSH8
	+ifrSUzJ/m2SgHBCHy22c8w==
X-Received: by 2002:a05:622a:1488:b0:4c8:39e0:95a9 with SMTP id d75a77b69052e-4da489a1c99mr24122291cf.6.1758802809426;
        Thu, 25 Sep 2025 05:20:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkPHMGj8Bq3JTeWfgKB8y3Vr5vymH2QWBEc2mX9WeO2YqWDeYeVJl2bthWSLafoqKlPFuqiQ==
X-Received: by 2002:a05:622a:1488:b0:4c8:39e0:95a9 with SMTP id d75a77b69052e-4da489a1c99mr24121901cf.6.1758802808809;
        Thu, 25 Sep 2025 05:20:08 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3af4bd5sm1083908a12.36.2025.09.25.05.20.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 05:20:08 -0700 (PDT)
Message-ID: <b119c71d-e3f7-4af2-a39e-1602257109e7@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:20:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/20] arm64: dts: qcom: Add PMK8850 pmic dtsi
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jishnu Prakash
 <jishnu.prakash@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-8-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-8-3fdbc4b9e1b1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 14qag-VHuWFzBxkKrVNAljRZmSZIlGoi
X-Proofpoint-ORIG-GUID: 14qag-VHuWFzBxkKrVNAljRZmSZIlGoi
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d5337e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=9Yd-ykmot7fVaAYUysIA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfXylrijQJT7are
 u7A5t1wOTUUH1qQ+YqkakMr+cBPd35muhN+Hc31CwT/wDMC92FY3nB+O8DqpV0eiNncOsj9fSh1
 mmNO5ZP8h1QafqyLp6ywDYGeRVW6L2h+dl9u/Ql2a9V5fzK6elv0+vjK9J2k8aSgELDUCsg1VAz
 CgkdkkEA4kjB1p+3X5LFQMgI74IyzZ+roPobRPK3jJwEkAC+EHjo9wcv3fH0QGMy9W0TCYvDIU4
 oXYJi5BUxEl4mpA43IjMV0hAZF81ajIehFIPxadskKJCkwNitgd/deI7US+Mpus+qUXQpbEjxf2
 SXhWhGSmktfd8u+fIkK5neO7MtGlD4gV6vQhaDT5bITzKu5nzdBd2LJikua18cDhY/YUPO/tepJ
 j06flsdn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

On 9/25/25 2:17 AM, Jingyi Wang wrote:
> From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> 
> Add base DTS file for PMK8850 including PON, GPIO, RTC and SDAM nodes.
> 
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/pmk8850.dtsi | 66 +++++++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmk8850.dtsi b/arch/arm64/boot/dts/qcom/pmk8850.dtsi
> new file mode 100644
> index 000000000000..c19a98ca984b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/pmk8850.dtsi
> @@ -0,0 +1,66 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/spmi/spmi.h>
> +
> +&spmi_bus0 {
> +	pmic@0 {
> +		compatible = "qcom,pmk8850", "qcom,spmi-pmic";
> +		reg = <0x0 SPMI_USID>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		pmk8850_pon: pon@1300 {
> +			compatible = "qcom,pmk8350-pon";
> +			reg = <0x1300>, <0x800>;
> +			reg-names = "hlos", "pbs";

1 reg and -name per line, please

[...]

> +		pmk8850_rtc: rtc@6100 {
> +			compatible = "qcom,pmk8350-rtc";
> +			reg = <0x6100>, <0x6200>;
> +			reg-names = "rtc", "alarm";

and here

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


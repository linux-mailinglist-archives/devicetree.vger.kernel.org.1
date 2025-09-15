Return-Path: <devicetree+bounces-217228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F188DB57154
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:25:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC2133BB0F0
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A27B2D5957;
	Mon, 15 Sep 2025 07:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o7aTH1U+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A1E2D63E2
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757921081; cv=none; b=aG/Ct09gN/2SMrvA0X5xDYEou8U8L+nT74lTZhbyDshDYbuF5WR9hdAZRrgMWYtkHV3ygajcdbCUvC+DLp0mr77j9OulE6Ei0HyG7G98iG5w6aIX/95uYdmMHasH1JTeRayLM04Qp8TfAHb1wXaQmyaPgXbSp60B52mjAuoMJ+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757921081; c=relaxed/simple;
	bh=v9F4i8TUborpz/spWW/4XqdCnVrGLjq5qMMvSVfHMtU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sl9y9UQedt2LISWJFY+K4Ijfhw1JHzsRcz6VJB2taE8lw/ypM+RD3Bih+rgYlwlsfXAc78y2UYlvTgfaiNn5RrPUAf8Zu++bM9wbuPoUvbaBZHMGgJTU7+G38WJ4WH2c3vU/4u+Tl5xclx0xZaSWl/QmJftyuNDmLiYrJwuQV8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o7aTH1U+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F7I2IQ017144
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:24:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I1rxht/ghut2kYsSXQA/bEwDqukX2wUUOiOiBXSJJsM=; b=o7aTH1U+X6IQ6KDp
	U2lWa8K99eXcw//1FxlfGPjmtIe6M0ieeFTTR8DWTJ8evOIhepeKin4g+5USKPAj
	Q5Y/psr8db/m3mhibd9N6/ebSuw8KBHhz+LQQEudzRrjvvPAinKT4DEgehzNaevN
	ndwuPZhbR3dwV3vpiut7r9ZuDFKx02tBWwiV01pNFvUGTn/KAU/6AhUN8fpcwzpI
	zEavhS+ERDtHU9e3I8MQrbfxR/Xn0iy3fWjbcuaHjfeGaW0mwv+ZX5JxCAAP4TMi
	oqKI73//XUtzzhOkTI9rymDgYOTsTbzlQb9NgQwD8YgwgigR1/UUHQ1m0qotzIJY
	AAab1A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951chbt7x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:24:39 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-787395166ecso616516d6.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:24:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757921078; x=1758525878;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I1rxht/ghut2kYsSXQA/bEwDqukX2wUUOiOiBXSJJsM=;
        b=lFgQwCv58DrAbgM+gi8/DbJuA0iOnGfc7H9adTFL7jRvv7cubsCtbIRAfhb5dZWPkh
         zNfjnnQ9kXx+/zlQXIRW0I0GLo7PTpUMaB9vvgiH+RLmhvHLiCqAiVCKRt3upm84GP9h
         JswLbCKnW2/+BxYL/nuBhrrp5NoGVtYFGL2rVZHu9FV7aZRe3kai1mC1ltHxNMsF4qYZ
         IFDEl8D8ygpH3oLRIhi7hrAWnxZ5HLtok8rySpUpSm0Jed8wdob92vQEUzdyZevUxHgw
         c8SK0mUTTF5a+J2aCc/rbEUc+q8HWFuwWz9J2ylORSQTcIBBit0d10PgG9v9zgO4EPLD
         S+4w==
X-Forwarded-Encrypted: i=1; AJvYcCXusU4JRghovDPyANVSL3u1cIz+R+7Nj92R7r0Ie4DmDQZVP98eyG8qEL1r+ZCiNBJqUtbHtGSwZjnD@vger.kernel.org
X-Gm-Message-State: AOJu0YwQUJF554P4zEThGWyF5/OhbOvJKY7PMCaYVyqFadztzr0Wssnh
	I0xE8qfWV8sCKTfFcL54sIE4dmy7tSwCPa/ZinAFsyjq/+72SrOxAeeGD1v4MeyV0OUH2Pd1kau
	TYODMMTsvd6NLuIBZgjacGlwDOX9QR08CJDge289fjY3bKPn0fXnVmw3LThDHyBp0
X-Gm-Gg: ASbGnct9Zr5MJCdhAgmDDhzSPlzmJmGsLq5b77Ji6/1YvtgsarDXhWJdWQrNqTM47YB
	S/9MU7y9HQRoUy4dcHOZVInu8iTFylsCpC3HW0VYIZMAuHnm/6P3Nd3c0Wab0MaLAdgCMLq9y3b
	3Q0BE4bJiS1NC9J5x6gCtwBx2EEkfpzGpxZgWYzaC0DxIytXAZfu0xSFVyk5BS/rtBzskzvsT3/
	bFADbUyKrAMERmFDclAczDBUIEAZEYU3nIMKby5eYP3zHXsz6LN4xeZhuE1xz+vjg4GPqO2b0Hi
	mCwgPz6/nRocPZj9tSOqllf7yk+SYVmGDriQJfJ5VxiYNkw5wIJUFcIvgbqvYz8DUReTrEw0Zh+
	Xb7wyIbm0QuX6rYJb/Dbt0g==
X-Received: by 2002:a05:6214:2585:b0:72f:27de:9443 with SMTP id 6a1803df08f44-767aedc8d48mr99088666d6.0.1757921077937;
        Mon, 15 Sep 2025 00:24:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8t06gELRF9V0qtmrxwwjLKo02PZlz+YKW+xvnTDzqlwlOD0FP7KqC7COKTcSwV6etpfo0qw==
X-Received: by 2002:a05:6214:2585:b0:72f:27de:9443 with SMTP id 6a1803df08f44-767aedc8d48mr99088476d6.0.1757921077435;
        Mon, 15 Sep 2025 00:24:37 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ec33ae181sm8875935a12.22.2025.09.15.00.24.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 00:24:37 -0700 (PDT)
Message-ID: <9a18cfae-4fcd-490e-b44d-6f9345cc7c3b@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 09:24:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH DNM v2 4/5] arm64: dts: qcom: qcs6490-radxa-dragon-q6a:
 Enable UFS controller
To: Xilin Wu <sophon@radxa.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250914-radxa-dragon-q6a-v2-0-045f7e92b3bb@radxa.com>
 <20250914-radxa-dragon-q6a-v2-4-045f7e92b3bb@radxa.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250914-radxa-dragon-q6a-v2-4-045f7e92b3bb@radxa.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eeo9f6EH c=1 sm=1 tr=0 ts=68c7bf37 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=ksxQWNrZAAAA:8 a=JxrhfIILcghro0na2cYA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-ORIG-GUID: N32erU7KiUuINIcynuJ09kB4bDGab6Vs
X-Proofpoint-GUID: N32erU7KiUuINIcynuJ09kB4bDGab6Vs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzNiBTYWx0ZWRfX69PP9f6cd6lH
 A6NiZ4sEPc9J0CMNj/31UPhXeQbzxv93bzv//qz+VcbWOEN4lN+w7Sv9/vQSWhN+2VlCacwbnuV
 hOGfxOMvuAaX0eI4OgV6Ru4PEYUYsu4Qt8UO8fZPcRGF4LDh8Pm64K04F0h2cU1DILg2lbXhwy/
 QfVidXY2eJYfLpyaxi2su1XQFa+KMD9YFcQ2j6ZFHWGK0Amiu9p+ihxO+KPNpahbpuwIOOIHIqt
 ZJEcWB5lm3IWE3+QXjwQHICOTxVQR7ntMgFV2CkzjWWfgZZ7KEYrpSo1Me2438MrNMTHEYlWfRV
 ngwbCT7scPQw1RA7WdJ84K0kIFavg+s+8gButBgg1TK5RKJXtiMYrfqzsK4JmSYyqmmAigrmSnG
 RcMVqthz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_03,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130036

On 9/14/25 5:57 PM, Xilin Wu wrote:
> Add and enable UFS related nodes for this board.
> 
> Note that UFS Gear-4 Rate-B is unstable due to board and UFS module design
> limitations. UFS on this board is stable when working at Gear-4 Rate-A.
> 
> Signed-off-by: Xilin Wu <sophon@radxa.com>
> 
> ---
> 
> This change depends on the following patch series:
> https://lore.kernel.org/all/20250902164900.21685-1-quic_rdwivedi@quicinc.com/
> ---
>  .../boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts     | 29 ++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
> index d30cddfc3eff07237c7e3480a5d42b29091d87d6..3bf85d68c97891db1f1f0b84fb5649803948e06f 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
> @@ -482,6 +482,11 @@ &i2c13 {
>  	status = "okay";
>  };
>  
> +/* It takes a long time in ufshcd_init_crypto when enabled */

Huh? It only turns on some clocks, writes a couple of mmio registers
and turns the clocks back off, could you investigate a little more?
> +&ice {
> +	status = "disabled";
> +};
> +
>  &lpass_audiocc {
>  	compatible = "qcom,qcm6490-lpassaudiocc";
>  	/delete-property/ power-domains;
> @@ -938,6 +943,30 @@ &uart5 {
>  	status = "okay";
>  };
>  
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
> +	vcc-supply = <&vreg_l7b_2p96>;
> +	vcc-max-microamp = <800000>;
> +	vccq-supply = <&vreg_l9b_1p2>;
> +	vccq-max-microamp = <900000>;
> +	vccq2-supply = <&vreg_l9b_1p2>;
> +	vccq2-max-microamp = <1300000>;
> +
> +	/* Gear-4 Rate-B is unstable due to board */
> +	/* and UFS module design limitations */

/* Gear-4 Rate-B is unstable due to board and UFS module design limitations */

Konrad


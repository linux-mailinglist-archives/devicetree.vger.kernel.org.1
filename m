Return-Path: <devicetree+bounces-172933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B43AA7011
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 12:52:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF9F59A6F9F
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 10:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5CCE242917;
	Fri,  2 May 2025 10:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hkQIcRrX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ADF24168A
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 10:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746183118; cv=none; b=E0O+XrcVBSDKj1jt8Pr64F90EhAtIKB90b8t8YgLNkftJ1zy8hufFhj4MyNAe/uAIJk3e1TwI/0iU6JAyM+xfJhwlr81aK7BSFUoaGXdIg87hnicwRJ3h9bZq1dqDPRZYMrVMRB/JeknOBuvfHcvb2AWc0I10Syfx9Y73QswhgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746183118; c=relaxed/simple;
	bh=LAAsQFiTjrism+q2nG20wPccf5TbyKe889K4SJxTo20=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WzJaA+jy4nmhro1LcwyGkJymCCJcXzAP3ylxPD3CRCszSA6X6IRN48/P3jokjVZvrgzbhmDhmOHNP78MPg7y3U/hCFVN+pBye4oI4zHqiZVyuVldiuiu0ud+ZvyH2NvL/w+UnH+GyELOBcj/Rcqw9Mbmj2PEIR1r4ZzhARD8F0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hkQIcRrX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5421Mui3015192
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 10:51:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I88an99AIAvSoT+DIkAkztlH4kdpnjQu8t+ZJSXD3iQ=; b=hkQIcRrX2giDwKH+
	kQ/b4xipP7cIz2jrTvMVDal1Gjp7Y3P1C7nfJoH3YY22cwXEdKEPa/QR40wJ1tr9
	yeuhuTHkzJgg5vXAT5UNJrxLBbPDBpXAmHEOOvvZidVkFctRtpKVpfPYMc4KtyOk
	lljFrPEr14bEgVHufMt7yV1Wt83r380txK37csHDZ8CCmJp6Ce3helWkbmv86zAN
	CQIOrHgbxrYI5/WgUEspiGEAwuEA1gPqGRZJkzO3/qFCjERAAUmEl81Al4oQUbCc
	SsVpb8kImU+QxWdWviC31RyTEfSKzTP6diMWdwLQovTTQ69EvPfXHfDRuUV3PV/c
	A7Hh4Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u4g222-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 10:51:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5d608e6f5so481353885a.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 03:51:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746183114; x=1746787914;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I88an99AIAvSoT+DIkAkztlH4kdpnjQu8t+ZJSXD3iQ=;
        b=syyzk2a3tp9n1TsmfNWcbfLwX2zLb8zEwYk6Tb4dn9jsT7CkMJeMAEb6djjLQEfxb6
         VOBX5oKMwW++Gs0NMIVhM97+IbT16XjaxqY20ItH42v+JGcAkahCr7xbIimUzMgkc0i4
         U0zeeNONT5/Gsebvi3W/hVODn9XM/eFtaX12VdDW5Q5njyYYygPUk51ZdZ+pEhfO7EdX
         ADam34RGZNxjp7aDGLJHUZ8f2XeyKLWQVrN7R2q36RefAfEHPh0TVNJjtwtpZznIgaZe
         sQEE2ZD54nVVqyrWc7Z7z3NcucyMxzLQ3oZsnQUWVyqyuW4/iL2lNk9RCd0Omx7TrA+d
         Dl/w==
X-Forwarded-Encrypted: i=1; AJvYcCXbAe9IFTzuTRexzyfslcuKlNqpmtTmS1r7UX1+ZPUzxOjANtapwt7LCvex1OcixBj6WscWUJeDT8Br@vger.kernel.org
X-Gm-Message-State: AOJu0YwnuPqIgk20/gBNeyCz1DvMdyChSWqjxharSasf7NjiLWmGU2r3
	nZ7vI3GiLSI4aADJNQaVRgdtPVkkiX6BdULC0FfUq/HTDgs57uPejDR1nXHkmsBMF8N1GSGe9Cu
	XHp/9TB3a4rG3ndKOt+wdXwcsY8Mzd2e29pMlnNpTnMRL6949b7Xmk43xDPRg2r8ifX9JJ+A=
X-Gm-Gg: ASbGncsUD9nD70FtydhI5mPprGkaOiZXrQvimTU4TVZrC+a5fn7/XgU5wlXX9H0VO3T
	3STzHU2A9ZtV6SwTU7hrTSyyPt8v9v12u1Rdi2+aBz+uhyKEV9R3u3qhjp/0u3lvX+irdOAvkaR
	tRa2s5I7AyTRjM7vAI88FOt2lo85/UYnX2a4ICogvPmBKuOHsvTXl6nM/IM/nU+blRe9wFZOZjC
	JD2UfTYKCUeBUoH7qP2Kaehfb/Gj/oy8B07bRYnoiMYcw1vJlJDqVEbePcgFFlvXJq3xCl/teXV
	myCj5PNh0RTVLIaRrdK3uaXcJd2IDhxEnES2Jw==
X-Received: by 2002:a05:620a:460a:b0:7c9:4bba:1ac0 with SMTP id af79cd13be357-7cad5b22d62mr380123685a.9.1746183114606;
        Fri, 02 May 2025 03:51:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEq4m+dIgBbhLDT8yukudxbcJZtNknJH8dMUbDaanD4ZfImkcyIadgYrN9lw4vhw0dSwsyjA==
X-Received: by 2002:a05:620a:460a:b0:7c9:4bba:1ac0 with SMTP id af79cd13be357-7cad5b22d62mr380121885a.9.1746183114314;
        Fri, 02 May 2025 03:51:54 -0700 (PDT)
Received: from [192.168.68.119] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-441b8a286cfsm40063885e9.29.2025.05.02.03.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 03:51:53 -0700 (PDT)
Message-ID: <bf9291e1-bdad-4b4d-b527-b21963970902@oss.qualcomm.com>
Date: Fri, 2 May 2025 11:51:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add adsp fastrpc support
To: Alexey Klimov <alexey.klimov@linaro.org>, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        srini@kernel.org, quic_ekangupt@quicinc.com,
        krzysztof.kozlowski@linaro.org
References: <20250502011539.739937-1-alexey.klimov@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250502011539.739937-1-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: xrx3HLYUmoigyVmXCWTxT8kTedO6sRkZ
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=6814a3cc cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=gH14mSXmLtDuaprCSZYA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDA4NSBTYWx0ZWRfX5Bvr/15KWkH3 w0u23h1fg1NMvh0l2RKESUSinRcwr5rkLS9tOeFOqFEmFLzX4EvyjzzuIaDWBDnaJLOHa4hqo6q u1P5By232SzodrPnbbHVwCxo5emgpbYPaIZvl22aaCY+I01SONyeE+gAi40RYijAcl7kly4WaQo
 z+/ugHfyWFa0jGsJSNCaw1TEIo8exZ9t8AHpqUIuFbRdY7Jd3yDYG/r8khTTSECnwemqhnLdKqK Fd/7XOAetJ560ZDq57Htx4BN3p3YH2DzPh9Jy1UjI0wZBEWXW/EWJkbPWPtAztI2lhwklhXzg4I 8bfsSZyhj5tZG0woNy+bjSrCZDOk+4RjsFCbKPE2CxgDFxd8nwhZgya8MrrI+KxJW311Wzbk0NI
 nZaWPdL0XPK1jS8VVIH5dlllCSxXHewVJXq3FrxonAl10+SC5/gX0QsY6Td2YMKnGRf/FWK0
X-Proofpoint-GUID: xrx3HLYUmoigyVmXCWTxT8kTedO6sRkZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-02_01,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1011 suspectscore=0 bulkscore=0 mlxlogscore=783 malwarescore=0
 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020085

On 5/2/25 02:15, Alexey Klimov wrote:
> While at this, also add required memory region for fastrpc.
> 
> Tested on sm8750-mtp device with adsprpdcd.
> 
> Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
> Cc: Srinivas Kandagatla <srini@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 70 ++++++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 149d2ed17641..48ee66125a89 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -7,6 +7,7 @@
>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>  #include <dt-bindings/dma/qcom-gpi.h>
> +#include <dt-bindings/firmware/qcom,scm.h>
>  #include <dt-bindings/interconnect/qcom,icc.h>
>  #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -523,6 +524,14 @@ llcc_lpi_mem: llcc-lpi@ff800000 {
>  			reg = <0x0 0xff800000 0x0 0x800000>;
>  			no-map;
>  		};
> +
> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
> +			compatible = "shared-dma-pool";
> +			alloc-ranges = <0x0 0x00000000 0x0 0xffffffff>;
> +			alignment = <0x0 0x400000>;
> +			size = <0x0 0xc00000>;
> +			reusable;
> +		};
>  	};
>  
>  	smp2p-adsp {
> @@ -2237,6 +2246,67 @@ q6prmcc: clock-controller {
>  						};
>  					};
>  				};
> +
> +				fastrpc {
> +					compatible = "qcom,fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "adsp";
> +					memory-region = <&adsp_rpc_remote_heap_mem>;
> +					qcom,vmids = <QCOM_SCM_VMID_LPASS
> +						      QCOM_SCM_VMID_ADSP_HEAP>;
> +					qcom,non-secure-domain;

Any reason why we what to mark adsp as non-secure domain by default?

--srini

> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					compute-cb@3 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <3>;
> +						iommus = <&apps_smmu 0x1003 0x80>,
> +							 <&apps_smmu 0x1043 0x20>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@4 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <4>;
> +						iommus = <&apps_smmu 0x1004 0x80>,
> +							 <&apps_smmu 0x1044 0x20>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@5 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <5>;
> +						iommus = <&apps_smmu 0x1005 0x80>,
> +							 <&apps_smmu 0x1045 0x20>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@6 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <6>;
> +						iommus = <&apps_smmu 0x1006 0x80>,
> +							 <&apps_smmu 0x1046 0x20>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@7 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <7>;
> +						iommus = <&apps_smmu 0x1007 0x40>,
> +							 <&apps_smmu 0x1067 0x0>,
> +							 <&apps_smmu 0x1087 0x0>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@8 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <8>;
> +						iommus = <&apps_smmu 0x1008 0x80>,
> +							 <&apps_smmu 0x1048 0x20>;
> +						dma-coherent;
> +					};
> +				};
>  			};
>  		};
>  



Return-Path: <devicetree+bounces-204063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDC5B23F19
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 05:39:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6116E7A5E3B
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 03:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B6022BE02B;
	Wed, 13 Aug 2025 03:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b1CrhF2/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CABA270559
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755056348; cv=none; b=VxwcfMr8IZqqYYdxgY8AFbHPRl2fpx6wBGO6H55JxCEla6peou9qd+M8VFHSTwQiPiReeP+2FtVUefpJ+omW/UrQQeQhAquAK7aH2KK9AIsKmIXXtrACcNRlzgg1yxmyOCmiKMmMWepcPTG27rLoOJgmD8jmUGoxc3TDhtvWP48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755056348; c=relaxed/simple;
	bh=frlVhelmwCmI3FqNV6bRhotoX2pNLqbCYY9VDbY5LIM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nov0XJDE2d6JRmhfRHcXsc7HSFpKHeH5zwFBdeUO0MQPoJpw5SnymZBp3bvA3fgGXdQ/bEmbrrwpVddu2GBg4ZmzcZcnSmAPpTXLgUMccqKYB8ygOetzH72Ft1uTfR22K0+YVCaYG45nLNGOiZ4PE1hBwZ1NmyjN3KAdwVVlUVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b1CrhF2/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D3d5EK023077
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:39:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kPk2QHiPe8RX6UEDtLds9t18fcrz/o5b6wJ1xFIzlzU=; b=b1CrhF2/X9+nRAGy
	jxH3iSNiY82vvBMXrCIZwU5tQKZUIWVDE4vvEpzR6f56/ESdSKueLgUHOZARE436
	gSXra5kfjgyPwP547q/TavfYCAG3nrjznbntndN9wzLKBctTNWhkjZkegaBWyFUl
	SwSPcPSDPoK3KbCpXuzrbJeG+PlROXLpsLjwSsGiK6TC+6uoKkjoM8Q/lQhLLQ06
	4MKt/x+cohTvfivExPkWyy4rJFEjyeFhnNuaNAOGjKREzKDGEBmivvupzL9WNTIA
	s751HkCVMyfbHS08CQz5rkF7Oome+KgBh6wISISYnVkMaos3JvY7E6xQSJl1eLED
	A+9M/w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffhjp4p6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:39:05 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b42a097bbb1so4443480a12.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 20:39:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755056341; x=1755661141;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kPk2QHiPe8RX6UEDtLds9t18fcrz/o5b6wJ1xFIzlzU=;
        b=nkpums8e4Y31b9oGDNv1ML2qflP4BR0ZosHSCGMxXAzyoAEbwH7RH3idHC7z05zj1b
         ZoqZdGOby6a/982ldRrlDX1IJ5+0FIUn6sBdPdsSVQ2HkF0fwu45Q9mOX6NO8jznWdxb
         MY2YZqIpSmCeLMsHN95uO6JbqUwTNGg6tWyE+9AADfQ1AkGeF/fjbkGRCF1hatmvnE24
         ridenaup+LRZpIAYWSjGorvkesYuAmKdkSpV0jm/hPOOOcM8Muony5ZGjV3Opm11fCuB
         sFLObPMqOgffvJv3aUYZFCR7PLKUMCPIKcmgfhsdQ2pEZs1OfIAsOJOKHBKmibY3Y3pm
         dveA==
X-Forwarded-Encrypted: i=1; AJvYcCW/6Sk4VS1JqgbRcBnA/d77o/zjjl3/Vv0z9rKFme/3kKgdb8ukpJR6hER0/hAeUESEdzEGfCRvFZbk@vger.kernel.org
X-Gm-Message-State: AOJu0YzhluUHcbbe5W0Dkq+gO4o1Z3f6fqfcIzJ2uj32GFX90kBfeqD3
	JesOxJvbfpl6SsZr1Ojj17w/VTcBZvcuTp3UXfZN1AHU3rIkcvV3Ti9KQZ+f+YG9Hu6yE3ymRpL
	b+UNxw/AM6V1FSKdhOnZUYASq53NJSWw1rj/Mc85UPnvyzCel1leFOH9ptHrHFGxv
X-Gm-Gg: ASbGncswxB50vDBDS57XI2PGGhNbTikTw98UYwA8tlBv8467tq9fygWcvjnCtwlot5d
	a64t9Jk/9gDhsS+GzEIxAZwzGDCjM8pQHR+BIY+NNMTyrjotRelO9dkuJ9qp1oOUkpyBiH3tMF8
	fXz0Y1JKIB/BAZeTyEnHxff8Li09njK6xWv90ozp8FPZZdJ+LkHLwdnAnwKXHaFk3+Nmf4bxFpN
	h+mzx8m7ujAu9cgWzxC++1dM6aNsZAS3xbALvYopUt1frKPrXmXnjG63XTU7wYgOWRHKEnvzR6K
	FYVC4saF/KUQQjygDXHOUqAHdYMhmjsV5k40drKjvm9ChbPgZGkP997FxBjfbvTLSSDCVa4=
X-Received: by 2002:a05:6a20:3d84:b0:240:50d:4285 with SMTP id adf61e73a8af0-240a8b9cfa5mr2979700637.38.1755056341263;
        Tue, 12 Aug 2025 20:39:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7Dd5mSG7zW09Ug10gS3SwTUD5Aiujc5HgrqnSUnyzFaDo3SkczONNSwK3UtDk1yxa8/vXZQ==
X-Received: by 2002:a05:6a20:3d84:b0:240:50d:4285 with SMTP id adf61e73a8af0-240a8b9cfa5mr2979665637.38.1755056340853;
        Tue, 12 Aug 2025 20:39:00 -0700 (PDT)
Received: from [10.206.107.125] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b428e6244a5sm12413901a12.23.2025.08.12.20.38.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 20:39:00 -0700 (PDT)
Message-ID: <a0420827-cdd3-4442-83aa-d7f5072a28d4@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 09:08:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 2/5] arm64: dts: qcom: lemans: add GDSP
 fastrpc-compute-cb nodes
To: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250813030638.1075-1-quic_lxu5@quicinc.com>
 <20250813030638.1075-3-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <20250813030638.1075-3-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NCBTYWx0ZWRfX/WT9XnSUzVih
 WP4WqN4LPv2/5v0GuJguMFQAgqAVf/Sk6RLoDx/wvHqG9l5XQk5wTmpw0p+kwEVcscDhcVedEDc
 Cvfo+5PA2flD79Xg6G0Rn0CDHzGS/gZhIYEQUqm4BDOtgX28wzu7jQryR+k9duZLda0x7O7nvgE
 r3XTDUttcdmNwzEaBl4IjR0CKfzFCH4P3B4/cZywPMHq9L3Z9VAB5R4b1MvFqNTI0GdIX2eLQGH
 ZNRgTy2x3aDPE2CTiyAxYEopgetej61RsTjTZrcU/mCr0u3oyvDvSNfXx/GBpvdAJ2ag8YcKSEF
 xwz1UkIp3sfR6gTPxb2Ox2b5czAhZDYJbyJ+AnXOkbqcPNjjHYOQUPp8vZS7ZV3QFRiTDiGl85R
 Fyvy60vB
X-Proofpoint-GUID: vTfYqQ7qGQ_d4K6sb1XNUF04fZeHzyBA
X-Authority-Analysis: v=2.4 cv=TJFFS0la c=1 sm=1 tr=0 ts=689c08d9 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=2Ucg9gNHWiGhv-ArepgA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: vTfYqQ7qGQ_d4K6sb1XNUF04fZeHzyBA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110074



On 8/13/2025 8:36 AM, Ling Xu wrote:
> Add GDSP0 and GDSP1 fastrpc compute-cb nodes for lemans SoC.
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 58 ++++++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 322abd0294be..a4c79194cee9 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -6092,6 +6092,35 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
>  
>  				label = "gpdsp0";
>  				qcom,remote-pid = <17>;
> +
> +				fastrpc {
> +					compatible = "qcom,fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "gdsp0";
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					compute-cb@1 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <1>;
> +						iommus = <&apps_smmu 0x38a1 0x0>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@2 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <2>;
> +						iommus = <&apps_smmu 0x38a2 0x0>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@3 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <3>;
> +						iommus = <&apps_smmu 0x38a3 0x0>;
> +						dma-coherent;
> +					};
> +				};
>  			};
>  		};
>  
> @@ -6135,6 +6164,35 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
>  
>  				label = "gpdsp1";
>  				qcom,remote-pid = <18>;
> +
> +				fastrpc {
> +					compatible = "qcom,fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "gdsp1";
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					compute-cb@1 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <1>;
> +						iommus = <&apps_smmu 0x38c1 0x0>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@2 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <2>;
> +						iommus = <&apps_smmu 0x38c2 0x0>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@3 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <3>;
> +						iommus = <&apps_smmu 0x38c3 0x0>;
> +						dma-coherent;
> +					};
> +				};
>  			};
>  		};

Reviewed-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>

>  



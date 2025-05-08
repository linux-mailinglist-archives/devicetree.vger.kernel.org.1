Return-Path: <devicetree+bounces-175112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2BAAAFD7A
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3D873B6F9A
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF5762750E0;
	Thu,  8 May 2025 14:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G+dXzOUs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCF82741A9
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 14:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746715302; cv=none; b=m2vxhz2NV/RXw2HW+UyqRynneDlolhE/bl6Ua0Z000MTu9bnHzG41i2U6tsodAp3G8YbtvmBpm3qmwo3aJMjjaYTldIY89qC7nLx7pt1MERaXvV6x0TJ0meqOl1xLYX+1vnzTLtVs3YZgnvbNRpYCYMsowSLRbHy1gfJkUP9k1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746715302; c=relaxed/simple;
	bh=D2p2R6SzYbGr76htpl+9rp1P3w2GVsL1rfjfNsJkVgM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WQck7mHvDcTnKJOm/ZGmwOMQH7+RV/uU2hAB70Gq2G9smGJPQO1e/OV8/j+H3PQV9thGvihK/sBwCS/R6hCLp0+O1ceSvbN7ITorglITmUVgqIjri2P68Kf/qiV7OqhJYXKGxWhMnYPc146XI/PXpmrV8vqy6CoBAadPDU7wcfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G+dXzOUs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DPiIl025020
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 14:41:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N5elXAs3RRDCKmWaP2KRsgdXB/dfARJXr/m9cSVmgAw=; b=G+dXzOUscmeCMPyV
	aS5Gw4GVjMT2u/lOQwRZ5oQnfO6cKt9uY3eyfBdm9y1q0CSqbeIgVmd4QMtAbbLo
	cjBRDbGa+pquGvlhZPoyCThWmTqf00mNGnUbN/d+kQ37MySdUB3sdlPQcS702TWE
	nfD5NWat7WO9v6rd33uDJs1IYmYc8kRdfbBxiLK6c4qAGRpRFhP2wtRE+w4rnbUv
	Y/Oe1940AxKs1weDGsi9P+AJg302FDkAVyZkE8yVRvWQs+VRS4vc8sP197n0HRB1
	4X4ZFPJ7gsw2nuXxyA18FesqQfkccfDgice8I5Srqftwymwy6Cl861Fs5cHP5Cgy
	SJNKzQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp11phh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 14:41:40 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5af539464so25689585a.0
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 07:41:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746715287; x=1747320087;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N5elXAs3RRDCKmWaP2KRsgdXB/dfARJXr/m9cSVmgAw=;
        b=PbRSd+9inY5mIfqryaSssgRS787jbWf2fHXo8NpnSoFDWAM9BUzF5PfHs8CMFXKDpm
         /FkJSdwyHIwAICihFFeX2PHTgKzWC3n3gXwVGBFVWhT/HyHWSRiC5gOJ5qPolj8JW5DW
         Bw/2p6y+kLCEIRPMoBEAQQSGFNylRLEEdFbC+ZkXYRsC6mfglA3bkKlHTcrnkUeDLfGl
         zghZDsspKDu4TWVPeuWyIE+PET9qESGFZzsOaDB7Wyei8xQJn8INRIBdGko17+QNcUrC
         9CzwDtsrGNsdulqYv8OnV1wDFYxpGtMiBAIckNWCJVeXFcvKRweNES1CbqZroG0JG65r
         Pupg==
X-Forwarded-Encrypted: i=1; AJvYcCVrs6D0SpRQHADcFLHXgo7dw++AhyJg9hiCrXlrEnxAC97ykkoIcjpppnBWx5L60RwHU4PK34AggWqg@vger.kernel.org
X-Gm-Message-State: AOJu0YxRixgstOWEreFvXc7HI/N1xYOQRoz6un1MVMKGob8iqHWY+Uyq
	UMl9yQKgJfTVpKwS/2u4KAYCyYIspQUUd9SNgh6zv9GPoHLvEV0zHAA+FBpMdHCOjn+8OFoUWy8
	HL4rjuOpzSFJ6aCjRyPXsKmXxXAV8y3AjZ2geZBWafOOwdSf20THy9PP8XJJD
X-Gm-Gg: ASbGncsb2WZkZrpMfKJ+b4Fcm66RBgN7+7KOuBoGnWfPPButGhKR1NPDUdKv78eLOd0
	42LZXFcOtKTGSDq5aWpXc+cs3J9jNKm5Vf5WK63/ll8r+8PINoTwjIxblyHCJc1AaznZcRX7qx9
	TLxOD6zFx5C6G9zoj7M0PW7r6rfnaakG9UorcxZsAUVnxAMG365u48ww+kTpooS1+soDzD9xvhB
	T2QdjeugKHfc67p4S+LlukmHy9wKDXBBIcUFXXb4fDnmzTx/oU0IfGydCpo8yVUWL0yp/8EYz2q
	9YldE527I5zRLSLA8dNG5b0+dLmJ1q77JOXTu9ha9n/ndtfTrE8Ns70cJOOPBlmcfYY=
X-Received: by 2002:a05:620a:25d2:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7caf73a3fa0mr345848785a.4.1746715287248;
        Thu, 08 May 2025 07:41:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvotDF/EgOTa/Kwtd8jpkit/1sMcKqDxmTcLL6op4C9NEVKeeD4uecRAKFVemZdy2mMST5Tg==
X-Received: by 2002:a05:620a:25d2:b0:7c5:8ece:8b56 with SMTP id af79cd13be357-7caf73a3fa0mr345845985a.4.1746715286890;
        Thu, 08 May 2025 07:41:26 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c0238sm1098500366b.106.2025.05.08.07.41.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 07:41:26 -0700 (PDT)
Message-ID: <64893588-544f-4cb0-8c0b-7eef588468d5@oss.qualcomm.com>
Date: Thu, 8 May 2025 16:41:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: qcs615: Add IMEM and PIL info
 region
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250507-add_qcs615_remoteproc_support-v2-0-52ac6cb43a39@quicinc.com>
 <20250507-add_qcs615_remoteproc_support-v2-4-52ac6cb43a39@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250507-add_qcs615_remoteproc_support-v2-4-52ac6cb43a39@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDEyNiBTYWx0ZWRfX2pZTjCGRD+0K
 HDOQI3cFR717btLpNkQtqMzluTD1vhKhAHHgn3F254mmPkEsfrCLpxtBJ1LO5HSt3t8ES47SD1i
 ni1T4fQSfMV1d2nRVIvyzT47ozauTLjSS+GCKotLK++tkysXa/3CHk9C9hbHRyMvBxXyuKrwa0H
 Vzx+gNs4KoDXnKWYzvPBb2UVqT/wP+30orua1nX7FTK9MK4F1uRqtJVBbHoY0wvOHDMAX7yTa2v
 VnBEFAw3C1HNqcYhJ+CDKvdjgePRCjCz9xgOHfWbLDcWHCNnyqoZFSqBN8Z1IC0utSXrazE9Dtj
 AwomUmBDLYSSD0Zeu6I1Sk+RyJF9fGMLKfsGmzqTG99tQ+QsX1XjR0luq5Jc/aVyXbaALRF3VLW
 JuyTBi6gtI5xFCg6Ar32cc25vDJLi9EuefYz7AKsdVMEMVjBMhi+UcOtDCGAqc9pVpl9bZbW
X-Proofpoint-GUID: DXc7Dmqqt98bLy_dM3In3r-1LebZR0br
X-Proofpoint-ORIG-GUID: DXc7Dmqqt98bLy_dM3In3r-1LebZR0br
X-Authority-Analysis: v=2.4 cv=W4o4VQWk c=1 sm=1 tr=0 ts=681cc2a4 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=q_8UC9VRXJzehZv9TEEA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=862 suspectscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 mlxscore=0 adultscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080126

On 5/7/25 12:26 PM, Lijuan Gao wrote:
> Add a simple-mfd representing IMEM on QCS615 and define the PIL
> relocation info region as its child. The PIL region in IMEM is used to
> communicate load addresses of remoteproc to post mortem debug tools, so
> that these tools can collect ramdumps.
> 
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 53661e3a852e..fefdb0fd66f7 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -3266,6 +3266,20 @@ sram@c3f0000 {
>  			reg = <0x0 0x0c3f0000 0x0 0x400>;
>  		};
>  
> +		sram@146aa000 {
> +			compatible = "qcom,qcs615-imem", "syscon", "simple-mfd";
> +			reg = <0x0 0x146aa000 0x0 0x1000>;

0x14680000 0x2c000


Return-Path: <devicetree+bounces-172385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E090EAA498C
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 13:11:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C85E17380C
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 11:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E527F2222A2;
	Wed, 30 Apr 2025 11:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FUkr3fEw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7417B18BBBB
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 11:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746011485; cv=none; b=cj225YrgedRMT4zK8s2DNVvtAzni5x6FEembifnXlam53ltRhoJSz7Qmh1rGdtxEqkeev/LUamNywt/LnitukZwlpY4MIsO+OZrssUFXJUL+oh1+vF5NAol/LQ1lLtrU6EBYTdPQqqRwUF0bsDAgmdeC+ZRX4AT1ey92to+b0yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746011485; c=relaxed/simple;
	bh=Co3wQ6N1OGEyYO7cg7Pdin1FexCjKbqo0xDkE/Hr9XY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gqLhreI2noSFKDuJ6owI/Ic6+btO8+GULTIuK8VtuD5/L9ZAzP6Gi2wd0qv9dhNGBBAtnIwWVlUTyk5zWU/SUMrHYKEv5YQOboB/ZqB6zKXgMxRI1ClADLEwCXJahIRT5dNd0AHFu+8fD6QoEp0XvUP8RmVMGE488Cjw1n5ezyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FUkr3fEw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U9NP7C029633
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 11:11:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/7tDspfKtEjUZpJrHIm5EpiK1dQnHwyPWBBeLxDqhOg=; b=FUkr3fEwMKPSFRVA
	1v0RWzSmGD3epbk5Qs0nkmg66jbXeIXVOT9i4jOz6dUfi1Lx5SjYzrOubdU60sFA
	NQ5lAbUih8uyH/hzBBPOuGsF5QKOe4xPtv7Rpj1hcKtZt8lzcBANSJzFOMZUG3pJ
	z10OPaOFxjgLCICeCksyMfD860BQ0lbkO+VkmixeWm46UgdkwF8CD0VlYcNhtAuE
	NkyVzb6z189YEEZpzI/RoPFp5i6pvnhApP5vKZHRJe4ZVxr5voTVNS00LqWq6RWa
	u/ktzaR+KCfl5PO1oPxpv8fz259bHilqkKTE6uozC7i9YXTFk/7u4D23u+lMqysm
	gP+kSA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u7swme-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 11:11:23 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f9c5af3dso11893806d6.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 04:11:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746011482; x=1746616282;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/7tDspfKtEjUZpJrHIm5EpiK1dQnHwyPWBBeLxDqhOg=;
        b=VhAvwX+qhx2aaNC6maxkS6j++G3ZQ0HuV0tEHd090M8xSRUWWPSaaoBPsVu7IaAZrU
         n8PjHfrC3u3QF3Zf4CxTUKkGS4AS5pTuraEEojXBc767igGxnHZirtnorsZvr9k2Y4cm
         p6H6W6ZAZF3oDeVrCXpwWdB6Df5fd/g9GG3Rf3dXZdyAMuFv3TDbuXkWdpiIlaFuh9ms
         f6MaAY21l41kGGzN084viODat7b1IvsceuuLZo5bNU81Do9+Hq1I7V5JGzd+kiAqo81u
         u5Q1BM2KXHx3LYpl82SM0e2ajWEa/c4+wPfxFQyBlsDa49qiKO5uNceOqEAujt4eMGU9
         YGWg==
X-Forwarded-Encrypted: i=1; AJvYcCU6wRz4GIQc/bwlg7vCN+N4TXAIi6OB+kIm2w8dTqwrQ8SotsnsOYPf2VxgxC6TDORyVOgH5HQhRRDM@vger.kernel.org
X-Gm-Message-State: AOJu0YzSKD2o1D6qOy4HDRQS77U1u4rAqz1KUGn+31Jl176gHdwSegy5
	exE/dF2/Pz9bEOlKOyC4+Anoy/HjtUe/sG/NyfM7Xmg5Z+CcQyjnec39vImcYgluIhswoPeE7DI
	3hp90bDJ0OlQ8+vH+bKOX92UKiZUO7U8hKg/oKX1s5eI02dv9IOPKVYBidk+Ozvx7GJYL
X-Gm-Gg: ASbGnct7JORjRPrHSODbe5+MVhhtBX42ieuRbtNwsYwxdft0V82gMrvBEeezDd9BWA8
	T6uHdqfuRgJpfi+uZulRTWk2Rewzr93Ui02LrjBTcrlY/Aroj5wMvm1EANRgX3lWjJiZAsEiXfP
	KMlW5FJV4JZNNw/0SHMUMn/fry7kYEuLTOsVi26TANrC5lSei5KAF/9C7RzXbuQP2ikn/dfNcBm
	N29nI+A8HlXQ6Xwdpb6vPgtIqWJOfW9aPZX5U6L+CQmCWf6vXGggv5f8ZVM5bYw3+nNzpP9bria
	ckUTCuf+kT0rgi6FvAAEHttztTYXRG9SKZQvqFZ2hASqFLDENL+j8e4vO5HdQC1iaH4=
X-Received: by 2002:ad4:5f0e:0:b0:6d8:a091:4f52 with SMTP id 6a1803df08f44-6f4ff5f2443mr9116366d6.7.1746011481992;
        Wed, 30 Apr 2025 04:11:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFi1yeyX85KSZunTB8r5b0uUMfRxR7ky+CnBeOgP2y9Bt9IyJgsKRKk7JfZgLjRwgz3LDHZsw==
X-Received: by 2002:ad4:5f0e:0:b0:6d8:a091:4f52 with SMTP id 6a1803df08f44-6f4ff5f2443mr9116216d6.7.1746011481601;
        Wed, 30 Apr 2025 04:11:21 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41c40bsm912620266b.20.2025.04.30.04.11.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 04:11:20 -0700 (PDT)
Message-ID: <1ee8587b-2bf6-418a-9834-8f8cbf1e94d8@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 13:11:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8550: Add support for camss
To: Wenmeng Liu <quic_wenmliu@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Depeng Shao <quic_depengs@quicinc.com>
References: <20250415-sm8550_camss-v1-1-d4b7daa168ac@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-sm8550_camss-v1-1-d4b7daa168ac@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ldc86ifi c=1 sm=1 tr=0 ts=6812055b cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=BQawBwbjN2gzKBjTXzwA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: CLpjMFtzVqKC_nDirqQ5XmavJosajRZZ
X-Proofpoint-ORIG-GUID: CLpjMFtzVqKC_nDirqQ5XmavJosajRZZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA3OSBTYWx0ZWRfX3CGpynMm9EKQ S2XmlEty1mWxLG6FT3kumNHKErH0cSGj7LHtDjsTfKT0ylPxJZaF8ZyXYy1wqJnobOke1/v+J9T 4MIqW7+so8xAilYMrrIbKqlBwhOQtxG+jCdnXEXkFxyw+ftMOZp/mRHUiSViGNtoQzzitVa3f1V
 M4mcXxZR1p6G+AtGtK4TgYDIqTR/737ZsbZbYVSHQa89OK8zKJ3d7AY6LWTDIcY8EC1/ditNBLE nHveRRRyF7m+wWUAccaftJqckG5lXHZMVmzt/gIE5Lsekr6PcnV1HxFTj5RCVK95KSdQIppQzML wl/MVxo5n+DyI9Vr6fU+BTH+HZSVLlXc92GHcrMN1VcLgrH1ExMI0awyzSUhw/Wk9Q8zdeIQld6
 /lPtaEWn6MjCmfr7G8CFvEe+NZuFe2UVABOK6EZ0gvCjR5122U3n66F4d738HhCLJLcIY5/0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015 spamscore=0
 bulkscore=0 mlxlogscore=814 malwarescore=0 mlxscore=0 suspectscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300079

On 4/15/25 9:38 AM, Wenmeng Liu wrote:
> Add support for the camera subsystem on the SM8550 Qualcomm SoC. This
> includes bringing up the CSIPHY, CSID, VFE/RDI interfaces.
> 
> SM8550 provides
> - 3 x VFE, 3 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE
> - 3 x CSID
> - 2 x CSID Lite
> - 8 x CSI PHY
> 
> Co-developed-by: Depeng Shao <quic_depengs@quicinc.com>
> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---

[...]

> +				     <GIC_SPI 604 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 688 IRQ_TYPE_EDGE_RISING>,

It *may* be 689 instead but I'm not 100% sure

Otherwise the numbers look good

Bryan, Vlad, please also take a look

Konrad


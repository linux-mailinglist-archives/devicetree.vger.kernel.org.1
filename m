Return-Path: <devicetree+bounces-180117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C227AC2A46
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 21:14:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94A081B64C75
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B81F29B76B;
	Fri, 23 May 2025 19:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z6OzVMMC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98E329B220
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 19:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748027654; cv=none; b=Cofh5jf1Od8Lnqy/gniQ+8HXTaMiF85q+nUIhk857mzSgPpiOyRF5L0zB9Jm8hxtbVwMBbP8d1FVS1iBwE1x3VfiZjxzUiPn3ToGXwnVS4Fvh+Iex6/K6zl4QGzMgu1srLxOoOzvp8YTekiYCeaqcC1cFLtf6SUrHTBjgWhYV10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748027654; c=relaxed/simple;
	bh=NJY4gnaLqh/2PIZVTRhxEeGz5B8sCMlGdIW35U2vmsU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BjFZSxE9MsE0FsiSJV3kkW9lVDZ1mE5y4bI7WoByaPDfVAR+UJcLmuK/aT9aiP2J8ugNSsaoPmLq4KyKDAuJbo07/D0yDwFzwJoV6DmocMIH3nnN3jWAZJH4I+lY5LPKWrajK5S+g+v919+jRNUcYaA1Wy0y2Y+Tj09x896jTwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z6OzVMMC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NBhG7i029111
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 19:14:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VI//RR7juJWGD286Mdk8S/XWLwI1d3+sqd+3hZdpgp4=; b=Z6OzVMMCh1rGW/i5
	d7WZnpPw+Vmv+1YdSEB/u45k3pg1ikPUAQ2dR3G3NZnnHSpGEPamLpf/Gc3YVTSd
	gdiu6699W3GfEFfMAxYnWBevoIYS1fxgr6ogoZSMoh5c7GDu1ImVqADL5p9NoNY1
	2EKQCtK2vAZEmmo8SGYy/FTCWDwQdoesYKIgbGnC8wnwjDSpXsLP0gaOZfC1AZcy
	XFtZV4N+seqM/59W7y2UbWBNBpMVj8gFyoIti2RQidgBXfI/Rob0rQ+KgksAGwZp
	UwJjWAD2QJeQQXQ0as1obmNUcIBZD3w25wTFPI2orvBHH4LpRIGqmDiSEo5c+xPO
	R0j1Gg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf4b3rg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 19:14:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5841ae28eso2748285a.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 12:14:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748027650; x=1748632450;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VI//RR7juJWGD286Mdk8S/XWLwI1d3+sqd+3hZdpgp4=;
        b=PtZBEEIMhLIe+AKLINlqE7Sybo9cPN9JFAxJ44+FQY4WeYCJnfWPFQDBjsoNuPKrqp
         lCEXec5zj0Bff/CkRJfWF+whAzcGU93j21bwldyxPIr/coYqmagMBXL4Z7ec7OzF6HY0
         9l71AbFQz8jn30yV4jYy3WNsVFlIZpjrCixyqqOg5gVX/mvSA0cTkBa/UMD+sa66TRHz
         rpOmw0okgQhGol6FGqxzuhXxxxbz1FHjll/DeLABDh9KRBzyq3k9Sm1TvXLmDLtEk3Ep
         05SZ34J4B2e9grKG310y2atwxUgE3uTEsVKZKNP6TN4cAX99IstdNXtADQRQeLD9YWg0
         Kpog==
X-Forwarded-Encrypted: i=1; AJvYcCUPiGwl4W1dZ1zSgJfBDRAwiol2XLAZSSCiO35uS5Z3YnMIDO0lzbyxN+P7ogt5XYeS2x1UyPgbCeY5@vger.kernel.org
X-Gm-Message-State: AOJu0YwL8jWExtH2LqIBW8GhMDS24CffkqX9mTMniLGplMnjPJAELNIN
	qPGA2EVTV6BH2YtpkKC9wpzWHTfzXfRFFwa1zT5aljUv+EncqAVrIFzs6pO7uFSBFv68mduXwTh
	BfVYIuVXkYisMLp92QIDhaG7iSaAcxIzWlTv5xGrg9tsHe9bp5i7jgMXFapFqUDo+
X-Gm-Gg: ASbGncsIYFhNNQYXKiqmgrK2zU/VUPFwfGRBC2Z3d/zmiT8s5DGo09Qmw8IE+By7+mk
	0hQPPlxBJ6R5tnyG8ZRcVWq7US6RWM3qkMuA9E2V041BOEIwipiixG7khKO0PHFPPRYSgQYqsFT
	3oLE+YoA01qCfGBYIy8a56+rSHtNf/g49Bl9BFZuJXamv5fkB95P0wXW1uH9k4J9nDg3p8OaZX5
	H6YqC9bo4UGtP4ACtsR9xsk1z5pdkLl+f0lk+Ql/kWtM16fi48C+TMgIyjtDYl0ybDT/0DoikJu
	LMEkTRDwtHTAeHEXsgBDqEiOaTlD9TDHJHykeach8JABFh4eiaOlXTuFXfrbwxPhHA==
X-Received: by 2002:a05:6214:5095:b0:6f8:e1d8:fa9d with SMTP id 6a1803df08f44-6fa9d324303mr3561576d6.7.1748027650250;
        Fri, 23 May 2025 12:14:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4YJNIMGoREgu+QKQuFwjxJdFPg04USqYp/clsfNZvtlC5H/HL6A5EzRZCUWIQa0RIPUkW2A==
X-Received: by 2002:a05:6214:5095:b0:6f8:e1d8:fa9d with SMTP id 6a1803df08f44-6fa9d324303mr3561376d6.7.1748027649844;
        Fri, 23 May 2025 12:14:09 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d06eac2sm1296261866b.63.2025.05.23.12.14.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 12:14:08 -0700 (PDT)
Message-ID: <555e8dcd-6f1d-4ef6-8a1b-78c53a39a327@oss.qualcomm.com>
Date: Fri, 23 May 2025 21:14:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5018: Add crypto nodes
To: george.moussalem@outlook.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250523-ipq5018-crypto-v1-1-0818047d8a18@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250523-ipq5018-crypto-v1-1-0818047d8a18@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE3NiBTYWx0ZWRfX8YFHgB0/qBPd
 w69qPSdZFo7ZEPzKhPWVgp0iCMWbJB2KKFhd5iZOjNN0lRPimdTlPySB/Bi5w9FZgj/2iZdrsRo
 /9i2P7Qxntyubf9qviHAesjx059IJwNzeMlBEvsvFo9lwPeqLiB2TTt69dM/ITaRNZ4WyI9KwVy
 EpKSGvH+cZlEgkWLIx/C/mG9sDmYVCyjB4PlSfVykYh8F3Iu+wCN7pe0P13j3gF6rH4wdCM3R+8
 eZMFe+wqht6NvI1C2XJrHWyHrbJkdp51RD83OUZuZ/ioHWypfWHM8ZCPLVlV8LcoiFm6pvLn5PS
 lS6GirZ4qTVazvDwENxQHt0sBRV0o7V1ddIx0tnBdUxS4S5zkjUTefxyEC7nOgR2mqB1vkzSyAN
 EBs+fsiJGmSNtTZb3KlsnqN8PQKYxDqjOylB7X+brqlxtYs3hTW/4B2FNrwyHuPGOxVl6d0j
X-Proofpoint-GUID: NHNS-B46AyIvczUkT7oYz-KBs1z-wvA0
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=6830c903 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8
 a=APJUAXjnw3rPWsM6C6AA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: NHNS-B46AyIvczUkT7oYz-KBs1z-wvA0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=869 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230176

On 5/23/25 2:30 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> IPQ5018 uses Qualcom QCE crypto engine v5.1 which is already supported.
> So let's add the dts nodes for its DMA and QCE itself.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 130360014c5e14c778e348d37e601f60325b0b14..09ed9c34c1c6129174143ae770f8542dbf61128b 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -182,6 +182,36 @@ pcie0_phy: phy@86000 {
>  			status = "disabled";
>  		};
>  
> +		cryptobam: dma-controller@704000 {
> +			compatible = "qcom,bam-v1.7.0";

1.7.4

with that:


Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


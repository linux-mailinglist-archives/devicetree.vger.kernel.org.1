Return-Path: <devicetree+bounces-213471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BA52CB4573D
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 14:08:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E536C7A403F
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 12:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 672E734AAE0;
	Fri,  5 Sep 2025 12:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OcFxGNNr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809CA19E7F8
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 12:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757074078; cv=none; b=iDAe4FZX+0k/j6lC1O2v0iEMFTQ0/HAtse9Bz3yRiPAAk83DGhAfEy9oJ1O3s81BRS8IJH7oQgCFckSKuehHyMR1Oi6o4FShWWl1hs+Jp32GFvGuuKifOGEHAxIKC6LBH75XqPwz9Z9vyt2JsTxiKdsBdt58ixlHb8luFxTnbzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757074078; c=relaxed/simple;
	bh=qlohNMfmjA6RpvE7A5Xc8gTHqy7dxZ1ZxD7ony9bB2k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XuM82ZqgWMF9DtB8nqBR3oH4j3qcQ2Wf2EPEjg9O4ThZJcFo0fq7jb/ZuQeSkGCGm4TJLTSFj/a0pFoA+7js5oK+5bZXLlSwXmHhwUNoTG9gZsgUbCQFASMfy+H44ve6R2D2JKbG+k0aJADe30eSMPGBLBBRv408+SP7/bg6pD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OcFxGNNr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58574E6B008089
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 12:07:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2ywG7DrxAJyha9p1n1s1uGe2eRAGhfx1UZDypRxMjFI=; b=OcFxGNNrlOznCtwh
	oW0F1GgSoQZXLTjJ5VCCRB5O/5z+rVjokRTjne2CkLvlf2U3+z/3ePAoFDGAXjcf
	FXHbC0uDw24SW9cWIUpeCK+Is3y75Z41ae6kb5//rXQdnn+ELvRtc4sKa5OEs5cH
	d6/3R2AweOCRkOiyfjXbWGh9Vn2bE0MlA/mJCS3eOA1cmXZlE4gCZ2fAnGCjpQ7O
	y4G4yuqVfdmXW/pNOwv2kffoJIZhz3k8QxDqGakw6P3yZSsOSqrEK5d28cWWNNYM
	gyJQw0rulMJlu3n3gblmXPtO9nrmb+XYByklAk6k3YkIwz6lnSGk0arBydqDeE9z
	DA5KiA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmju0mv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 12:07:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8019bd7af43so39993285a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 05:07:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757074074; x=1757678874;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2ywG7DrxAJyha9p1n1s1uGe2eRAGhfx1UZDypRxMjFI=;
        b=ah8fURMkkTWRMz1O9uvUqdO7lZVS4qULU7fWvqXV/wH9BkfPzPpBweTLPDPCnb/fAk
         UPGH2Bj+w3hCbGd75RracrekoUSE/IFJ2bIwWm90RJoe6ngh5MWkgX+4dpZVfxyDKK88
         R7dTYrpqvKKLykmgrj2Kw8eovU3ZzWayDBb+k9pU33WCcK7rwKxO0cvw2OEVbG3NSZE2
         r4n4bPLJ1txJYE0sAi1sAdaU1Y9Ot8WqA6bexS/cPmX0CfVcv/o4CJgPW1EXVmQ4lvZK
         on6Ydse+tzy9HTXFHw2FM8VSIYyJJEUOQwtDF97WO/b/FTv07AJw/kBcw3TQoilQzSAs
         g6sQ==
X-Forwarded-Encrypted: i=1; AJvYcCUc4SgrwnhEQFuDV16QYasHc8mXE1Df08PCDU5hQrWJUZScr90bDotr6fzlglZUusOy6Lm36cwdLcNn@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo+Z9eBOyEApieExuInPCj0N7LILBvALKrIAeI/N4FgMP1of4J
	7IXQKHf+5uJ8tP48NO+knk1QXcQwxhW7bEPNp4zPkBZL0Aua6vRkGzxka0n9kHP9KeDdk1ETBtR
	O6pVkA6Bw73pTmlUlUwNbYBmXYJmwurdLKNIq9E64T+GKOUHeijiMhzVo8AoS1aap
X-Gm-Gg: ASbGncsPX3PMrlvbqUxp2TsKtJIBOWpfju1l9lHSAmUEG5Y+QkXqslmy9+f+6Yr8ARh
	2T0SUmCheDQI9fuExYdnWMLots1T7TEr1IOndyHhXI+CbNgDmfQOxpiibNuNk5bB4vLqa1XfDwc
	cisMlNmwmZ4Hc5y2EKQA78lPnOmOK2/cmWRcx3QEshssL9buGkoIdzz6EAVq5pKfSjRxg11PSzU
	DVx4BdZKyJiy+g2/6vSmlK/9ZTI/G5LpgbSjR0g11CZNs/JnXlyr8DQuSK9uMrnxoYIK0wzlC27
	5A/GFAb3BZdSCJiAV70arTB8iGEhuyGGQIM/XkvMObfRZtB1QH0clBfUyT4M+voLv39w7gf5Igb
	kHlXDFJ12B+3GIlQm/3tcVg==
X-Received: by 2002:a05:622a:450:b0:4b4:9d39:3432 with SMTP id d75a77b69052e-4b49d3935cbmr67851231cf.10.1757074074391;
        Fri, 05 Sep 2025 05:07:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsdeBb4+ojSZLfqlx5FwAf1B8QozAeBTYPMWIY5jTEhRL6G68cKRSVMxgkPGjlTzVIJxN9Sw==
X-Received: by 2002:a05:622a:450:b0:4b4:9d39:3432 with SMTP id d75a77b69052e-4b49d3935cbmr67850851cf.10.1757074073738;
        Fri, 05 Sep 2025 05:07:53 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0413ee67a3sm1405722666b.24.2025.09.05.05.07.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 05:07:53 -0700 (PDT)
Message-ID: <e1c593d2-603c-4c3f-850a-07c14467b8e9@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 14:07:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/14] arm64: dts: qcom: lemans-evk: Add EEPROM and
 nvmem layout
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
 <20250904-lemans-evk-bu-v3-6-8bbaac1f25e8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250904-lemans-evk-bu-v3-6-8bbaac1f25e8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68bad29b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=E-EgujyPmZ3s1dcs9ZUA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: D4BBVln5bROMvBBrs9TxixJJRs-Oec-D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX5D4wU1Ibzy5n
 XEo3KGzLmZjy3gnVIxuh71wcLnjtnRxwVFxLYnuLfCrJ9S/UFHyRTZJOmQ7zbGqMqtdyPsXAriA
 K5QCX1V2QEt0AgRbBIYQWJsJZGv0JiLomjWj17DaZycA6HzAqfiQ8YA6jqn92fAQ4zVF4X2H2XJ
 y08midXikgjRjIT+Fxnm2/5400xv0D2vKFwH5y2tfV+Mygzxi7KnzSxBPBu2Z+3ty00wMBMjSl9
 vOXmaamDnLq2fhuK7WwNWiGwtP18sLFjyNRX4AlPcbwObsdzY0/UU0V4ijqaOecpj2PO19vHYIn
 LHgXh9X86qmyRmdJ2z24bqlImTm1pLPlFgR7TAk5Q51p02vl7Dy+aX2LwqyVywNgx+6KXXFhgSy
 UMY2DV2P
X-Proofpoint-ORIG-GUID: D4BBVln5bROMvBBrs9TxixJJRs-Oec-D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_03,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On 9/4/25 6:39 PM, Wasim Nazir wrote:
> From: Monish Chunara <quic_mchunara@quicinc.com>
> 
> Integrate the GT24C256C EEPROM via I2C to enable access to
> board-specific non-volatile data.
> 
> Also, define an nvmem-layout to expose structured regions within the
> EEPROM, allowing consumers to retrieve configuration data such as
> Ethernet MAC addresses via the nvmem subsystem.
> 
> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index c48cb4267b72..30c3e5bead07 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -319,6 +319,18 @@ expander3: gpio@3b {
>  		#gpio-cells = <2>;
>  		gpio-controller;
>  	};
> +
> +	eeprom@50 {
> +		compatible = "giantec,gt24c256c", "atmel,24c256";
> +		reg = <0x50>;
> +		pagesize = <64>;
> +
I'm not super happy that this would be the only line of defense, but
you probably want to add 'read-only' to the eeprom node (or not)

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad



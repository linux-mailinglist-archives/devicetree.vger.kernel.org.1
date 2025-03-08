Return-Path: <devicetree+bounces-155688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98842A57C8E
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 18:58:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D8097A59C0
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 17:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DADBA1E8354;
	Sat,  8 Mar 2025 17:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TKkITgoZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDEB1DF73C
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 17:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741456694; cv=none; b=KhC2n5TorU1MVGq+TGUUnm8LID8LX3ZYPJ9mO3S45Ur8z24qG7pAYGAIVF7t/ppy2Sp+5W6jru1MT/vlsCCqNv7c+ilznMC+UpHmneM2KI2nmudprmD+NYDtxTRoC992r48c3nHIM68DOf25Iql6s/lpFcbYKPRZJjRsL7BZH/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741456694; c=relaxed/simple;
	bh=DTwxP2GW5T7DulwloGAKdjS+EfeDO0vUSjlUc8CnGJo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nmieu8rQptHNIQQJSpQkrY/+yPNANz07ewagg+pG+gqB1PBkLWKQR/9lUB8gygNhCGFuuyqH1N7jBE3pjeTRbJ0rsOJgzKNOrEsLir/i396tqpO9fftyOlXD0fSVsuoGTN7bE7XoaeDcE5pn8ukYWMxo3APSCwJDUue+HDlB+2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TKkITgoZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5289rSLV008270
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 17:58:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ndoPm+wLhTR15mIqP6fWmUhkHpLNXcNulvnJ9Nq1v/g=; b=TKkITgoZ5L62rZPh
	bz6Cplt1ieq0AROpN2hdXQWHeTuRwTYQKxfMH+TnThQGPfL1NujmXxtuk+TFoxdH
	2jxpLTU1DvbfM0cuyAWVIw47k7oJxps4RUtk95J+ISoc2ppJx19X3cfTe+6pFel8
	InG4pzAd9SlsNPdHlcJDDOWIl8qG7OK8ZW3eJhSHdtGNDcM0DCiOdsLzjz/uTb3L
	OQ+0GlUvvFM47IjN7ABMpOd9cIX3RQhUsORuSnXq9kwRQLgPZt+Unmn9s+7xjzsl
	6ajTKzg8oWBrx7xzQQ9XWhleQPTG21AxYojaLlLBgRao688FBt51UiRXZhuG92nJ
	AxS63A==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458ex6rx9e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 17:58:12 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f9c5af3dso4805406d6.1
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 09:58:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741456691; x=1742061491;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ndoPm+wLhTR15mIqP6fWmUhkHpLNXcNulvnJ9Nq1v/g=;
        b=pxNc9qykpZzIFpXvJRlbSQl0qEZq4JxmcdEtPpUuQVPglR9FUzgTKJyLVowwIADdo+
         N6y6mr4u17WjB2iHhP10ryZAEya5G+jl4Xk8fKLrqg8WfPVxQdiU3Bw2CZg2b4Q6o8LM
         PPbg0uPulWPMkYudMY54MLYkGbtZJ5N7upMT2QmWHv/teisUis/1TmiNR4Ne8Z3SJZpL
         uRI+fl7zgTZaEaXElMmjH7WNix6JJHF7XucQouoRHgAB8HFum2Ja+UgM/2htLOra7KWo
         fUn46NDE5P9nxeFC0kfX0ys5J122Sv3jS7NOyXlseDEp3/nnA3cxwmrtc3f9W13t1kik
         FFcg==
X-Forwarded-Encrypted: i=1; AJvYcCU0+ng4BD6+27KOFLW9BIynK0cMvmGe1cri/36DiLBAli51Ttt39vet6ZGdVeihziNZD73Q5cp3+6SM@vger.kernel.org
X-Gm-Message-State: AOJu0Yww/aBBbbyprRa252MIHTd0nOLdtGduKNm7dQyHJMvmEk1hdjvG
	54xulyp6Nr60ytE+IhJS0ZjLWd8jHo4g0AQaxnrxbjC2ovVWno+Vlg8upFtYzlem7rci5QSOIUr
	wcAB1fpJa+MURMHzcXjNiCOYjIRmBkYYr4bJlfJFMlKSN1BUV6/ZhjFGmJCNe
X-Gm-Gg: ASbGncuK0dq80Rdzp5ISZzJfUYto/yq6ogUPHViWNtX2hQ00k22vdZylifTp2nfn/uC
	hvQqijryYbw6SGvhIob/N7wMGFCsMnswWRkrfr0BGfZD5fV5++/jHjahjS6blp0DX0mAc3E6J8Q
	yO9ZOgXBG7d++9SxkMxLhta98q2Xz7wJcAtDR8NI/QpGV9bDB2EDa1iePZmjz/5uZHK5w0Gc8UY
	Kbck5ol//76ltSZ6kduI9Rsrgn93MSBfnW/HlaSYP2V85l+cb+n6D+DpT+nLOeSQoeLPD//2jcS
	EOZ9cLiJNsOWejAPRV3mUwFR0K6NJOKAvycoYlQnJXvbGLFRGKbEE2KsRnNtq/xzYU1R6g==
X-Received: by 2002:ad4:5de6:0:b0:6e8:d9b5:4131 with SMTP id 6a1803df08f44-6e908ca81cemr18109406d6.4.1741456691247;
        Sat, 08 Mar 2025 09:58:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHwWnxVYC3JH5zrCZZSA7cwgUX9Nj/k5VDUse5wQOlChTKjJAlW3O9RMHr7yqSsRMJeeDCyQw==
X-Received: by 2002:ad4:5de6:0:b0:6e8:d9b5:4131 with SMTP id 6a1803df08f44-6e908ca81cemr18109196d6.4.1741456690860;
        Sat, 08 Mar 2025 09:58:10 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac239438117sm459641466b.26.2025.03.08.09.58.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 09:58:10 -0800 (PST)
Message-ID: <27c48f41-dfc3-4fb0-84f2-c9123d2fef56@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 18:58:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/7] arm64: dts: qcom: sc8280x: Flatten the USB nodes
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Saravana Kannan <saravanak@google.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Frank Li <Frank.li@nxp.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250226-dwc3-refactor-v4-0-4415e7111e49@oss.qualcomm.com>
 <20250226-dwc3-refactor-v4-7-4415e7111e49@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250226-dwc3-refactor-v4-7-4415e7111e49@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G8bmE8k5 c=1 sm=1 tr=0 ts=67cc8534 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=08ITDv3IiRPUJx8zK7wA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: EgST_gJl224OBkwazJwXATJGK670owpi
X-Proofpoint-ORIG-GUID: EgST_gJl224OBkwazJwXATJGK670owpi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_07,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=697 phishscore=0
 malwarescore=0 mlxscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080138

On 27.02.2025 1:17 AM, Bjorn Andersson wrote:
> Transition the three USB controllers found in sc8280xp to the newly
> introduced, flattened representation of the Qualcomm USB block, i.e.
> qcom,snps-dwc3, to show the end result.
> 
> The reg and interrupts properties from the usb child node are merged
> with their counterpart in the outer node, remaining properties and child
> nodes are simply moved.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


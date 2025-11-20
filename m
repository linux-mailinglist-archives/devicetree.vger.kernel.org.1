Return-Path: <devicetree+bounces-240749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B40C74FF4
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:35:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 8D8B32ACD0
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DB243A8D52;
	Thu, 20 Nov 2025 15:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MSA2LaSj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NMeJ4LFN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C857135CB7B
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763652398; cv=none; b=o85JqE79pKLx2C5wch5nRT3VHqyYCM6S5MNrq75/70K7JDpPl2gueDq7VD11fCeElMItAzx2OrGdk+AOTwFdgFzRH3QzHdLWyqm2giYxgv3S1T7Zw8pLky6LAR8hu8ulpbQNqH33CmBQIhbwfHEG8NyyuAWR+8YMK3l0SHO7DsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763652398; c=relaxed/simple;
	bh=5Wc3ejRtiURe7JaqiY6q8o4kW5h4CFOYD7HE7vSDPDg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pSyECQzdAtt7gkWmPuH4DsR7epBlzkNvjZQgcPOshv49Idz07fYdti4Lq41OkltgBj2FyAf2wFfVzj/Q6LEREf/iU+Q8538W4fFk7JsNRYdi3rie++kmJhrwxfUGUBhxW8FBkYbnVddm7eLQzaN5dcZC0KrWzNZx2E5cTmSQxgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MSA2LaSj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NMeJ4LFN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AKC5Q1e4026174
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:26:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+AQUnt8R1hfssXWrwBDO1uELZUUUAnwmeA8fWT6ADe8=; b=MSA2LaSjoyyaXnfm
	s+tTLRqyqKubFDC2hh2mdjtgq2cqoQRYpxTxu38fWXA2xpUGFK/DxyfJcXVbAE4d
	lKfwN9QnvelCBH+rKWJpDYQ1M6+vnxkn7MvjTDP+PdDHecW96Lw63vQfZ7ILqsul
	nZXyLZAB/x7JBc4X/KIKzZ1XD79XHrJIChd0/A3Flh6jsnBERr5dJa6twEwhTMy2
	wq+2MCdnkqPW7GUgf7QKhcaSFx5XFOv7adjGPjAWd8wQZhPmVnb/vyODQpN9oykF
	G2J6qSRNnsP2WnNDHFA6Z4H14XPK/FcCh2z2rtUjDNqaFvhe/NFn6kfXwtj7KoON
	PfnacA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahvj3huq4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:26:35 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b184fa3ffbso30439085a.3
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763652395; x=1764257195; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+AQUnt8R1hfssXWrwBDO1uELZUUUAnwmeA8fWT6ADe8=;
        b=NMeJ4LFNhamrlhW/oMIoCfHaoUi8NA4MXuMd/14v/j3HGSbPbEwmURuGSmUT406U3C
         zHDZk10J0sx7ZUOFXjXN3GtIs62zWx3xQkyvH3H54UBbv+XPD/yrVsYHXoGB8akLCXEm
         144341T5fm9RKULQ2HvM0Txg557BRBarDJeR2gVTvrkyCccwuRZAIFtXFLKuQ33Hmx5b
         KUrxWVSIzkhZr3jrCsk2pASZDc4UXrNEc4sfVzQ10NVcCz1ui632fpcBDDSRr+SXrKxq
         ycKCrcrhFPmXINRSVx6JTnE9MmInMrdRhx6y1rwJltBvSvXLku1/mCW5w5TRoZTQTwJE
         LKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763652395; x=1764257195;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+AQUnt8R1hfssXWrwBDO1uELZUUUAnwmeA8fWT6ADe8=;
        b=tCFPnaPi1QJ7AAfJasGrW8JlyhFdi6WfjIfdVKHLmHHHjAH21lZnyYIVnZ6zq2p34Z
         yjdidsbW2nsh0b5SBshbN55A1SbKA+t7It/r2SWK9ewLqBljySi5nGwlOP7nsd9zlOOh
         FqCaDNr4VqKUimFHMD7Fo1ZexW9WijoJsXUq7rfAIO1zwan5Xo91nB1FNtN8mygc4F0J
         KTlP/OP3cvs3R1xOxSGqjpDV3oMNCmAm1kAac+5jSDV5lKMS+h0pNaZhqtxxIyBNLjEU
         XqwHV7Tvxchpj3At097RtD0LHSMsy1esdych/hTmy7QQa5LuTkeiPeKvXrfHDXc4I4xE
         u73w==
X-Forwarded-Encrypted: i=1; AJvYcCW5TgXerxz4Eb2GLn6O6ythkc1zA9uHDIbNhJrcnZFVMHMbEdpmBoprpvkH8VUqYvBvlQLYUkzhY3Gy@vger.kernel.org
X-Gm-Message-State: AOJu0Yxup9H/y19AHvj0NT/RQT6Jp5GZ3y7K7z45gj3YbjRkaKv6QwT6
	sQSmYl1/xFILu87kUjATv5mq/UPr9KzYBFQMKIPHgPl0M5uF6QDDFYtm5DshFCBcghwrnhwJxPO
	dlGObOL8SxkwzPLPUbjmyIu7PZLjNEWKWGFBFVea4tOeVq2jjGk25lOuzI/jI5hnOTdq+KnzB
X-Gm-Gg: ASbGncuPYLYAt92MYS53YcicEEEZiyZmSt0C7cfAu9rSZzHgEUg6akS5OSq6gEb5woA
	5ulVBLVkcOaZ7ks1gRhl2HvsbJgo9hHXl2UmLYaxxh5LWO/xD9BXeBTFT87kt9dsqijtP7VX20/
	gClPuvDgNYjnBQu89sHF10B6syb3AFK8p3nLuGbgE+mQW1+mAiMPLGciT9v68hgy535DkrPbsJw
	PcrX6win5m5Cwiauc08HAT7wbRD7wHSv+/AxA3s2yM4bPfNCSDS9fLh/Cwy54cRFEComN/OdQQ7
	CUYl4NvA2/5r9yCCPpk0t2mGlRkFfOZI8zTnQC8I3f3Ko2FzuM73AzLqUtdnvK9IkrP0a1hWjJR
	B2kXPeOw/p5qaWBaM90e40PLAaoMgN4uU6LSne3RbmnaPU7k1SwsjgXHqB4ctWTh44Pw=
X-Received: by 2002:a05:622a:292:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4ee49723b53mr32074111cf.8.1763652394561;
        Thu, 20 Nov 2025 07:26:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESJssF3y4tl3k/csmeu4ARV8XTqkRyd2Cor12nhp7kf9kzuwf1VHyPMpf2S9kODR1TiQL8IA==
X-Received: by 2002:a05:622a:292:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4ee49723b53mr32073581cf.8.1763652393948;
        Thu, 20 Nov 2025 07:26:33 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654cdd5ebsm232729366b.14.2025.11.20.07.26.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 07:26:32 -0800 (PST)
Message-ID: <cfdd0865-9f5d-4c53-928a-9c7bafb55375@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 16:26:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: qcom: dts: sm8750: add coresight nodes
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
References: <20251120-add-coresight-nodes-for-pakala-v3-1-03bb7651bc90@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251120-add-coresight-nodes-for-pakala-v3-1-03bb7651bc90@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=J8WnLQnS c=1 sm=1 tr=0 ts=691f332b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=2HuvaDRDMhcgrcBVsOwA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 0kerPWJ2LYJsmm0yReiIMgpes59dPR4W
X-Proofpoint-ORIG-GUID: 0kerPWJ2LYJsmm0yReiIMgpes59dPR4W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDEwMSBTYWx0ZWRfX2ErDIcAkA9ev
 BuwfVgGLEQrOXdcIC8UpmqZi1+PxxSoOEls0eZ58aT1MSX7HuSvN2znwxYxBNbf0cr430VzeG9b
 XBb/qRGm7JcQ6TED8WL5QRptJ/I/myBxlBAsMY754G56LkZqkMVOderJjhC1CzoW25tOrDTdVnt
 UXSIQUK1BA7UPH50Jbo0NfzsjRRrwPhZFXqWt0p3MzLNKVgewJ0DjLJ5+9TpCzsi4zToPaiQU2P
 iA6Vfhff1EOXDbxxoa2qpUHkNICzhLnU8h/YdsBhXlNaKUHYu77ftXG8yTvbkio3c+5YVyZUIuE
 OMmplKzdqMQLydr1yUDbrplJWvOZ599CCrNbzC0mQ7O9Nb6IAi/X+fy2Xbh3AU2U3IQS+afFtXG
 lzihcmncRlIMsc8lZmGpjyPg8gN74Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_05,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200101

On 11/20/25 2:48 PM, Jie Gan wrote:
> Add CoreSight DT nodes for AOSS, QDSS, CDSP, and Modem blocks to enable
> the STM and TPDM sources to route trace data to the ETF for debugging.
> 
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
> Changes in v3:
> - replace the turing string with cdsp.

thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad



Return-Path: <devicetree+bounces-252644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C5FD01E97
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:46:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 156D433ACF51
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1275037F8D0;
	Thu,  8 Jan 2026 08:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JCctxsx6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z3Ni5bRO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58153A900B
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767860101; cv=none; b=BPoMpC9DSbwwc3spABrcHTq3KMxB5kcVW2jdX9u11W6p72KvcYvVB08gA5rVAcNwyALU3bohyX9f3mB5CS3j1gFn6sDAGRF8aqbzLnS40zoMjN5ZxrLZV+7PudRQpfFlWUWtHYEldKtCR2DHIVw989J3ql6z51TxiASfgkHdJJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767860101; c=relaxed/simple;
	bh=xGA2deJBmp6GVWRXFiZPp3J/QC0WRqhz2yQ66RlKhhA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jqtYpfMPcneer2M9cHD49+NBin39YgrVDWwNIFaJjCM67fRrgTNcaGzclMXxXED7momGO63KlToiEvmkE5it3cbPH92Jder4/RoflTG8OaFfAFpcWxka8zKR/0jy4wN9j9eBUbKoASobBAyS7kcZkDpgS8p6HcUIcF2WeXCwBjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JCctxsx6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z3Ni5bRO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6084gx6K3890475
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:14:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oQmhOR5VTllw1N6UBG/MNA865KDu2tZfzbbQxCoVIro=; b=JCctxsx65nGfdt5N
	8d424nzFqNmB51Avo9nTyZU0jhQVUC3Z/IezpaNMldfmQmHtP4FNnPUoqt9L8Hhd
	Knl8Js3GVjVBSVeJ7WTgwy5B8unDC64gRVWM/T34sqfja+aOJM8/ukCCn+zY0BPG
	p+vyrDJRSAfSE4Oj6EKu3AodtQP8VS49c7txrwfRwu+X3MH/VjZLoxZFN1SCQ4ZU
	65j+p3GWwwiod5UDkN3WO+TBUP4EL52fQMFCSG8Nxamp81vhIZOYDL79Tl2w16/Y
	SxSh7565EUxZbCUtWZNdj+lheOAfg7nwQZ/g4Y1ZWs07n7rwDoy9My5tfFfAo9rv
	5eAC0Q==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuy72a26-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:14:48 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b1766192e6so2009780eec.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767860087; x=1768464887; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oQmhOR5VTllw1N6UBG/MNA865KDu2tZfzbbQxCoVIro=;
        b=Z3Ni5bROm1v80tUwSi3kx3MbSKeFqqYoVTZjAyRd5zoVggTQ7l3TTerAfcaXjaC6PS
         V0BPuVJAZwGbe/BvOldvD8wHzMI6LsxP/APgOUIZOwis+A8lMqAmX9l+Zty9VBoZFaU+
         B00X6EBcOJw5bXjvAId2gFNGfouWTk9rhXxiD3JKdsFaF42IaDzGeNIAG5fFxQtWllST
         YhIb1wb4jWabeUfm7Yicr1GQ3nCa7ZnDlky/QiQMoiFdvhErZ67yJXoN6l+Afmy/VAKE
         ggom1mv5dKLubm8jAA+gfzmrl1aiWJwCGpgv38iKR4J+yntM0aUWtnbkbHjehS97BQHL
         vDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767860087; x=1768464887;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oQmhOR5VTllw1N6UBG/MNA865KDu2tZfzbbQxCoVIro=;
        b=jiGKHLscWplRGutwUgXbm0dLNyYH8mV2cN5e1feT+dicnFVS1V5rZeth9x/5kpT2rJ
         /yU8m4b7WPQJuPpBez2vACwrefC3uuH+n5WpySfv1RfiFc7HTFeGONWcmluGpeG9v4Uu
         XuMVzZFcBYggsg52hegmUuBbOLSOkyq8CL4oSaunBidqxEgMqixrI20BCcAo7ovGc6SQ
         b+dJ3qQQ3hFZBK36YBQ9PcV9jbih9yC/tyHl7Gtkg2Xsb9p6Ym5GAdC8l6472aWl7cfY
         fJcAh8wLz6OpFb+PP2D8NQn5Osr/e/8d5FGzuujZzKm9c0p3by+XT8hlvH/k/yzrP8oK
         HdLg==
X-Forwarded-Encrypted: i=1; AJvYcCXweDSa7+WCwH7osYoqz1jOv1zM/iBOlEsB2dwf5Mgt/vaI0vjyddcAQPOCQPwTpd8TaV4yjnUKqHAr@vger.kernel.org
X-Gm-Message-State: AOJu0YyfZCEyxJvj0RO8lmj1clbkkQxcrhQsyAc7IAZJCeCy7Yho0TIc
	tpRhRvPIaVeKTTo8uHRr7bHNIO/szrCk+Rw3xERuLJXMbjtcKV0vo5KohHRRipjpNvKa793bSym
	UZHm0QlOhn78k3hWSRX2UaAMu93SG8fm6D9I+VWbbuxjYIDWv8PX/OF4L0ZcZc30x
X-Gm-Gg: AY/fxX5FtFjJl8GGgn4TegnFV5bRWTD6yER2RtTYQFFOUXHLUgxOqlr9gFqvmpvqBcj
	XKFefKtvNc3oJzLZGnQ2eUFqtVbw/nEgpqSfXp7JACwLjzuM3pY+6h30QgqzT+B6pViSZxB0foo
	ohOtzEX6dEmLZgeQDfleBuIMxZxpAJSFJPNgk8XUPzlUVSE8JtOKwb3cFIKIAM/lm89eQsaK5UK
	onRWYNu4LUFShonvsnV/AZdPdMF70cWBFqdT6i1JTmHR6f9lqNC/86hA1GI7HAy4PkYsv+lrivx
	GNyCvNx++HW9fzwSqOgjX65EgPShCT82nQSC5MTfO/TmvpVybfKy6s+lqYuIlrPyasNQ4yCXO3b
	/eIanYcQQbOn494OwR/nXoBZoKP+D5/ToN1+HYXMnkiTcmg==
X-Received: by 2002:a05:7300:2286:b0:2ae:5092:935 with SMTP id 5a478bee46e88-2b17d2cb04emr2879939eec.35.1767860086784;
        Thu, 08 Jan 2026 00:14:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMZz5/2sK2+1cn1w1LMbXfHAiGxF+jIuIHMhcw3bspcPT2dvGLJ3N7V2r7bE8lhoxii9SUSg==
X-Received: by 2002:a05:7300:2286:b0:2ae:5092:935 with SMTP id 5a478bee46e88-2b17d2cb04emr2879922eec.35.1767860086169;
        Thu, 08 Jan 2026 00:14:46 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b17078cddasm8379618eec.22.2026.01.08.00.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 00:14:45 -0800 (PST)
Message-ID: <027842d4-cb5e-4f89-b7fe-345d68b68d55@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 13:44:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
 <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
 <20260108-congenial-bonobo-of-lightning-5ceaec@quoll>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20260108-congenial-bonobo-of-lightning-5ceaec@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: dx9zsGjKC0GEAihjOHknfbWpGBtFRRrD
X-Proofpoint-GUID: dx9zsGjKC0GEAihjOHknfbWpGBtFRRrD
X-Authority-Analysis: v=2.4 cv=DZEaa/tW c=1 sm=1 tr=0 ts=695f6778 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=I_mDRuPlVTlm_7miLhAA:9
 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1NSBTYWx0ZWRfXxZ/LRZD2/Dq1
 ROzlHVO81Yq2xG6jiWd6X9e9TBtuHaQLh9N3rXeSVWbmPlZox2DEaKm8TGRkwzVejpkZ/K/g3kd
 UmHq9DxEI+nseflV/yQa4QpQnf5dvAgVo8Ah4EFYaOjOvBPOtyB1IBZziBMrCXrsXEL4yNUzM2e
 ZRwN8ZeE3tLO6f3S+gAH0zVxeTvLhSCvHGsLuJA+WGBVle0Y2LUJlt7knii1pVpUz1tTyQGyRYy
 J/ZGqz6102SoxmMnOEmEE8dbo3NBe4FNmVs5dDrGoZ7HUrx069+tQjyRCLutRU8jx1h6YLffufc
 0s6XLcDktBfsp9InWkqLbtaPrk6YeYaEBGM+STj3p/gxjHpuEEV+re0VvKGJGgQZ6awkMWuCena
 PIDB3y7RDVSyvcLABn7YMdtTvq1yqT//kCb/1C0rzyRJqu3mn87k/c+3gXaRnJioxrzrYAe83/h
 sPRGKg7m653ePKj5j3A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 adultscore=0
 spamscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080055



On 1/8/2026 1:40 PM, Krzysztof Kozlowski wrote:
> On Thu, Jan 08, 2026 at 10:54:59AM +0530, Krishna Kurapati wrote:
>> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>>
>> Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
>> fallback to indicate the compatibility of the M31 eUSB2 PHY on the
>> Kaanapali with that on the SM8750.
>>
>> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
>> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> index 409803874c97..cd6b84213a7c 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
>> @@ -19,6 +19,7 @@ properties:
>>         - items:
>>             - enum:
>>                 - qcom,glymur-m31-eusb2-phy
>> +              - qcom,kaanapali-m31-eusb2-phy
> 
> Huh? So you did not add new compatible? It's exactly the same code, so
> the tag should have stayed. Really, do not overcomplicate things. There
> is no need to poke people on multiple channels to ask them if EXACTLY
> same patch retains the tag. It is already explained in submitting
> patches.
> 
> Keep the previous ack.
> 

Sure, will send v4 retaining the ACK.

Regards,
Krishna,


Return-Path: <devicetree+bounces-241981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A2AC84D3C
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8236F3A934D
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 11:55:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C003D3176E4;
	Tue, 25 Nov 2025 11:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dd4r46v6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q5eUpsCR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448A6315D43
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764071716; cv=none; b=RlqqhUTj0oInp76hnU4tT3FWRnoBdYU5scczUy7409qR0WnD8v4CweWnjAZexQEJj4je51zWeCDuZLHB8nj3ft1AXiZf7YLUQGnWSqffCCpbVDREz8xBStvLPt3A4Ccw5RoVaPv8D5E7dmgpx8msOaPKTcwC+psfFLW3dWr+yeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764071716; c=relaxed/simple;
	bh=X2w1pXQ3wOzpfm1MtQf0FRlR0OJ/ZV9nu9MlkeuxN/M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XLwQK5gmyyTOFNDBOSthQ+6zeM1YkqKuwsCUOLPtO5Dp1MprxjiDrTsSNr9usRjLjw5v/yzB0QMRRiIxV/N9o9UFWV52T4OXahSWGYefwPYmITadglqCjZojb9pRfzvvGo/9Ubg0+zMO569Iq+RI7oVCSRovrdNUZS0HgtSAs38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dd4r46v6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q5eUpsCR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AP9wN882659054
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:55:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EX3lIhyX2gZOrDpJ/jkVZ6OVS54BZtKT4oQmNI7ZHCM=; b=dd4r46v6M9a1+F4Z
	j+RJdQEbvyK9jzcxr4Tvh0Xkw9Vo/BRV0RVhlcVYSLIiwRq/UX0zdF22ruJXMQkX
	kEhAXX72jqp2Gu4ipwE3MlSXuOgecrPTTxtrleIesJbytRpQPcwVs39db52C6HtX
	0dvjv73Nu2Vxwr5rGHxqyBws22DhtXq/B6oa8mzqGh7kEoG/VJ8Y6qVc14yds3OJ
	8xiBVFWjERXgxEXSbZu86dGIrK/mGdIrxZTEsbypJu9962/ZgZi+omr6u8S8kB+5
	MSjUo1mqHygejlRt9gnX9/9YhRbaS0uWJ16LfL/VYSTxHpjrVW8CadE+Rfq8gxna
	PPiDYQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ana9x8a3k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:55:14 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b62da7602a0so5150918a12.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 03:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764071713; x=1764676513; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EX3lIhyX2gZOrDpJ/jkVZ6OVS54BZtKT4oQmNI7ZHCM=;
        b=Q5eUpsCRukI9R0FB+wl1faH+LhJ8GdAlR1uh5uy8iMFWBT1yKjjjDhiJxDc+katunM
         FSzAkP6UztlvZCUuU1c+r8Y9tLc6gpFSeMUmQlOS6Hr51ALl3F551MbU7L2Wr/t+xCZ2
         hR/768dX2wJdhCIh5bvoiyhZ7JUyHxeSX9+oupxO72MqyvnMyvCEw5klS23ayw0yLuwK
         yXZalIWLJmjjmAnrEL7iuAmdIQ8/YXUpy4Gyvds7JMQhNq1iot3ZfXralY6nfhAcBhV7
         mpRPjqj18Q5rppayBlAzmQtiirv1WHC/KD9/CwjZBtPJL2Vv+7KJc9qRV7GAQzEAKG8/
         f4Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764071713; x=1764676513;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EX3lIhyX2gZOrDpJ/jkVZ6OVS54BZtKT4oQmNI7ZHCM=;
        b=qgl3okt21CAVirkKpTzc9sFsUidf72pLrSFEm4tltfkDeCoqCS+3jd11MPlx61TNhj
         4fUwZeG6FgTx1hcdkFIYEXriAVFr/j1qHQ3brF6UaLPsZP3hBbbGM2L5HfWZprs4HgcX
         pGv4nguhu02NWMX04lSGuCSl9bs8+tcL5WETAespX9xvyMigZP/45AzIf/qByJ3C5OyT
         orVtwrz8CM9Km1+90BSQJml5FsGE1oAUgrhuwnMoeA3Siz0yqIP0x9AkUl+fDl0T7vQ9
         8JJn8I59GywxLvW8STfKNCbfvMurPOOTBZuuhK6uys09oQS3vihZllq822agh/z8tagh
         Zx6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWDU6295wyNbLgp5QYoR/eVu6zCBjil0uLvAT8IWlBaSPjU/BJnh3Rahp26+Dlzs4vogyg5HzLRGYbR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb2HCQN+eh+PpatFB/IJznYcJpBRru2uAfHD6yY+FlAc6qPP5S
	ojurPwYRRx6vAnp232gmCm2oG0apqnjQJRg2qU+ylFUVnr31mUj+9T+PPfkF0R3NSZwGRcuAIgW
	vHXPkXChLGy+Ha9uYcIKoM8J0yqdSXHO3ItXqjAMd0bXOqaU/oiO5stPaxYE6NM0XFtu0PaJm
X-Gm-Gg: ASbGncs2uK4l6Az/rDH3aCf6yUF7HZWjsDNAb0TKuUPiuU414L/IxZrDYuZ+gDkYpp2
	Nv4VZZ5AEOz6Kn/zv5U7v6kAq+ugFDfi6deZ4Y4fLTBSNJ5ID7nDeGSxDjol6T+i7yTlYgsvIvq
	NUifLc2cNrJzj+dlktaX6XYF2C4eeKJAwI+MISMvAUzKSAImijeoAO7gxFbjmmzQdaQ/kWAYpHI
	RliB1BWRM+EbB6p3Ydxbi0NCIiKEWIfwq39LNIbWJQrIgndelmC5618z3ITJyWJXdVWpN5Y0Cdg
	gHmTOsoIlePeI/R7TR1uKI+dLagJa6emktKfonqrVWDCn/2Nk58GANrWGSjOm1p8TdwSdEnirqy
	v7Y0XYMQ3t/stvxWAS3a/Y0EckCsgNNJQHubIxMsrmfM=
X-Received: by 2002:a05:701b:2707:b0:11b:9386:825b with SMTP id a92af1059eb24-11c9d87a6aamr7594707c88.48.1764071712872;
        Tue, 25 Nov 2025 03:55:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHw45oA/mvsdXvi+gN7JovbQ9EKlD/rSIN6KTkzXnRfByxmIe8IJTVaxi3+3rUvsNuxw3H7DA==
X-Received: by 2002:a05:701b:2707:b0:11b:9386:825b with SMTP id a92af1059eb24-11c9d87a6aamr7594675c88.48.1764071712236;
        Tue, 25 Nov 2025 03:55:12 -0800 (PST)
Received: from [10.218.1.199] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11cc631c236sm9969445c88.7.2025.11.25.03.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 03:55:11 -0800 (PST)
Message-ID: <ea7b151d-7b32-4ebd-b3e0-3fe4b62f702d@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 17:24:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] arm64: dts: qcom: lemans-evk: Add OTG support for
 primary USB controller
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org
References: <20251125110420.2192971-1-krishna.kurapati@oss.qualcomm.com>
 <117f95a4-5f31-4372-a2e2-a0a969dc3d5e@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <117f95a4-5f31-4372-a2e2-a0a969dc3d5e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Cq4ZxQUg8zvgcc1WeQ4wLeSENCXIGqNV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDA5NyBTYWx0ZWRfX/dBmYbws+UP9
 +FGbOXgiSURjuE3MY26wP0wpfXGTtyRUopxHnm4tguNoi3xLml5LwwOou6UovDCZE0XpM6N2CAP
 hoJVUV4pTNZW1mkiiog5G1XSHQdYlZaP0Oz7D6YCtaf8iuvZkhlF7rcTc+CXanOVEu3kTeUqQDO
 vsuRbyuaO6gJoGTbXgzSHsb68xT7o8FexCs/AFTLRhNHvH3+WbH2Z8dQSC9l1d7jMZTR8Ew9Ela
 F+RWL5VpPiMZaYAibyNWMTrutnm+T2tiEwidMgyP/Ep/Vig9284+aVhgOwk41pdkH6zYTJuCmZK
 qY6Jihi96Z+IfagbtwhiO2A4K49ZsqqDCDaT0cmclmQ86moUvv2VGUm0rEL4IwJx3/SWHZRs1RD
 +NxpC6rpoyZkRScbwtAnV7XiP269Cw==
X-Authority-Analysis: v=2.4 cv=Sfj6t/Ru c=1 sm=1 tr=0 ts=69259922 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=FfFesAWzzNiW6piU_54A:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: Cq4ZxQUg8zvgcc1WeQ4wLeSENCXIGqNV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 spamscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511250097



On 11/25/2025 5:09 PM, Konrad Dybcio wrote:
> On 11/25/25 12:04 PM, Krishna Kurapati wrote:
>> Enable OTG support for primary USB controller on EVK Platform. Add
>> HD3SS3220 Type-C port controller present between Type-C port and SoC
>> that provides role switch notifications to controller.
>>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> @@ -4026,7 +4026,27 @@ usb_0: usb@a600000 {
>>   			snps,dis-u1-entry-quirk;
>>   			snps,dis-u2-entry-quirk;
>>   
>> +			usb-role-switch;
>>   			status = "disabled";
>> +
>> +			ports {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +
>> +				port@0 {
>> +					reg = <0>;
>> +
>> +					usb3_0_hs_ep: endpoint {
> 
> The patch looks good, but I'm a little puzzled why the endpoints of 'usb_0' are
> named 'usb3_0'.. This will make the DTs look like:
> 
> &usb_0 {
> 	// foo
> };
> 
> &usb_1 {
> 	// foo
> };
> 
> // usb_0 children
> &usb3_0_hs_ep {
> 	// foo
> };
> 
> 
> &usb3_0_ss_ep {
> 	// foo
> };
> 
> // usb_1 children
> &usb3_1_hs_ep {
> 	// foo
> };
> 
> &usb3_1_ss_ep {
> 	// foo
> };
> 

Shall I rename them to "usb_0_dwc3_hs" and "usb_0_dwc3_ss" ?

Regards,
Krishna,


Return-Path: <devicetree+bounces-167509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FA5A8A967
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 22:37:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF2FD7AB609
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 20:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF3F25395F;
	Tue, 15 Apr 2025 20:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gwBlDFU3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9835021348
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744749458; cv=none; b=kNfGuBDzCDculljjB2dbp9nJz5cXf/sdeCB99JqiN2AJ+GGB2VuAp83p08o1Uh7RpdLUEtptki4bzl3WQVmInl6qdql20MrjeNGloW25MxM9yYaF0FNrLamBYLDzwFUZGOBfbat2pboMxUvuPXs+WaSqDLtGcpBS+BG3MKbKUpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744749458; c=relaxed/simple;
	bh=vJYeZKynbW0y/0TN0VVY3GeBlfQ+ky5vNJGDsEcf0H8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E3N5Buxw8AMUoi9aiWrdHRIG1vJMXnEgPpz51SBeVUcaGK5v3hr1bNU1LsykHMnqPVz3435rFhpDS7VwONbIz1A4didmAmAgCN+96KAj2YW8AGX3zMGL/Psy3NKPuddysb99lN/e68TVYswi+t6S4TtDQgRsZ4e4MAEuvTGrDJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gwBlDFU3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53FJ1Y8m025039
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:37:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jh6wZ8wOe35XO6nPBtm56xEYnTRfvkG4K4xQHIRnHpc=; b=gwBlDFU3bpUIJNxd
	cDUPvSEQzGsF62CBJHDxxJSU5PS6Sa5LUYbFVqU+NSm9Rrpp6PP2iHzIq2E4unwP
	nFkJ8bf3hqwTgv+pyMb6PCIWoc0lNjHElLpoYDSKR3iq0t0aIWGRdhrwyKrE0Orf
	cQV1VqxDVgifvSBFXLtDr9RpzqtqmVSmnAM3nHT8z3e8s0Mex0fJXms4pBpjSI+R
	7nU8Xd5hZ0hAKxaXyjeyCPWbgph/rcfJziw2RfAyEiy6QAAFAxCLMVh/k1cdkbj0
	ET86gbWy4bDcfLzxSy5orjeEs+56rA6hLbQL5cdDKZnJxZ+qA2W4YWYYd7DCymAX
	2UYGTA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yf69scth-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:37:35 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5841ae28eso136570785a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744749454; x=1745354254;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jh6wZ8wOe35XO6nPBtm56xEYnTRfvkG4K4xQHIRnHpc=;
        b=Zyy/Y7r8AAiE9HubthGSdnVaMMzL7ZIMKkraWs5epW10V/iRRoCQqrOFG+nofA34wU
         zGSgpmcIn3tn+4OKiBo13ixJ9mvYeTQII5wdo3WL5yDRDRzCeyOvdyQlsgMNE2H9jfSy
         0Sq4ISo8Gbr+0KneKLNB7xFboqfW/e//1fuPBPr0tztWdUamCp6WPFCz6UenjEU4oDCr
         iqSCEY4HwchtX9nN+UnswgIrozzpunTlYvuvEt1DMfKr9Ww2/Y9NKOk7092tvFQ/1Dub
         XYXGw/AxiJdkzjbW5JOP5tKuhB6+R/u5Gah69lam0NYgraMFawEtw+NWMtnlLr3meMN4
         ss/A==
X-Forwarded-Encrypted: i=1; AJvYcCV2/JXrd1HnInPZKNR385RUBnm+vgvHY7GwMBBXBJzlB73yTpwAWUPYrORvR13lqr+kAKO+QrBzmtpO@vger.kernel.org
X-Gm-Message-State: AOJu0YyQaS7UWOxiJ2U6LG141ts3ZNlO01LFS6Nftk27Q463FPPiau+1
	Ml7P/ATue+w3FX0dvLadaPh89q/9WCazj4YAZWCZjd9b0XR2l3bA9lSEGvOG3RZurSwAfTkk//A
	kfPRfhNVD27cT1CT5de7soA5KA9P6fgBfShIxD92epighBRX2+84GxfZSp2lh
X-Gm-Gg: ASbGncuVU4PEM95sErdEez4Yx4O7H1231r/n+tQFnysCE9KD0SyAcFc3a7rOMNbAz9C
	AdAHsd+Ec1FGCeHGSzwneLm7IUitjg/fRbswCkOhnYNgaaWSJOOPmkraiQdAk8A+khWLHhu93tb
	MeUS/yHI4eS9dud1yL0DeRfsBm4WdiLfzPTqfnptJyAJYE8mq6A/irvL8E2hJ4eBZ52DDFMwl03
	WV4abIBIwS7vXZg8/CZRrEeZ/oVajSnJ7veWf5x62SU9xud0Ol4tqxUsi6uRdIO6/nnYM4QcbGD
	UTXlQmwvyO7r1YuEXUYcClougyQFPCKwGzKAHf0D79YDa37JgW50W/9+O3b0+g8n+gc=
X-Received: by 2002:ad4:5765:0:b0:6e6:9c39:ae44 with SMTP id 6a1803df08f44-6f2ad9e0c4fmr6195676d6.10.1744749454591;
        Tue, 15 Apr 2025 13:37:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGL2uGX/Z6b8+QQ5A7RjQ9VGQklgqNfIx9zsMrX/Z761Y0JZsqutG+DGTlwNH2KtxyKSf33qA==
X-Received: by 2002:ad4:5765:0:b0:6e6:9c39:ae44 with SMTP id 6a1803df08f44-6f2ad9e0c4fmr6195496d6.10.1744749454247;
        Tue, 15 Apr 2025 13:37:34 -0700 (PDT)
Received: from [192.168.65.126] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb42b4sm1163025566b.97.2025.04.15.13.37.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 13:37:33 -0700 (PDT)
Message-ID: <b5d139f6-5704-4486-b7ae-c960ceddc7ba@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 22:37:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] arm64: dts: qcom: msm8916/39: Move UART pinctrl to
 board files
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sam Day <me@samcday.com>, Casey Connolly <caleb.connolly@linaro.org>
References: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
 <20250415-msm8916-console-pinctrl-v1-1-a1d33ea994b9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-msm8916-console-pinctrl-v1-1-a1d33ea994b9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2V6KQzuUHaDL4oU_gzIn-dW0V0mvwJts
X-Authority-Analysis: v=2.4 cv=JNc7s9Kb c=1 sm=1 tr=0 ts=67fec38f cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=HegNSTBbrY75hgcjlfYA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 2V6KQzuUHaDL4oU_gzIn-dW0V0mvwJts
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_07,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=773 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 priorityscore=1501
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150145

On 4/15/25 3:52 PM, Stephan Gerhold wrote:
> In preparation of adding a new console UART specific pinctrl template, move
> the pinctrl reference to the board DT part. This forces people porting new
> boards to consider what exactly they need for their board.
> 
> No functional change for the boards upstream.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


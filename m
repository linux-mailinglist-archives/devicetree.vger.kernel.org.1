Return-Path: <devicetree+bounces-214490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C97A9B494A1
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 18:01:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 224C144491D
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 16:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89FDB30CDBA;
	Mon,  8 Sep 2025 16:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IQXWo01P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13143207A0B
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 16:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757347256; cv=none; b=e+9387WXt9VGD/iDr3RrefzrIzYez2MDEKXRstCrVC9YOdEjXlOPrkdnW3222IdhWrMDo4e1mE+8fJ55XfoqrdCH0NiWFgtYaTXqSxKxe745JDTu6HCT+cuHDdELR5TAek8j/LBa/UgpKeXhLqcjqiIWooD0L9gvnRvt5vjsoco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757347256; c=relaxed/simple;
	bh=7WVxX0wapGqwPj8BtXO/4XTyuaHzlAYZDJiR1LsZre0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y8U8SRIMywmCFJfbsTovgPkmlFyRk2dlI+m8K4rMpeAeX5xIA91Rgvwpws+lsv5KSI9sZ+gNRs7H5GwbQs37NgciJilbDAzRyfnaniNg2b5uk9a51g77hGSAVyI6UDHHTokmjVa/Pm9yCNF7YKfytNWIDty/yE6m41xO63qy4q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IQXWo01P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5888wttZ009916
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 16:00:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UuxH857PCUf2XzeLyUN8XPnPOKSOMUPFIWEWl7nTGFo=; b=IQXWo01POvXIjhQi
	j/7+6qsSGEg2G/Lqa64EyXCcesrKtOh3zbWeW++8VxDTs+hBTAuJriLpHrWIL27/
	NEhRAtQEx2e2PzyzYbAWZDxMKtsr6xHWzlNhOlwVuHQnJo7RvSUaegg1kCT/H8Tp
	+vJZlVHB/neB7Yf3YgMdR3bwDiVlJhDbusu6/mdVNB4c0eK6NfQfvbcqt5SigOMP
	3x1wiawydijZXVeFajEN2FKpeD68ZMV2C2TkkuouQyYvbccW5Ios2Ai5Gfy4YNp8
	g3SVFeEVAIB7Eng9eoHeqRckEVNO+Kf9iJH819TazVMNX2HND+qm1T09wAVWnS3/
	EelQfA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapdcw3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 16:00:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b613a54072so1848381cf.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 09:00:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757347253; x=1757952053;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UuxH857PCUf2XzeLyUN8XPnPOKSOMUPFIWEWl7nTGFo=;
        b=S/i8+UJaD+b3ppFVbICAML3CvqRSppSP4S66BigpVtv0NAczgZHE6r03DRRaKTB4/n
         HJ1j96U0e6tF4im5abKmF3vkK8rxRnpLjBTooLl1mkAbkBrF2PstmChJGRkAmIars+P/
         5YJUUdNt8MKWPlAp6XkGzSYeBhu/UBcXkUKvxgvAvYAJHdEgfZgOR0RL1wkout9nW7lE
         dyMCy7cgkUJ8DTiE+R/9pmNr7srg8Ygtlr4RrRA9QOCSba2bGQ5g2astsZ6hfOOokZUa
         2xiVTfCkn00oRwvGZ2gstsGXSipau3pJA2vHAZdIU4lAM+1YwM3NTHVRNdpMBhKPYXaa
         6xfw==
X-Forwarded-Encrypted: i=1; AJvYcCVkfVe+55Rga+X4MkmHuJiIFm1ksagZnpYxQlzkA0Qiww9jPENTyVR38YgK0NdmvYadCycJp06h38An@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ/CCxjASgklpZSyuq6uREB5T8S60pJTnufkzjC4CVvWL1//8d
	kriXxAiXfC64Z8m4JngrufbGD6QfBMyUqmhU4CYlQkgppMNqJ5nf6E2yW0CFf2ra914cheknxMd
	slbcvvltcUzbifD5CAkVHm9z4QKDYLp5fxfw21iEv4AcGopfNECbjqDLSB7D/JBLj
X-Gm-Gg: ASbGncvS1z0cPKQFYTp+E36myv+2716MQSDZJ0IrCEHZJQJaMg/zhCwy46HLgKQoC++
	Uh6cyVd05tk7ituFo/A9E5GUosevVsopbnb1W2aezokMAfUTfn8pfvz8RMrwmDwDlPBHTi+qv8h
	xbtzP9GclWXwHo+YaD8xXNwzH9hfi2PLEKb6fRcPlX+NaWD3/CqOIWCCIVjBGyhfddnzbhQskxk
	2IAxjvJShMPWRWWb3NxE4itHcV+D916l4NTvg80cdO0SOBfvpPtYxjcuCYsBDPannGIvQCff1fC
	OlCFxObc2mVpvgnfshSQm/HZ4U3ZRdfsC2K4qHLb2p4QzWwu5fnR6rQ9onbr1jFPUF4/kxRnA2F
	deDBqHla4I1X1ILrK6/xKuw==
X-Received: by 2002:ac8:578d:0:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b5f8376f33mr68087711cf.3.1757347252500;
        Mon, 08 Sep 2025 09:00:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8zMue7mVLsV476ogTf1WxQvSyUzv/MogiVSN5i83GQvuAFdA+F/TY1A449LD64lrkaf3+Yw==
X-Received: by 2002:ac8:578d:0:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b5f8376f33mr68085911cf.3.1757347250485;
        Mon, 08 Sep 2025 09:00:50 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61edb0fdf1dsm12548489a12.18.2025.09.08.09.00.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 09:00:49 -0700 (PDT)
Message-ID: <14a35ea6-0a93-4759-83f3-dcd7b6b35584@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 18:00:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] arm64: dts: qcom: add initial support for Samsung
 Galaxy S20
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250905190931.27481-1-ghatto404@gmail.com>
 <20250905190931.27481-4-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250905190931.27481-4-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68befdb5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=O1J3YDS7JPEwnonmoL0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: mqogvdWq9BSGlVov29R-i3CzCCY8Nhzl
X-Proofpoint-ORIG-GUID: mqogvdWq9BSGlVov29R-i3CzCCY8Nhzl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfXxAlLeSVNVZWI
 /1Rhv/jSOn5WFxct5NMjyGSt0ugZxufyLN/YPZdKjPy9oLQ/N8Y/PB2XKZhCHEJW7VFXoATSfWK
 hwJeWuKkuzSExHKYAsgyKvuipc3oaoE5sV41xCEpHcW1hDSN2Vf8BaFykhiJUByiPBLEuxaAbOZ
 597rnhlqEK4goLkoPFqpjZ/Ayg5di74EsmybP++b1jUmLYWMyM/dU3GPDSiBlfSXCWq8tm74RSp
 h0oA/np37SqCD3HitwJH2xqgqcHaOiktmKf3D4Kv9MPZ2C/wedSqk1SEgMG0dsVtcvqiENLuZGd
 BdlBFEZe+7dFxcGVFrH96orPGxvc879aJbBtpq64YGjY+J7KZLGHV2gYc64dnMWpEBYdwElSQMY
 WxNtMEgo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

On 9/5/25 9:09 PM, Eric Gonçalves wrote:
> Add new device support for the Samsung Galaxy S20 phone
> 
> What works (common dtsi):
> - SimpleFB
> - Pstore/ramoops
> - GPIO keys
> - UFS
> - USB
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


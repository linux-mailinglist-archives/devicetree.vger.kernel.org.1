Return-Path: <devicetree+bounces-233632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC1AC24204
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:24:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 550461886CE3
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 09:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A5843314BC;
	Fri, 31 Oct 2025 09:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eOWi6KF1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Sdvu7OWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46245330B1D
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761902492; cv=none; b=t/tSJbKwRwhVUnL4fEDWjiXpxl+ZCD9KJrh+JGW/KRGlDDb6gzgClRQOVuwG5D+tnrrw5Sq9Js1uDbuNyux/zmIo6KH6upDG5cP2OB7Ow906tNK7qrHkkoSu5EJcKEHdri47++ctk0Ku35vTBXwmYhP3LYpnbJHIoKdASVMkBB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761902492; c=relaxed/simple;
	bh=w8yfOd60KDdKJreuFqthqsd4fR7/UZE2/5nBgUt6onQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AyE/Tj5yMCvDJ/rbAqQgiYwQUAIKUtdGj+sTtWVrTZEWT4EvUm+9qUmnJanMMYt3NxXM0A6lb8wM98u+uRRZnAVN7oDcGT/+9bR32tWmNhVD0HxvyUm1FegMtFRKmyJrZnbAo7Ang8jqpvHOmFjNDdvbne/k9UZW5RbxCSgEwPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eOWi6KF1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Sdvu7OWO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V2wRNr102769
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1gAPrC5tF4vPjEpXPBO+URBh6gx1S2+j2eTdd5IbfCM=; b=eOWi6KF1gNtTSuYt
	DmYPGZ4NdfZ1wmCWN1MdjC9u/96ET7d3GSgO5A48EQyJT0xiuHJgoCfF3YlK2z6K
	0qBqUReETVN7U3lwt0MMul6+CApYb5wbWsVGkEJmNwtA+r2YqWj60u9BqHk2oxd9
	Ds6xElCR8XGK3qiNPIbuk7lGCbeGxWIHdoMFWx7561j1JGi8x+5KmCWzdve7dDYb
	BbyFXq66M7bn0UtWIWdMnu45mwcn4tc34FmvWSQE44os1du1JKVLrSMhoFybqyS1
	VHLeH+g43gZjqteDHcbHC0Hq7dzr11ZHN63JAchU4ywtHvnFWZ8xdCyiNzu5s02D
	jEuKiQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ahdjmfd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:21:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87c262c72b5so6068386d6.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 02:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761902487; x=1762507287; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1gAPrC5tF4vPjEpXPBO+URBh6gx1S2+j2eTdd5IbfCM=;
        b=Sdvu7OWOEBUOh6sEkV+23PEZoRiA0PXC4Rj+48h+qFVrjLN04KhwgCL5CZGwPPFE8D
         kFsw/gUrGa1vFDxbbIQllFhT+rijZyg72pCjf7kiyVTQnAgjc0lgywP58Z+qCYVKLSAA
         W+8hcaLErczgqpJ/vP4zODSoJ8Jp62mLk/ZApfAlngTIa2FeTHLN8V8qVre54X46V/57
         ZBRQ8ITH590gk166jmTelDo+ENHGlZyTxSfqC8Li/GLiClfK+gRn2bKItn97xoYisJBr
         DgtwKz0SMw72ohLcr+GaLNKfGzQCjOyxYuVPasWGDzIemDR1R17nHCOa/p2mLQF1Ym/q
         5Cxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761902487; x=1762507287;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1gAPrC5tF4vPjEpXPBO+URBh6gx1S2+j2eTdd5IbfCM=;
        b=R/JM0WATJnTiqOqsS0vRBHBlp/ccL3+AFNDPSaXSjIAU2q86E/bo1hgfC3h9WD+O1g
         qOOJU+Nyx950FZfxVOOLljtrhWZzqid0SaqkZ1wFfDkT9pfy0lcLHY9Fy1gfHmTS9o58
         B1M6n+PBWchAUZSdFGQnPvW3nR1ZwJzrlBAUcdhCUNqSOxBfksUe4wrQdGmwq1NzqmlW
         0paCgABKK4RPHHxOlgjws+nGbdZFyihvD6HU/W2R+r2YLdytR4f8w6fW5Xf800e+yl0v
         yPmRmreiJJK8KWJHXty4wV5WF+7W6+e2mtFpQ4M4h3ha08cs3rHU6JlJv/rOTEbsOK21
         Dj9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVSepZw0eH7RQEd9ZaPPhFhE8wBHEkztMLVrgV08ofSTYk+Rk68+DUe4NLqOphOmd1/2ELUDx07ekLX@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg+Q8aNGe3RYxQWtTHrrpHU0K6FFaa1a+aYTjhYSTMarIXwVsT
	LYjA/LIbQu6DXRHYp01VT2RMeezTU5CLifSWhZAv2AajlZzOwsvfwE/Egz5js8SAzsHjHE1AbpE
	AeigvhNZpS67KeiEbUKlorN2+UF8nNIKCUBpqB3MW6W6/cQ0X5JwBKfKZ1KgC4k8B
X-Gm-Gg: ASbGncuGH7APqd/yX0dZDx8VesK+zR7SMPe2CqkHjertpOJox/HOkaZPaaiyf3Y4ydP
	0H6gbe9mhBLFJ+b3oIy6Hc+YzfNtoCtf1RWH18j9217+q1+9rwV7oJXyWfkcLqUZjrMiKWQJs+M
	OgqO5vtJ/G+Vk/fwtQKv52j9xHWveWjH6jgyy++FIzreFxinuxJDdLCS1G6EV9TSpHM1VILPsOa
	1rWfA/yHz6pUvUxpJuxQR5bO+iX/6w+I3o6pI1V0G4M76w7CJ4SsCVps8V+v8HYqPSUU5lKyQet
	0kUBbOdnr96nnRO+UnMdrD0k2m8iCNiTLJazOkyAmqkOkY2VAKjTMJgW5++J3kBZfhY2RSZcaL9
	OM9pGisk3jEqqLP+1oTQRAG+mJ2CcBmbebmZhHypB69aiyoT6LKhvhA4z
X-Received: by 2002:a05:6214:2aa2:b0:880:1eb1:fdfb with SMTP id 6a1803df08f44-8802ec2ef50mr21081186d6.0.1761902487464;
        Fri, 31 Oct 2025 02:21:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNUAdNYmumEqNj+QhWtcRqw7r8QN5GKfMaLwnY2Fp+tH9FpwHXyXjINbqWk1YR3C2goLdtzw==
X-Received: by 2002:a05:6214:2aa2:b0:880:1eb1:fdfb with SMTP id 6a1803df08f44-8802ec2ef50mr21081026d6.0.1761902486985;
        Fri, 31 Oct 2025 02:21:26 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6407b438b05sm1120434a12.27.2025.10.31.02.21.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 02:21:26 -0700 (PDT)
Message-ID: <25579815-5727-41e8-a858-5cddcc2897b7@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 10:21:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] SDM630/660: Add missing MDSS reset
To: Alexey@web.codeaurora.org, Minnekhanov@web.codeaurora.org,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Alexey Minnekhanov <alexeymin@postmarketos.org>
References: <20251031-sdm660-mdss-reset-v1-0-14cb4e6836f2@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251031-sdm660-mdss-reset-v1-0-14cb4e6836f2@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDA4NCBTYWx0ZWRfX1ROCJdiLIVGD
 LuC+QiDeETRPB7XLn+Lg6yh0JgYQhPC0MgZzVAbgqEH03My7L+fNF+e7WYAya/UJUygBDGfnzFx
 1fYdr6H1qp3ekTgWfwr75FZwGaA9VzscqSPHUDGXVgTGnZoMvdX19NS3kMEbWWUS6px6H1tY/IR
 0QKeV6duWtloeK8+uZsEsR0CaePVRdw+aT+OR+wBsEm87JBnz2gIezpWcgU/bmUVZwfEscXmXfR
 /xU9Yp39LKeeskASmHdP8rmWnUF+0MEzogPc4r1HK36P8P5vkEAGrOo8KUx5J7a0XuJtE7B23k8
 Bs62g5hf/rJiRkgAP5ba8CTQMyImypRcMSMuy1y3wpw5mr7q3vLibZmyUqr+TnXVyonEWeJMmwo
 YY42pPu7ddZZQYcZTbEv0z6lnRfNjA==
X-Proofpoint-GUID: xRUy1tZh0I20iUT9Iid17ms5yA9TTNU4
X-Authority-Analysis: v=2.4 cv=TsnrRTXh c=1 sm=1 tr=0 ts=69047f98 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=LpQP-O61AAAA:8 a=Gbw9aFdXAAAA:8
 a=QdJS1fbVFv8XyC4bU-YA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=pioyyrs4ZptJ924tMmac:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-ORIG-GUID: xRUy1tZh0I20iUT9Iid17ms5yA9TTNU4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510310084

On 10/31/25 3:27 AM, Alexey@web.codeaurora.org wrote:
> Since kernel 6.17 display stack needs to reset the hardware properly to
> ensure that we don't run into issues with the hardware configured by the
> bootloader. MDSS reset is necessary to have working display when the
> bootloader has already initialized it for the boot splash screen.
> 
> Signed-off-by: Alexey Minnekhanov <<alexeymin@postmarketos.org>>

You git identity has two less/greater than symbols

Also.. thunderbird argues there's two of you:


Alexey@web.codeaurora.org
Minnekhanov@web.codeaurora.org

plus.. I thought codeaurora was long dead!?

My DNS certainly doesn't know about web.codeaurora.org specifically

Konrad


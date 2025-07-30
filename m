Return-Path: <devicetree+bounces-200817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 187C9B161A4
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 15:37:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B1D0564C9E
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 13:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 028B52D77F6;
	Wed, 30 Jul 2025 13:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BjxE+z2k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A002C2D641A
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 13:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753882641; cv=none; b=PQU+9rvx0nXe0YgfbB1GQX2BHPlYW/P0E51IuteGKbkNEZi48T+/GdBrLtuIGv9CJBdyTRWmhS5l7Amub8A3WElI53KCihB7px2AMLapgwqva2GYePCYZut6gVNWv+hUCzEzEFeFQZNrlaMNHEjEU2VCmLtQZO2IJ2ZP3Y3ewN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753882641; c=relaxed/simple;
	bh=UnGEp/P/b1gtgq5NHRnGprOfMT8kawtFXgke6jFNnTI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K3TvPOsFtAlwoNuM6zy/smNfM6kWa0tUuLmqmbQ/sb0M+dI4oHTsDe6c2DyfqAMCGDbMBkf7w/5JzDJNS2U97l/4fAsg66Ou8IFcCvKj5OE34HXWeLVAGHIgETsN5bA5khmUgs8cGPgizexxF6cyCdaaknAOhahuQwB22SpsDM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BjxE+z2k; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56UCbBGD005898
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 13:37:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eaYzJi77qoY0VmQGa6ne9vwLY2SP/8VbDbQMvWMF+cI=; b=BjxE+z2krMPHv9mC
	nZ/HdkNRxQL85QbmrzQOXo/2TpAXFokT0ecefclEGDouYYouViGAIHDi7pokR2Mi
	0LRDl5N2uBJGliTzH/CgG9QjRnrNA+ZQsy+oCnmSALfTarN03ZazfPsSSAwEv3Lu
	/xOZRAadmJzKnE16ktOY512JmbFsZADelgJpGw3RL4JtbOsi5bGMvOq1EtV3a176
	Mv2mLEJ+LHCQLq2caKw4Yg6FBNov0crdZFNOmGzgR7F/KuKx9VTGgVtBGyu7JV+b
	p1dqRTwUBUIoZKha5cQWFzfsMyWTpQYv6b7ZW+cZiQSsr45mYmAfh6pN37mZuUlY
	+Sv5DA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 487jwg88x4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 13:37:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7dfeacb6dbdso46884385a.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 06:37:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753882637; x=1754487437;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eaYzJi77qoY0VmQGa6ne9vwLY2SP/8VbDbQMvWMF+cI=;
        b=v9gSBfDFHMMBFwBhXk199mNOsAOAoIRQBXuS1Ivt1ya0G3rmm0qNbi1fKICOIGcT4m
         GJcxHY6ngU14Ue6MpkgdcqijX1lV4RJgsoCkL4AD97QZ35RYHBN29dDd5ytt0xJCCXh9
         d4YIDEb0ip+oAqwMYzxQ329Rw/sVLl/6rwMhifzzAcQ34e77w52mQn+2QoitR3v9ptjR
         +ROjq6mUjR5ExGcp9DY8CMj4gGGdRpQ+fsjfWdy0FGuqrBJ+XavGw9tDtjip75JnY4EQ
         Q7dB0RejAukyV1HsM9oSRC/XTB3xtHcHH4u+LH56yH6UplqkUtBqD3SQt3nzn+SIyS9A
         DMaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXK1f2aJabMaT/TA1bHOEsDkp6bn4giYY6b1s6YjvygaU5f74YqLoWTJ43Ly+XeYsES62ZlBG4iNnSe@vger.kernel.org
X-Gm-Message-State: AOJu0YwJeihQPj7SjNV97imUcY0hL8mw90OV8jIOdz0HPj6FcZKFGMmS
	pCktzN89OuZ+X0xeZ1ov/GOiSoYufbsLHPrUfS7AhDBUhAvodl+0wFVrgQXjef0YKfN2/Ny1WyD
	l1R6Nj5lSbHieNzNDGJrb+XVYyGRPAebas6Lw+DCKtu8bTZFEe6pCYQQ1kkrKXGCE
X-Gm-Gg: ASbGnct1yLkToygpKbKPUUUH27YzNdF46VPATSLv+rZaycJqGD7LJMCyYvB21KrnX97
	nW/33FrmzvdYhzwvfVZcS8KgGU1xrU9MuCSxkbn87rBfOYwJLPOYs5/74txUjWcZsrjd6wCjzn0
	4MjHi6SUf7cgkpb4S+LY5n6M5C0Lrk3EruNFAk9mmkzUhtu4QufY1v0mwiNsZyGZZHnRnp9RiUO
	g+8Q1uem4MihWHaUy0V3cNHIesIfmyHf+G2dfhthFYQs81trHA3uQ9UiXIBHS7/LiLBIkWdI9hQ
	AeuxtpTV74CXAN+Tp86DRdnlC7P267t4C1aPgdaVgQpI5hjNRMHKzQmhk41l98x8l5aA7DFNAYU
	H5zftA493GIstVX1Psw==
X-Received: by 2002:a05:620a:2544:b0:7e3:512b:97f4 with SMTP id af79cd13be357-7e66ef809f9mr252140785a.3.1753882637206;
        Wed, 30 Jul 2025 06:37:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGZha2wMgFradgQDb9BJZKrBTTWzQSZkHlvvJvibbYOb1WpJSfTIlhyvZmnFC6wRLBq3+92Q==
X-Received: by 2002:a05:620a:2544:b0:7e3:512b:97f4 with SMTP id af79cd13be357-7e66ef809f9mr252138485a.3.1753882636620;
        Wed, 30 Jul 2025 06:37:16 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6157dc6b61fsm1525857a12.3.2025.07.30.06.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 06:37:16 -0700 (PDT)
Message-ID: <ff6eee04-d191-4dfb-82e5-7e3a6c896025@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 15:37:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: qcs615: Add clock nodes for
 multimedia clock
To: Taniya Das <quic_tdas@quicinc.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20250702-qcs615-mm-cpu-dt-v4-v5-0-df24896cbb26@quicinc.com>
 <20250702-qcs615-mm-cpu-dt-v4-v5-2-df24896cbb26@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250702-qcs615-mm-cpu-dt-v4-v5-2-df24896cbb26@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WvgrMcfv c=1 sm=1 tr=0 ts=688a200e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=vwtPc_hCN_QQCO2tyN8A:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: ugdFNtfWP45lo5GqKGPPyiHQ5eGZGZgP
X-Proofpoint-GUID: ugdFNtfWP45lo5GqKGPPyiHQ5eGZGZgP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA5OCBTYWx0ZWRfX96vygCly4Jio
 XzzRpbfyMU8DR66O+b4rEsc8cPSFxjC8n+6U7cu9oRfLA6r6SXpo9xT3rW8DL2ESdS3j5S+yJ+p
 MQ22LAg9iqwv2KK+We9+iGdRcOAVcMRUGHMCH1g0MWSYNfCvsNoUG9e2R3WQ71Ng0bCnBP9v63H
 yuOwEl+Pu4iiHfNyufO5oF0bKayfmShN1R096spWEn9YEIwmXXmZrGMSRDGVeg9JWQI3W+V+bRs
 yVq+iKR0VnIOgIs5dC12tS3G4AzDdIyGW2UxobSR4gx3jWVITP+YybA14SWr82TlGyeovx2wjl4
 R3/EKefFuvJYw55VPe6GmHYQDsYdjPFjF70jjVMW8JrP4+HvhOyJzxf+3nfrrCUCqMalvlqQrXZ
 34xeRtuaMA1V/GcMl5NpsJx6rkwZlZoDQpe3z6oQJPBZ6nHDMF5dQGMcl3FHY0kRZbZ459jI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 spamscore=0 mlxscore=0 impostorscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=993 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507300098

On 7/2/25 11:13 AM, Taniya Das wrote:
> Add support for video, camera, display and gpu clock controller nodes
> for QCS615 platform.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---

Bjorn mentioned offline that these controllers should
probably have power-domains attached to them (perhaps bar
GPU_CC, that's under discussion..)

Konrad


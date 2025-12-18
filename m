Return-Path: <devicetree+bounces-247810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F051CCBCE5
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BD4E430398F4
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 12:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FC193328E2;
	Thu, 18 Dec 2025 12:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i5WubbSa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TvmLKRR1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72E633030D
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766061414; cv=none; b=aYixoO13m9nQ+WOFwZ9cOE3hr9ChmACJJEkZ4XXTI54UPT6bk+ZwrulkH9oUwgDjCaR9dsORnO9PMsD4PxoufKxjeSV+LqBQcU3sxKhYBXy6YgaIJZ2S2gf9wpR3Q0Tyggot64UsdGm9bLkIlWIb1yNNrh9HiMkqk80DK1D2PzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766061414; c=relaxed/simple;
	bh=QnSNkHZMqSocCnOOSd2hbilQvo79VjEjtlT9JqsJZxc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e2X529F2ZBqSvrHwKpgCJ457Kp6GLiZUjVZqhMlGu9vcJHfTuTuZB3yMQ4JVmMzrejNQTBMuEDlGO9e51+v7Ob97zkhh4VnTraSS3n4X5aev6v7s1wDU2CalbIRcMVZ1jPrZ6D+qLB4EivfRR6Ywg9211LlfcZ70ZW71qQRRUeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i5WubbSa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TvmLKRR1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI9KYsB680346
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:36:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CeX7zdkTKzUgYrUHEXvo1kAjNi9I0TyGt1y+5V+nf5A=; b=i5WubbSa44riyiyl
	9Cr7zftRPg0APa58lJPGyB3kZhakWN8hPhnLrAfeAtESdi12ku0Im9fs5tSHGAcw
	mlypYhdThrD++/Rwkd78eUMroJrwudGs4C3oxvHmJ3urkhwpRDWiVu5Nh98c48/6
	hf9IX2GAGhBClL1nbnmLzTvfjNJE6EvKtHC93nkSwtYikMFH9iILehx+tntQhGRa
	pJHCZ/yxV9Tv0ithUDFwqoPbLGWOz0jM2ChKFP/Pc4noli3JpzrjRmeefdM+hqQn
	EizDmsCzK4RpeRnTxS6JfCmWSXHJ2JLLNRDcyOu6xUCebviJUSpRH+BJYraqR+tU
	6ycJNQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b45bhj8us-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 12:36:50 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ede0bd2154so1327681cf.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 04:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766061410; x=1766666210; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CeX7zdkTKzUgYrUHEXvo1kAjNi9I0TyGt1y+5V+nf5A=;
        b=TvmLKRR1IBwYbVC5KJ2iEPPEKstu66d/3Jpt6jqDQ2MGHOZu3jEZJgYjAgqTYdrh4p
         WiDJQyMdtiOtwvR+7WZFHDAWKFB9uy73NoBaaoq/m0nWRTfELQSAD+d7IJ9aidnFOPP2
         hik2pwjs2LCv52KV911rJovbyx/qTG8g7ny8Q5oUiTEw87/+UVf0OKXL9COIaao8LF7v
         wB1FTWb3Fagkvu7Skovb4kgT4gZrMZqh8FnKqv7NA/HV8vxmwtThF3NPjjgqqa9OV1Q5
         3+M0Vpq8I1TtK7iceIlyRpcuKIJXNHmUCWXEkXF1nU1Hw1NC4hYl5lMP67Z75MxjBAe0
         jTiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766061410; x=1766666210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CeX7zdkTKzUgYrUHEXvo1kAjNi9I0TyGt1y+5V+nf5A=;
        b=a/XvDppoPYYzVYLA/9kN+jYNVtPhBg7eXfh+6fVEUyq5buRFx56Uh1FHT7sPSaMR1w
         TqGdH4g48VMq8PpnPpodS5NKxM4IIh8IoecU1/+M78Lpr0FnA4duEZVZPMv0oguZLx6D
         gHu8x6rX8idzVm39Y0+nMvqU+mkHQrXwez404COAbMPkTOJjD8nJ1qdZaQpYefYs9AsE
         xK+RG7QwrglOXggbbuxZj/xbsSUpIkl+Pk2445yxpk8DXRQsmbELKJFrI0xNsZQ3WAHN
         8KtphO17M4gTGBPcB9ifxwTOuv6HkuAeYaes64pKB8Zl648aP9C+axROymQ3O+mOs6wj
         CcUw==
X-Forwarded-Encrypted: i=1; AJvYcCXOtN7KOD6wJgSnFwHMHjLt22YXlv/uoobU3Hcgop5cAP9cfkfaRCDEyiCv648r2Y16r/dQy7g3VtmS@vger.kernel.org
X-Gm-Message-State: AOJu0YxIAMjoMooitM6pqC6XTazpfHOc9tb5QSv0UaO2MEr2ix7N36Md
	CGnch4GbG5N4HQIP8UZy2exQI3JUrh4qUuu0LjyPa3nrxWeXlGX8Hc04gqqh7cX6b+xXfSxYlNX
	fya43aomh7sgQ/6o8vAkv35D2YBNiW7dZjPMRPTUfo8dihRuDAXQ2xP1OrwMnczGQ
X-Gm-Gg: AY/fxX6Js5kQFLuW6jzhSIJuDRKKBvnF0ERwtzGrFXocTo+/A3820wt83KOt/nf8+4H
	LYJTPOT1UiDfgrPsbIHM7Ol6IJdWEluvPfa2WGHUViFqXJVkxx58E+axmzdACjY0YmwDV4psyBi
	SmeO7BZl/BAoaeNJ2LzXpcpVAWeKHq/7mP7iXz7cvHUiXZ1doxkHRxaK6jXpNWK+hMvqsbcKKxW
	/hQb2SPhIkuyQvfYtjQRwQ+hcPs1fbBhKN/nKmMLcEDl8Cw0Ta21RWi/nj01Oit6yViuUYLPtGt
	n4Y8Sxdf9QCct41libATARO6WtE1/7kihLY9RzWQn7bxkOv8ySYU+w8nYuk9SjFcqHd2rHHLVc1
	iEbbMiI9NAMfROA7Nn/aL8NZJ80P1wDzbjWKhcfNCJXjV4ZBsS6ATx6JSmO4VHTxlyQ==
X-Received: by 2002:a05:622a:178f:b0:4ee:1e33:bc45 with SMTP id d75a77b69052e-4f36108c9a5mr17884671cf.5.1766061410139;
        Thu, 18 Dec 2025 04:36:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEQu2nnxqGUnQynFrRXz+BuL+HJmQqJQwR9k3URYcUz1hnRgEtf2TKddA/5Dpw/OBBUzx5W4w==
X-Received: by 2002:a05:622a:178f:b0:4ee:1e33:bc45 with SMTP id d75a77b69052e-4f36108c9a5mr17884531cf.5.1766061409643;
        Thu, 18 Dec 2025 04:36:49 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8022f9530fsm223265666b.12.2025.12.18.04.36.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 04:36:48 -0800 (PST)
Message-ID: <69ac0e2b-82d5-43d2-816d-d3ac31963077@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 13:36:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] clk: qcom: camcc: Add camera clock controller driver
 for SM8750 SoC
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20251202-sm8750_camcc-v1-0-b3f7ef6723f1@oss.qualcomm.com>
 <20251202-sm8750_camcc-v1-3-b3f7ef6723f1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251202-sm8750_camcc-v1-3-b3f7ef6723f1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gvx7c9WwZc7NrkrMpDAA0liWkppAl-Jd
X-Proofpoint-ORIG-GUID: gvx7c9WwZc7NrkrMpDAA0liWkppAl-Jd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDEwNCBTYWx0ZWRfXzLuRROaL9jBU
 wl8ouFSRuc+E7jM1UmHgk7GYYYj72bYZqo4dEKNqZSDKQwjOnJo2QFlKmYklbeCC/dHagiOT+xN
 QuBmqQZW93QxqJNpkN+qCi7RwsBKPSh/AuJK2tmt2J0/6J6+ca35DezB44H2UzaeGu3dzPqK3oq
 QAy6nR2I8sgKMlFB/70wAT3nR6J5ZWOgCB8oT0CqJ/k5XzQP7V3OkV7msNVm4L/4kmHAThOq3wQ
 VOmDKLGsLGbSQaz+p5g+eWsRyA455yKCJSXZoPc+lyVMAyGoqeAOs/FDDv1d8ITQwPIGmzTTgti
 PEWobDXNgxKebbVkuQQUlUPnf73CFWM+hVuwLds5wQzIPEeuF6VuscHMKWuVhcLB8nvjF3gF1VU
 pSMTAYMhD1v4j9MPx/OX3pNfImJE8w==
X-Authority-Analysis: v=2.4 cv=SZr6t/Ru c=1 sm=1 tr=0 ts=6943f562 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=_j3VNrtD_Kzz85i8SO4A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512180104

On 12/2/25 11:26 AM, Taniya Das wrote:
> Add support for the Camera Clock Controller (CAMCC) on the SM8750
> platform.
> 
> The CAMCC block on SM8750 includes both the primary camera clock
> controller and the Camera BIST clock controller, which provides the
> functional MCLK required for camera operations.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


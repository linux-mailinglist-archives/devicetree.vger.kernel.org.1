Return-Path: <devicetree+bounces-115840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F9C9B0D1D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 20:24:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 220ED1C22EB1
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D84720BB56;
	Fri, 25 Oct 2024 18:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M8sYcjM5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DCE20BB3D
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729880636; cv=none; b=AreOdQyQG9kgXOVpm7Lc0Un0FB7dnXmLtrfiU7qHOw6wKF/IAaHwk9ItFvSwRRt3JgjFD3ZDnmRZlCKtEUpHCeGctCnbYUbHVe8N0I2/zgzfWS4ZHB2NiQs0xmgg4m+dYP5lDtom87ES5E2Udoe/PyCgZ5LK1LsmYyzeVqxF0X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729880636; c=relaxed/simple;
	bh=VuYfXZbXysbh25PQ4lYW3IZ7zhG5XyHxt5bS/C5tDKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z//GAWoLEk+4gSa9S7nT6X2g9A9fbEjZNvYSNWRZtoOeYsgAuEjDJd58kFM1u/yrF962UOAcXjAu6XePHsdikLKGoO8lbp99KPQ8HRS7vJRwr+orr0zYhcb/mkviBJGE6Hzq6dn6fNhcudaaF3+b3/ceTRO/0s5Qj2ExhFeDBBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M8sYcjM5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PBowBw009099
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:23:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3beKkZbEARnsxmifHxpb705DaWvn5ZgjjjVxCqTJTSg=; b=M8sYcjM5fJ/jXa2z
	9hxff1l46aHfnI/W+Mr2KY9mftX8xgo5eNNgN96IsRINun8ARviRaQgCSuyPNUe0
	RhRaWtmamCJnvlnalhZXxqtD6o7UNMALV5ud2S0K1tf1jxk6iRXOJ7lRHvoTyAJe
	B6B7CjIeO6VFYpFRHA6Ghg4Lp+Lh3k2Ax1l/mgbMk+UW/E1Ornf30Hv4/fZ3Rkph
	Iql3/GpSHEnIs/kLP3IRmzNtv/1mEo/lDcRd7CsNVCoB8N87zpokOFKevse+JmKC
	iKgFCPSlLfmmk2DH74SLwxmDWWodkXDJXN+EusRrDFFXXcSmkGtEKABmhzLBcSkD
	/n0sZA==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em43j2jk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:23:53 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-4a487bd8d04so63123137.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:23:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729880632; x=1730485432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3beKkZbEARnsxmifHxpb705DaWvn5ZgjjjVxCqTJTSg=;
        b=Rtk07B6OCaP2fxQceRwnsV7L4oLHXYO4oA8i6MHnMolG3bZ+OVrbPc2xuYL6Oar6wE
         TD34tTN7RjCiN3+TYCoalKO/olbUIpC8DCHiNfbBAVexN58Tb3HRTPMO06ClFe0qnkwk
         UCgjUoGdsg5rfdKkLj2dCgl+v5aV26uaDVizJmPoD4znj9h+9WZcuOA5WntlWTRImIom
         dU+OD/5qDI7L9VF5E6WMfLrM3Rs+wPRFtmREwd7GL9I1R7eJtUtydQ0P5T9svbZwi6aF
         XMy6YO6lriNJcAsc5jTVW2+bl6k40MQVIGr8EFVNW6IYH0ij0hzUqAyQWweJSAoi5gcK
         Glwg==
X-Forwarded-Encrypted: i=1; AJvYcCW4AMx4jP5XSUB1hqIgkPha9ixq6gqsY8moSloOaUnAnQM1SFz5/vvafpP7gg8/3XfXGafoMIN7hV7K@vger.kernel.org
X-Gm-Message-State: AOJu0YyFELvh2nLFRrVmoocP5TRuG2nAhcGOKJiBNA/aypQyKLboCAl7
	bhOVgY5GtAaSaXBvVZXtJ/I6biR7uRgrbbC7M0IETAblGa2Xa7tS6A8XPuKCJN7tlLM+HXPasHI
	Nhy2Ujxku5g7UYKqj/g9U8K6jCu/nUNUGGgye/pP6XhnV2H9aq7xekLDKWGfM
X-Received: by 2002:a05:6102:1610:b0:4a4:7928:6381 with SMTP id ada2fe7eead31-4a8cfb2cbb1mr246630137.2.1729880632481;
        Fri, 25 Oct 2024 11:23:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/EV2cJbkJddZttFd9z9JB9kp8Bb/TyAtZgttyKQ7XAZIMKzi2FFIjhsg3QqvsnRbaODGO+A==
X-Received: by 2002:a05:6102:1610:b0:4a4:7928:6381 with SMTP id ada2fe7eead31-4a8cfb2cbb1mr246611137.2.1729880632106;
        Fri, 25 Oct 2024 11:23:52 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b3a0834d9sm95176766b.190.2024.10.25.11.23.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 11:23:51 -0700 (PDT)
Message-ID: <9761224a-08e7-498a-a052-adca6bc405e4@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 20:23:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/11] clk: qcom: add support for GCC on SAR2130P
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kalpak Kawadkar <quic_kkawadka@quicinc.com>
References: <20241025-sar2130p-clocks-v3-0-48f1842fd156@linaro.org>
 <20241025-sar2130p-clocks-v3-8-48f1842fd156@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241025-sar2130p-clocks-v3-8-48f1842fd156@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TukOA2dtYfdyFOz5HRsv7M7IolS1bnjz
X-Proofpoint-ORIG-GUID: TukOA2dtYfdyFOz5HRsv7M7IolS1bnjz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=606 spamscore=0 malwarescore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250140

On 25.10.2024 5:03 PM, Dmitry Baryshkov wrote:
> Add driver for the Global Clock Controller as present on the Qualcomm
> SAR2130P platform. This is based on the msm-5.10 tree, tag
> KERNEL.PLATFORM.1.0.r4-00400-NEO.0.
> 
> Co-developed-by: Kalpak Kawadkar <quic_kkawadka@quicinc.com>
> Signed-off-by: Kalpak Kawadkar <quic_kkawadka@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-113545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0059A6048
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 11:38:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0974A1C2034D
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 09:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E141E32C9;
	Mon, 21 Oct 2024 09:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qshzu1NG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3341E32B7
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 09:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729503529; cv=none; b=W7IegP7mOAhspugEqBFC0w79Vk/nj+iU3k6CfwPb6pEl0QRQVNYHQ/RL1I4A74hmIrcxo2xRxDlPbQTVKaeJwsHTgs4FugnWSN1E08zOK2wZ7AZAW0uDRAzrfjP91DQhpRLQfpHk2Y/jWhlEO0jYwhT6SzsLrz16qwC5Z6WVHNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729503529; c=relaxed/simple;
	bh=NhBL1wZH7ZwZciKbpoNjPbtqWf7fDFxHOe8r+ilIxpU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OfwSq3JnWgvKD/VyNhLNPCiPbDHAFy6d2LzsQ7LEpciurgoZ23hloW0PwlnpptapBSOstLudCHLMo8c+4X2t9SFq1hhF6MSwEV4eaHPkuHDiyDhJY12AGGzbhI+Zeq6SN1akBfPNSUlBT1qqoHMJjSoOI2bfI5Cg1w4HN/gBmJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qshzu1NG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49KNJ0M5019061
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 09:38:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gn+gkmOeUyjRBUooDRR+2My5sXvmwkHI88BMxZAlKmE=; b=Qshzu1NGPFV8rsTh
	txIOPB3GFuckqrBScsLkjnrIuuT7jhuJiOz6yvjMOpWyZRN5rKHEvIet1nKtgOxZ
	xRjTgCApXxaGFy5Uspt38X1yhYRPKGdbw5DykooS4TvsXhfT5crN/yTF1rG8WthK
	o/PWB8BUzZUpcpjGci3nE1zaFet6EfRwlt64/kco889eZ/zeYDjKA6vcoaKwJHih
	PbX/R/39BknU39Mxqa1Wu09I1z48fwrNB7LCoTlsfEQ2ambgf+1dyAepy5wDpAgm
	vBTMHBogS3iqAZuJ35s4zfihjB5vgQMoXKc4cOqb9wNNTfkfpVBpyZIP2p2mRejF
	4cI7Dw==
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com [209.85.166.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42c6tuv3t8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 09:38:47 +0000 (GMT)
Received: by mail-io1-f71.google.com with SMTP id ca18e2360f4ac-83aaad1b050so56385339f.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 02:38:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729503526; x=1730108326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gn+gkmOeUyjRBUooDRR+2My5sXvmwkHI88BMxZAlKmE=;
        b=FxJ7ArI/pvtiIel80FfGoFcfwJg4LFfKRYoRmQOZM1rkRnCyxUCnUFfT6TCR0Ti8cv
         rPuO10FLSjCSRFRIv7mhlV/G9GprsePUk61FA7/Qr3SALlEPEhNuiEIxSn8kio/D0Nya
         bl16CegYk9iNP7UCI0Sj6BULHSY5YEoRDUx2OUHdm27uShS04z0gg5jbM/u5I78fI4ZC
         Ys9uzbynX4J6QZlow+a1g5xwFQ9wB0ya+NDrXMX1m6JcVYP4JalqvFTQ5TGMRQveqzBi
         yHJUcAQHyOvy21zNEtadzU7Wwt9WhSYO84zsCh3hZ6avQUAW04yb97X3WtcRiGxtCKCR
         7+kg==
X-Forwarded-Encrypted: i=1; AJvYcCW6BnSWzE/ljYh33/5SF9dHFV+b4X+jYgLD2PegRBy1Fy1Ae2Am5eL8XRbbYtRiCX8DH8nVs7ieuYQg@vger.kernel.org
X-Gm-Message-State: AOJu0YwOwmSYeijpqX3IlguyEl/ApQ6AfeW8Ka2zq7Tt8H3XT9Cke2gt
	5IP3DHs3xZsTxcTWkazNOnN1TXB3cNV1Pg+c1P0OPRehBFFFmcT8m1eg3FYpjY1dWJi7pZhlSji
	GyxGgliC5y0pphHGy4fF/D9LE7DQYc0L/XUbyrMPlaKgXb+t5anNumzakPyU7
X-Received: by 2002:a05:6e02:b2f:b0:3a2:6cd7:3255 with SMTP id e9e14a558f8ab-3a3f40b41afmr29448955ab.6.1729503526135;
        Mon, 21 Oct 2024 02:38:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/wHHBGM3zQyx0/OSXW35rXmYHrOpG+GrEQovUlYPyc88a/4376jQdZSvI4nY76nZm9i7w0w==
X-Received: by 2002:a05:6e02:b2f:b0:3a2:6cd7:3255 with SMTP id e9e14a558f8ab-3a3f40b41afmr29448885ab.6.1729503525721;
        Mon, 21 Oct 2024 02:38:45 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a912d6225sm185228266b.11.2024.10.21.02.38.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 02:38:44 -0700 (PDT)
Message-ID: <1543ae2a-76ff-4b36-adae-37076e48b7f8@oss.qualcomm.com>
Date: Mon, 21 Oct 2024 11:38:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/3] drm/msm/adreno: Add support for ACD
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20241012-gpu-acd-v1-0-1e5e91aa95b6@quicinc.com>
 <20241012-gpu-acd-v1-1-1e5e91aa95b6@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241012-gpu-acd-v1-1-1e5e91aa95b6@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: I2MarXXLkEPT0-6bkTEC6qRkO2_D5At3
X-Proofpoint-GUID: I2MarXXLkEPT0-6bkTEC6qRkO2_D5At3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 adultscore=0 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 phishscore=0 clxscore=1015 suspectscore=0 mlxlogscore=894 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410210069

On 11.10.2024 10:29 PM, Akhil P Oommen wrote:
> ACD a.k.a Adaptive Clock Distribution is a feature which helps to reduce
> the power consumption. In some chipsets, it is also a requirement to
> support higher GPU frequencies. This patch adds support for GPU ACD by
> sending necessary data to GMU and AOSS. The feature support for the
> chipset is detected based on devicetree data.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---

[...]

> +
> +	/* Initialize qmp node to talk to AOSS */
> +	gmu->qmp = qmp_get(gmu->dev);
> +	if (IS_ERR(gmu->qmp)) {
> +		cmd->enable_by_level = 0;
> +		return dev_err_probe(gmu->dev, PTR_ERR(gmu->qmp), "Failed to initialize qmp\n");
> +	}

I'm still in favor of keeping qmp_get where it currently is, so that
probe can fail/defer faster

Konrad


Return-Path: <devicetree+bounces-116595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DCC9B3588
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE5691F2230F
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 15:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 992721DE892;
	Mon, 28 Oct 2024 15:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cjlKu/XC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455C51DE4E0
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 15:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730131126; cv=none; b=qGravbZiUbnTElqYcdFlOUROBDYMS5/417OxJZaQaAn6tSaq5kliW24Yzh5H+InliNowL23yFEVKaNAor/IP/7mURxF9kFTQ0619U/6zwttoO4bxt8JRzfBlvPRz6ohDCS30OlZOwEQY89hMm65zEFOvh0IyOz1gmA23JJEb120=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730131126; c=relaxed/simple;
	bh=Bk6aWFsRffgjllY78mQvxzjWpYQ8DEIpJJ6Vkhigikk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YHe9IiyjOWVLmNQCLrk/W0OMOyCWqYbCYQ1IbbBQcNdVLQK7Y4+M9kQGtoE7vwVIGsg66j85bzdV8/1mDLzeVhxuFRlLh7UuPZYJQKCq7oIFs24u11cB2K7xUHLhjFUNVXPkeZ02P0Gu1kYInQHf4ONJVuLU3pjXmTbfM19H1TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cjlKu/XC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49SAhQFK000767
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 15:58:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0VYsW7JQ1cB5TYMh4+UvHSrzS9Y+VyliTdMTbtFbpU4=; b=cjlKu/XC07QiyEib
	M4FEZPPg2khXeWN+GjoOr9XPPP4pZYhaaub56zqr/b3Gl2lpniHFXBrjl2eZvcK2
	mkmsnb2t2Q9gDHaIWycEZmlLqru5MsWBNH0kukpg5VO4lxqwNb4I7+8MjS5zBqAS
	Dp6pvrx3LA4eGtlfvHow1o/RiIAJVa5FqFLCDMJWZgUKfBAkS7j6RfyhCZoypZ1z
	Xqko/9dsh/ywk/JDMbPkNGnDyyQdDzDbaLVXRSwCtD5jzX+nApTOm6w2ABftahVT
	tPK7FLrmHTpBP9/zJu/fFUGLPfPF3ZQfy+35f3/2RkWVFAK9KZ2M4cmSKfv81Fiw
	UZFEAA==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gskjwe5m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 15:58:43 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-286eff7aa53so225250fac.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:58:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730131122; x=1730735922;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0VYsW7JQ1cB5TYMh4+UvHSrzS9Y+VyliTdMTbtFbpU4=;
        b=A2lax4HZyowqVsM0DhlGk7vP8ZGpRQNj1qMsZY2tF+I1E6k2TSez4PhgDSQy9eaPfg
         lrAhGJsMZ4403mzv3eskKRL9CQVYbCZ0+Qcd4QCFqlUFhC41ogiKVY2kV5C5PidpLXy8
         BZvg3zi9yHTG7awMJdBCPYNu1AUVe/YNtxjM7ui0M6s9MtVLK42NNiHpt0/ySz2AxnbN
         e+HeNgDXkErlVF8yTgqGJgo/H2bAQqRNpFXg5ti7GdbN7wg/LOMfDkj+lExmSwj1dz9u
         trcJStWX+u/y8anSkwWgllePtA5SUegHeybzaNPcdmIN6z8sRKC3ZQ81mNN7KJPPdeyc
         grZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdi8pxtDlrl0MQNz32cBsQtqaRjqnPqlKoq8LNTHFuiJ5IH2NZo67CiMsaTJg/QSTzn7Mvybl18Dcd@vger.kernel.org
X-Gm-Message-State: AOJu0YxhyvZqd8/w6p4lkus/Qy7pyXTq2/TtotT1sFCab1H4CZeFmrAs
	dCeyLEuY6609r7O1EGfUG474/lnZWSDtrQh+kVK7QjnJo8Wok9eE7PteKMb/0MadmlLg11Xurgb
	cgdOKcvwav+450AMFE7ws7YWIy9q6jS1V1kxIxTDs6h0SCcZ0OuUy4H7LVVqe
X-Received: by 2002:a05:6870:e40a:b0:260:ccfd:1efe with SMTP id 586e51a60fabf-29051b5ec8dmr1938457fac.6.1730131122459;
        Mon, 28 Oct 2024 08:58:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhUkCIQl/SqLN0mk0L78WpDjl+WfFePkg7h2LDPzWubD318V283uLNtrBPH9x2O0fbjF5SQg==
X-Received: by 2002:a05:6870:e40a:b0:260:ccfd:1efe with SMTP id 586e51a60fabf-29051b5ec8dmr1938448fac.6.1730131122197;
        Mon, 28 Oct 2024 08:58:42 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f298dfcsm386915866b.127.2024.10.28.08.58.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 08:58:41 -0700 (PDT)
Message-ID: <c3ad8a2d-0470-4329-96f2-e6d054c32d20@oss.qualcomm.com>
Date: Mon, 28 Oct 2024 16:58:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] soc: qcom: llcc: add support for SAR2130P and
 SAR1130P
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241026-sar2130p-llcc-v3-0-2a58fa1b4d12@linaro.org>
 <20241026-sar2130p-llcc-v3-3-2a58fa1b4d12@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241026-sar2130p-llcc-v3-3-2a58fa1b4d12@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: OzgtSFQhxzqJ6tZPlnjdQEwISI2VLkuQ
X-Proofpoint-ORIG-GUID: OzgtSFQhxzqJ6tZPlnjdQEwISI2VLkuQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 mlxlogscore=730 bulkscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410280127

On 26.10.2024 5:43 PM, Dmitry Baryshkov wrote:
> Implement necessary support for the LLCC control on the SAR1130P and
> SAR2130P platforms. These two platforms use different ATTR1_MAX_CAP
> shift and also require manual override for num_banks.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


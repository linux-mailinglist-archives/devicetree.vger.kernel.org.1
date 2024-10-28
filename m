Return-Path: <devicetree+bounces-116593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F9B9B3546
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:48:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C16651F22EED
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 15:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CA641DED67;
	Mon, 28 Oct 2024 15:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IcWEXDaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A141DE4D6
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 15:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730130503; cv=none; b=VIFb1kk1n/wcaulIeTxqAsNJaSm2eRDwAV9dXDH1JQsrq4lmTG04kMQaCRfCBqvgSkkVOOKLWj5jgE3znoDK8zuMxFDTqaGWjK3bI2vps0neqCIoZqARB2OouNjfo0qBWtDNJI7kYW/ZJDnbe0FiXP6nIl9KsQ6a8TLjb2q8xpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730130503; c=relaxed/simple;
	bh=yewPL6RAQN/qsQyAN6o6JJcIxZviifg50h1waNJD+Rc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fbx7tcg2bS5WbLLu9jvhIMv2pMxHOpqyxr2jpRLlBijSV8jppjUo9vwa4LZ3f5yP8in61y1Sp90EzLq5Uu72ZLpc6GyGGmRjUqoggx4NkT6OcN3tQXrLcKo38a63desCYiPIwMVYhncq/a0qNwMUCca5FeiyKLaHJ7rLDZpBK4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IcWEXDaL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49SBO47h026368
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 15:48:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/58fdUl81gFK5gfXJtlXmfqlYLl0O3YuDyMeSmWJPOo=; b=IcWEXDaLUGj3CLSV
	A2rg/n+xLYvnptHJB45+zOyFMy3QgaJKPRUEXw/O0G+w9OfxTzj4hmlCLcKNCaKW
	qWSmaNv0eqke3VnjSXcYelzCfsL66cCRTxLqQ/EvVMZfoGw1zMooIljOlZt0ym/I
	t8VPta3InV01IZfIIeQsUgrQCMp+9tuxCFDbyHV+ay0etSNWGIbZ2RLSUgM5EdZN
	Ejid9de1u1IJcQN7zuez872js5j56Vnnw8tyaloQI7J/5prLyXMgr+ThbC7UTOuC
	sI8Xu/i3jWyBCJJSC8PgXaw4uZ9IjggKL/2ERrL8sowKmKfZ2JAH6Qkurc/fI4iS
	So77Xw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42grgudh75-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 15:48:13 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbe6e6bcf2so15103906d6.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:48:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730130493; x=1730735293;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/58fdUl81gFK5gfXJtlXmfqlYLl0O3YuDyMeSmWJPOo=;
        b=LN5VMsLGy8S674dSBF7+u6otyDJlLQJNWuypovzPU+ZzW6pPHExj9wNm3sBr4xlG8q
         t+CHsvInDzPiVUktnoFrmcIsky3Om0yo7xqG407qTuHF5S65eNha+tdqlFndQMf18e4K
         exzywLL4Bk6SeCmftnVDkneL1ELle/K90H51Ma8EI3eFL5wMBwowsPXLL9dfpWWKfFro
         VpXSalajfI+9trTbsN39/F/VKHFeM73dzsxRzR2qcdfvS3dJVJwGADR5/d1emZHE/fzE
         GOvT6OuAGmqq99mAvkqvLkvaYNmV92VR7GRP4GwVOUamMMilmeZfo7NhtQJl+Ym13XnL
         Thbg==
X-Forwarded-Encrypted: i=1; AJvYcCWYdGadKwU2wYlJr91Nx7r1g/GcPIrJyd+W7SeLAnDWMLPBFwg8deI/ConjVpMuPfypKvzKrgm+vlfn@vger.kernel.org
X-Gm-Message-State: AOJu0YyDt9O41hHcdv4jIlGMZFldLX/mSGAuCn025+hQ3Bwc+MDeyh0B
	3fq5tLFmrqO6lMCU1Xsv2oPp6i59kDZVcyilm6mDj3qftEqCB88FrVVJhmm/CAGZCc9tNXrFklC
	fvqyv6iTq/BhqWVa+qJpaWrBAZEYnHEPsoQS/+ep48l0zXic6qfB8srWXrZG9
X-Received: by 2002:a05:6214:2a83:b0:6c3:69f9:fb5b with SMTP id 6a1803df08f44-6d18557af2fmr62944026d6.0.1730130493347;
        Mon, 28 Oct 2024 08:48:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYDnCOLJ3BfLLy6KxWBHD4WKEqn2ar7UApj80HRgBEYfdeZhp8Jy7POsKHWgWwh4hH6SEBDA==
X-Received: by 2002:a05:6214:2a83:b0:6c3:69f9:fb5b with SMTP id 6a1803df08f44-6d18557af2fmr62943966d6.0.1730130493025;
        Mon, 28 Oct 2024 08:48:13 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cbb63197d5sm3253197a12.72.2024.10.28.08.48.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 08:48:11 -0700 (PDT)
Message-ID: <b45c00c4-415e-459d-b8f6-1e5b0d6b0856@oss.qualcomm.com>
Date: Mon, 28 Oct 2024 16:48:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] soc: qcom: llcc: use deciman integers for bit
 shift values
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241026-sar2130p-llcc-v3-0-2a58fa1b4d12@linaro.org>
 <20241026-sar2130p-llcc-v3-2-2a58fa1b4d12@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241026-sar2130p-llcc-v3-2-2a58fa1b4d12@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: CYzlZpYb6POSRYe4JGnaOUWPDJhCdToI
X-Proofpoint-GUID: CYzlZpYb6POSRYe4JGnaOUWPDJhCdToI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0
 phishscore=0 spamscore=0 malwarescore=0 mlxlogscore=657 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410280125

On 26.10.2024 5:43 PM, Dmitry Baryshkov wrote:
> As pointed out by Konrad Dybcio, we generally should be using decimal
> numbers to represent bit positions / bit shifts rather than hex numbers.
> Use decimals for consistency.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


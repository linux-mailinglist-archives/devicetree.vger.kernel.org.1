Return-Path: <devicetree+bounces-137141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54537A07950
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:34:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A0BE3A1100
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCA9F21A44B;
	Thu,  9 Jan 2025 14:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XNZG5qKp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3797521578A
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 14:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736433271; cv=none; b=TcQGFfyr8fZu21Mj6pA9LDe0m3lOzqO9pBlGyXPCmaZhoQRtQkE0tRBPdblJWCPsoqfD5L+GqCII9Pp3mTLvcNTYvehJlFLVl51FU0imTTPubCYaEzBc9DX7vKjfpiawKmdgJcjOBPB+09uvpjRGhBmtYMiFgkmXe2SUFJ0ahbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736433271; c=relaxed/simple;
	bh=JzZsAVX22mxjMUIPiLN1cRpqa12FwCd+0+1ZWGrou/s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dyoF0XBYzh1tyPr6f5AGBan/IMV5E14QwsVR4g4EOjgi1Wsd7Mppppb/ztURSGZDm6W8DvuGlPNGLdTe7VVEZtr3fRSeHY+U8ALBiIA1uI2WzfsuCSy3Luk0iKt1irJP9/lwXipZx6mn+TWtzET9kGjYZm4MG596ZbIYekzWCHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XNZG5qKp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 509CBa8E002547
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 14:34:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7sRminSKYuT4CUEwQi0mIyGX5qLVxMETdC4eOaSoVHw=; b=XNZG5qKpHTc52B88
	OIOw6pOje4hziOfg9JPOvmjxiHJOE970otoO6oqUZ1Wa1EeXTCkecb1nsFJcRAFZ
	2jObhzdoWuIZ2cBRcXkviuDmjPaF6M2ZIbOOwzkFvhOdHl0VnQ8xuo2CB/m6jEqC
	utP9+yMn/6lJoxGTKdQQfP0lX6m2XooWshjiYKE844yX2B+lyTn0OP3hONWST4yC
	FZM+gSn6NObUCM3wiLI6ubkRyj+crlAIE/8X2YuUCOV0gXv6nj3P5U2huIzCr4oN
	r1iHCqo4LToww7N622DRnDfNC9GNF39cS+/Z0yKtuzWljg6oC0MEQ31PlWhkO2sp
	ZQtckw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442e8cgaj7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 14:34:29 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467a437e5feso2535301cf.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 06:34:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736433268; x=1737038068;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7sRminSKYuT4CUEwQi0mIyGX5qLVxMETdC4eOaSoVHw=;
        b=FLVJEN89oLQaO9ev1o/eKLYiDQewTqL2mf8Rf8LxMzuCvxt7p2sUgxEQvB9ml3R2A7
         d4iD8sqIAPPSbJ+AvyJWhEjjro+u2RaojGl0eLVbklpmfxExeVye0w8V8rtuK64mKiMj
         sl7NbgGbtbSuX4VYu3UB4TBAg47E4WwrnJa2FmLXnKFiw1cEuOUgCc1lADGivHLgXLLI
         1AR2hEPut/Kr5fmQC978y5UYOcwT/xm03oMO9Syc26TYXEhY5vYw31J+gErERgSl+SxT
         l26kxmrPrU/q/zf0VPwxUDf1O3CPXeqIV7KYSTuC88FNsb0G9iPdSE/nT2rwhbF8l2di
         kpew==
X-Forwarded-Encrypted: i=1; AJvYcCXghDxuSAPH2T0MPeNSOLOyQpOY24Ecg+ixaCcrGRs3u7Ii9/uhyyq2PB6cpgufmZ/CViQB2i2oE74i@vger.kernel.org
X-Gm-Message-State: AOJu0YwCUChHpDu+yYGsOf1gO9ldkDc8WV2birQ5wlBlZka4ps1clFj5
	k5SNyCuyNP+/DVApaC5/SvaJ84e9/Xg9fumuYeByLr2EFcUolqBDCeFUNQaF37t+cFX/bJkFiJh
	os+5nNgBvS2ET19pGXYRbziJz9EyQEtZIGLzyjbGT714LVi+Mru8b7hOiBfLj
X-Gm-Gg: ASbGnctE1UhabwAWERPVtYlJNzovABGrPJ5SQphL/7WKgn4mmrsOuj8PJR9tmJSEGft
	XpZhVqItMNaloQbwcOedgzNySKSBHeBlYbH5fMpmdEgbiYj21Ss+neVLeVwgzJActjZle7QtiY6
	8RAHtfpUZsYiHUPhiFTnZ5ASS4msIVOZSBXDuvc15aOXACYz2qvLo8UmrAOMUdj4bzZ8wv6cLJ2
	NAunFXbxcQ3+HhP/5/oZ5EjOhMyhJCDMtirQmqNMUld3SKKBrL/9F6h3QTByUB5qJXc27P5cyLX
	RpFNqviu73/jc7SODAFS3uj5PbwYB4SwYvU=
X-Received: by 2002:a05:622a:450:b0:460:9026:6861 with SMTP id d75a77b69052e-46c7102be4cmr40531161cf.9.1736433268371;
        Thu, 09 Jan 2025 06:34:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH883oKXzGRrTilIgV/N2e+QQvov9AilqN39UqLmkXr4L20TmKo/V9bG0B0YVs80AyZaQqlfA==
X-Received: by 2002:a05:622a:450:b0:460:9026:6861 with SMTP id d75a77b69052e-46c7102be4cmr40531051cf.9.1736433268041;
        Thu, 09 Jan 2025 06:34:28 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c9649939sm76309866b.182.2025.01.09.06.34.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 06:34:27 -0800 (PST)
Message-ID: <daf612e8-1369-49cb-ba99-15218ad2f224@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 15:34:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: qcom: romulus: Update firmware names
To: Joel Stanley <joel@jms.id.au>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250108124500.44011-1-joel@jms.id.au>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250108124500.44011-1-joel@jms.id.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 6DcaaMRXtot2LqlFmnW8tqNmvcEfZSB9
X-Proofpoint-ORIG-GUID: 6DcaaMRXtot2LqlFmnW8tqNmvcEfZSB9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 adultscore=0 spamscore=0 suspectscore=0 phishscore=0
 clxscore=1015 malwarescore=0 bulkscore=0 mlxlogscore=999
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090115

On 8.01.2025 1:44 PM, Joel Stanley wrote:
> Other x1e machines use _dtbs.elf for these firmwares, which matches the
> filenames shipped by Windows.
> 
> Fixes: 09d77be56093 ("arm64: dts: qcom: Add support for X1-based Surface Laptop 7 devices")
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---

Right, I renamed these locally.. but it's definitely better to keep
those as-shipped

The commit title should like:

arm64: dts: qcom: x1e80100-romulus: Update firmware nodes

(see git log --oneline path/to/dir for the general format)

but maybe Bjorn can fix that up when applying


Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Thanks!

Konrad


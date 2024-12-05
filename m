Return-Path: <devicetree+bounces-127554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E19319E5BA5
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:42:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4770167DCE
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351C922147B;
	Thu,  5 Dec 2024 16:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JTv9MVdt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F818221460
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733416925; cv=none; b=It/nJMlvq1lPoU8pWUYaMJVJ2wbUlaXJ2uZb7k4Hu+Pfg73vQKZCB/9Cj+jBCiLuNBMo+T6nX3vXFaz6yk3S97KB7+zHdAGvmQFb5bITFy0OGFeX0kV5C9jPUx8P5r+TnedQzvKhpzKYLVCB6zp4xCqFTpktDYZA6zvQUksDzOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733416925; c=relaxed/simple;
	bh=jFEMWbR0VhaeTPkf5GJbzyeCa7aECzmYDLLXPPu74Mw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dFsHWcLnCayE+zXsSwyUauR9n92u9HmXiJ//64d5m4ZxVyKQZy4E6YBWCYXiLt372FXLKTY+MMVIkFN+3tXDatFj1Pdm138LCcs4MiQ2wYFXvy/ey7tSc2ilIh1LHjRzC/u4tQPBI45X+WsfK8/HXg9hAACg0aT6QP4Kp4N/prU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JTv9MVdt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5DFkjR031997
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:42:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Go+snB4FH6pFEZCnjdkBfOyMv+1g0HKMFcvMCjUYGfo=; b=JTv9MVdttvaQVmrD
	JMX7FLwLipdKJvDwMWvd89CnYL6Ogjtal2GPGOBv4CkdCI3D+xQ8G4ZIQdEdJ4Fi
	nvNxabMb/GUlLej4Nt+cE9i4mJhx/n1BTBIPmYQjrTWRE89L85LA6XJpCYmuKkIH
	VafpGfilJsNoeDVbFobjfYC6V0MGrYc237emc81sRQgnEC43EU8g4q3w59adLRhX
	qKq6XpCvZnhIaTMErgSZy6WE+y/SgXABgb8Ghg0T8b1vlrv4MkkTCdOa/F3z38NK
	Dr8b46lZHoYnbfgzi40nlVfsCI8JSDyVULinfYad6+DH1MLuH3iBJqHPEWB7WOPU
	C5KxwA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43a3fay58u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:42:02 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46692fb862bso2289911cf.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:42:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733416921; x=1734021721;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Go+snB4FH6pFEZCnjdkBfOyMv+1g0HKMFcvMCjUYGfo=;
        b=jMrU9vhaTcVuFKcwZoAMriflhpUzrS2IMXCeZCnjjVkTgYBKnCIfSeHB+fflqT9gHl
         pya8m10LJV6z5spPzLqTIkIqkzH/bzp6Lvn0BHivW9/YblBfeHOK/f5K6FAZTgGFnDJw
         YpFD64ShKTpdXgBYJzjna8w/Zh/eAvQbc88EsD6beyYm2hQP16/T/TfIDnRyBiw5b7km
         vQA4hQIGn7n5NkUSBblnmNG9XewX3aTt5hrCZQm9d5lZjCHJ+E0gxZaUnHhZoPe1iZvG
         PtX5RlZ2AY//RcgtOsAItvKM1ILfrrWvkPwPO87nw6WavGa4ZoqpLQ5e3MeN+1i3v9lw
         czGg==
X-Forwarded-Encrypted: i=1; AJvYcCVhmw0zUnrSdmwGasOMiyzjvJpG9aiFvUPXxtI3MwpIx2os6OFeHsyQnEPFMhUDqdDdJ6dloFoYVSTO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7kk3m+HLNi2NPvs/UH/uiGW9gGCpOpsS1tkPl7O92sttnAN5b
	q+KQSkFLUytqUFik+/BxFHjtbiXVcW9oTP6Q/h3kDc0e5BOCmdyGIY06U2/OLAAgcfx4vbyyCo9
	+AKpYmyvFS2MjBOOYJ29M9cqgMWDYBuigd7PHamx4h0UQhjFYrwvrGEvcrxpU
X-Gm-Gg: ASbGncvfj0OaiDwksGJhgJBRejAV/YdauF0DmjROid3Xwlo+BnClj0wNok8Xjn3E7Z2
	4f/Tf+muXIoek0y/rxIWQxEb/GCYJ0/sKuJUuGlexKujU5iRvHoLtPfR7LRXCOuhGeJnRl7X1Wq
	AxjzqJPPu6WULrwjMwyKDREnt8wk3zj3Zlec9KUd5wrPqfLLKpDKyckFkqQQVsTHT1P8UxD53sR
	hJ6j85lipmjJkBzGMWOwIPcvOslImGhBrCQY1iGCdUIZiZmDx883eZmAraN3XJVfvi6WoGxCqfS
	SBhLl6cdwey1FBmzU8IffkVEsgOZ58I=
X-Received: by 2002:ac8:5a11:0:b0:460:fe2a:2311 with SMTP id d75a77b69052e-4670c372ba9mr71128711cf.7.1733416921305;
        Thu, 05 Dec 2024 08:42:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHV7SRkAtz3D9vcQvS/ksz/bMCqXlEy7cy7fYGtzD2n6lH/UZBtIGm4GJI6vdwH4FYNiyJTMg==
X-Received: by 2002:ac8:5a11:0:b0:460:fe2a:2311 with SMTP id d75a77b69052e-4670c372ba9mr71128411cf.7.1733416920949;
        Thu, 05 Dec 2024 08:42:00 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d14c7aa3besm984232a12.75.2024.12.05.08.41.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:42:00 -0800 (PST)
Message-ID: <0aee7d2e-37b3-4130-a090-a40773638871@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:41:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 05/14] arm64: dts: qcom: sdm845-starqltechn: fix usb
 regulator mistake
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20241205-starqltechn_integration_upstream-v7-0-84f9a3547803@gmail.com>
 <20241205-starqltechn_integration_upstream-v7-5-84f9a3547803@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241205-starqltechn_integration_upstream-v7-5-84f9a3547803@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ExMI2jSZfbZuovIRff4pYWNzTZeU0Qp5
X-Proofpoint-GUID: ExMI2jSZfbZuovIRff4pYWNzTZeU0Qp5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 spamscore=0 mlxscore=0 suspectscore=0 adultscore=0 mlxlogscore=596
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050121

On 4.12.2024 10:34 PM, Dzmitry Sankouski wrote:
> Usb regulator was wrongly pointed to vreg_l1a_0p875.
> However, on starqltechn it's powered from vreg_l5a_0p8.
> 
> Fixes: d711b22eee55 ("arm64: dts: qcom: starqltechn: add initial device tree for starqltechn")
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


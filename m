Return-Path: <devicetree+bounces-221358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAB3B9EDD9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:09:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E0E64A1D19
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:09:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E919A2F60B4;
	Thu, 25 Sep 2025 11:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KjaQk7P/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769AC2EE60F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758798577; cv=none; b=N3u/8TAJK+gDqNighXGQ1ayMjWNm/vnuovBaDeAM34gqajwRgsXiWXRkKDwDUwtnsGRwrH/Dmbxu5XJcODXLT6S9UipG1yjgFmF5qF9r24VDkWY6HxLUDp6bRcNK8Fesh+b1OGabT4eA+EMmCRbinq7qL4mF9lQEAbWwDd8ErkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758798577; c=relaxed/simple;
	bh=o0w1GjVwQtKKp2NQc8WIpZmZwonlDjTJQySGBM2xf0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IWXhEN0odPqXa0qKKT4qVaf9Eq5QzciObkhAiJlSkyv+2SOotBBT5hBE9Ib+CK4hNZvLu5VkDPTg8eKS8g7+6nA/nHey6mkobZhAypN4NjBY44zBQY06Q5tCvwMRBDHLrRe3kjxcTs7+UKWBxtZkNJhOEeORJTqFeYr/1ceZMz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KjaQk7P/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P93UBl025089
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:09:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M1MCSGjsMB0h6le6F1/XzmUDgIWqplxEauOTT+PDP2c=; b=KjaQk7P/O8uOYVp+
	5euhxmq2QNJ5VND2syvxJSJ4tWNE7wrrWuNFApVh1stoYnLio2fLzXpZk4XiWhcv
	OULupd+G7LcNKaZTJny26lkx8MiXsH2WqtBbjoVJym70KbjdNjXH46w9BKreC5Ve
	cJCRnIO9grt3gh5dWYsQeHGlK/fKWYnNwKKGObtnn1lwLAjaQ8dMcYjTCVjeHOKs
	KsOsm3JTduhVb1lPThxnkBQQHhYWiUvMj+lL4CS1A14NHn6gj9aVhoGJKXwaXpT8
	zmM72mY9WCCt3pmVw46CAJ3sVb9lJApw3J8VENRzj3qRpU25qRXjh9PaUDXbxk45
	mQrrAw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyf068b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:09:35 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-78f40a59135so2166556d6.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:09:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758798574; x=1759403374;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M1MCSGjsMB0h6le6F1/XzmUDgIWqplxEauOTT+PDP2c=;
        b=l0wzBXsD1SDZLrDRC/1JlOKpzPA6wdKRurCsNVu24sdPQ3XWyXTcXsrlo1Ptf+BVJy
         R5+KMh/2VhK0J87IvQkOMp5zUU/hQJA1/K6YNmEADQ0XinkQI32Wd0GtEkhkJ9EixWpK
         IW1EjAWgc5FpKx8AwEnVXh0zzA2QIUdZg6aCbkNkaJRBxYX8AhAm0T4B5/MChVN7/jT+
         3/Y3swUO0pCflmXsuxOz/D66p/ryOU//JCHZeH6gIZ95W7Szpf3skiVRHoIVa9IUYKnV
         6Sgei0DuDv+o/CjrgS+yNR2ILimig4F+BqFb6z9d2mkfpjOA8vmGzp7EkkWh5saKTNVi
         LXTQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1unuhRn93Oa5c8u3CGHd9gBHxkMt4eCPKaEzS09WMcbJgxKRzSLfYaXWKXDqc7GbGvsC5Izuw3Rhk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7uZaBCyQuImgDWLMHvBCq/8aiGgWTfHIpCUI4qI3BwqFt1B3Y
	3oWyIaKqnOtnGxE1EDx7knusn/N5Et4yBzl6YbTbAqD5TKkKejp0ZYfa+FIQ7fwo7QdU8n6hutc
	hFeWbKytMh8Tc2YyAOiHmPIf97hv5xOfV1qM7DtTjRMCa5/ZtllyKhR/NQMBwYa2/
X-Gm-Gg: ASbGncvnOabKzXQ/6Q4vInLlid8ylgbvl6dvZ36a5YRTz5y3Kwf1kXqdTZ+7XoEGg7P
	C0gyT1fV9ixPtN0Nn1TJaocvLgTRXXlrN1NriINWxTMKVeBcxT1dIleUh62k8R60tNjJ54oZojG
	Wb4tnhRMkcYG2GHarjKDnR9JsbYzzyRjw1ei74Qxj32xtdgeJedsrR2LbSM7lB0MyGvRwgLvzRV
	5DB+Zgsomx8ZEtsXHSabb04q2IR57ikMUXRNHCgSerAgFLPHzuxIfAZOtbOmtqh+YKGc7qZsHrk
	A+A0nG6mrqer4tYERjqxExYwkV17HGGI+xR3P3w+wf4buE84nnvOmuOAK24eQSAhnBoBXp1sl2/
	1uZGhGhGa8/zZ1SgO/zM9EA==
X-Received: by 2002:ac8:5fca:0:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4da473524bcmr33527741cf.3.1758798574349;
        Thu, 25 Sep 2025 04:09:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7jli1zBEtFvmlXFlURWL9SpXADy7yTP8i5IQVq1uMTl48RyIBKvH5PvDY1w7lojOowXBzSg==
X-Received: by 2002:ac8:5fca:0:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4da473524bcmr33527421cf.3.1758798573979;
        Thu, 25 Sep 2025 04:09:33 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3af5721sm1018360a12.43.2025.09.25.04.09.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 04:09:33 -0700 (PDT)
Message-ID: <1053e541-4f35-4fc3-9f57-2e6cb9c61f9c@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 13:09:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/24] arm64: dts: qcom: glymur-crd: Add power supply and
 sideband signal for pcie5
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-20-24b601bbecc0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-20-24b601bbecc0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: R_QXlYCwnu9zjjPjs2_bbXZeNwAo5RBU
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d522ef cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LDvWB-EhgdJigILL0XAA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX5iBSg0LV66EW
 7JWHYTTFdtplZpzEg+Vm2b6eXAJQ3DhoGfJEYISy2Dia21eQp65apzd2rn8Jvxnz6EtsY8amOdd
 0oCcFM9w0mnwBTepspW8Av2BCVCxfbBFEmq2UbfPUawxOHdylSHEsLaCN7B+US4tCBtatynqFiW
 LqGKysH28UFoYjpmO4+FF+xNcNberMzn2u5yxdupyswIufwsghfM/ypVNQpB+gQb8X0+m+3N++A
 0ZFrZBArm+Z51njbdERUE9kl9xnzjzcpRwAASguyvhpUoWZP4QtoXmCygb+X0+7sEhplfdWO3nu
 3DJ5u57Q7r+ZV/vUxKG2ThMMuGvmI6JqL90OaSN5JD1DSzQ++GR0mcl9APpcYFYyrQZujbVIQW2
 Vnj77GUl
X-Proofpoint-ORIG-GUID: R_QXlYCwnu9zjjPjs2_bbXZeNwAo5RBU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

On 9/25/25 8:32 AM, Pankaj Patil wrote:
> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Add perst, wake and clkreq sideband signals and required regulators in
> PCIe5 controller and PHY device tree node.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


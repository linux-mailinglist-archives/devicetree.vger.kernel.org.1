Return-Path: <devicetree+bounces-107778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEA0990030
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 11:49:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06634B2204D
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 09:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 873D7145B0B;
	Fri,  4 Oct 2024 09:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GVPaHC0x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D81C33FD
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 09:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728035371; cv=none; b=LpkDrTf7gX9N1Sb0JV1xgKWbWrPsmeprbTpL/jAblH3zN4jhUzRnvazw5QNfTwhDomt1URTrI4/lJLT203Y6DwNAg//zsFszO88pyFAJoLuI457XiEzyCLl3ivcDL4DUVaIytj2J4380zOS8wKVcsWXjyc1YpU6eOogf0urpVl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728035371; c=relaxed/simple;
	bh=GR+OPGRfst2Mb+eMleklXlSAEUmzXvrK+37Gg7Gnzzo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gxgXvrkBpMcx9bR57sL5StUkVZ8HFVQnKR7engNdIx6yyg6TwbHIYLpUntn6PBa8bHC1bi5cWR+xL5EPswLCJLfeS1L0cowyPLx6jGhTYQ4ZFcDAoVB7VxBz/uEfuSX6sDyjbGE8Rhlx0r/ywtYyzmCVP9k65JdhGjWTmDtkp7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GVPaHC0x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4942Akb1005563
	for <devicetree@vger.kernel.org>; Fri, 4 Oct 2024 09:49:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4sUSnrd4e5lZEDXd4xBFPsvz32Jb1tbfs3pMahNY3mI=; b=GVPaHC0xXFeQTmbM
	DGS05vrCZ8jpYwN5eTcpKWf0S8IlB8EJhIUOmV13mjKrAuWjwNQ8uzlMUOnReL9+
	n7lRZdYGuF47qXp6Ih07E32ijuZrfD7z8tjZeVQ3dOTaAPqJiy3BiqEJbBbR4gMM
	syVtDw/nISfddkIYShGwzKuqI+le2bMDQ7i2klxrQJLEP8w7lK59G5ZfgvfLeMlO
	uYmW5DIE0ClVpyEGqpqOqK/HAtaibX/rdQz9ZiJzLXgy3SBd9/9JX9rI7+RqKdQ+
	43x5H2lwSpog9E8PNxBq2Nnyj769DqyrziACi9xDIWUCMj23bAEpz4mIwK8y6U+X
	RFp01Q==
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42207v1nxf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 09:49:28 +0000 (GMT)
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-5c885ef98a9so330541a12.2
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 02:49:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728035367; x=1728640167;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4sUSnrd4e5lZEDXd4xBFPsvz32Jb1tbfs3pMahNY3mI=;
        b=eFgpAYtLJ9VMbRTeWhqZBV95f/MYm66VfnHzIzP397475V3Fjh1hiuvh8fKRWJGw5t
         pjkbLDw7Xqvknw5THclq6lc4mxYWbNDhY1kHFct/PXgVCXFOMr1RZDwuuSmgta1415Sp
         DOhz8Vx4exSS/9V2vKCAggZZphZZ7Qv8qkavqg74/hA7pmRLKm9Khv1jIP9HrEQYpyFQ
         QBj0MNE8Uudrx7RijYg6yla1N6RLSygh8Nd3f58wJ7vZtlIqnSNxuK0RWbbocIrleasK
         Q/n8DpSbAX3kJRqT+T2rmH3VNAOdM6ziB6JvKOkyf5QwuDGWoZ3nY/qloZ2FHQ5eDgFV
         q5ew==
X-Forwarded-Encrypted: i=1; AJvYcCVmlUbRKuWBH6bqIEo9soWrzN4H235YyFac5di9T/scvv2ywPo2+SyEFnQI+YvFMtwkF8v///uc1/de@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh48mBvhQJ4gKyg9uIqhEfQbm0992fZ8G5CMT8X+wrVM4hoSyX
	CWEvuAQUlNI0ihR96pVd6qPRp4Dh5e2eMa9STp8yX1gD6TIHCfyLsvejyvMD7IzNOd5jUYwOwPz
	5s9MGXdfIUQLugzeN20vbj8Xr6iVT+lGWzzaIP6JlME7TAd8prdgqSeIPKEqx
X-Received: by 2002:a17:907:86a8:b0:a91:158d:363 with SMTP id a640c23a62f3a-a991bd8506fmr91352966b.7.1728035367141;
        Fri, 04 Oct 2024 02:49:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0gMuL+gB5AGKramZKBM72BiyTxDFQnkFInQ+SuQNnCHF+AgrRg2k57y4/QEmJ4cnhir/Txg==
X-Received: by 2002:a17:907:86a8:b0:a91:158d:363 with SMTP id a640c23a62f3a-a991bd8506fmr91351466b.7.1728035366716;
        Fri, 04 Oct 2024 02:49:26 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99102ae6e0sm203135866b.95.2024.10.04.02.49.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2024 02:49:26 -0700 (PDT)
Message-ID: <ae662017-e377-4821-b668-b65d764d5205@oss.qualcomm.com>
Date: Fri, 4 Oct 2024 11:49:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100: describe tcsr download
 mode register
To: Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Ojha <quic_mojha@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241002100122.18809-1-johan+linaro@kernel.org>
 <20241002100122.18809-3-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241002100122.18809-3-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: c7TuSr_o0wVGB16dPa5S_O-3jBToRGCJ
X-Proofpoint-ORIG-GUID: c7TuSr_o0wVGB16dPa5S_O-3jBToRGCJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 bulkscore=0 spamscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=930
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410040071

On 2.10.2024 12:01 PM, Johan Hovold wrote:
> Describe the TCSR download mode register to enable download mode
> control.
> 
> This specifically allows the OS to disable download mode in case the
> boot firmware has left it enabled to avoid entering the crash dump mode
> after a hypervisor reset by default.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


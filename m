Return-Path: <devicetree+bounces-126120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 261269E0505
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21A7FB3BFFD
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E975205AAF;
	Mon,  2 Dec 2024 14:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="akdzHQk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8EA1FF5F9
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149581; cv=none; b=VdkfsCGshOF5+G9YkzXKzM4CJ8enCcRwBF+/7eumufuXjC8BWLbTVXeaq590YAHqZhg4749LiKW0TcYgzMVfrOMDC0ZQnt3fYwuJ2uB/+d+grknuA83aovpWcCy7vJpdXeuIWRkJmUUBxVq7EJRIkTLYlvgcM12PK624MzMa3EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149581; c=relaxed/simple;
	bh=U5V8w3BHhDumOMT4/n+/DHbu+Z9WvE7y+HF6Y3k+6k0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hWIHm88Jn7uftzOlVq1QvF/IWd3Kb3v46gnmu0RcigETzoMQhzzGcQ7lvkr22PJ0WYn2G5i1KVYR0njxoIKOJQEnQxNSBJRp6SgEwSw7oNkx4yGFWTD7Kur/xi0ELpnQA0J/rbd7IhYtXnhWQvkNVEsn5KSsjYFNrsrNUSTdJ2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=akdzHQk2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B29BTu9010645
	for <devicetree@vger.kernel.org>; Mon, 2 Dec 2024 14:26:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C9+aPPZFAJemDOGMrrzpUMQVAlKiCGsFemq1XONcpZk=; b=akdzHQk2JJvu6c+o
	cnFE7I42krUUOtwqd6rQMddEcSyZd066KzphvS2c5B8jHDcf8YX5ToDEA/uDVnt6
	hWGds3Ugt3t7R9qfBjptMG7h2noyxlp4Ese/lk4TC5iDt1Ip7ZaqZ3Dbd1uwVSNe
	Yf1fdh74no9Uc3h98tFdTt3NSQws5xi5geUPf1pDYGD4MoUONLk60xfR8bfHfKmQ
	KmZzIRxZfUeG+UQLOB3XBC3owX97GqPJjTarEcsQ/PRE3ZaY7Syg3kkCXqo7ztCC
	4WWR5SAGdxobqnE6fC50Fciu8kPSLUJCtWLZh0uayWxFFcQUvBYOThAWt0Ocdf7q
	YDzpmw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437snqw45e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 14:26:17 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46692fb862bso5049451cf.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:26:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149575; x=1733754375;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C9+aPPZFAJemDOGMrrzpUMQVAlKiCGsFemq1XONcpZk=;
        b=i/NiSxykrcw5Oi1/7K79Fa/qzbZYj3kAzJgBB4uq1xk8nZt9SOf0SYkf3/S55DM4HP
         Q+W2c4O8R1ClQj9ODxUqBo38BDcJ08wzBZlKuXXAyj7fYR1SEQmm847cFbAV1rTDrnrS
         dHTSwUFXhYt+AMPYKjO9PGL/vJYl6bayCOTfReZgnvXaNEkywRc6A0P9WSIBmd0NT8T9
         ZEFYpfuEGPDEs5AGyJ0rU8VUiGBzZb5ZGWy2fykxvEJUOvLRZzit6M6xRmqd/U8PTgcv
         SsRIGF2D2E5ORvaSDYemQcCmeoR3aqm4BYX70FTFzoYdpcyjLkEihL9y0r42tGhGscBj
         +y1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXqLExQOEgwiRiXPntyHrzRAGZ4hjhzF69HmV68gDbzAh6FhB5CO+w6NOZh/O7OXtcm45cpnbPUFGzI@vger.kernel.org
X-Gm-Message-State: AOJu0YxCJOD+l410woMkijLms2BoogHDE+xaGFG9yXglXMFpJ4fe1tjZ
	NE/yM0ervNp9BIYPnZ9zjGYip9vg4RNXbF7POPT0VH6QKWO9SW9fM4MsJVGOY5McDHpnXqO5d18
	yCchek3rU6jd+tX0AIuKg/qLHtD4x02ehHpIjPsqA+/puT+vVe0cTvIxhy/Nl
X-Gm-Gg: ASbGncsiMm3TS0AeM6227zL5m5WmTqVuTVaNI1FGDYtMbBRqn1JF6ZH71HOXrjlFNt/
	i+7CQda8hoKxjdZMnz6ga/x9uSxxiqGtELkTG07p2H8dF8C80cuTHS+WcBHVCfogVoc39Ll9F+6
	G8Gs6pwuMiR4vNf8SFxiwSVJ1rcdRlNniqRarPIoePOvHUqh5paw3ybsplL1NcdT83XyW5lQMxJ
	MVFQNGJzPMGiiTVDJc8Y+FR28MyinLaEvIXuDmTQ7dVcDsMiAPYgmPCkD7712FsPraO+MQbyuh5
	ko0ADyvMw9Am3aBqb7LEnri4XLPar14=
X-Received: by 2002:ac8:5f46:0:b0:466:85eb:6114 with SMTP id d75a77b69052e-466b34eb098mr142606671cf.4.1733149575184;
        Mon, 02 Dec 2024 06:26:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEks5Q89gw/Ra65Tb+SUhB7kvtV72Gy/kgkC1JbMoRUkpqIZ4f3DHNc/WA4iENdSFUUHOA4+w==
X-Received: by 2002:ac8:5f46:0:b0:466:85eb:6114 with SMTP id d75a77b69052e-466b34eb098mr142606291cf.4.1733149574666;
        Mon, 02 Dec 2024 06:26:14 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa599800a6dsm515436666b.90.2024.12.02.06.26.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 06:26:14 -0800 (PST)
Message-ID: <25873cef-2871-46c0-a764-9b5ee85e9a58@oss.qualcomm.com>
Date: Mon, 2 Dec 2024 15:26:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: qcs615: enable pcie for qcs615
 platform dts
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
References: <20241122020305.1584577-1-quic_ziyuzhan@quicinc.com>
 <20241122020305.1584577-7-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241122020305.1584577-7-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0WmlMQ3GTjhEGJnT8vKvmj60YPtyd678
X-Proofpoint-GUID: 0WmlMQ3GTjhEGJnT8vKvmj60YPtyd678
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=713 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412020124

On 22.11.2024 3:03 AM, Ziyue Zhang wrote:
> From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> 
> Add platform configurations in devicetree for PCIe, board related
> gpios, PMIC regulators, etc.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-130478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB4F9F0090
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 00:55:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E23B9286505
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 23:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF731DED71;
	Thu, 12 Dec 2024 23:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SBe17nea"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C8E1547F5
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 23:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734047748; cv=none; b=Wg4b3mtx+2w/rcfbJ84TLGpB53z0P+mbl8gDtx/J4QVyfetXojVvl11XvLVG4tsDzmleln2214G7G8hfGujXvZJ7EmF53JG4PBMpKH1feRMdKN9ONJ/gE5bFQR/qHdsExy5sfOWVN/Py11Hz+K50TYhV6J1Fn2+immqLGs4xYpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734047748; c=relaxed/simple;
	bh=oVg0v3rHyXicuVAXamNoc38i97c4urG7OffM7x8JcOc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xyt61YJ0F/2xU07vB7An93GWalPOt1zNa0+XETk7n5uidmy2KvLlYRwpg5U2EIkP+UDWY08Ud7LBg+nGzXiMm+g2wuptE2WNXCePViKWf0SovxRfgfiZQVFr9z2UoKVOl4UsqBeC02pVsYUc1/hzkm9w+2VivYmfC24/sTOCS5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SBe17nea; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCICfS1022802
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 23:55:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oVg0v3rHyXicuVAXamNoc38i97c4urG7OffM7x8JcOc=; b=SBe17neaYoTIezHg
	npUBn4agpIQUbGmWUBmnVkw+uFrCxgC83JXvtj666yVLxuJfkCm+zwAJDm0V5fw4
	vnrKeeRVB5n13Bnp11wP0qSwxB/Pv61gl/ijNcglqjwZB8VDf2Dd2CBhBz93A1dp
	pLemcOHbWDwJJR/zT0wt27e/piZdLfEu61TAoxsyBkzuviHWPKlJTboLOz7ASy8h
	R2RLZPTlGluNUkYLn0lNHkwKRcUkiLCzuE1M9S3Ar/NcJLwcv68kptjwk8klNcTQ
	bCmNRofpghb4s6sxfWbB/X/QA3RjwzICXaq0r+4Sv6r6idgwJUKcdRX1/AGcaYwu
	M7ZVFw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43g4wn8nem-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 23:55:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467a437e5feso732531cf.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:55:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734047745; x=1734652545;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oVg0v3rHyXicuVAXamNoc38i97c4urG7OffM7x8JcOc=;
        b=YN5kfvOBV2HJN8O712Eicj63hUHf70ybioNnxnq0CpMOGfCsb/QUyCTRMF/ACL/9F5
         dCJJZgeO/a9pLAv3nqabBCT6kDxPR/yg+MAtrUSdZvvuWU9x7v5+/N1EB7IRGsX//zPs
         I5SSfIjcZsDBVI6HAnJDM8ScLyv09CiFSBrw5Z/w7ECevtR3EP8rqPHG2OxNnJsA5Z0A
         D7Lj84kJVIyX0z09iNtXWRSiI2ZLN/IgYKyvZL3nf+VB+FUWKIkiFxUwRNiIW6oO3+2C
         65GfIdT26ie62vHHilN1z9CL+bjxT5ZP2aGKC8Twnja9zwpMzuy9I3+Pw8FZ7Qs8Y1QR
         lHXA==
X-Forwarded-Encrypted: i=1; AJvYcCVD4dXTzZE4DOB596DNnw65X3xfmQQ1gV4XbCIlB5SkCQCwxmMfbDkLa/r6skzuSfbjANWET3ov8SRQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxBuGf36Trjr2e7yzRgVCL71U/B87iAYwXTxt2Xp3NQQDl3VZle
	faT0/OyacGi3H8z6AE62X33k7Gh03Crmznmfpg7yWj1HIUy3prMAzO11Y31WxWTiwVuDKvlsxqj
	o0nlMWd50MNZbl/NxC6vdwAoCWwb8PtVCBSug7zg3mppdfZgp8RL9K+nFloT6
X-Gm-Gg: ASbGncug4XJ4Zbv1PmUCNCY62lK7yM1m+lcFiYKgUxp3J57q/JTFzvroIEr14e+g4nL
	YmhVJ4ZOTzyGrPwIAN6LByqqi8boL36zc7y1aWrd0QNEtz2CTc2OOtoGR8REf3gHhCVzwdANaVY
	y0BM6H5OQv4g1oAmwHCEaiG09m9V8XN3vNsD6WLPBWjzqK92oobGQGO0biqepFkfuoj1L4QPb2/
	GgRftUbI8InfKVv/ObYFTL3f2XpOdkC2V8SvWEks0pV1W+xLU18QoRrBexiuPAlSKyq6CeWYpVs
	rrxHISe7Zn9XhcGph1Rh2s6ob+EjhKdSJf+h
X-Received: by 2002:ac8:7dd3:0:b0:460:ab1b:5ab7 with SMTP id d75a77b69052e-467a5802b48mr3256541cf.12.1734047745445;
        Thu, 12 Dec 2024 15:55:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG5IGqhNo+zsFxi3FPjf25AKosCgwvN9y8sOX3gGEAOT3U3/kWq+sQTEl3tjq4dpc5mymI63A==
X-Received: by 2002:ac8:7dd3:0:b0:460:ab1b:5ab7 with SMTP id d75a77b69052e-467a5802b48mr3256381cf.12.1734047745056;
        Thu, 12 Dec 2024 15:55:45 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa65d18510asm861495466b.122.2024.12.12.15.55.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 15:55:44 -0800 (PST)
Message-ID: <a2f80840-75d4-4380-aa85-d83242db08a9@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 00:55:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: ipq9574: Enable TRNG instead PRNG
To: Md Sadre Alam <quic_mdalam@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20241206072057.1508459-1-quic_mdalam@quicinc.com>
 <20241206072057.1508459-3-quic_mdalam@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241206072057.1508459-3-quic_mdalam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: a9FhC8FiHZbaxbiI2Rw-QfPaMALvtbEc
X-Proofpoint-GUID: a9FhC8FiHZbaxbiI2Rw-QfPaMALvtbEc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=627 spamscore=0
 mlxscore=0 clxscore=1015 adultscore=0 phishscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412120172

On 6.12.2024 8:20 AM, Md Sadre Alam wrote:
> RNG hardware versions greater than 3.0 are Truly
> Random Number Generators (TRNG). In IPQ95xx RNG
> block is TRNG. Update the corresponding compatible
> property to ensure the hardware block is registered
> with the hw_random framework, which feeds the Linux
> entropy pool.

Line wrapping should be around 72 chars, this looks funny

Please change the commit title to 'update TRNG compatible', as
'enable' implies the functionality is not present as of current.

The latter part of the last sentence is misleading, as both
compatibles do the same thing in the driver. Instead, put emphasis
on the wrong compatible being used and the patch making sure the
hardware is described properly, without functional changes.

Same for patch 3

Konrad


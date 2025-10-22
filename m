Return-Path: <devicetree+bounces-229912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3695DBFD927
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:27:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD9C33B9ED5
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6012749D9;
	Wed, 22 Oct 2025 17:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Thifikf3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903DE285CAA
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761153600; cv=none; b=gjn/T6jafX/1kaS3vGSiCr8YRoDHvDeDkFPdfUCDe3HljwihO6MhclAztGj2MZxHGJqRpBf2Nb2qb1y+zTjjyxNZFQM/jlVL41/atQpsuSr4O1ogwjGZZx3hyORO4NqG1uxP3MVevix9rhRYM/aUBu/7hDBWM3gCPl8p+WbOBeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761153600; c=relaxed/simple;
	bh=p5nAGxvrAUP5cnUmvYosqNhypEEgsoHxE6IFoeIxcbM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a2p5zKzlxGsRzHvtdFpZUEXSGwRqeNclNiB5DC5WorUVCjqwRHtRMmvZLsgASNG7H+px3nJ94mt8aoE9kels9O04JjmneeRvu8t8aWkfkzWQuzy//STzS/heP4M1u8U+D9GWIavTPGrvyNCGwrbFnTkGNJaH3P8kptKP4d9ZBkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Thifikf3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MAiurW031059
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:19:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SUfkHbNbJjInMBUp59+fC5w+6y+9d0fh7BrDW/sPOT4=; b=Thifikf3LnJuWReu
	Oms09SqNSFn85KENiEgeyFlT7i/h4ffoZl8TTyenEG3/svCbOpuyoAcFS/Z7WjrC
	XkzihHx2j73/oxs/t229GgqgJvRtUsRk7dzOYPrdLcDm2WiwYGxrvNTynD26Mm00
	zOQp3mozMppiiz9p7Oxjy5gDk7fRMY2bra7mwUIoelplbkghJ/okSXMdvDirHh99
	+5bDJqa9yT4ZAkcSHuwVobSMpOSHUvei7uhwXTyxpLZpwyF/vUAXCAdK3+H04A08
	gS5yh0qG1CWv3uO+wcoPY5wMvdjZpR1wwV6dCC/Zks8brZoTLPJPudRK8RixwMbt
	AfHO4A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42kdajv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:19:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d6c3d10716so2258481cf.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:19:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761153596; x=1761758396;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SUfkHbNbJjInMBUp59+fC5w+6y+9d0fh7BrDW/sPOT4=;
        b=DVR372P3HKldUa0Pca36+8BQqwPIEwMykrIr7zhwDZ5AW4aev4s4syrmIZuq3Cqy4E
         CZ5gAY2uqEDlKN2HcGkzHYNn0z6yn+/BJ980DUmsRr85wR7kOiqnqKRfvRvEbSpC1yhF
         cbdFRxZ6NAL+XEL2YyOlACevwAoCWC7rf9UY2RChB7uslyVh+PzEsbpet4upbgdQVOm/
         GRb2Qq/Mo6wVdeHBJExbZ7r3fTxr2t+k4tbdrw9SkDuBsR9s1S8YJQPJmGlPUoXzqVLS
         i06RX3XW/NMOAYaiAhmJukhEVx8ET6i5QM4g6N/cA4z9FmhrgrZJvgADM5347NQbckbZ
         ugPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDC49C6KSbyNIWOHX6ecnBLTsPhFMc7OhUqSnne1Vf5YZ35bcPQ03pdxBJqa3RfiOcfKhhVZQfuOar@vger.kernel.org
X-Gm-Message-State: AOJu0YxOoR3ZwFNe5vVeub0hT4k5+lpLQK8PWNmpn0vQPexrLXGB5k39
	Lu8wfKNBJOL2atkktck5qmEeGMB1Ie4aJUpPTQJySwVK36C6GMnd/OMkURhxeK3Xo6WyncY1Nfq
	5alqTcvtnsx4J1FGK+s1hddRVQIAKuFXpQliZObdzS5XXrxMwFJmNMH99tKcCna7x
X-Gm-Gg: ASbGncsaGXAcTY6u2DvArplWWECKwpz+Cnv7TYH+HJqB/jRMwxJzVbgrotf33/xRBXH
	+YLcpUu9RLyFOMd08knRfnRgiKUNH0PBV3piT2aSUAW2Ip3+1r85YuwbMTnNUtz825dxUZkFHat
	de6r1lRaZoVrEXaqHT9rnem+n8/z8WdSeS5x91wJEi0CcbwiTFDimAFxzObwAYea1NiTOfN+l/+
	dSaKXlgsBpJKsGA2rR7Q6NCC1auFuUxaCC+XlMIdiV67zx+48OgV9G6sda+xE9LAUpCZKLD8qjZ
	y9nBqnwQnZE6ID94M+1xYz7Df8pWhD3QBj4vQ/LPd7r3l+jCdQp6lBYc+68DfyEby07yMPDzd/1
	yLlSp++pvRFq2AP/kCyL2ueANkRzUo7YE4DSoXf0cOUE5xq4XivjbNFip
X-Received: by 2002:ac8:7c49:0:b0:4b5:f521:30f7 with SMTP id d75a77b69052e-4ea116abda8mr69679931cf.4.1761153596313;
        Wed, 22 Oct 2025 10:19:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoDqiu6KupAbR/QDMwKjaiqJhOG1EKNGUxTwxB/cS9oa2UhBHiyfq+I4SkjnmLz6AmKkPWeQ==
X-Received: by 2002:ac8:7c49:0:b0:4b5:f521:30f7 with SMTP id d75a77b69052e-4ea116abda8mr69679481cf.4.1761153595715;
        Wed, 22 Oct 2025 10:19:55 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb526490sm1376226466b.65.2025.10.22.10.19.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 10:19:55 -0700 (PDT)
Message-ID: <6235f1f0-6ae7-43b5-a881-d5bb7d8bb8b4@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 19:19:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] dts: qcom: qcs615-ride: Enable ice ufs and emmc
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>
Cc: linux-arm-msm@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org
References: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
 <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-5-2a34d8d03c72@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-5-2a34d8d03c72@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ZWQ7-9nSoxXDY8wzorGEqrB0pNQFQ5Z6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX5mpg01D61nau
 L+Df15tldOTKTH+ZsE7YF0xV12TCwTbyF/Az8G5xSWr0eO39cewTfA+dUhVFNekXfzS9ykZyCMY
 /BUQFl7Ct0TTzZtZmNp4cpC+WFe+vVMgIz9MPLJqJm+5LcH+lRGCkksJkGRMn81AUXaOis8sOXQ
 fB62uOmBeffW2W8r0Yw4ry0SV4h/keyF7CY2rCsGf+so4Ey4Y0TRFBf/b4aF7TVrHKZS0ER4Amt
 2Fw0Ar2iGe1ZPrZNu3lHOo6FaphaGT6c5Y/X8vGfyIOJWkvDUTaN6gAk8OLXHa7mkxGOvmvioua
 sjxIqOUfDItLjz43BH0ryyPLerJ4w2FBGNDX19qSJeYDjypSbI38bGjsC8MEx4auNIHd9rxpfUb
 NYY5Bv7iFCAIw/WGAt0bbkNlsFyfMg==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f9123d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=67M-hd6uxsQcvR6J9HkA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: ZWQ7-9nSoxXDY8wzorGEqrB0pNQFQ5Z6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

On 10/9/25 8:18 AM, Abhinaba Rakshit wrote:
> Enable ICE UFS and eMMC for QCS615-ride platform.
> 
> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> ---

Is there a reason to disable them in the first place?

Konrad 


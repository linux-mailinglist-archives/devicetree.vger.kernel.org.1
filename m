Return-Path: <devicetree+bounces-250249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E59CE73A6
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 16:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94BC5300A358
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 15:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D40C030E0D6;
	Mon, 29 Dec 2025 15:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cPZoWL8o";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MvNTSr6w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D3A32A3D4
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767022723; cv=none; b=K8qbaPOr+Gqp+RPEa1mNpTzaKWLy/Sock1xMVLrQCi7vKcX2xk5T+ESKcJ4zYKudMndNbWLk+V5/Z3CLo+nHg2uUxTbX90S3ziSV7+i//7nPmnoE+mSru7J1uXYHuNIboEJMoxRdlwMTxtGOl8fFp+OzHHLLncychUk/QLw7agk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767022723; c=relaxed/simple;
	bh=hhAsUdZ/3ACUABNSiakxuLJ6XCHkUJcEly56O8oH52k=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=AQWNtIEKvgxX99aJyQjSWLw/HQa09o0zjNovKpSDGAeEew/3w2N40j663ciYJ0EHikRyo2GdraHXZUz/lPjvn8GQAO+rLwcZBhx6zsxFQfgq5vLTVVratpWGd/ruht7f9Xdon0ltPN50VcT7grVwEeChJnxIyV4lJr8ISbUrsuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cPZoWL8o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MvNTSr6w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BT9jZMo4132692
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:38:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Uy3wHErMPd36fiuL0KsO80Ayi3dwwWvSwO2XvtIqviM=; b=cPZoWL8omhgtb7I6
	5F9xj5D4cz+WqJfpgYOC0oLN12qU54pm15uPwPXqlQ2BTcr6Rlo+D2tDNrerYpY2
	s4JY4lty0GxaldoqDeIUOePY+8V7DDwpJWIInZiichHT7JaKYIF7A4qG7uoQcdTy
	wvkzzsuA9YaLiEQsuNTz1lk9pQepvY+8wMX7amBE2uMuetbimVH8G6xGM3igH3TV
	WYz1IjSQH/XTLwRuEcZlnYqJ5kI0fMq5XUyFvUv+y2dun//LZeK0FyXAuSSRQH2u
	iCVSxhidrLLaRVm1Aw9YPsbUVkcaY2PuJWbh0l/VW1O5GQHENo1tvZpbd1pardjY
	3fgXzg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba71wvq9s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 15:38:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee07f794fcso36510991cf.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 07:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767022718; x=1767627518; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Uy3wHErMPd36fiuL0KsO80Ayi3dwwWvSwO2XvtIqviM=;
        b=MvNTSr6wShmq+wpXE2bhBRcMPmp1wkqFj67ifn9I9JLYZjM9pkeCbq8386e0IuK3X7
         WczuFVD1GNRXgFU3dlZUXaDGZ3Agb940OAn8mH7wKBd6zWJQfCBzG9Tpk101gxvQn32k
         tuhTBtrpO4FdOiqIiwKTgvpFi7hlF5bZvQUXW5JujSwpih5fSfz2ofOHccukLRs2c/X4
         CmnYWccGgrtJO0XREkul5JyYOqhWRCIZ3rBWpJcFmbJ9Zaj53dyBtCrAzPoaa1ovQ3Wx
         EbKvLRUse2S32ClYlfXzD1R4dBbP+FSrOu87R0PcW4r+91yaocpgh9S16a3w1frey/OQ
         SYVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767022718; x=1767627518;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uy3wHErMPd36fiuL0KsO80Ayi3dwwWvSwO2XvtIqviM=;
        b=JR5v30OMTrbiIRiaQ+iVVINUiwnBjmTM8XUJlNUjD7vwaIRZON6S7se0RgiZc4gVED
         ICXAMcwAFBEM/55EI/StLDS02TjXZ72L/JkB11OquZkCl7XL11/oAK834fDu7mluLmYU
         R1PEURP5khdpCGw7lcs5cPMMXEZVO7U6zs8FRWJbRuk+b1PADzcEyvmgrWGWbtINj3b3
         GNlw5vM+Q+GV4YozniK0/SJnEC4o7HWqLTC0C5NfULiisnBC2yZpeK2dswpEM4f9b7Zw
         GZhUdw8MTp2keuwiniq43Qg7p3Z/IUw9QqWNaQum4KZRbfHuOqM79RnCkF59B/0o2I2f
         1sAw==
X-Forwarded-Encrypted: i=1; AJvYcCXFiDtCP2g59Lc5Avss1wUXCLwHsvA1oSCfo2/ryUd9zwEXrpXLIRtBQu+0XBBf0aqrB17jqsR+Bv91@vger.kernel.org
X-Gm-Message-State: AOJu0YywOOhBaRVKKKDneXc3zWbVwIJsIl5KsscqA9VFSZkKOH7Ax78o
	/QmgMR1zNaPJx5jxow9ty+RwdGBkDRHlzqqUblsGueczOcDBH6ltAQqaLenKazuOYnke3HK3arj
	fuRUM9lhx4/PsyDfkRJCF9tnWbuAP1hYJvJRw1/OaHcnNcD04NW3wAqywE2r9mWSVfkjNRkQ9
X-Gm-Gg: AY/fxX5GTAPBRcPT2wjlNNeLQA0aEAKjs5+jrNQBbUoxB6YfTwlI4AesGnAwYQLkCe1
	v19OTq6RxUg2lq3x+BY9by25mpDrxtoeHxWL1SX2elZWHFBCIboj6ziRpdqVaSG8puHFj+zIaox
	F+IjlmQFSkvqvbCs0CvLd5h9UXEDze+MURnp+PnYzO0bbvrur/5IqdjQQmtoXfDo5Tqgvx2c8Fz
	goy5ZgA8TrHDxOI1LGRLteEzyq/5oBTbG83yuIgPy9eU86qdCMfMTQ51S4WJDLBpm+/L5NBJsAf
	2WJFJsKh/sxcd4ezxVL+aMk0WtlIkyCC/xiW7N4haPPK9qUenlFozueDozIhnVhk0R1iykl/2K4
	Cx63Ktr1HI3l9W8BBpilNf9TrcA1QngfYI2cEUluju8cOCnUV7By6vwwsM3m6Nx3ZIA==
X-Received: by 2002:ac8:5a81:0:b0:4f0:299b:c785 with SMTP id d75a77b69052e-4f4abe04451mr316313971cf.11.1767022717901;
        Mon, 29 Dec 2025 07:38:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESSBCC/bjtrBlY+h5w2iX8YZY039H99iVEdZQm7o0476WqOh3Y2NKmcnX6714mpSpe5csxPg==
X-Received: by 2002:ac8:5a81:0:b0:4f0:299b:c785 with SMTP id d75a77b69052e-4f4abe04451mr316313661cf.11.1767022717486;
        Mon, 29 Dec 2025 07:38:37 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9159ac90sm32058715a12.29.2025.12.29.07.38.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 07:38:36 -0800 (PST)
Message-ID: <39fd6151-7b64-4e39-9b97-3376b6b62b61@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 16:38:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: remoteproc: qcom,adsp: Allow cx-supply on
 qcom,sdm845-slpi-pas
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251229152658.284199-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251229152658.284199-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDE0MyBTYWx0ZWRfX6YZz2mgdqUVD
 9gEltNnbUs2ilIc04mypqfvIu8XZUc6PExRu2vPb9hopd50RHrOmrzDZpt2OMD658nLi5OwWFH2
 p/v4wjf8jFkK4GKi/VklvhzFuWWnMaV5dhJvDCx4enmP/hNiDjM73UZBFt1cZelIsKt1ghsfh6b
 kXjTENzT+7gab/RcNw5D0qYAno48TAjt/l/3TeK9MzDEhC9s5NHjf3AIlWcg70JUy3qxLQQJDLB
 XKuhN7pnhUBj7CyfbLmfxdvZwGymtKrKm97fdNXY2RyREXdhITRb61kFF0kohzGT1flI8dz8h+h
 S9N7yQzh3h2amhdj4toMPYlZQwmm0Qz9eMtgHTmXiYGQYpgW9WlfM4ixPs+SJXI5wEh1tJnGpO/
 KtT4TYRcFyh4bTr5TQabL8fNVxGLlC//m3mxShaHm8XJ9ZJu6dlXvF9JojpnBu4vFjKDiusc70P
 FWD+iPSZydpBA42af2g==
X-Proofpoint-ORIG-GUID: rrPjjTS2OHVNFwNWDo1_WFWvUMi5qS3E
X-Proofpoint-GUID: rrPjjTS2OHVNFwNWDo1_WFWvUMi5qS3E
X-Authority-Analysis: v=2.4 cv=CK4nnBrD c=1 sm=1 tr=0 ts=6952a07e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=y4MapCRUEyX4IQXlyOEA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_05,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290143

On 12/29/25 4:26 PM, Krzysztof Kozlowski wrote:
> One SDM845 board uses cx-supply, which is not allowed by the bindings,
> as reported by dtbs_check:
> 
>   sdm845-samsung-starqltechn.dtb: remoteproc@5c00000 (qcom,sdm845-slpi-pas): Unevaluated properties are not allowed ('cx-supply' was unexpected)
> 
> The SDM845 SLPI binding already allows lcx and lmx domains, thus the
> cx-supply seems like a fake name for something else, e.g. some
> enable pin.  The qcom_q6v5_pas.c driver parses cx-supply, so it is an
> established ABI, therefore document it for this device only.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

fyi https://lore.kernel.org/linux-arm-msm/CABTCjFBQOq1pmdou_17ZOV3MgTxD_2byAY4RitqPVN5FYdRuJg@mail.gmail.com/

but this one seems to be more tightened, that's preferred

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad



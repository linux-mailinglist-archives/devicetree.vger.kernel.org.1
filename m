Return-Path: <devicetree+bounces-174238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 614C2AAC767
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 16:05:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 077051BA502E
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 14:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F6F28137F;
	Tue,  6 May 2025 14:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VEmeUbNf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84349278745
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 14:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746540338; cv=none; b=k7wQQBeLrqA6EweFw+smvNuhYwlbwwWd7oYxpnfzq6cvZ3ipb206wAINhBdvsQZjiSgq7VSzZaQ+abzoHgR7mzZ9bIfs7FzkkXWL3YDNkoRlMJDCDGOhR6RfF25+qGZC8HuE5pombaLId72dPBDkGWs8/XVb+YkccYrfm1GtUcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746540338; c=relaxed/simple;
	bh=z+YYjJdtpjDJcpCz9atFWbn4uZAT4qMkpTew9VCqKPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XBTzxcF7/UAVmAZAnQJ+At+yH7dsZJ+5eykKfp2Phl1SfrIqH8/wRY2Ut32BMaLNL1evswlmrTQpClU6SEjr09T/1EFgIyIsDvQPixu4wCIuuv/nksbtnS17W/otKjFbtVbPDxuBeX3Yun8cKWFXHGgBx5EsO0Eo29KSeAEuV/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VEmeUbNf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5468L2Ab011177
	for <devicetree@vger.kernel.org>; Tue, 6 May 2025 14:05:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Nqo89KoPeU/jHGAvsQlxSAm7hqWIb/0/DUR64k0qV7U=; b=VEmeUbNfO+EEM0vd
	5Ex5sKaW4+wl2BcTZxn9ZN/vsrYm0rOW+V3fDKMsKnfkp0IKgMQ0tS3oi/tQ2STv
	FTnrRpprXFw7quccvZ47lpz6iovDhfUrBAkB1hKzsztMGsyicJidkd6ThY7Qjei5
	y774KtEPT3+BP9GvSnTYg7pWND7u7H7EuQdNIaaVrpw8MIDqNBoKxDBJgmqdOgOU
	M7QzAitxM70lJlFlLAXjUkKwSIrTWELWD/273nkF5rM16Yv1TwpSocJuXhLVHMjt
	eADHfwcoD00as6/1SVMo+K3gQ1zG6i1hBfOkQNyQaQODHCOuazw8IQeQAtA2DMIC
	Yd6AHQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46f5tbaguq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 May 2025 14:05:34 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22e540fa2d0so2778155ad.1
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 07:05:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746540333; x=1747145133;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nqo89KoPeU/jHGAvsQlxSAm7hqWIb/0/DUR64k0qV7U=;
        b=qqkIA8Mckhd5Mf6HN2QRcom5aTvvsSzc1E0pYQKJ3J/XsYPz1ZGk+cNWbQxGLEaL1f
         HpNoP4cZ+Oi8+SGgEh14/e++qWNit4MUt0qeF5OTo81x5aqpO1XiLUsEnWSLUYXo7AqQ
         7IHBFCGW4+Gg1TKXi85hkVR47/wDen8Meg+xXSV11ucLcfzTFAKtoOoQBCb/egZ88lug
         /P7a+8FIvdNpZkYXCr/ibN5YtD6eol+OV012YtOtjdINVrDTVNad1Lnz2HUlzHZtzLAm
         VJIj2GBNv3TzU46DDuQakiTsfMCWhKGcVjWWWAWijY18M+FuAZOD+ZX2yQI7zWMf0FDs
         KCvw==
X-Forwarded-Encrypted: i=1; AJvYcCUE6i9JvBdAYxNyT+svoB8OoWYO4SUhNs3zhvHkUstJ41nbaQVw+DeILp1dBSI1gY12W1CfZQMAOrcX@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn75w7owYOtYdmDk6g0Dfh5sI5Cwvk9drwc2n5XJtwidYMApFT
	WKtJJlgidqBSjjVISx/ifkYCiNe8OrdrJT0SUv0CBTy7oRos4aLCpz6oJmlV7K/1J5T6HX8Kdgp
	C5ROEUivkobKajGRkmeDsoX62Oz0VcvxD3ZLt6Lm79dfa9ZHmd/vkSTpUUf41
X-Gm-Gg: ASbGncuaa+iLZtAD0HjEY1fszM8/Icvtl7Bz2LqvJfdT2hh5cXV/i1skVODcqXMM3OW
	AwaNbAs4mtpkJpmK1sFj2FlfsAnbrXZWrB/fBXx6v3TTJlwoeo8yyPvlpwnDh8PXBgtR4HUQ7qW
	lXSdlii/Q2pyyerdRRImjnZAVeSAQyoKB2tl/Ulxtb23Ye0pBH/PH1ecUZu9tfUcT9LTcYTEbbo
	Yh/mw+TTL+SW7zR9+/RVIcYQiGgnRNOIyNBCo6k1wwn5ZHwgyZ+N7668pXqPHvLRFfQJXunX5rT
	FT6UQYSubEpZwTSjrzUTv9xKEdfXZdfw0NgSiIxwgM7LWP0eINGH
X-Received: by 2002:a17:902:d0ca:b0:22e:421b:49a9 with SMTP id d9443c01a7336-22e421b49f3mr22608065ad.2.1746540332935;
        Tue, 06 May 2025 07:05:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaPU7TnNNrMU+sFCQmddsKzkRJQkm7RaeBhQ42pJxberjeqn1t0GJ/J7mR3858IiblZb7Xcg==
X-Received: by 2002:a17:902:d0ca:b0:22e:421b:49a9 with SMTP id d9443c01a7336-22e421b49f3mr22607785ad.2.1746540332584;
        Tue, 06 May 2025 07:05:32 -0700 (PDT)
Received: from [192.168.1.3] ([122.164.81.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74058dc768dsm8902906b3a.72.2025.05.06.07.05.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 07:05:31 -0700 (PDT)
Message-ID: <0b65ea70-561e-443d-983b-6d3db31d1d48@oss.qualcomm.com>
Date: Tue, 6 May 2025 19:35:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ipq6018: drop standalone 'smem' node
Content-Language: en-US
To: Gabor Juhos <j4g8y7@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250506-ipq6018-drop-smem-v1-1-af99d177be2f@gmail.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20250506-ipq6018-drop-smem-v1-1-af99d177be2f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: wHXED59bS2QSUsPE9A7OsnPQ-90WEI0P
X-Proofpoint-GUID: wHXED59bS2QSUsPE9A7OsnPQ-90WEI0P
X-Authority-Analysis: v=2.4 cv=doXbC0g4 c=1 sm=1 tr=0 ts=681a172e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=IecdNnqt5cXURf/0i7SmSw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=jcYIDdlXSa86HvzLazoA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDEzNiBTYWx0ZWRfX61VxfNaghf2a
 5wPK8KBk7H0WspvDAHN5WLfLghXYF6qpRa8MVN6U1tmnNuhtQH5kPSG1sIWIdApoyiLTM+CLA++
 lb8iuKIxEyoqqVetq+fVcXq7foqhx94vuTBFNRZPop4XrcLc7awT7R//4uOywJ8Vork7g0Zf0+q
 6jLjUlz0lnYXZokIpnBQ2k+HvdUkq2N6Kw0S2EcCNXnBLj/cnkHksfFloF0pHndNODRLx3yblX5
 7QHExBjAFsr3vumUbzDW1LZtEcJ4fPGFalt/sy50WWFGrhS5ZQzMZeOn5u/CjDwTW1hyJty/HQK
 ggCn6Q/Uqi6haHkYdK2frj58OEQyoARQLD62YLM87z/mweHri5AI2svLtn6KCWYCk3h8Ewhdpwv
 8VrQCheGOWaQ3aDsz9zCP+pWoGXnxYWEYjN4vVaKKJDX9APKJVEBqkNA+Tal4yBYzziH/YQJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_06,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0 phishscore=0
 mlxlogscore=677 impostorscore=0 clxscore=1015 mlxscore=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505060136


On 5/6/2025 7:07 PM, Gabor Juhos wrote:
> Since commit b5af64fceb04 ("soc: qcom: smem: Support reserved-memory
> description") the SMEM device can be instantiated directly from a
> reserved-memory node.
>
> The 'smem' node is defined in this way for each modern IPQ SoCs except for
> IPQ6018. In order to make it inline with the others, move the 'compatible'
> and the 'hwlock' properties into the respective reserved-memory node, and
> drop the standalone 'smem' node.
>
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
> ---

Reviewed-by: Kathiravan Thirumoorthy 
<kathiravan.thirumoorthy@oss.qualcomm.com>



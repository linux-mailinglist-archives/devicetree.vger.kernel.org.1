Return-Path: <devicetree+bounces-224734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B9ABC756E
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 06:01:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FE2B1896841
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 04:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EC4A238175;
	Thu,  9 Oct 2025 04:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JfH1KhJz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001B61E1E16
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 04:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759982512; cv=none; b=bQVj19A+pEUxeCciZ/XWU2DRo4HS7rYMO79dMrVVqmAmhNOiQC7KewBgZphanbsCk/yZQ5Zg1e9XmR4mTdb1Mzz0B7TXugLT9fq33wat08DQUPRrOsrUjc4aQME2PAhmdlBS1iURocUziDlZhxqSf2nEYIxYOMW+CdMkPd4o1Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759982512; c=relaxed/simple;
	bh=a43a/WOJy8uZXXez1tGKF56g5QwNfcVFfqzFknkXgos=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o3MUkFrfhRJfpYVz0agFBBVuL7iqM5pv1o+suVQcQatHVq72Nsw7TnMJLBI7dhcI/T9Zg/I0qTKJ02hKaAu/mei1ESiPonitIxRCSCzZ33tjPq2dPsyEjI2bHfgOwRXn4CbHgY5kMBYJaGKulP2YsX+z9gYfm98vAcVMSRfcOSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JfH1KhJz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5HDk002401
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 04:01:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xMzD/1x6I5Sm3TA9hm1nmCUR2NzvzpGDVrWP5NKJhvE=; b=JfH1KhJzxJhL5G1g
	Dui3e2YHuM64f9HyO0f8acVpeOmZzPIWh/rUHLjVw7x8zF8J0d+2eFPXGs7X80g7
	KOOFPeuxYNP6aIQbrcVHw/l2RoxFU1qlAsLo58ac5qtqLHuVmhgetSkIvg4cNHIN
	bFqBX3L/AliwnVNFrkCTEYqhKD5WJYTMNxGj07zUVjGqnE28zI9hDaJ6m6jxE50d
	YzOWb5t3N+yiBUGDJSMBDDqetPl3tww9TCwLLLVGVxMd2Z+rKB6n1FzA5H2nM8b5
	YllpCtBGtiCN4IbSJWNxxZdeIo2xedNkb1BExmRLMVpsN4LNaPD6BTE2/W/6DIkQ
	0cCqTQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4m1dnu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 04:01:50 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7811e063dceso689210b3a.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 21:01:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759982509; x=1760587309;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xMzD/1x6I5Sm3TA9hm1nmCUR2NzvzpGDVrWP5NKJhvE=;
        b=meQraqpMj4DrnoiO9VxqUIlJX/DW7KdmCKCu5jq6qY3EyDKh3xlvoxJWYEu5F3Mg1u
         cyIwsd4TzKMUvyrKWCXhuZ7Wob/AbltCk6eixAneORuwOphsRoZwolNNXIhqeHT2qIHc
         /8uzcdtMSNODrZ/RcdoreYcQ7siEVCO8fkUA0tuCreMTChuAHKfzrPP+FMRB4IBZn8oN
         gEb3o7ZhjrWFAitdK+IY+4VpUL68Q2w5nqkoetH47HsgsYE2+oLrQv9IwANckGNFUlH7
         44XxTcJVq4/kEcy09REyPT+mS0Gx/kJ0+bTzEnxPfga9B0itB6+8KilPDQCjdoZMWF1b
         miZw==
X-Forwarded-Encrypted: i=1; AJvYcCWqCAVmvL+WcqnJKqgG4eyvZfuKRPbX5W3EYoEvUq1gVZ1dLXa2Ki1vHxJRUMgf7pN2/FyvVnj6Jpbq@vger.kernel.org
X-Gm-Message-State: AOJu0YztPXYRhsyMycl/LDS6c5YTeOb/L3x9KXjjiCqcImXsjnla7i3q
	pbJSbovGshQu7R4DttyNDhx84zjKpLjsH3PUoDWzGSijg6HmlLeVqgGAEQe76axAvoUjVg3IpfP
	pINsp66mGrB9noSEtGRBcM0eXCmtCJZYA8tK5EgqNqqGiqI3T+sCT5GMnOu+idS31
X-Gm-Gg: ASbGnct1uvo8bm15I9lB9kxRwwdAY0kCyHF7CDy+c1rN2wotINmUZF+TiltUNFQc0Wi
	QX8u2he1xGsbAxhFZDpxlDmobO+pHwIYqxEHTgz/lywalHKwy8aRslChfspqmlz4e1szpT7sQcY
	pobrldK3FcTFe5atF/G6O57F3Z21aKmI4sL8OmLs5Aa4Q67DUcXyqoyWVecW0tiIJEQwhaOIvxo
	oBweyKGZDMDyGIasJYmQkGUFiXWxdO6XISRXwIONG6fZHilO53+eYYb5xg++deV+iLvEFTbemkM
	A895mJsulMap07o55DFpMQJXnCEtdKoGU4Z+5+a6oEKMHJaNlr7jutmOSwniiAb+1sN7v0WQqA+
	0OrpBGDvhEcDUS+AKSamCum9w43fj0gM=
X-Received: by 2002:a05:6a00:2e03:b0:781:e9c:2178 with SMTP id d2e1a72fcca58-79387c1ace6mr7086588b3a.31.1759982508942;
        Wed, 08 Oct 2025 21:01:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiVFGjSsBPmIHkzRmXqGgO1LptcNCD4ejfPklbEg0Tc6AH+hGC0RQoErXtmfjEstoRjisSow==
X-Received: by 2002:a05:6a00:2e03:b0:781:e9c:2178 with SMTP id d2e1a72fcca58-79387c1ace6mr7086543b3a.31.1759982508363;
        Wed, 08 Oct 2025 21:01:48 -0700 (PDT)
Received: from [10.133.33.54] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794e22ab5absm1322883b3a.64.2025.10.08.21.01.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 21:01:47 -0700 (PDT)
Message-ID: <93491a16-0585-4c24-8ba5-0e4222efb5da@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 12:01:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] ASoC: dt-bindings: qcom,sm8250: Add QCS615 sound
 card
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com
References: <20251009023341.27277-1-le.qi@oss.qualcomm.com>
 <20251009023341.27277-2-le.qi@oss.qualcomm.com>
 <c469ad4b-9dc0-4ded-9736-1856e44d21e3@kernel.org>
Content-Language: en-US
From: Le Qi <le.qi@oss.qualcomm.com>
In-Reply-To: <c469ad4b-9dc0-4ded-9736-1856e44d21e3@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX/yUnB/SSw2IT
 XVUIR5NxkYT1JY4ZxncvN7MHSm8p1jw1O7u02NMyPajuDdOvTXIGjQ8NDE7u9aoXNQGTV7CF3ZU
 nL5y8k0AoudoRMdp2qxUIsf6BEuXdu8TuzrnS6Nn7YEe8EHOk1DuXAGjsohzJdcFdKHknKiGlQB
 IUyUyJCNIYwv5W8Iz5yMeL4HplAf20OgZvc/uWKch8QAJDowqnJuLMXLAzN8jO8Gi0qQ9smkLb4
 rmqzdy0knSq4tucmCgPMPNQCjQ4oGXubuJdUdwGOmcZOIiVrlE94b3w+iu+rJ+MU7GkxOG8TKvU
 ru/LNLzubGqsSgI7QAXONk7m9E0RVjEWNhZmNx0LwJZKdp5Aywo9VVSVBnJqQ9+1ekQzGtc1lTy
 MzHxgYOgaWdkcCtgx9u95aBrYv6j8w==
X-Authority-Analysis: v=2.4 cv=B6G0EetM c=1 sm=1 tr=0 ts=68e733ae cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=uooNEMFFsLr74DcxLqcA:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=ZXulRonScM0A:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: ci1iV59PFhqETwzm8GCRoJWtk0tEPZCN
X-Proofpoint-ORIG-GUID: ci1iV59PFhqETwzm8GCRoJWtk0tEPZCN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/2025 10:47 AM, Krzysztof Kozlowski wrote:
> On 09/10/2025 11:33, leqi wrote:
>> Add bindings for QCS615 sound card, which looks fully
>> compatible with existing SM8250.
>>
>> Signed-off-by: leqi <le.qi@oss.qualcomm.com>
> 
> 
> Just clarifying: is "leqi" your full legal name in latin
> transliteration? It just looks a bit like login name, but of course that
> might be just my western assumptions talking.
> 
> Best regards,
> Krzysztof

Yes "leqi" is my full legal name in latin transliteration.

-- 
Thx and BRs,
leqi


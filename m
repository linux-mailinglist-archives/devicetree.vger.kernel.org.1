Return-Path: <devicetree+bounces-242362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5FAC898EF
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:38:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1ECB03B366B
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8948324B28;
	Wed, 26 Nov 2025 11:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WORbRial";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BNMMkg5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C553246F4
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 11:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764157129; cv=none; b=kUuzjyG9RzGr0OR6Lp+ogOFN9bELWtsaKyBZSv8sxkkCcHG9UO8NcBjPc78qHtqcKekZHT5DIV/91rHkePnoAp4exb0oSm7qmmUdJd11scClJeoGumyZXhGsSCAgiaPacjKC76w9uRPZIWbLWp0qRH1amFqxPQpFqPiHvgcnLXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764157129; c=relaxed/simple;
	bh=uetH1gpQCMGCArNEY+4ysespicgo0/ixJStFpGQYZds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OLLQqWJrnJDSvCwP7ZNGpy+Ay86s5HyiwLMOEQze79AZ3waZXkG/Zh6hV+6/M00km0i4bebW6rNX0c3+QPfNodxlDmAAeXrKY0EgHva8nhS9UjTNhVw86+uA26LQ8Ly5gTN7W3RAi+dvHcrod+5MjIyUEaCw11ebIK7MM5+Wn3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WORbRial; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BNMMkg5s; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AQ6v06h1457111
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 11:38:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cMZ8nP22oqBJZ2lViVsuNFVcop8rQmSYUY6cSSx6MyM=; b=WORbRialXIZdcz8Z
	yz1HjchUH9I43W8/w702FxGXAJLYv6Tn8lK3CjrqRKNGYWlna8xzVSXz/KRP+ORr
	FgohVxnaGiviCgdrdZiXx0dfm2BQLI+UbmK4xuZOryk4bM10x2mrW9yWBnBgL4H3
	k/jeqGH/zyfo/iCbwtsL5EnZW7RAy33xuvNrfhSSlahzd54pvQH9rZRhW/Nggpkp
	fZOI2YWPrkMCqYOVS84m9dWEK4aeIA2CwBgf5n8DUs5Fn9OfNH/TY19SHKaU/fNz
	JQH2IRB9u8u8ZejOWBFtqrN8IjDioxAPtCS4JmMbn0eFe4zrlwvGGXJMfseBZutk
	QWbcGQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anvqvgttt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 11:38:42 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34385d7c4a7so500488a91.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 03:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764157121; x=1764761921; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cMZ8nP22oqBJZ2lViVsuNFVcop8rQmSYUY6cSSx6MyM=;
        b=BNMMkg5spKjdpryTsgog2MjjCdJqJPNCw50qOxC+GTpbWHkWK75Fn7fiEsTKgde3GB
         WdvkvcKiRkooeTSyLDuPNrUW9VOh8qYZocSG2bZOPDmU22ASZpRR2VA/uXwz9+PT7Lf3
         FWg9R5ltB1bdJkU3HhLnMmu/JcwkgaSOXmp7OTbP8iPwNG0eLGU+ISveE83kqyqZSd8O
         UKAK6oAOkmbYP2vfaluaN1g9Nc/k0bEwXmErFhgbyqFXD+wYMqvBvERtU3GrKNsP+3g9
         XT/x0NAJcoRni0tn2q8r1mGcyJjRBO/r91LB1Vs+/qKbbjakCeMWtWXLeB48nnuUPqEa
         PH6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764157121; x=1764761921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cMZ8nP22oqBJZ2lViVsuNFVcop8rQmSYUY6cSSx6MyM=;
        b=c9ZlCUGQhM6ndd0XUDWLbwJk4rrI5xQ5qnf1oHv2BoC4JWmoL+xGclNaBRXnzL6Hjg
         fqzSHDIdKnc+tjbZqah/g50Yt9/Ctu+KKOCN9aVAMQVS7m7qsHpr6JtqRv3VeELzNqWW
         6a6n5C6vozzxpACSEL/tYmVOGOO4aX5ssKq/j92n2ANaKw0AcwlVBEghYR2JjlgeQrhu
         RImWrod6ax01rPpIXO9aEd8cC8jp6ToHUMKqNCFusSzlQRKpeDnaxxUrmQ9MpKP+x9zj
         Bq2DpqFsxTX/zUGMQPf2UrVpiSE9TkS5bJ12pkbMCnGEAGiPXfeGo9AUk0/K6brtxp6e
         k1uQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/U8y3xolZw13vjg8zBaSQSiBN7oDBnxTyQPnPT5jADEyvwqSmg5Yev3eCF1hEaLsX+EW4CQ8zrDW6@vger.kernel.org
X-Gm-Message-State: AOJu0YxpgwFxxqHM06Q6dvoOOMtG863SuZmtT08+/LxFT9AOA3gq9NAN
	igL0FF7h2YNCNHigmI4Mv273MVU3VJY/uJdlOKGSYFe+/H9T3q0gEI/TvtMx1HfLtqLP/5hM5cz
	lXufav4L6Std+huuY9zEyhmFuxfYcokNZ+TXV5CGLuJkDZ7szK0bGZ/JfM89QcLwL
X-Gm-Gg: ASbGnctHwFPMgwF77nnOD5YXwYwRMUVpnprTGdUZuJWQteEto2nCNL8cgnjWtcdjNF7
	qFnzqRZVSBtLZyDVDD93PwzQfdE4Ay5ONWqmCk7jK5T+nSmyubOE7AG/XJwOPO9tBCuL36XiwEc
	vhCclnal05lDRPfqDU2/UanuU0zvCyM4m3nKrnk9rxQOrQtspRGmKXx1O33CsbgZOMK3yQhFSlJ
	6lNyXKjriV1U8gX60/dlzhKNjFYoqVt3iv7ICncTvRr0sfCA0h2/uU3d4uIf3cXbx5ERIInzmox
	rYmx/OYyJGamqkBzI+i0Qp0shSUHy7pA2XHMrFwEKlsIZH19Ga7lD8Y+DZMO6BZSU/odZdCgrwE
	uaSJyMkwSyj9ELUnXFoU20p4Fb3EmMq8fWaS70WB9W0SSJeZyV2NMmRtPHe1bqyrUSn0ibKLyEi
	NyHjOiahqLanvS1FgdKFqYMFsXdbIi
X-Received: by 2002:a17:90b:2d4d:b0:340:9d78:59 with SMTP id 98e67ed59e1d1-3472983a0a1mr22911517a91.3.1764157121311;
        Wed, 26 Nov 2025 03:38:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHEBT+pTARfErEXVdl1abES4By5ZJEcqIH74/QYD4cbt7jTWebv+5raGl664Wuvz/agcEfkOw==
X-Received: by 2002:a17:90b:2d4d:b0:340:9d78:59 with SMTP id 98e67ed59e1d1-3472983a0a1mr22911487a91.3.1764157120852;
        Wed, 26 Nov 2025 03:38:40 -0800 (PST)
Received: from [10.190.200.209] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3476a7a6105sm2319202a91.10.2025.11.26.03.38.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 03:38:40 -0800 (PST)
Message-ID: <7158bde2-bf70-4a2d-b19f-fcc24cc37d28@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 17:08:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] soc: qcom: llcc: Fix usecase id macro alignment
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
 <20251125-glymur_llcc_enablement-v2-2-75a10be51d74@oss.qualcomm.com>
 <20251126-gigantic-dinosaur-of-bloom-aca95f@kuoka>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <20251126-gigantic-dinosaur-of-bloom-aca95f@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDA5NSBTYWx0ZWRfXxmvj2V7mP91A
 0MM1aapVuKaPgBc0CxwxNY7yANUV5Z0Xf4Cm/gbEXnOMAiSWWDt5Xb1fB6hsN844a0WA9YbisYB
 NWBX7hfmgqKmubUkOjLQJ2H5yPDZuTesnqpYNnIl3kNtl3PBLBf2Jg4+wP7KbhD6FpQTajyrAJa
 GZE54WGj5VkKovMMG+TTTOX3moLlS7c38XVWcGs8oshXh4zqXmS9ItH0aeWLIaTK4ngnonQqKE7
 hFflu56x0LAbQ1sOoG8JbmbYqI8CzzvcX5gNMz5ETOFiQJkHucGkEugh6rcyKz87CV22MsMoyCW
 JEatjtU3yqizjP+bbtSqoO5nJbgUM30s0XJgDHmPjqARKBKf8AcIJOjV2oudouLB7+HHNEbFbbV
 lRrLFJ+ru4iYjr6EayJTmSgE9b9sMQ==
X-Proofpoint-GUID: XLq31faCrdOOYmbmjAjaZdncJlmYqvFS
X-Proofpoint-ORIG-GUID: XLq31faCrdOOYmbmjAjaZdncJlmYqvFS
X-Authority-Analysis: v=2.4 cv=feugCkQF c=1 sm=1 tr=0 ts=6926e6c2 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=JLVAI_iM7606iRLUKQwA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511260095

On 11/26/2025 2:29 PM, Krzysztof Kozlowski wrote:
> On Tue, Nov 25, 2025 at 02:46:23PM +0530, Pankaj Patil wrote:
>> Aligned macro values for usecase id along the column length
>> -#define LLCC_CAMOFE	 71
>> -#define LLCC_CAMRTIP	 72
>> -#define LLCC_CAMSRTIP	 73
>> -#define LLCC_CAMRTRF	 74
>> -#define LLCC_CAMSRTRF	 75
>> -#define LLCC_VIDEO_APV	 83
>> -#define LLCC_COMPUTE1	 87
>> -#define LLCC_CPUSS_OPP	 88
>> -#define LLCC_CPUSSMPAM	 89
>> -#define LLCC_CAM_IPE_STROV	 92
>> -#define LLCC_CAM_OFE_STROV	 93
>> -#define LLCC_CPUSS_HEU	 94
>> -#define LLCC_MDM_PNG_FIXED	 100
>> +#define LLCC_CPUSS         1
>> +#define LLCC_VIDSC0        2
>> +#define LLCC_VIDSC1        3
>> +#define LLCC_ROTATOR       4
>> +#define LLCC_VOICE         5
> This does not look right - you still have here spaces, so nothing fixed.
>
> I don't think this change is useful. You replaced one poor alignment
> into another poor alignment, so IMO better not to touch this at all.
>
> Best regards,
> Krzysztof
>
Sure, Will drop this patch in next revision



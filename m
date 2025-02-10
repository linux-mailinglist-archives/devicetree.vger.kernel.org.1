Return-Path: <devicetree+bounces-144833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBFBA2F674
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5765C1883696
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8624C25B693;
	Mon, 10 Feb 2025 18:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rq7q2rZT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C625B25B672
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739210910; cv=none; b=lKNGvHXcwhRj6NhCUs6iYV4L9aGEk9xyG7F4hZkTu7fVEHcxjoe5arljM0b+YdMJlaeb63jMPGoHnM+TlO9Y8Kn/hSuNLY/32xlvM5bSNGLbyW6l/GtG2z4Y+Og9aFCHcMk0synUqMZYCVVKnTapqf1TpWbO/stvGDUcA73ufms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739210910; c=relaxed/simple;
	bh=OizxFAd8Ml7FWVe9/a0dRnpl/BRHIHyYnN/mYC7JJRg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ermlJ07NDta8hJgC0ooBJV+vCPjEqNVLanUGOU8CN7EIFOaLr1YNBKBJxlyyMivU2GmgplkhZaPzNY6KZQp4IpFkD+GhPqkaLDPPiUXjsP9aNG97LdXe2pbHKUG1BeYZkB6XPCG6mbndKirOF3sNMXgW8TN1WL7ICXTPUIlFf/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rq7q2rZT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51AHUrwJ006164
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aVEc4MQ6CdO3X005rNysHQSMC6MxwNXf4vRrEItGde0=; b=Rq7q2rZT7t7BdYko
	JuUD8+Sw+Aqyry2pdzAPeAWj5QkByFsGln77OP1g7dXHuBO43xUKzZnoj+yNEXC2
	XMoKO9sJDjclozaeZVqP0qdPIWljYQF5WGTGa3NvnxvV/brigMJFaoOITFSNaZx7
	K/0J7037cxceIyWtphGFNVe83nQcYgOhlXgBplA9rqYsq9RooCYXrxW1e5mCIpIl
	EdS0jRD0pWhOjO8rbcZ/AXJ4jooTUHLJ1TBV3jN7ZewekY7DSVzBXu58ioyMmI7B
	MlSO0UGzhDhIbY4xnhCmXCwK3q5bWN6nrdOU+kIETM1zxM/lCgoeYeFrhbUqb5Xl
	oWOG8Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qe5msj47-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:08:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4719173db00so2538511cf.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:08:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739210907; x=1739815707;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aVEc4MQ6CdO3X005rNysHQSMC6MxwNXf4vRrEItGde0=;
        b=eSp7S6IFJ6+B2MkwZ7/WxHVjKh+WPtl5XY/J+r5g62W2X2eQYTzh7wDQZTM+LKpgaE
         Izfd7clRY1WnDW+j+RDUCWbxKlTGb0dHU4evgpFYUPtIiH6//81oIn4qBUs7A3of70iw
         ohK8pHh0TE13Y/R4OL3aMUOw3MBpa33mXQwDiGaqR6fyjd4EaRkDd4DU6cZ2oN1L5blC
         MWyCcZImWDHKRXqSOPDj3e7SYKokuWmo3b28XN1PIzNnBSPOHO3n0NKFTCJ9lCyxe6Xp
         1luzfbO4PL5xmxWKa9ggVmvwZKzQDMqvy2hdfPEFMLI7AD+ohr1mYFD8VaTzGmIPjVhu
         /R4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUcqapobQ0aBGIY3f06SvmiZs2F0ZBjV3uc2g+OfK5R6UGPnyVK3iGZCciv7ntSwd2+8ksCbuRuX20Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzFwo22ZQFgJ1BsV/ORVc1LvDyZUw1Ak59feR0H4gSDF4zQ7vtC
	Ymu7Hs5qNRbjxnV40iQpbFkVn/cO7F3B4g9uEWrjocHzA95xcPTcG1foMHU7qi1JB+mloCxVeit
	atV2JrBC1N4+zE1W00axYqzgEYgJnOUOd9MjrJi3j+W86atrb6Of+FlMt9IlL
X-Gm-Gg: ASbGnctk6YWZmA63IIFkMvtusV5RE71PS2jq4DCegqLhmFHmFNyA5YV+YWrX7z7qqtV
	7UvOlB+cp+Woa1egSLxRb28Cx9k/nODRiPu3uNKs/Xf2krg+cobGlfeYLGPpaA5gLsXGxEhn4Ai
	XhFGBH9Hgr2Ql4tHfZ3H2hiRClzTzTyw2CstyMtd29bW59pM/O7MK59J9DxDvVNwZqTSsQzLapP
	7BBd/OqUHyAVe+QYBb8gVndn7e8NZQVKrW2NUD8PNwrd8O7QhjwO6kQGDWosaWonk9BkYBjGdIa
	aFY2teKxHv3nXpdydjRikRSYldJK9/zHogjmQIkZIDI2JXymmLdtuwvsaY4=
X-Received: by 2002:a05:622a:149:b0:462:fb51:7801 with SMTP id d75a77b69052e-47167a27b02mr81244351cf.8.1739210906685;
        Mon, 10 Feb 2025 10:08:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEdrknB8s0TEZ6l6OxgfCx+ee/ErwU07AWVUGCwldaYl2UrQYfRoVCq+VbLfV+XOerh80eF2Q==
X-Received: by 2002:a05:622a:149:b0:462:fb51:7801 with SMTP id d75a77b69052e-47167a27b02mr81244181cf.8.1739210906224;
        Mon, 10 Feb 2025 10:08:26 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7b43ee08asm374138066b.88.2025.02.10.10.08.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 10:08:25 -0800 (PST)
Message-ID: <a37ae05a-5c9b-4c48-a321-08c26ee3205d@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 19:08:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: ipq6018: add LDOA2 regulator
To: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Robert Marko <robimarko@gmail.com>
References: <20250210070122.208842-1-amadeus@jmu.edu.cn>
 <20250210070122.208842-6-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250210070122.208842-6-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -uYr2TJ1_M1IU-DbVjkFRhzWW5BcPKqE
X-Proofpoint-ORIG-GUID: -uYr2TJ1_M1IU-DbVjkFRhzWW5BcPKqE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_09,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 mlxscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 malwarescore=0 spamscore=0
 mlxlogscore=793 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100147

On 10.02.2025 8:01 AM, Chukun Pan wrote:
> Add LDOA2 regulator from MP5496 to support SDCC voltage scaling.
> 
> Suggested-by: Robert Marko <robimarko@gmail.com>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


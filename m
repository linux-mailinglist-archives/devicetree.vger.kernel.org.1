Return-Path: <devicetree+bounces-126135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 582349E090D
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:51:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1733BB848E8
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA3B209F3D;
	Mon,  2 Dec 2024 14:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fg0Lbud1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0524F1C760D
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733150070; cv=none; b=CHOfjdLRmNJvk52fHWSlVyDjdQILIgpKFTbXpzKonx25bx6x6dYrPghB65voG5XGpBkIrzODLH3/paq2l59hJOmC1htv+ukjMpdOC3lRxVhQoyfOBXQM6M7y8u1rgr3Qd0npUz/eupRZsLFLvJxCSS+HWjF/+91HjfuXxqyBTvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733150070; c=relaxed/simple;
	bh=W32B34bbwL9JbtycBuovG4MawYuqGMzUQhFPk3Po0Hs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bqqOblv53RL5wNC9GrFY52GeksYH2SwaR1d1OEUHMhEHUtTy//KL+TW/s4XrT8A7x9gTS4ubc1LaW4fXFZDfG4v9K/O22ShfOapC6lCbfEYTIXuI/BArz6Z5/NSXJWoTQGDPln2odXDJlCkwEWuDU5xkqsuIeaiO9l5JzVV9ne8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fg0Lbud1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B296Osu004838
	for <devicetree@vger.kernel.org>; Mon, 2 Dec 2024 14:34:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	80/5sgkMsINlYr/kXPQp6J8zNYaokD4TB0hvENF9JR4=; b=Fg0Lbud1/BEDue7B
	gB+H1MLQnjL8IbCgVI21PYWkyWnH2LsMaEaICvbP+kEm0+JfYx2v9gErZUBFyRoK
	JZc6ZbHD3ypvfFJsCoVVoSWtBJZXYK/QjW3+W6W8jcHLWd4ORmDui/nV/fK8wj74
	qGJzzLFkJQL0w053rS6EoVUk1UYiqOfnm9w4I/vCHaPkFX0qg10bPk8XbdRHnXvm
	ms8j1QDk2vvuNT6C8cljGAjZ3Cz56YqdqIB9vA3oCyPVKWVOiBuaatvPNpl8h6iR
	W6E2LaLFXywqNzD33+XmG/nveykanu6tEU3vYI+H75VIwgJrqm0AW42w5X8HUyzb
	2mhYow==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437uvjvwyr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 14:34:27 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-466d3ec228bso4301741cf.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:34:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733150066; x=1733754866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=80/5sgkMsINlYr/kXPQp6J8zNYaokD4TB0hvENF9JR4=;
        b=KJmF8BdczD3H3C2yVJx9uV9aNXNUjB/SX1EblH+00DglqoFoh2UdqCHElr2+m9x4tV
         Fezh9Jy+G5lknJ36dVkV4djSMZaF8YzC3unxXyNzY/40CRqjoQSCM69Ra5CBgm5fYpQU
         F1YF4rFIzNDLQCa2t88m0V1unzATp4OEwqVMBWyCpQ7IaDWVKAJRZ3GBRsh3aBXNVaaZ
         inhc1jkqTX1ZSpMNV3r1SBFrP6PzvY1mwfQBi1+Nlliog6ai5n3dYTgTs4ZFHjmHAJu0
         KSz3zJUrlYv5yhBRpoVO30pwy4pj90n8F6liyqn/ReNjRmXfQwgayQsYdtYGiBrxXZEC
         C47g==
X-Forwarded-Encrypted: i=1; AJvYcCU8y5N1BxpZeDajwUKy0N34ydcwA9mrB6+WFfGPIso+N3I9P8FJviD2+e+rzCMRHfh/6O2517DWEDB1@vger.kernel.org
X-Gm-Message-State: AOJu0YxegE24qaNDJ4NX01BpOAQeK7HLWD1Z5PJpwEikHzVzdC6EaOvl
	EQh4VnjW9DVQBGt7jReZY+O2IjqSwaJ4gOEFF3Dk+LqdNSSjM1DNCO3dd3Dqgdtl5PHEC/Eaz+F
	dS9RYnhPzzD2h8wELCrhcy0KT1D/48Gej+TTT95ECMManSf896dqEajvjW1Ln
X-Gm-Gg: ASbGncv2DWtVUBMrsFNRBLxvmUdPcD/llsSD5vqR6SvNxvd+ArT5Xf78JHn7TsHl+np
	SUMCorJ+j2kLysOaUmTC89Wnavt5/v9C6lDebJz+nSBRqVcZs4ur3IqEDpN8myUPvZPfIJphvB6
	gfFepxyU287G9m0oUkvLzID/Dmpd/1Xho302AAercrhQOA/+Y+MYpiIhDmBSNhPvgI5Wn+ZsHvm
	SNKG1JVK8IIImg5DClo1cjd25Dgd5NYKrfezMBwLDXOlK1eidJKSJ7dHK2Y4yFjUVe8K2/aeFpV
	Z+nIMWFoFgxdev01JFV4jgBfWsuTN6c=
X-Received: by 2002:a05:622a:5cf:b0:463:16ee:bd7 with SMTP id d75a77b69052e-466b357ee1amr140651731cf.9.1733150065753;
        Mon, 02 Dec 2024 06:34:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IENRJvQcWCDQ4WzAAHZoOdr8etB/4bHLv5UFvCLr0Y2e9/702b7mvH2WM36qkWsenLYrX5Mbw==
X-Received: by 2002:a05:622a:5cf:b0:463:16ee:bd7 with SMTP id d75a77b69052e-466b357ee1amr140651581cf.9.1733150065359;
        Mon, 02 Dec 2024 06:34:25 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996d8bbesm516662166b.43.2024.12.02.06.34.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 06:34:24 -0800 (PST)
Message-ID: <a7ed4962-9355-4751-8936-b8cb9d5bf2d2@oss.qualcomm.com>
Date: Mon, 2 Dec 2024 15:34:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcm2290: Add uart3 node
To: Wojciech Slenska <wojciech.slenska@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241112124651.215537-1-wojciech.slenska@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241112124651.215537-1-wojciech.slenska@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: xiIYz4YVedoEmPJSl-mOUMzB5OIqqI9v
X-Proofpoint-ORIG-GUID: xiIYz4YVedoEmPJSl-mOUMzB5OIqqI9v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=707 impostorscore=0 adultscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412020125

On 12.11.2024 1:46 PM, Wojciech Slenska wrote:
> Add node to support uart3.
> 
> Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


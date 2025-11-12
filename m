Return-Path: <devicetree+bounces-237526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A60EC51CB2
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:56:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 098433A86B0
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0CF9304989;
	Wed, 12 Nov 2025 10:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B0spYxp0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iUvwM8Ff"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F632FFDF8
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762944350; cv=none; b=qo0YHQMZDk1UhKE0MouBdk6MyVHx8bhZKd/MOzL1Un9gbxSgE6pmo3GZ7wksvSt7KV1mHJ0RgRxTTk7wmxRRZCyMUmF7+pDMcuh4P+k1vcTvDQ8mtxDZpyhWmHQHxPWHVRNBpSTMG9+5n1/b1Q3yx2eLqndE8g7qUVcRnmoMfE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762944350; c=relaxed/simple;
	bh=9aCCGemIgfyL1AtBT6bYDFC68dSaqm+osp1QFrrWuL8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nL+xOIRNsS8H2pulGwbmjWyMM5XJ+VlvptNugMUPoyuPNKM4xiTBikQrqh84f4mWTyLz5gJSBij+WYgyT06bTUB6sExV8oUBDlh6ozX7MoOvRg0MPDEUji3+BRIgISjc+uXoU/e+WaHLvu/F6jyGlC28VDd8JdiKz+ZFtYv0uFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B0spYxp0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iUvwM8Ff; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9hnLx908441
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:45:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9aCCGemIgfyL1AtBT6bYDFC68dSaqm+osp1QFrrWuL8=; b=B0spYxp07c2RFinm
	0zUe7tJ1YIDKLgOyg0by/xUxowkM/HXagL2HR3LUrrSRsTXmdeW+CZoXCGK0gody
	7Dm9sXYZa7gnj47cd0KbqWc7rdUpi3BIXMkuCEbYRuhfTm2afbbluA8RWD2iRcmw
	vWsEgMmAgkqwzzEG3XUhq7w8rvuTNqDykinI6jAUuE8Y+MpN5gCKnR6HKDa/PMlK
	fKX6hGb6T0gFm4njkSfxJnDWy6EtwWO4yPvTJ95FmYJN6FaXC2jXg5LyQwtnCLnj
	hTEALQSCKOfKDVHce1DnHe5VGWsp8Cbso/CvUxxVZh9JobrHEwGO3Bht/IfQzs5o
	Dhgj2w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqur86du-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 10:45:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b21f4ce5a6so19279385a.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 02:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762944348; x=1763549148; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9aCCGemIgfyL1AtBT6bYDFC68dSaqm+osp1QFrrWuL8=;
        b=iUvwM8Ff7e/IUOJ8aIF2NaZT3ApqDEviMhslo/sVB559k1pp9uTZdABLu6nZvZZUGR
         c78Q1jRHZGLhXL7d9CwPnH4LuMozK42nHoyTUcQALnCbPJcbul6H6yRPedFkMkTjKMF7
         prKcvCTFEJODwll3mgNhaUwgP0jkxr0U0n8iwZIuM3lfeswtOfaDE81wX9F41dJ07n+/
         MMaU/eeumgPEEaQ5DT3yvMepqmEPfjM3YRHqjmlW6lfoTIZFB2nZaeXqB07Vcvapex6D
         YuDd3cYKq/55AfqjES/IYEiXLijjcDai6EqKm4tQeWxm6HJjwwM1ZTdEdxzKCJdembFp
         8fvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762944348; x=1763549148;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9aCCGemIgfyL1AtBT6bYDFC68dSaqm+osp1QFrrWuL8=;
        b=hJBKrX8xoKvrIfZbwjTFKCHb/vw8CMdravy238nQOw+JtOfCGHP/7xtAURzIv3lKMl
         6Mk/CkPF0oemz9ZP55v/rx4xeWnDbxUSlV4zxcR0/RIP9j63QwmE0EXmfnUJdVAocDUw
         j1pIt+DymnN6rKel9pSRgzIzW6GclytCdTiex4+0XUQXeq/GF8SAvm5rUY4wyYBUjcRF
         8CExwNFtvzeC89zUa9mMcj6JzrFXbStMKaOZrlfj5mgO2fgNmziAkcRKkVW847MeQjai
         7s9Afb9MwNFe/N/6xZBFqNCE5xdXD+Q4UW3QcRhAnESWB3EPWC1noPdEJXs5FJMawKVn
         vHRw==
X-Forwarded-Encrypted: i=1; AJvYcCVQ6a9c2kViJ8go6c8wy8ucyTchNCpO23IronrgreS4oyKKxZE2gq5HXxu4hMXU7IepFnGmAjIk4Sry@vger.kernel.org
X-Gm-Message-State: AOJu0YyiULPRS30UVlb2Me0Ulk8sBedzGDoSbFWmpiVL43Z8oCJBzgH/
	+CgOns8ZfBzdjr34m6h8kAQTfzXwEaO2VYhVDcVd6hiDfboVMBMZSHWIy1Sl/g3VId9zEWKF2Hv
	KMJ0yXMwBaqoXamnLiLhioi84QnHc65kekylTBiNMa2bTxVfFeAhY7j3pnzFpOgeV
X-Gm-Gg: ASbGncs7kajwu55j5kIzJnw36u0iJJqEbXpGZnb9qaWyCaO6oKniTMdqGV9AMIeXxOi
	e+eDUPmu3Id9qh87St96AtPpSMitceJyAjnfHoGhsfladh35Zl2ByhUGGaC5O16BcK5DuXbPhT+
	r6rYaQyziZeQLgYJEuhdNhaptmj7NMgHD9iIGtgDpCU6SxsT+LBy54BxnF+f9uaBNBEAOjhTd6T
	y4dzy8Rpg5AQHWVswD1GlA9ezl6QURc1CoiSp78ObQrWz5enI1BcrDikip23XhFQuNFyFHCYfbm
	StNENYMxXP4vCQrbXf24hcthQ2q5tWy6WFtHuWEMxk48/eTQAj0JEMJzjUc3kxkKSIoCW/tb27a
	nAtLn/2ty7TI1JZyOtDdKsOOvSbC7FFW4JJJK/k2OccpB04wrOiHNU4bU
X-Received: by 2002:a05:620a:2902:b0:827:d72a:7b45 with SMTP id af79cd13be357-8b29b84bfa4mr230424485a.12.1762944347602;
        Wed, 12 Nov 2025 02:45:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGmUZ6M7Ck+27xqrfsG5hm0htonAsU8tstfxsb5T0QT+xpDF0ubgz8pOWj8QPScfpGkr3uNqw==
X-Received: by 2002:a05:620a:2902:b0:827:d72a:7b45 with SMTP id af79cd13be357-8b29b84bfa4mr230422985a.12.1762944347194;
        Wed, 12 Nov 2025 02:45:47 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f862cbesm15459349a12.31.2025.11.12.02.45.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 02:45:46 -0800 (PST)
Message-ID: <103ff788-54cf-4c26-9465-165f03ecae04@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 11:45:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: add Dragonboard 820c using
 APQ8096SG SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251111-db820c-pro-v1-0-6eece16c5c23@oss.qualcomm.com>
 <20251111-db820c-pro-v1-1-6eece16c5c23@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251111-db820c-pro-v1-1-6eece16c5c23@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA4NiBTYWx0ZWRfX1ElK+Ym6IQKf
 AqWrq/tTgS5lc/u/OupHf5FXXIH8AkUbrdpPPsxCx3t3cvZIvcYmOzOaVlLGQNkwVMWr45VN01t
 4h668LDkTb2YFohpfmyNCCjHbkFjRJeZJ4Y8hxqEcRmRReB6Lvtd4HNiJ3PhAEEIUXzj1nKwCst
 w+Dr2Dfh7A/NUdTwgPw34K1DOaBYXq77x1k1JEw9khxQK8PDcZjVYgmjeG+UL/j9GKXisxqKmTr
 ww1lML0jezBF4UYWBiFaVMwQSMrSIpZwYV/gJLJ3j2PiOT8o4X9i87a369bQ2KfmPE+tefYiUzZ
 /E4M1FZuB6kOAiVsRQoNZTuSwRdZUCMJYyJxkt5LDhs/8dWzNeaD1KTD9AnwMDpazceHmdUM2q1
 EZhAzWGk6aFIhKmQvAC5FWOPwbJyIg==
X-Proofpoint-GUID: dc7VxeWbnC61EYaKeo9CeuTV4JDioHWG
X-Authority-Analysis: v=2.4 cv=bbBmkePB c=1 sm=1 tr=0 ts=6914655c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TCvPXp2ldiIvP41x-ckA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: dc7VxeWbnC61EYaKeo9CeuTV4JDioHWG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511120086

On 11/11/25 5:02 PM, Dmitry Baryshkov wrote:
> There exists a variant of the DB820c board, using the APQ8096SG
> (MSM8996 Pro) SoC. Describe it in the bindings.

Apparently it's an IoT SKU:

https://www.qualcomm.com/processors/application-processors/products/apq8096sg

Konrad


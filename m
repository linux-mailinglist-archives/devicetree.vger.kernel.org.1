Return-Path: <devicetree+bounces-249439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B019CDBD35
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:40:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B04E3043543
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E0D633469D;
	Wed, 24 Dec 2025 09:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VmcQdubf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J2j0B3hY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311FC33438D
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766569176; cv=none; b=Phi3tJE0jIuQngkER92o0yS6kf95UIKf5Y+MeVHUvmoJgPeL24W+s4v6J9nqvkUXKE04/M9hf0TO3zFfubwvax7HQMFe5y3HArC9PByaJeAC12qSF84icQaXyUrTjXPXedmOGfGppbr4dKkJ35eomHrhPip25c2hUtI1hgQMgdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766569176; c=relaxed/simple;
	bh=tfjO+O1vZYPQ4yMuMeu+LRGx2EwBN+QJP/akKXBGBhw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K75RyWI2sHHCKKxJcRA2KWWsnHgFIsBa+w4LLYwX4PWZJSONRFzNn4GyqEsp4Oa6t/NamAP/wEryP9Hn1ghg4W1CZMz+CUNAeq4Stgdm5Dl0r4PpaEoDpr3VKcY6pWV7Zq9OTI4XbwB1bG4YfofKnM7U+dUL3dMELMPQnKWJGLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VmcQdubf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J2j0B3hY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO2OmN5461418
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:39:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OovCWUkmMcj4oKfgC38zgyTW
	qGyoxMNGh48TksGHzWE=; b=VmcQdubfoiYaTce//tdF7T1Q1e6uRStxj9wo2enm
	yJQeuGQE4dFYQ71H5QyO1Bnbmb7Z30hn4wTa3iIlgpRUzBE6TXt+M/4kpcMQnWVX
	Ja56XfmOJC3EAyjcb08ZZ1Sy1PY9EWRKBFAUCHjOLLaLevvF+rs8RPpLngzK9oBJ
	NJHMyKPQxizOp12hNK+eWiztPwH/4alXHlsTHGrNv/VqLB9y2haAia+4h8IYM5IG
	2jdDammrusZPZsyzyRlYiQ23qyhvVEj0eD4waiIo3RT8h0BQX4jVbzyzV9n40dEN
	7IxflvtXnw4SejO83HKDr5e0GjfXzzF1clBEAecb6ykL7A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7w8ftsyb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:39:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f183e4cc7bso103487391cf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766569171; x=1767173971; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OovCWUkmMcj4oKfgC38zgyTWqGyoxMNGh48TksGHzWE=;
        b=J2j0B3hYSAhtWNnp41w0SVslQCnKwoYIvHCGE5YVbZcy+lNf2NMwoajAfJhQLvBQsr
         lUr9bDhDr4rtUxyjJ5yOdKccbatRhLIcHdwu30kzaJkErxYEV1dixw2OmvMGyT1i1ccZ
         oQFvTB8K+uS/amJwHzUp6SRkIOSjK5YOdwIxwV5j8e80/ma5AHh/5Xha4A/TpqsO45Vj
         D+38Iy4D2hUqs+KRBUqrDGv8YI+fGBIlPurGF4rFY/kx3BP/mM/LgVtnFlnwXcFTeUk2
         fmsyyaz3PZCJCw2ojs3GMvd/mDyiKe41U98m4dt7g+Ejhll9m8TSEcM4wR3KNByeya9G
         UdSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766569171; x=1767173971;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OovCWUkmMcj4oKfgC38zgyTWqGyoxMNGh48TksGHzWE=;
        b=YFkjYpFDMqZrJYqxC0+4ZzX2biqdkEy3XJasWM398Q6R76DhYcaBy4bH20Jdnw/MTZ
         nfUOfNhTaNCYGrdX8bNJAb1722Ea0xVlGPyTWX/2AL1omZwFda7IDYt403GE5U4cBoS4
         8n9TSJMFarPZtqeP3sCFQL9J3g27burQa3kr7U6CApREvx3yzaoIE5p6I2BSr/WaUCnE
         cBakLw/B8CeifFHi4Y2ZYEqqyaPZLwnnHsf+useRshSOrPGFCBaHI8begCh9C70ZaPFq
         1a6xMhyw+KEk+oFoEOmliE87ZaJ+VYLC2tAq4G5tkB20REwAZevKSbiQ7AxzQ+wQheip
         +76Q==
X-Forwarded-Encrypted: i=1; AJvYcCUBcetM6SieyNS9ZyAnuBQQaQ+BsHv+GhmSg/0bR3KH4nZZWb7OAmJSQefHLkO8QSYse9VjeAcT1wOR@vger.kernel.org
X-Gm-Message-State: AOJu0YyzVpGU91tj/f1ttgHvW2I8SFsD93jf3RejZzw5xZo/8Z/Dae0N
	VNJFxb2DxMciX8rTOfqD+9pOxgzV/UFkgqgFyYVxFVFYf7osqIxrUqX+w2oQWG/iiyzvwZck3Ho
	aQmsZlfBoFql40ouHAoMulb2xr2o8h345v4px8UuFLBr3qH6d9F/XjJXV2yOFdWc6
X-Gm-Gg: AY/fxX5mZUKjJexyWCnReZtKA8MU3V/BWvIBQFVPkOqynzL5CSN7q0ETsoG46BAEy+X
	XhnO9+drVKrN52c5MFMT/UOHOQxYED/MTHNEDrb6nqhZHjxXj/FehLog68wjPMl+wdWBn+y2Xox
	ZD1skOsnSVOP/P7xBiaLWCtDPR6CgoH6mNt0Wtr/9Z6l1wxdGe+3jP7lMramwbNa4fI2fj3NKcP
	CWYHJSht9oYhxcjLlN6FmoJTf5KA4AauiuN/Ibt+lyHTzvR+8YyNQvi5495K6Z5ZAyyweaXLoYB
	SWiy0j9ft461o3SdvOAVS7Qj8sjDhLvmK8EVSd4qtZIKCp3la0w4e9DXARzoVu1zQy6k/qCcYhY
	aO5sdu/lp7AyNogfnBYtU8g==
X-Received: by 2002:a05:622a:1aa4:b0:4ee:22d6:1cff with SMTP id d75a77b69052e-4f4abd0fbf7mr276842191cf.36.1766569171221;
        Wed, 24 Dec 2025 01:39:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGxRTLn0U0i7li9cqmsrt4orBb+YdXbS2ZggbhmEVcsTCwmHqG2E6gXJls8QEX/fPRC5+HJLg==
X-Received: by 2002:a05:622a:1aa4:b0:4ee:22d6:1cff with SMTP id d75a77b69052e-4f4abd0fbf7mr276842041cf.36.1766569170775;
        Wed, 24 Dec 2025 01:39:30 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0ebbasm1664151566b.55.2025.12.24.01.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 01:39:30 -0800 (PST)
Date: Wed, 24 Dec 2025 11:39:28 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: Minor whitespace cleanup
Message-ID: <awmcmo3wvy5unvn3c7i5lvflon7sq5su5qifj62vp7pjepjqka@hlsmdph4m26f>
References: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-GUID: QW7ST7ZEUGT2MZhH8AS2PN8aEeHJOVlT
X-Proofpoint-ORIG-GUID: QW7ST7ZEUGT2MZhH8AS2PN8aEeHJOVlT
X-Authority-Analysis: v=2.4 cv=QutTHFyd c=1 sm=1 tr=0 ts=694bb4d4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=FLYuuQH4aP3MUV2sBEwA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA4MiBTYWx0ZWRfXwalBeKkEvr1K
 hEAuapEFBX76t9V+fmSYmtUiSboEuvlEicOQuf18mscCxn/g1CIB1k/IO1JAjFdCk766/TdveXf
 mNtO8rdnivmAZqwldjkZoXR/jUGu8R2ocXsv5QOzJ/Zbbj+NCfYtFC7V30yblKpoBjItX79H87H
 lO2NZ1dRyBQh8FUZon6HBksHQnZXCMjJa63ZTkJYSJWXbt+dtjfcwZOl/bd1YK+0qLYVHXs2loa
 tPNPmNDlAKujWIWoDS8ihyXPYq8u2u61WngXXffpGiJ/Xm0CoOThLKKvOQOZaJ6ei1f7/hSBhHQ
 8Xs1rNtWJ5NCidKt9tXruccYWbqt7c3AunHSAQTV5tTcyUZG1s8cuhgJzeUuPwLpK87E+BUHxTU
 /eT4NGNUJi3IIHRoxCAVLqwOYcnabY6/TOOGv301mKnfH2NS8hfEIRS1Btv7MeNPx6fWYMq/qSt
 Pc15BpkV1HJzU23awTg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 impostorscore=0 spamscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240082

On 25-12-23 16:26:00, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space around '=' and
> before '{' characters.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>


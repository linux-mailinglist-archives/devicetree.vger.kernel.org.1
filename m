Return-Path: <devicetree+bounces-250968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B015FCED48C
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 20:01:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26EE130046ED
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 19:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 615D735957;
	Thu,  1 Jan 2026 19:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dr8/Il4Z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jzufIjei"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66E9189BB0
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 19:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767294109; cv=none; b=ZxS7Cd/L3Q8nkysTZSVT3PWh51afW7gsz76dFgJL6D7BcAUBzkOHT3CM/8TOTMetQ+DVJ2BSFNHcaa8ZNYoO+9VqzRxyPrvl9KSaXxfA7lvLnXCTLRePNXHbHPUx3f1FaAwnTS7fAlSLysc8VisqZejpoaS/sbc66oTwinMoj9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767294109; c=relaxed/simple;
	bh=09SPlJS8w9z55KV9fRGuGfrJpZXnHXqZaP8GsPWBy9E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DEGo4ytzEMOprbYtMXbzPqtZtuMpNh3EOGlHHoe4Qn2CLos3u7Cxk4xQBnh99Ar3kUr/E4mbcQA0o51LUHwrwvL6gTcBc38+ncIrhSaFWQigORL1TfYgBiwMBRpCIJNLrcaabZAlYH3C0LEAOTJnDqOb8SFTcqXlX9eFRbZUiJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dr8/Il4Z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jzufIjei; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6017s1NJ1299364
	for <devicetree@vger.kernel.org>; Thu, 1 Jan 2026 19:01:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tXclW4aX46rZnRIVsSHqBVnw
	Bj3pv8YCsnr1Ohovb0I=; b=dr8/Il4ZBCcfOCcIBsFy3GYTBNndjl/jRLhrBXLT
	utwX/bQWVLpSRpqya2g/N39NjqT1RL7NKGA/FrF4+/RR6IPQmvzIgB1p+8RzvmzC
	X1EZUZ7fWW+Vm6VH3z/Qosr3CA9TI41vthWICi0yxU8OLbfQuH+VzUjG+2e1Rt0D
	s0kRTAqJZK0dFX+i82aZSjcw28sbBArJCMQfaUnOTJyXMfTewVtBRzPbshjfxFAK
	E6aGAFvN00vir4T2AFl62CH2UQcRK522c47dzlcYxZhCQz6q+yKXtvOQp7/EjnuG
	zyVv2z/zOCWLE8PsS9hxBwIaBMrapLe3IFU7iuW04tXMqg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd3v8taf0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 19:01:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee3dfe072dso305161161cf.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 11:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767294106; x=1767898906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tXclW4aX46rZnRIVsSHqBVnwBj3pv8YCsnr1Ohovb0I=;
        b=jzufIjeiQWnFv7Bh0qv8wZ3zxg1aYIo+tN4Wp4hEWajA1iNV6frSIy7xidJPF9XBd+
         sme7pn6FWkjmU59zBK2de8smZ2CGTOJmsldXt9goIx0yVm/HMbstiiAJ1oIfSPJuSeKM
         e1rmWBQDQ2Gzq66hIG7MXku0+m1qNRnPVxO4aP7brCabk7aoEXeUrcHKufx1X4Hxc3Ou
         5glPVRhR5eJbkQdeZxVOwTvsCJ+IBuPNZ7GSoN33T6CK+gIgHljKxkgxq99rCmK6Tyrh
         r6AjlK+lm3UcAvMuM3hUkfvqxbo13xS1gEBiqZ4cCECUbzHvNreUnUngLMtEYTCFsTKt
         9d3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767294106; x=1767898906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tXclW4aX46rZnRIVsSHqBVnwBj3pv8YCsnr1Ohovb0I=;
        b=Sx6eC9VP/uTDg1XNQhUY42DCyraeoOybe3XZ1mkKivZ4H751Y97mJgw60mRhmYsqJ9
         7bU+U0fzBr/6RyBWhxUm6+VFUvE46pIr56EcBzm6XtCWI0CGEdYeuCYmhmYbDUCnsSOt
         JyIhWAts8M7Be5BmIrQRSJm4g+iVOuXiuNo0qPocn66ez0e4oisKg/iF7vlpGjK/yDfd
         3xcc+f1ImSou1iZVClbKkAnOuhaQmUXvvHBwPyHZaT3aka5TWii0J4+ypu5VCa1ebhny
         hgQz4IEcyUf4VGITie5FkPHONIdlX1BrLu3MFeLoO7pv4zChJTFBEZ1RA9FKFGM42oxw
         XQWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaJLXmA6cIMhfTOLoWnoPmr7i/bXhyXREVPVe01ND1Tny4s4xULKWVZPqtQ10tRc81n0DL4J9DBUlG@vger.kernel.org
X-Gm-Message-State: AOJu0YyKoSv4b6de9VGkUCGj563CUsJ/sxQLGqhhldA5gasa8VyePtSq
	a5ZcYuJWoijZblPfpFlIoG8yFD3zN/NQB7Q0SZSszhsKPPcq9lphVqEZ0hcclnaG3Jw3DbQaLFV
	1sXlFXt6KmmkBFIfqaA3uTWe+TGLEJJYKIkLokB0OTpVy5lK9LNeTi1MUluX8hSf+
X-Gm-Gg: AY/fxX5wPZLJ1nxG85uYFZU1iq7UrQauYc0luzpIqmsfFsD3UK3+7NOF4VwF4RWoQgY
	TziIgCMp+IUYUQRD92gJafiINXEOgoD04uOMWtNKl7Hspk53m2QxzJXw5QqFXd/V1Vg+/Gc8mq2
	nAcqh5ut9v0ijxKZC5UXWZGGQkml1PjXvUwNqsfCHRJ+6tCLH/EiP7/tUI/nKWvyE/04GlAoESU
	XBZG/WzGRcNLuADKrNf/pLNs0ml8DADaYKiAk2/h4JmJyzlhrDQ2XzLFur8yJSivldjEbIhrYZk
	kAc8hg1MRg/8tHT1MlS5++9V56WmE/tU4rlIxG4OAhHUNOujU/eHiTUf9bGTZJTcrk6gP2M0UlN
	hQ8bPurLLQFF7zX+LhN+y
X-Received: by 2002:ac8:5a41:0:b0:4f1:b795:18bc with SMTP id d75a77b69052e-4f4abda1b98mr687311251cf.64.1767294106172;
        Thu, 01 Jan 2026 11:01:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcT9eU1RDafnLHwpeHbUaQmXUFAUv5FdN9bvkmWpAiWSOAl+7hR4IrqdLX0iPFDNK2rR8Xpw==
X-Received: by 2002:ac8:5a41:0:b0:4f1:b795:18bc with SMTP id d75a77b69052e-4f4abda1b98mr687310241cf.64.1767294105539;
        Thu, 01 Jan 2026 11:01:45 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a60500sm4293397466b.13.2026.01.01.11.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 11:01:44 -0800 (PST)
Date: Thu, 1 Jan 2026 21:01:43 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
Message-ID: <ixqokoldggtkeinosfr36oeq3pzwo3iiqdw5bvxwag7hxpkgy4@3lvrj3bdjd4w>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAxMDE3MiBTYWx0ZWRfX40Guo7uTjPYs
 gMWAu5AwT9ND7a5gAnNa2soEEf3l5QkWRpJwMcswKnzdWtAw3mvEOAcBCvn3UZh019HSlDBSrN8
 qdNgYjk82ehHVUmrqToZRX6ZqYKeYOS4wchN8m46AUkwGs8/liRy3ZTqAqpApQ0/cVzKK6WXfG2
 NhKb4XAx4ZWCSaT2KYb3qzUnx2gglVwghGGndWRCIXbcFc0t2dYkxEfUoUQJbxDi0RyuCQEcspj
 gQYdqQ6+UqUXjKkqGiYKgUkh6uZ14U3ab60I8jiFlOTAu8LN7Mwfwz3GUxzta5zAcY3q3ShDIQD
 4uxqKWIXXsMpC6/mUfTN/eBq6xOQiWiBM8SmFYauyiqSxWg9J13OZxfylOdNQf0Kyccg2hTLock
 hqMuR4TpuCvd/803K9925RzyL8L2jqGDaG2aIt5RTT1k8TLFoglo4RGxY5bMT2eJ0kmmQIUcjRr
 uc48eyncF+nH95PAZzw==
X-Authority-Analysis: v=2.4 cv=JdOxbEKV c=1 sm=1 tr=0 ts=6956c49a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yu3_NAM81_lDL6LZg7cA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: Gya2im6S_Lsf6Hadc5ne6jKLD3XQLEIH
X-Proofpoint-ORIG-GUID: Gya2im6S_Lsf6Hadc5ne6jKLD3XQLEIH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 phishscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601010172

On 25-12-19 23:01:07, Krishna Kurapati wrote:
> Add support for overriding Squelch Detect parameter.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>


Return-Path: <devicetree+bounces-252436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B383CFEE04
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 17:30:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F65F3063B36
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4830334DCDD;
	Wed,  7 Jan 2026 16:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MqJT1EKH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J7nrgsEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0D133D505
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767802641; cv=none; b=dt/tPa9GdhaXEh2NW6VvKwymj8Xj2ebj8xu6fq3Z8X/lMLKmCXbClMOfNwtWIuNvOJ8rJxBU88vFYbJxkta3Q/FA4vLM62aAD1edodlpWRwYVILHiqdSkBocaoY+weCxH5G0UYiiZXCaKABB5dngETPcVQFKMdUnvi2ck+93Ft8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767802641; c=relaxed/simple;
	bh=517oGs9FsEfTu6NOn7JGse+olEGHedN/noc2azRQxP4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SCoUtDN7AqQoCWNrOOnPTH6XQNYX1OyMrXFnPRIIopP0avVmFypYP5+vnhQZ/97rVYRK68T39ADv1E/BF92jI6mqtu98h/lDvcZNwyN6p3UH1MDs0xy3RdJaDzcNr/w4beAODdp+Wad3zTSvnexU5PsULqQ3ocyr4joNsfOUuRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MqJT1EKH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J7nrgsEM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079f2AX2989967
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 16:17:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pNn2hydp6mFmiGWfG0RE3hVW
	bp3VHRZ/n5+RMle+1R8=; b=MqJT1EKHl9gRMK8gc0rPEEOryXVHNkKqHzOPhh/n
	AKEEjEqLEKTW2bGKBRI06bwASHx6DmgC1ikIzDdo7anBNcZ5nmByjlDBoE8wIxNV
	+qN2hpoZ7gwmTY6KSu0q6Pf4wE8zoHUNLC4X9c4L03FSu1IyrVpPQ8MJfDfJ0BxP
	JlfcRMskQheJx3n0Ayixqm/1rzn3HG8yNxshkN2Vuew7aB5yQgQmTG2ciXHcKFc5
	qZm3c85gkUlgOELx3bCYSq48So95d7h4f/ckw3AO3Myt+rakPPYY8a/OvLQAtatW
	Wz/OFC7xxjapfrQeP3diKItz8xhCoNAaIoK5tBrS5BdLzg==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn2ns7mm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 16:17:07 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5ec87a9e81aso1002989137.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767802627; x=1768407427; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pNn2hydp6mFmiGWfG0RE3hVWbp3VHRZ/n5+RMle+1R8=;
        b=J7nrgsEMUZQ5sdgDMSgZTGrtml4TAa4Hhb1oVU09UFsGz23HbxYDeNHKrDX3jWaJ68
         C25MMNTkXW8YUkw0Nqm1XLmAXEn+XxMstnvDNkuemOsuXbmsXftArtGTcwvpRJnBE30i
         +L7Wo4qvRztcU0i02Y/QlDkN9uNL034zhCLMNAZOa0Ia5h9XyfJBQ2GnJ83EUnlzwaKh
         I8GnxOGXjOG+uW2W0nVActWQ5b6CNm1DZmjdACO0ksHsBEXtjs7eEWCet1dY3z1nARUi
         b654TFSovUjW6H8jD9w4YlA6KLCZBEkW2/2RorrCt1ZjBsm0Xmglneeqs3rBKvyyvcy0
         EBNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767802627; x=1768407427;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pNn2hydp6mFmiGWfG0RE3hVWbp3VHRZ/n5+RMle+1R8=;
        b=hZyq3C+AtWfvEijFMrDcp/tGFYfzlEe/ox1HK2j36LudfW2WDqRn5JsuEE0uu8KFgs
         7LWXU7cAetgndvg1OhdDgJvKG4GtjZFUZbHoocxGjZg3y7Vgcwp08I1rN0EVIz2gGfm0
         nlNGBO7QnzXvxzpn9hmhxYwS0oJfIIxuX37yGc5JoYbA/0CynKKEIBwHbZFZ99NOealW
         iGnaDDXbqHvm1bS/TQ282cuI0eTGQl5Zap8Oah5wRG1SAgnofBKTaO/eJQOigcRrbgct
         k9/d0Io5a6s1V7YGiJ+O65DxWtR7WcvkCrTq3OG4ZSQmU8qw7ynwSgHitqBrrs0yao7F
         dliw==
X-Forwarded-Encrypted: i=1; AJvYcCV+ZPWzzrb0RRaBdJC00VlKYWJZ5syHYz9fLw+2YZT6Nvw2OWv/dO1oPtQ8qno2Po6zS/E/d4672XqT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8EgPTTtA/zXDaCKuXSNh4dSw/P6TVstHjzn0VVmWaYd9AnuRn
	nJxyH8QfGdgiOsEAfQt7xqwus5fOUTQFl1gaSquqg64jsNDL47Gnx2G6ggKcOPQqYYsW5oJkevt
	4NPrhj9Ijzq0UimP3GfyTEjKu40OxAOYk1/j2gCz57ZIVK3yvezMhq5mpQy7G9XZu
X-Gm-Gg: AY/fxX4hP6SY+7EU67skG5CEG52CWZOZ6ELbr6EomlTahLEodeG6cEgQqIGYWs2o1OP
	qdUgDvLWFShg5Bku5WUlgBdfMvaqfGthlkxW56EgYp6nAtz/HU4ksRdPk+0e1duQ55OwPD8pGqn
	wu9PVayWuJOLEUfWys9RQtdiesbkP56Z0NeA0nR/Gv9C1uxyN/9hajvzdB5jC5KAdBWecFpxSN5
	J8zAOS+xsQ9vKFvjSX13BGq3SPdxFYM76fC8lMpOO7EulYWE9iNuk0pqgrHZs193v7JwOnU5A8+
	nOoQUeL5/Qy7oOEm1hQUj8ur4pAE4iBf7mQ94wZMxAOQigPE7YxOFTT1UiQwgQOpeldA99KhmIp
	7XDgLQ1VsUo+8DjlVwa+1cZQzHzM8M2QfMvJ9opLiQ9OQ1JVRPb8+Wr9GwT37K5desUoHkHQJeN
	dIKqxp9C6XFTCXlu30r/jZNcg=
X-Received: by 2002:a05:6102:c50:b0:5d7:dec5:b6a7 with SMTP id ada2fe7eead31-5ecb65744b9mr936519137.7.1767802626947;
        Wed, 07 Jan 2026 08:17:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHWo7kmpZp++avSupk4Uz/4kHmAaLqQIgTBTPz0DzPK5KyO/RxzYBCX2g8LY9QhwFIztQxq7A==
X-Received: by 2002:a05:6102:c50:b0:5d7:dec5:b6a7 with SMTP id ada2fe7eead31-5ecb65744b9mr936476137.7.1767802626202;
        Wed, 07 Jan 2026 08:17:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea872sm1384019e87.2.2026.01.07.08.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:17:05 -0800 (PST)
Date: Wed, 7 Jan 2026 18:17:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 08/11] clk: qcom: dispcc: Add support for display
 clock controller Kaanapali
Message-ID: <3sbqfijv6b2lxvx3kwcu67a233d7xcpvc5x7ysc6ktk2o3d4qx@6eagaimfqd44>
References: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
 <20260107-kaanapali-mmcc-v3-v3-8-8e10adc236a8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-kaanapali-mmcc-v3-v3-8-8e10adc236a8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEyNyBTYWx0ZWRfX/e90+aEbQ42T
 QDcQ/+CzwktV5HehjOEMsJLae/UZksLgfWm0Np0LpBfvRYTnrEZNnmUCjvKZ/Odlnc+Hqi27vMF
 NAQZaSsg7djEEoxBGiSUyVLNPqnU2MiqknAG2c5olmbYkozQ/EAW2GSQ3gu6JVyuxldShdbzFWR
 QWCnZw3ArrJqIYffVWTB/XRl24yeO5cu0p0e18+u7vNWR/B/QnfITkwtfpuM68vuaWj5+yDSjB7
 2qdKL5OMJC5VGRdDu6ZIiBVoq24qEZgCAlp7tiIZShT2hvKaQpedTL3SNEFOSCOvnOnuUq57HHW
 dj/zA15PGjNFhZIhOw0ryO2UM+9c8/NG0SEtm0O0+a7aXriDGEYdmatE7NNdDYtD0KSC9qYOFxC
 MeD0GR2YkVJc7nQ2HI8U0O/acjpclEKrgvLfz8evjY007tzPYoo2wU+q0USdXBP537HMaHHqgkM
 0FD7HCnhxk5TJRutO9A==
X-Authority-Analysis: v=2.4 cv=CYEFJbrl c=1 sm=1 tr=0 ts=695e8703 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gpaIcbXCgmfx5VOTBCIA:9 a=CjuIK1q_8ugA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-GUID: VmNFCpEZvD2JRhx7-rwPjBl3w7R-GI3m
X-Proofpoint-ORIG-GUID: VmNFCpEZvD2JRhx7-rwPjBl3w7R-GI3m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070127

On Wed, Jan 07, 2026 at 03:13:11PM +0530, Taniya Das wrote:
> Support the clock controller driver for Kaanapali to enable display SW to
> be able to control the clocks.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig            |   10 +
>  drivers/clk/qcom/Makefile           |    1 +
>  drivers/clk/qcom/dispcc-kaanapali.c | 1956 +++++++++++++++++++++++++++++++++++
>  3 files changed, 1967 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


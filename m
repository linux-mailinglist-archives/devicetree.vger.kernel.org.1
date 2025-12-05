Return-Path: <devicetree+bounces-244861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 031D1CA988F
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 23:47:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4138314E453
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 22:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A84F2EFD9F;
	Fri,  5 Dec 2025 22:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VcP8K4hz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eViwMG95"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5904A2F39AD
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 22:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764974806; cv=none; b=NAx/+tVgjKGo7tHwuImX29aGwbq50wHCPyMaam69c8HopIU/g+p8zH7qxqZvK0Oa85uSSZWywohhsRxGkgMpOh/ZOUCBIM0JLmzXhMja+7gvEwrBsaBvBpPsdzjyoXDpn4xH5MZ5kwMauz2Wt9sHtP2ft+nNPh1KbZzdKizBm2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764974806; c=relaxed/simple;
	bh=s54DUBlniIfTQG5fm8lfKTLEUg7RzP8W4O4OTB+4wvk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RONPgl8st97/7fqk6fOEePEZLZH8DoUiE/avrO5DoSD46Q9fexHykqRwZKctbpk4LWzIGn1SNl4VQSnj8evSzVy9FlhxiABCez0BPlBRObay1BpuETNNhs0jXFcm/fW+W/zgTnOPyO8bw1Rls2R1f1e64qugff4MOdTrhmKSwrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VcP8K4hz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eViwMG95; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBNOY1077689
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 22:46:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rexPS3uTR6hPe7Lt/DLK2HIm
	WtH+Q7ntibhQQMWSHMg=; b=VcP8K4hzl5ZaBLvBo2eV+vf1GM+ELNhyvzfjAwKx
	TpT2BAAM6B8La/8+/DVVm6OHWQbT5u4o314PnHMpk/xxd0Z5hqyxJgEl3pSGO32d
	r4pC5Vb9tY+41oILEjwUhzvc3njvz08XocBRv9ihPqXFP7qgAQ6shL1IOvLimMkC
	8OWZ2Fqi2uIG1MIhyaSp8GensJYF8a6+Q2KXKqH7bLRGLwrfWNGpgZA8pCBJZDBG
	RShF8tJdBNGQS9r0pdggy8EtUWW6WeLHTY5nlHd9Pzv1h/QjHxQ4NR+4s1d3DbUu
	SHZxjTHX6+hBbzPxgDedwjHd06NNRD6n8lf1CO1PjJSYMQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aupa8u77h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 22:46:42 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2194e266aso513828185a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 14:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764974801; x=1765579601; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rexPS3uTR6hPe7Lt/DLK2HImWtH+Q7ntibhQQMWSHMg=;
        b=eViwMG952HAso90u+ue3fHA2LodYAfdzlz4qpGPk7FgjEWtqy3Njxz4sD/RIYLi/uZ
         ajRSDClAieiIg151gO2FybTEQKf89tBqa+frzA4KzDTAHooGT0rHlewNQEy/FZ07x6YQ
         AkfTLypf5i3dmHW59dXWi43nPNTNOAXwA2lLiKxLr1+OH7TQ0swzCj5iJDjoqBGJ8lCE
         yiZJA8Agq3rAFRgVyqhLooT83r6jfXEtiBsBlqhcy7dMTn8SwAJw4RzHwv1LlnrRYOi7
         aWm1Fcyhur5MgPhus2IfpE02ML+CAnG9HxeQvoKkaJoLILKH3umIb1zI6MAjZKKLzmBW
         e/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764974801; x=1765579601;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rexPS3uTR6hPe7Lt/DLK2HImWtH+Q7ntibhQQMWSHMg=;
        b=minKQkUhp+Yjf5y+lm0UyoMmRcE8F/y8mCizDmKo9Xa8mJPiAfdBM8gLzZq3bNAvrF
         Ljht6EYz0I2n2fPaqBn/0dVi2NedUlO4f+f1woj6sxq9JWzbz4ulI4BimdqGaeRGHshm
         wAdEcuzkuQ2JmsN1S3KTZ/EQeoC6Jt2f57nnRNGR1E0JsfpWs1nqG5o9yd7dXW9KXBi0
         uYD6vl8PRX/xvKRHEq1m1cy8f6oBL0qcvAxQyWJdGCsnoXS4LSp9sa5/E4ZXKt6XDV/K
         7IEVLh9hG3ru7bGEpm3MLdJ7G0bRvJqJnc76ZcM2T6bjr+OKeayO2CbTPeERbZJgEAUp
         ZbWA==
X-Forwarded-Encrypted: i=1; AJvYcCW6pyCMFMNPplhdTxj0t63MfsS7mk8T3net8TpbOAzxgG+c1quKt6PnKNgLNXaHvblFG/zUivEv6Ytu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/uVsDp+3YQVMg01C67l7vzVMvJ00SAuiyKEfLBdJqlPrWtCzS
	qAZbRGPNZyT5Pul+/bIQvZjBNHkFMJ84kzznDM/x4S9fsvWOSykaj+uPnPjTFt7+9/zWO2uZK70
	Z4SLuQbZ1aQaRrXYCIi1YdoJxbV/aSpi50EoethYj25Fa+fRwplf9pMP/PPrvMcG6
X-Gm-Gg: ASbGncugkdiztqjRlD7ZKJCnd+vG5sfM96VGXyzltM81gj0FeonTsEnP2xUGDE2Wb7I
	onNryjd+9WsWIgCu4veCbvuPclQcG7+GJrw0tL7jLt+rZXexi4J1cv4K43QNKT1EdDSWJ2HeGHA
	1FznuIeZcVJ0NRsCHM0l9CTAazkkMmGjIdkU3mKoSd4ky8Z/3K6CepCIU5gqWc3wa/so6DI9PJa
	Inst2F49py89h2vIl+2eAFhH7LOvJ0ha/XvnEqaXK4x6oVOkYqPCp5UWymHuCIEgATVqQ3kuwli
	peE8fZUNVjf7pag8pXQ52peuQtP0PxbvtY/bO5TRFCo8dAThqyh+XNyNn3bRWI9oM0aYGnAZrLA
	AjVhnOMH1PUjZA76HxV/Hg6sUyc3zZvHFh3JFKB1j+jlUp6t2axatmtMQVi15+Yw+pwyQ5pBI6E
	GbJ8+UwtmrAjN39Li4pZjiY8Q=
X-Received: by 2002:a05:620a:4694:b0:8b1:d8f5:6d08 with SMTP id af79cd13be357-8b6a1af0b23mr129434085a.0.1764974800749;
        Fri, 05 Dec 2025 14:46:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGxKdNzETZwLBvey15b5qloAWZxhY1ri5X6GGhsrtXkWW6ZLsd4zqB6QOkgXRl4kx2Vy/2hEQ==
X-Received: by 2002:a05:620a:4694:b0:8b1:d8f5:6d08 with SMTP id af79cd13be357-8b6a1af0b23mr129431585a.0.1764974800297;
        Fri, 05 Dec 2025 14:46:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c283adsm1851768e87.85.2025.12.05.14.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 14:46:38 -0800 (PST)
Date: Sat, 6 Dec 2025 00:46:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Georg Gottleuber <ggo@tuxedocomputers.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ettore Chimenti <ettore.chimenti@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org,
        stephan.gerhold@linaro.org, wse@tuxedocomputers.com, cs@tuxedo.de
Subject: Re: [PATCH v2 6/6] firmware: qcom: scm: QSEECOM on Medion SPRCHRGD
 14 S1
Message-ID: <s36hhtayof5iyjmfglghblzwwzdjs5nltlc43ehp4oedw2kjz3@3o4oiocimpca>
References: <20251204155212.230058-1-ggo@tuxedocomputers.com>
 <20251204155212.230058-7-ggo@tuxedocomputers.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204155212.230058-7-ggo@tuxedocomputers.com>
X-Authority-Analysis: v=2.4 cv=ZqDg6t7G c=1 sm=1 tr=0 ts=693360d2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=yDUiu3_GAAAA:8 a=EUspDBNiAAAA:8 a=6UEDtKjk7QVkTALdrA8A:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22 a=gafEeHOdjwYkg5oUpzAY:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE3MiBTYWx0ZWRfXxMmni3LFlJ6K
 wo9654tuyyRjNWU2efzluTO/mA6YUYp79u9rQXm4XfTM4yZsxYpg5uuZTjUIIFDvEyZ0vV8K4M3
 UtsO6VEyM2lE4m14/buMNfopOQscXlMw2RjTCgOlbjCVWgRAdXBT/X4iybminaXkB04+HAuhPra
 DpSQK9fydszg8l3GVagfttfyuABYHgd1GU2c4+c+uLxz6UuMhQE2zUbpb0yLqTMFFvpNcO+UX6m
 PJX2CQUY+Ov6z2MG67lTs42vzWr7QBva7AsCn3Vpo5MerBtAd2F+dU0/zzKz2qJPh1dMY3a9wQe
 SG1XZU7VhEgoQiy5oLxZAYeZVkKXwQuiW+7a/WbQOui5/+pqVzMag1AhUS9F4jO3gNoErBF+XY9
 Y7c9E/n64eoGT6u6T2+KU+io8siRJA==
X-Proofpoint-ORIG-GUID: l_0pNi690OtHzALOOAEyOwDTIaTMXqK6
X-Proofpoint-GUID: l_0pNi690OtHzALOOAEyOwDTIaTMXqK6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_08,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050172

On Thu, Dec 04, 2025 at 04:52:08PM +0100, Georg Gottleuber wrote:
> This is needed to access EFI variables from Linux.
> 
> Signed-off-by: Ettore Chimenti <ettore.chimenti@linaro.org>
> Signed-off-by: Georg Gottleuber <ggo@tuxedocomputers.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


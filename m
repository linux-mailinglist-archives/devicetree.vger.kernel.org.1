Return-Path: <devicetree+bounces-255416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A01CD22BB7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E5CFD300E8E9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0B0D314D2C;
	Thu, 15 Jan 2026 07:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UfnHq/qU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DjhZZGaa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794711E7C03
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768461063; cv=none; b=D0TV7grA7o42w4XU+YXH1zMfJ8PZ2xXaVGObEPfssvIfCk66xKHW00IEzBw0+kV4cQ9I7yGxiVSYso2pebV6pD5hke3h9FCTpnyba/zZWamkQSfY/r2+w6/l5qOEfovNxiIGYJK7M0XxwsVHfgnl5tD1PU/ex3eMBnEe0gXQhTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768461063; c=relaxed/simple;
	bh=ahdCF5IzGvJ5Y2Kaer6ZEsBWxkVCn9FHtltPh4gfQQg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C2BbrR4acVcz8VjWRbEopoTYcuQ3WqKn+jNxQomJ6F+8Qspk+F8kWwvK8TWrGVdGqbr+w6MhfI/nx1C/H9JPSP/i0Bt0YCLAG513zXp0u2QvNYRe+9l0lCrzS7qMZ/MFn6Of6i6c4zXHZeTYmaoMu1SVlwZt9TYES020NUgAxcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UfnHq/qU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DjhZZGaa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fqwl1170801
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:11:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3Wyck+ktuiH2aE1K8w4QRU02
	rq8oc7Yf1e8wrTHy5Ug=; b=UfnHq/qUAEeZKIbjSi3vme1fdWF/CAyOnTuOSb3W
	yriWyMUKvFjXz/IQtEdDCWwc8e6oUOFZQRpW9WhNOHx6Brl/s9FoELjRKayf3/PV
	5esK55hFywUb2jHZuv5xpszwEbYhQj70SgYGyk/ucuLmm344TaMHpM2YDlKQvpxN
	7csulVK9S36O/mzoQiRc/0URmzZUzmFQzd9ynsb34b2Ryiay+gHvBbVtjAIl/nHG
	MoQJxZkhvTLNaOL2VVHhNKqZWwNTPkSonTd8sfiof9HVvhBNZguBGjB0puAOlPNx
	WJdKtP602P/EvxTU601PrOzJbQsssmramdyfstCbANG8Hg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpg849xhx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:11:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c530da0691so147874885a.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768461061; x=1769065861; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3Wyck+ktuiH2aE1K8w4QRU02rq8oc7Yf1e8wrTHy5Ug=;
        b=DjhZZGaaLonbH+S8idGZO/xZxKG5MtqzywJrZ0Jmd8LqXq+2c74nIWKpz0mYQnjDfg
         MemfhQD3qkngBslCxcamgnhwDUi4ednLvvRmWT8q5xKqvBUpCfZBxX4mYYry+YiU+6va
         AhzAjO7BYAyxzNLX4JX56uR91LRE/mPD3iXe2V7SXQUER1rJHEVoTxLe/fCSPeQf6VZN
         27vRSG4Hzx8rnNECczpBqof73mVHlMm6usVuJv6vyUtg5fI5auD46wKUIUOy3rQdFCE0
         JYLLs+UmEJYE8ZAvefVndV5L+77eKwLIxhPjwl4sxJ81dxLfpFyw2TPXgU8AVAEnu+Hr
         ZgkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768461061; x=1769065861;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Wyck+ktuiH2aE1K8w4QRU02rq8oc7Yf1e8wrTHy5Ug=;
        b=g9Q5ANPt71FVhkz1e0et/jeHj6A033+sB/NtPVfuEkGLKyhzLYklVjDujIpc6ndQB1
         +eFNtJJsi3APo3Af4Ow62D5mluLiMbY1oHMOmgeVXKUW2VkXzaXacw9Pwd0uOPR8rp7H
         rmsUdvaeemUcTux/GOItiQJeORZs9mizT9hwx/lYyk/cYO7/Zc8fiw+4bmqxuBm9ip5h
         aOZdcn8R/VimT6Q8EuhhL13gBY5UxunQqPxgVgGyQgp7NqhtDUlreVbbuD+2/deFlEG1
         ht6k0OpToftRc+tLSrWxx2tiUBNPiMrQleIUd2RumO2sBQuRNYp8lYTci1wQqjNQygmV
         R4ng==
X-Forwarded-Encrypted: i=1; AJvYcCXGxqBUVWpSulR12034EyotPNuWYoKxgnO1xkJblNDDMzU9Bz8nVoRTX7HirLfRjPIPqA5hCU/Ou6yB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxuq5KEoity7OgH5N7LCzD4OZKvhWHmqhOlkRLdU4y66f8t9KFY
	zhD+0Rrpn4K4vu29ckZfJNh4xyrLAiiwIlY6TBGWaNULA2X3zgzJhIKLbUA9EorAwOlKWtDTRhu
	jjaEmE6viS3eI5COFx3FkiLMTIzjKnIdemKumeE/lhV/WCHEDjBgWaIUhTk/A+dWH
X-Gm-Gg: AY/fxX7eq2VT2vCVI5AT6+fwsQpACBgrVywMDo4LFS3Um0rE3jg60Isp1H1VBKHjTuE
	iV4o397++lhMCp/CMhhsi9Mgn1XmfujY9GkOy+wL2WheEeDBpGPjucgHufn7LmsB23K6ONRuAak
	8jpsFTqprhtPKQNl3IsOI5Y0KYsoWMaSQS3x4Z4nwp4Zcb7YTwpspmuQk9x2T0rcZ8hr+6K/+Jt
	4AbM94f+RH8wsaFvhAmaQCAVr29aFBWHHOyrxDIVkLXvgk43bM5B5takCpkMW1Ute9Hdbav4tGB
	Cnmlt8IZubv6+suRk/zEXFDmIHjrGrgTsTmIqHA4lYDd4hdXfCBhn/6oElKgjvOSzz/1NhY8e72
	nN5KjSUXa+eQiGSDmxlERBqCHo1VoRZjs2rUslcqh8bWowk1YRu3PN9CNPaMZNYrUfTeHc5J7iG
	oylHHOOd5Lg+F6pnz6OnwJ+YU=
X-Received: by 2002:a05:620a:2996:b0:8c0:e5ad:adbe with SMTP id af79cd13be357-8c52fbdcc1fmr736808985a.90.1768461060829;
        Wed, 14 Jan 2026 23:11:00 -0800 (PST)
X-Received: by 2002:a05:620a:2996:b0:8c0:e5ad:adbe with SMTP id af79cd13be357-8c52fbdcc1fmr736805585a.90.1768461060328;
        Wed, 14 Jan 2026 23:11:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382f5f8a42asm55187511fa.26.2026.01.14.23.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 23:10:59 -0800 (PST)
Date: Thu, 15 Jan 2026 09:10:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
Subject: Re: [PATCH v3 04/10] arm64: dts: qcom: kaanapali: Add ADSP and CDSP
 for Kaanapali SoC
Message-ID: <jad4p5l6beny3uojc7lyjtku2c2i2ykple4lgikb7s5kfyfg5h@o6a3uqqkduww>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-4-a6cc9e45de93@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114-knp-dts-misc-v3-4-a6cc9e45de93@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0NiBTYWx0ZWRfX4U/PFvqKlkHR
 xNGo+IhgLndUDYmE1EcX0m+UmVX59fvCGvUfeSW65iUuhTm6mM91HzSyqG3bffo0Ol/tOBLT9tZ
 +dvHxHMNb7K3Y3rXUstFfwXJyXWPZChXONre3Kp39TMZkQiDdIJr9lRtniXUaltfpghrs1FeQki
 yJfirS2JWHAm+Q0WPBhUOuzcRGVjjNNFktCrcCsSzbSfc8t5PC4J2CEGr03nAXcXPKCuU1boreH
 TzeEUDW8wNrr9s3tIwMvfwmmwxMp+9N5N5UKhK5RuXCO6+zfccR6VxYrlqVJeZ+81BCAeN6D7qA
 N9z6UtY99vxXXH0l7H815qM8R1fRQ++J4Fl2mJUoXv6xSx//1FUUjeqP995Y9pRVrhP0m9ltIjr
 aEimySMTqI6ptj+gy6cdV7NN4WHHbceeXY0b7vtrdYlqzEX0Qirh7GsoNag97lWazqCvkKAuGoY
 RML3sviZE0K6AY2f66w==
X-Authority-Analysis: v=2.4 cv=IO8PywvG c=1 sm=1 tr=0 ts=69689305 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=fhQCKtEa9KXwpflw578A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 2amwsDkOZ4x6u2Sln5YSc0urYVuP0J4b
X-Proofpoint-ORIG-GUID: 2amwsDkOZ4x6u2Sln5YSc0urYVuP0J4b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150046

On Wed, Jan 14, 2026 at 10:49:06PM -0800, Jingyi Wang wrote:
> Add remoteproc PAS loader for ADSP and CDSP with its SMP2P and fastrpc
> nodes.
> 
> Co-developed-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 351 ++++++++++++++++++++++++++++++++
>  1 file changed, 351 insertions(+)
> 
> +	smp2p-modem {
> +		compatible = "qcom,smp2p";

Nit: and where is the modem?


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>




-- 
With best wishes
Dmitry


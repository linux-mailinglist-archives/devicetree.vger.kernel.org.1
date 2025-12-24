Return-Path: <devicetree+bounces-249443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF763CDBD65
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:42:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17B0C3018D62
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2960033506E;
	Wed, 24 Dec 2025 09:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="elRKjmpk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fgSfsdTx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D5E33469F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766569272; cv=none; b=D7T8lBxV2yvzpSTEVf99hMOBk98NYAf0Ijjq9YMqdorAVIeDebSZly8a/6IIjgU4B3nmPXhe2t+4A141FUsd/dd+txO6yzYHevyeysYIfpAnhZItmIAGDVbsoIgavvkBzb0GXgKUEIJABwfPy33YhRZiTyBShOox1+WtalDi/i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766569272; c=relaxed/simple;
	bh=6Zs66C66e51oF6bvJb8P8PjF0Cgi9dm/YRAGCfn1CkU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cRAZCqbP6Rl6s8P6QgV7Qot7iz+FIh0nrqNdVuSpiAYFDtL0mdzCD8QMdXFpTIF0G55XkXT7oT/ERBlPwAsc8nvpdl3ztHee3Fm2F0yemYxudRwjU9c+0xAENXtDVt09hPb5qKMjQBaP8ksPhKmSAhUkc+W5a6w6Ev7ykMCByE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=elRKjmpk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fgSfsdTx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO7SeSt1056217
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:41:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SQ6f7DLxCQvzo2zoEIFtp+6H
	URQyrcbTpjg0JX/RPHc=; b=elRKjmpkM2BGjT4K4eEatMZAFeO8QrUp3gQFDv1f
	ePk3FhIjMdEi9Zt7R0ewYBWOSvTKJmHEc7lZAYuQ3ykNHXfYd6aZJinB2I5j8oxH
	FRrxPuTeCGTa8Itg+PYZfj+VLtR7B+D7JLT+44Xpk7TmI7UbhWH6jgEJKgNdV+8O
	R1fgPM4VWZdyFw1myrQyQG6U9L/UPLtAPINMi8TipMUSI8/bBAlBikvmIJeU1BIN
	oDyd2p5S22lWE2riiIbeJmGeJKKRIyRS3mKw0DoGdTeIH+Gv/cyoZimvFhnhRPvk
	5/fFZ3obql4sfBujBC5pmXHf8GO8uGoeQNeSLxrW/BkOww==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v21jh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:41:09 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2e9b2608dso1185412885a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766569268; x=1767174068; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SQ6f7DLxCQvzo2zoEIFtp+6HURQyrcbTpjg0JX/RPHc=;
        b=fgSfsdTxKB5Dz2KVAOcCAov3lKuadn6axfrepwkw40EZgW0r/GHY8J6lmCTXILX3Be
         xDYhNhG2+FYbrRikLhcAUUn1CNkF4dhlc6yyrURwHEOAwV2lvcVmXEqR6sv5ryZVWnCr
         0b/jkvQXEVbVwJ7C8F/okJUydjHarWQjcbY1U9SyTPE7Pt5SGNOHO/RFZsiGCNmw9DVK
         r7A6BlvinY9Pifq2DxLvk5BNXwSTnHd30D0prO16jBx1jBRNtb0TKfNBofHxMO5dZjyL
         q2XjbBoYgI0tN58ESPQ858ADz03PTfqvtkQEMomgYsup0Slt/hn1LlNh4ozeXWX2bP2I
         PEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766569268; x=1767174068;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SQ6f7DLxCQvzo2zoEIFtp+6HURQyrcbTpjg0JX/RPHc=;
        b=nO9PjffWvCWRXITzi5d6KK5wg3xqjAdEdd+jg8hvNc311OW/ZC/CJobfc4t+PvMb8B
         JNBRrrqv9k8d8Fu2VzyR9OzL+Nz3xaNY3ZM/9Y+YxSQAdVrU0CgLvSIOhjEOWrL1L3Qy
         RCXtnCJA2wJq7TC4DSdYzFbdgdUzKIPLSatVhNn+bFQFCKPMEd2JfTk5/q+B+u4OEtiP
         9dNo82EPC/PIixsHoMfTvjF2qS3Li9EDKYNSI9g+Y2VFlVFx79bOq67sto/z45LIR9XN
         0PUn8YvTcVAS9OGCAhYmzghs2L8BiuZIDmUdjd7jjIP89388Xr+SN997hQsZouOerRYs
         yOgg==
X-Forwarded-Encrypted: i=1; AJvYcCWUURwx/mq0je/Cma2zIJ92xgihza4MUUlCyIGYPRw9ayOCdD7FNJ/YlPnIj2Oa/wGeJ2sdcn0kjiNM@vger.kernel.org
X-Gm-Message-State: AOJu0YzQBcxuZRASFsQ2SgCPG7q5Ngc4XLUjMQd5KDOvvsc7ZXqapytB
	ru7KZXpL/NexSmOinpSSFrBwPPLEB3ictrg/u07CDdjK7ER5mEmCBBB8iVFYTwYD7w4edVfaL4l
	23h5yOkLE5ZbsuHsh6xrkZrMNYZTc87+d+ef6TRTVNdo2I99H4lJKwSyM5yAJcRxl
X-Gm-Gg: AY/fxX6UsjIu4EccEfNev1NK2BsNS+vnHBw5e/JEM9x6qlypne8gRRG11ySGYFZJm1G
	newHjAtqlnkC5O7+glOJ86kOih4keidJeo8dlRL1LlWOkav4gHn1/0W5nLBkRnxlY5NvOf9po4b
	mw7ys9YyWgY4MBC1UGppco2R8ErzZw7F++pbx1sMAtw/ZWoAlrrz+x3jMlNdo3hhGYtzKcEDe/0
	ZoJA0kAtxvKazHglgVop14wsp6tOUI2hOoeh3gAJh+FCqlu9MSc1x3+s/2mdeX7nrE1pKpIlGeE
	wbf8fRUZLFUCVhTLZGWGRzLIW8MCr2O6AWCEoghMnLhm/Jd7T+TxhJmqD6eTYDGQLtAb15qQV2b
	To9clYN5kv1pIA6y5nhvFbA==
X-Received: by 2002:a05:622a:428a:b0:4eb:a8ba:947b with SMTP id d75a77b69052e-4f4abd026a1mr231577121cf.24.1766569268478;
        Wed, 24 Dec 2025 01:41:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQc/ycrEnXUpKToNeaSs4N+eKD+QMU/+LSgAENEXipeVqqqlcrAtRbgahJ/iqg8JC2K5dwjw==
X-Received: by 2002:a05:622a:428a:b0:4eb:a8ba:947b with SMTP id d75a77b69052e-4f4abd026a1mr231576871cf.24.1766569268031;
        Wed, 24 Dec 2025 01:41:08 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8056ff4925sm1261298166b.31.2025.12.24.01.41.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 01:41:07 -0800 (PST)
Date: Wed, 24 Dec 2025 11:41:05 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Harshal Dev <harshal.dev@oss.qualcomm.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: x1e80100: add TRNG node
Message-ID: <boaewq3bo74emhq5rfssdbnu3tbqvtddodqn57bthywvo44wwd@75ifota7jfk7>
References: <20251223-trng_dt_binding_x1e80100-v4-0-5bfe781f9c7b@oss.qualcomm.com>
 <20251223-trng_dt_binding_x1e80100-v4-2-5bfe781f9c7b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223-trng_dt_binding_x1e80100-v4-2-5bfe781f9c7b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA4MiBTYWx0ZWRfX5SODLO5+ViIq
 xUv3NMcA2B3VkMnpZ+i11iwy476wUBmWhuwIhQTWv5LlWcIxGOY1TClPMBn40dn3jzmBtxnk4xI
 oJ3ZrcngH8mYJClFrDSjWG1vF/4hmt4urDeAfQhTterIjgzl7XhtSVDBZW+TVETQxzihsN8HSih
 ze8uTMY9YHmZgAMGfSpn/9qo1INZWYGdv0O6yRnJ/oxQJ+77I4S5x8+PUQU7LjF3aQ1+V/oNc5P
 EWih4tIC4T8UkELMXUQpU78Ng3arLrXx1JBP8g8fScsmoht2BjSTa07cxTuWC3Zjgsrj87CHEha
 sj3zurF0UsuVLeJuH6EM1dbBsghAV7dZuWam8OOhrwp9Xaouwg/80PWnjXsiZlQvZtzxltYhFCA
 I6N5Xjzc8AKxxZLe/pjsqyJAwnqArZ/Kz7LMidJgfud4Dx1BG5Agt/vqhufrfOYTOLtIx+k7RS1
 AsSI/nOaOyiOdyLHeoQ==
X-Proofpoint-ORIG-GUID: nIRllmQGhpeN86AtAt56GA_3lH-lJh1u
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694bb535 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WmeePSlto-DxRHfBUH0A:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: nIRllmQGhpeN86AtAt56GA_3lH-lJh1u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240082

On 25-12-23 10:18:16, Harshal Dev wrote:
> The x1e80100 SoC has a True Random Number Generator, add the node with
> the correct compatible set.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>


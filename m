Return-Path: <devicetree+bounces-259838-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJk5HQyieGljrgEAu9opvQ
	(envelope-from <devicetree+bounces-259838-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:31:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95878939DF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:31:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2EC14300515D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:31:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7C10346AD6;
	Tue, 27 Jan 2026 11:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P9C+DKUG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YEgZ6MIR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54082346FBC
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769513477; cv=none; b=k0y8H6SeCdkRFB2gF7IoPwiVgDwty6gEAWR5j/hKpz7E5VkHzTZQybES3NLYCh1wWQ443ZU9RD51ub9yRFHJWorHgsrNjDS1KAukls8a4mRpkrM7XjUZEELSSuwFjPhM72mvSGD5nEqIeLIwsifdpS9Zy8iUsq0vYOSE6lYZeZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769513477; c=relaxed/simple;
	bh=Urol0pYuPxPGC2lQX1EPUImulHMLveUGZZQ3278uW6A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O+iRLfWr2iuWQsAov/RFdLPx6VUjl+x2dDaOPfrNf+TcL+1trmDifztdIwNPYA2GhhFFz4kADZR5E4acWbdWpy9NNL8KDzuPGptRjFCV8RXt6xPUFIFZCQH9pxC7tUZ0vdkd1BhhQGijQmXsk0+wBj+96bVKoz8WzUSU5H6vNkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P9C+DKUG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YEgZ6MIR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RATGTJ495967
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:31:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hGZRYHdhTWMe6g6Ra+PVr8tG4M/ZgyWo32nxuKBhByY=; b=P9C+DKUGbD1/hbbr
	V06HODOPKujtUIiUx3QZEiL2v/BSdYRRo48jOW221M499xib8v5zVrdvy0WJ2nG/
	vxNal+012g6ZAIP+NfBgSFN3FrGdUc2WEKrgAvv7/OvhEPGt4g6uwUtRzRPjy7o6
	mWF4KhDe54/CXHbBnIO+UvaSwBVEjOKnbJ22Iq8gN/cqdLw5Y1Px7ag3Q/6olTq9
	CQXh89YwP/J5MtZO6sUjvEEp4m0j5sYT+7mb5qHCKWAYK0EZxwT4D2HV0c69DEHp
	GaogkTWyNMIYNmX0OftgbZYYuUhDp5y8Sr7AaKYKEMze7PPKlc3fGhATfpCY8Rtp
	1yv84w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3bjhqv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:31:15 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52de12a65so114471285a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769513474; x=1770118274; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hGZRYHdhTWMe6g6Ra+PVr8tG4M/ZgyWo32nxuKBhByY=;
        b=YEgZ6MIRctDsb53bgpWIeFFO/6QjirXLdsT555WDtNLbJD1JcDvlPCUZHgTLamYrYT
         CZhkIK6r6PKV2/+FAotlNZxxq2Zj7fXYuBuMOM88QJbwC+fv+LZlBEiqPYgBe5Zf7o86
         SH6g/wwZY9wmjO7ddSmXPE1H2URptnp6Gfj/3SoX1tEk2ru4QqhkHK5gzKbA4i6ClsiD
         jwq5YRZsO+ISu8FjbhG9pzUAaa6+UxT5Hi2eTGFXFsxE/8TZWboQ2PYzRWmGo+jfj7ke
         H4ueQUTHwUL5SiyamxxV3w0Uoz53H8z2Xu6TE7iJAd1TzFV0bYATN+6WwJCctRfuXhA9
         4KcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769513474; x=1770118274;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hGZRYHdhTWMe6g6Ra+PVr8tG4M/ZgyWo32nxuKBhByY=;
        b=gzCFp28uz1Yw48KPzcp5mn0PE1NZoKhO7ralmqEQX3YFcihFf4gbmOG07pdMsmS5ic
         4MqvL+cI1UNjQr3DbaEZtUkzVkNnOfzGwsE1xN0MghbtuaSLH8E28yKngZS7Fw/DMAkS
         CR3n743Lg5IDFxoB8XvVXtZjVCIzgBu8RGLmS5gmQjPOCVddnur3TX9Y4HGQcaZt3eL3
         IMk/9HYzRDewegtPlXK4mkOcaBXfyVyk0cGy9XZ0bs7XyqVJiAdF3eR1YNDTvEJPjcLj
         xcqnBC8C0rXanMxyF/HZMJs9LjK13KFqVXyrXQpgHV75XEZ1O96GUzjLpoGv52ALY37I
         OwNw==
X-Forwarded-Encrypted: i=1; AJvYcCWmsgNCtw5g+DltJptggJ5vWwLob+kaBx8jvCMxfD/5Krk3FrhnzfOiTWDXByGCEWAY8pvsSgDhMbLV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0gCyxaMUYGrn8GyVLtWvLjCFWMamf3FFvZuLt4r8pbqd4Ox57
	SWQb09uqfeCyOhMK9qnmpVLNAWKWeComemn65MKruwITbXwXKqsnM4l107eIQPo2ctIyunIlPU0
	+F3E3Savb2Lm811s7+wY/UJ1k3Xka9k5rqCsPUvjW1BXRYJYuO/Zjpd+nAA+pM78c
X-Gm-Gg: AZuq6aISj6y+gjTU+wV1mkIDK7xxofceS5FMIWF1sA21MiJr/h05+nwYt9YFTvZK8AQ
	RJ7jIpM78dji5v9Hi7VKDYpxBbMkUvjPV7m0XlVgDKmjPisTIQBtabcVk5xjKGP4aLLi4azzhdJ
	xPn0NC8oFLID0cCkompLrQL/ANvWlxaU5mrcmXZ+bNTTOw5UIIcscukEuYApiKxFZg3Wp96FqPa
	Xg0k6rToP/5J656OxyDQWm7BgLIBxB3oz2LCis40gIkrSPAF41FpiycNoDEcGdPVchaj92nYTwa
	BKLEpYAU0VwB3umjdt5bQFpr12QLXSTLepcDTprLberYMk9Uy7PH4FROO6oOHgM28S4h+cUdJrZ
	8cxk60MGutN7eBs7OhpZ+ni1TPDXHyCGUYjO5s/NZC88WK5l+Gf6d3iIpVZu5RNczQEs=
X-Received: by 2002:a05:620a:f12:b0:8c6:d3a7:3d1e with SMTP id af79cd13be357-8c70b7413acmr114752785a.0.1769513474392;
        Tue, 27 Jan 2026 03:31:14 -0800 (PST)
X-Received: by 2002:a05:620a:f12:b0:8c6:d3a7:3d1e with SMTP id af79cd13be357-8c70b7413acmr114749085a.0.1769513473873;
        Tue, 27 Jan 2026 03:31:13 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8877581a03sm634706866b.43.2026.01.27.03.31.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:31:13 -0800 (PST)
Message-ID: <df4f1934-7366-4ded-bc8d-73189769d967@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:31:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] clk: qcom: Add support for GPUCC and GXCLK for Glymur
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260127-glymur_gpucc-v1-0-547334c81ba2@oss.qualcomm.com>
 <20260127-glymur_gpucc-v1-2-547334c81ba2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-glymur_gpucc-v1-2-547334c81ba2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: cT3L5cbM4iK09LTd7a9BzNrLVAB6t3mM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NCBTYWx0ZWRfX39Ld7Kp5DpoW
 SBAqyXCb4gGcAEp5QrSNnjPDYUEp49v7C+bZCqWuc2EoeFDF062jLnMmOCqiQZOtPiMbzLY0EKz
 qaa4N3CE4Ja0hakCyfVkK5BeDkI/UmCeSGvw65yE5K+D5771O2ynkAWFJpkEtrul/UVgI54GIOr
 oGfS60D/Gbanjdszyi1L7s8zQdkWp2mRJxv2nMrKNbaqhIMUS5RVvQvLI1NHwzRIeu3sqdUgMPZ
 bX0AiTYNFDaKGhHiGmDtyck+keGk61C1d2cw7MzTtlcgMAKyzweZl99ZqYP2KQe6CkafhYsfhT5
 Fw3lOmi8diFwTvSIi5bsdQ5RQ2Ww9kqqsoxssdFPRoHqBGo+dMFS3zwey2s4moBuQXjouWiMpJq
 IXnfXXxrGC/j8VDiyMHTlu7BzLlopMd4cMFZg88Qn+6S7DETJItbMhkxyEAQWFmLJ6ZA7ghq6pW
 uA0mc65vZMsa174UcJw==
X-Proofpoint-GUID: cT3L5cbM4iK09LTd7a9BzNrLVAB6t3mM
X-Authority-Analysis: v=2.4 cv=AOFXvqQI c=1 sm=1 tr=0 ts=6978a203 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=91OgtvA7_0Jf-gwRHFQA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-259838-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 95878939DF
X-Rspamd-Action: no action

On 1/27/26 8:15 AM, Taniya Das wrote:
> Support the graphics clock controller for Glymur for Graphics SW
> driver to use the clocks. GXCLKCTL (Graphics GX Clock Controller) is a
> block dedicated to managing clocks for the GPU subsystem on GX power
> domain. The GX clock controller driver manages only the GX GDSC and the
> rest of the resources of the controller are managed by the firmware.
> 
> Update the compatible for Graphics GX Clock Controller for Glymur as the
> GX clock controller is a reuse of the Kaanapali driver.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

[...]

> diff --git a/drivers/clk/qcom/gxclkctl-kaanapali.c b/drivers/clk/qcom/gxclkctl-kaanapali.c
> index c209ce5fe4f003aabefd4421eb4f5662e257912a..3ee512f34967f1b165fdc5481bb28e1dadee133d 100644
> --- a/drivers/clk/qcom/gxclkctl-kaanapali.c
> +++ b/drivers/clk/qcom/gxclkctl-kaanapali.c
> @@ -52,6 +52,7 @@ static const struct qcom_cc_desc gx_clkctl_kaanapali_desc = {
>  };
>  
>  static const struct of_device_id gx_clkctl_kaanapali_match_table[] = {
> +	{ .compatible = "qcom,glymur-gxclkctl" },
>  	{ .compatible = "qcom,kaanapali-gxclkctl" },

I'm not sure this is correct - there's an extra GDSC on one of them

Konrad


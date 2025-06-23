Return-Path: <devicetree+bounces-188462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1422BAE3CF8
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F0F33ADF2B
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 10:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 882262475E3;
	Mon, 23 Jun 2025 10:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BEW0xE/J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E96239E7E
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750674805; cv=none; b=cnK6h4k67QHkinRVYSWhbRCqS1wZEXjF17w0jFamJchpcwSztPU+o6g6V8vbP+S0SpmHtrEuWeNrcIGwq9Rb+BQu/lI8deMApmkRepmWMxVBx8j13f4jfUztQX+PkH/ds6kyefGOH7o63Zw3W5tzhqNfm+KX+nmpXezUJ9WyhhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750674805; c=relaxed/simple;
	bh=a50t6i0ar2wX7879ESe8BCD02vslV3PUl+14n0qOR+I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GaSBoyXM+HPI1fjXhgcMVFp0z/OBka1CAXDEbO/Dn4W6/yN2/bFNQHhn2RwEANrk6UR2EzHhlNYFghCPD8tG7rVzwpnu1OeH1bz7ivBTHLEY/qTuOchGUCt3mxxqSkS0m4QIRHaYPVRtmYsqbQ+1nRfV4c+fgoCwUfffM6DnedI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BEW0xE/J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N93IFx015940
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:33:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dCmb85WVO/51E6pHDcfAo/yNEVZoP1t3GhBBQKdPtBo=; b=BEW0xE/J6nveVp+7
	BUFXPzGXWeaG/JO+/TLBQUMVrHzp8V/Bp16+NC0kaNZ0fL7tr5hHAgQIpvV+pLsb
	bgZj8YsYXYaHSyQ3Q9Yv+WFqBF4rG9uF1KX1SlbLpT8xU1YkWNyvNlXECAdSU/6j
	iXLw/znWnvv415x0WCkyWW3Ymb7fCWVNeAv5IFOGPsiEvUxTPJ2cGOV38kOPPdUT
	mD7zOAxi4oo40kOezB/eu/Qay0rk0czT/6cl37stT1GDS1WXI5MHAIHfoR29FoWF
	G+8+UitxufmkZVVW9hsHNrodAZ1cAHrcCe18bDvG9687HV0cA8ME1fs1ufk2i5kY
	pWLBPQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3xu08x6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 10:33:21 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5af539464so114467785a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 03:33:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750674801; x=1751279601;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dCmb85WVO/51E6pHDcfAo/yNEVZoP1t3GhBBQKdPtBo=;
        b=iCh3sKufdJVyqVoo29lfeXSacJi1rmdtlZOVY//bT2wa4TiLKrVOtyrCHxqiRNogN7
         60SSHNiM0ShYRM/ehDTt2TZlIJYx46XFYZg/rx8nhyQyl51Uwl8PhQUgzJkOAKk65g9Q
         NvJsAa7qWqqIO1Jf7CiqpVvlxgRCeo1YvHeZIGipvBrm3JaVE2VJHFTgf9cn6jEzow9e
         Kk64zPPtiNK4XqVYmN7LmpauCpawDo6BjrxazXElnUo+tWy9gg4sLFsgt0gUGNnUui/v
         xIYdM+LgqfMsK8M2D8RtivQ76apgMfZUvDWibzgamy6wmjLB1hGPjnIDoQwgAbyrcvgQ
         SbnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpIEDePYh9Uj2XqdyhuJF4MfR7YqfQuI998ebhTa3oEV35vGdCEnV/gQmY5sUaN5Mvng6LXhY4KR7R@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo/PVLf4KMtm4nhSwwp+mvOTQWLr+tiyDDFzn64f3SPrbY6RNO
	WYPyVTNArykZH5TP91sxepDt/9TxsAMhTrzAefUq7BWgJ8/c8dAkxukwIogRkad6gjo+TnhfRd4
	cOJ9jZ/7o/azvAoLFHvxAA6vui3LEVmPPF7SZGgBbIs9AEh4BROTtDlZK1muZz3Mo
X-Gm-Gg: ASbGncvFVIWBYuJ7vyqhpU0bWuP4MMXjOgi6yNZDJVpD5+Bn0tmwRFXCZOCoQvV9ngX
	p9lwIBZmfdJ01WpdJQVtRctQJgtKYbjUxLB2MqOe8s+ktaeXlchEDsZLxRNv+jQXXIbB4yNLAus
	6sGlI0sYClm4Ml+qdbVG5l4QRFQYTVYcmD8Iks7u+asv2rMKhMII+1jLrp+GRpeAcMJOOAscn6R
	NCzBd3J7uBZHD5efG8eJ70spT3uI+pN/iWAJiZFSqdJJqAqXG5Gq9ZMjvlC6mBMB+VZedxrrUzw
	ElFZzMYLhxoRIUg4sYEsvYsReV5BUBmOl7+Vgn1pgJLkPHt1MmQJSgjid0tpILF4fQcWb0d+T3F
	JzPU=
X-Received: by 2002:a05:622a:8c:b0:4a7:4eed:2582 with SMTP id d75a77b69052e-4a77a208dfdmr74778701cf.4.1750674801059;
        Mon, 23 Jun 2025 03:33:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEln7ZGKKW+D+JHPZzQ0nxqJnJa2BYglgaPTSkAIb5LBz0k52R7GuKUBnLC2HnnT1pe5nkr7A==
X-Received: by 2002:a05:622a:8c:b0:4a7:4eed:2582 with SMTP id d75a77b69052e-4a77a208dfdmr74778551cf.4.1750674800631;
        Mon, 23 Jun 2025 03:33:20 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541bc9absm692214466b.145.2025.06.23.03.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 03:33:20 -0700 (PDT)
Message-ID: <f791e356-a24b-4db6-8d11-fd2c3211e2ab@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 12:33:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] firmware: qcom: scm: allow specifying quirks for
 QSEECOM implementations
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250621-more-qseecom-v2-0-6e8f635640c5@oss.qualcomm.com>
 <20250621-more-qseecom-v2-1-6e8f635640c5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250621-more-qseecom-v2-1-6e8f635640c5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA2MiBTYWx0ZWRfX8ijIKCf0R8i1
 tbYZRqet5gGPR12uKCbd9hhGZQUU9rKvyIbFls+UZqbzS3zAPqLmX3IxvYWruqE6oYVQT4pj/8x
 /Pyi2SjO8CyHF872fIprzetWHD3L1FUK+qLknx52AuQrccttqpGUPyLVRC0Mdjk1WVcAtr3iXDY
 TtipchPgP5kzuoWUa3MuMaSK0167Pb7X8cNgo0DSiDDUHdpkU+pQVt2/oPCPWvJOBN/lItXax+2
 nW9egWw37otx5DiyKyFBjFYtwXX5znFtYGP7e9Og4BsgWI7vSjMVedotGckio7l8+0FcwF1TZol
 J9+nLwV9r2WZMelEmYYDEOUQBFoBO7YLXjFt3nItf2rDkv7Sbzg1h8CoY6pQ7J5ASTKfmzw6to9
 kzbbYGIFahs85i6IdIyi/+44L2WnSBP+8EL7sWZ0vs9c7sBu7r98pmuxgX1wr67yeAAKCoUU
X-Authority-Analysis: v=2.4 cv=SvuQ6OO0 c=1 sm=1 tr=0 ts=68592d71 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=_nksSFq5nnA09yPRHO0A:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 7LBz0QhqHPzNxruHI7hC9srhzCKj6OL3
X-Proofpoint-GUID: 7LBz0QhqHPzNxruHI7hC9srhzCKj6OL3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 impostorscore=0 spamscore=0 phishscore=0 adultscore=0 malwarescore=0
 mlxlogscore=909 bulkscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230062

On 6/21/25 9:56 PM, Dmitry Baryshkov wrote:
> Some of QSEECOM implementations might need additional quirks (e.g. some
> of the platforms don't (yet) support read-write UEFI variables access).
> Pass the quirks to the QSEECOM driver and down to individual app
> drivers.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> -static bool qcom_scm_qseecom_machine_is_allowed(void)
> +static bool qcom_scm_qseecom_machine_is_allowed(unsigned long *quirks)
>  {
> +	const struct of_device_id *match;
>  	struct device_node *np;
> -	bool match;
>  
>  	np = of_find_node_by_path("/");
>  	if (!np)
> @@ -2020,6 +2020,11 @@ static bool qcom_scm_qseecom_machine_is_allowed(void)
>  	match = of_match_node(qcom_scm_qseecom_allowlist, np);
>  	of_node_put(np);
>  
> +	if (match && match->data)
> +		memcpy(quirks, match->data, sizeof(*quirks));

bit weird to use memcpy since it's just an UL

Konrad


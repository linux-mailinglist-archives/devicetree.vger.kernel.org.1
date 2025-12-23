Return-Path: <devicetree+bounces-249232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DA69BCDA174
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 18:22:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 465CD30131DC
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E8A3081A4;
	Tue, 23 Dec 2025 17:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L41AucPh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fK0NWnQU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7412C21C2
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766510551; cv=none; b=j9CPipyK7Pzz1pRDbDhk5vydEamJFFYJKwR39Urn+G8L3xSaPMZZf0B68enPvCpZwkh7PuGM7cD9WWfUf+TKGfeAPZ0CVC0mbkcJbp7pS4hvdAMcQSgjW8nqGhlm2yewaB4v5csyN1r6JUiKMi126aCuQUPe9Tv7neIODlWzqMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766510551; c=relaxed/simple;
	bh=n/VZPJhCCfxyiBW0vEKI4xJrWGWKXKiLJn7+t3zRma0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=FS6VnfVqCIVveXNV2h8SxLkIPaEFu8lcCJaaqd5DY5/qW7l01V0hFlaDyaZv39U0FtF6+MiFbqeVwF4mNEn6s/Yxa1XxhGQEq8GF86Y+iT9mi2lmZTXgiNVHdNNnKjcnEZr0EHIgVLEpj+/h7fQmodhTuXRw5XFS3iF7cfi6Hng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L41AucPh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fK0NWnQU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNAlrvj1569209
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:22:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Orq9wKUBvVzGkypvy0iRQgRQSCu3S8E+qVpuNnKHYM4=; b=L41AucPhLLeMv2qt
	k9eRXNzolkkHuyicIYlwhw5Qsgh7j8ZZ8cwkW7bJTKm29nwOtPMLWDXg2X403Mms
	oHFNnacoe1K5XV12S0J1r/ONKMgEMzQu466rdQry8+IbF04I+iyfJmITvlbTTkWE
	8denWBnH7n6cJWgLypoDDVp2n0btDZ5/xJmcNr97df2C4drI5I+ruRvqpjAXrlCT
	AMLGNTxYa6MfGeZBRNbnJGLVoQEoBVznQtARdk+rig2jYJgG+0if2jP0SXFuOvg4
	0jv4363heMn4EN9fq+69R3wNW0r5N6joDYmO/NEiMmwULdtdiV/e4oK4wjAi4z6W
	yLU6Gg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b76yy4f78-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:22:29 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed9122dce9so2608421cf.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766510548; x=1767115348; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Orq9wKUBvVzGkypvy0iRQgRQSCu3S8E+qVpuNnKHYM4=;
        b=fK0NWnQUZOxmV4t2C0ighlApyX3HyjubcqIIO01CSTKvE/nrypbbzF6KHcw2W68w1t
         rlcrs2EXYSemS4PXiK5Fa32R/dvu3YoKzhokRA+J/FJqQJ6/IBPjrqpB82oLdWtYd2ed
         jJr2jzfeHQ/GPtj8OcquHXgn/o9qDKcZLjhh7+aWqx1H3XszU2Run4j08pDY5W9mbiH5
         ejH8FQFZr61eJ+xTKlRW4Q0OK6CA7nV+o10pqu8lpGfigoyW14xooUBvrp//fzKqy3B8
         NyMF3kfGBMRrcjvZRMAgHjq+yFA6YRdbejC/qzJLfvJiLwzLANtCuTWBHS476XKHTz6j
         TfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766510548; x=1767115348;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Orq9wKUBvVzGkypvy0iRQgRQSCu3S8E+qVpuNnKHYM4=;
        b=QmL4sWOKUHT+Fvkl6RqO5uqLJi0FCwbZhFglZvxuizXAhZTe+Vhx2FQ9zidQVx3V84
         xHJnmaEBKmR+5kpAhgZuR7VWrbGBGZzBV/x7VWHWv9SHMJ7zJ+5sX87zvT3DmoBrKxC0
         vbz3mgpGvIYLEStfUdNAczXWft7/htCoU5gYmzG17YlZ00XhktbY7OO34QETxZgGtDJj
         UXxAOWDYdWvLSMLKauKatIjcm8zYFBx985dZvbAFs+vj3hXw+iBfk/mRZ49e/zYd/tjJ
         /QbMP3ozoqrZAu2O9yRxqSxR/vkmukR8jwrRQjTfEFNzncDNridFv4pTd6YXFEHGGckR
         0pqQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4W6HCgI+QRl8sFVWKy72rKE8B1P70TrLSOP/Ewd3jjOr96zLdS0tr///cro9+BxmHjtJexER88cW/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6oZ5YiI4Z1FM4jkGCabG6N6xi10MZO8xPoAKAqGdWKJ5V/G4g
	7+DnlNBLhzLCiapFkHLxAxiuJRtQqKYApsP1nfnJhSoZDcVjnONchwQxzUDaW8Kvt1Lu8iSIL6k
	leNE0ztpZznbi/GfiNDagyxPDprw0ASyKEYvy/+QYPFKzWqbpfvpG41JrYmtFFYls
X-Gm-Gg: AY/fxX6EoEb6YyGBkjcXDaXKreKUbbRphAyDBqvmm5Lb5b3omwZhODs5CRHBNVPGzZ4
	ImoMK1WtWolIWNVA66vYfmViwBaROX41ZDD/cFSGXhtQNO+PzcKml9hsPiHhh4XHFp+mfzc1QBj
	/4KhDA6hTWO1d7LkGtpx3cBlUUdxFZQtHvoiJljpJi4Q4jsvKuKnoQRTwuS2xxPRhtVT4UNugVc
	EvU1ZkpOTjWcDJnK5uJJ2bQXTDxFBUTuUvccg9Qu0Fmj6NR+wpeATD5tjgj3gqPCsBGz3VsmFZu
	S2ZOieRRF0eRlm8vH0bWcXHPacIKej6Z6vbyUERNsNDpY5d6Hc3fbF8ghV52hAdna9vndkJOXTm
	mHcXKBWf/Nk+grhdK32VgBqIDZn0N52Jm6cUiyGqmdkRubENOWwko4ZyeHWD3yA7kow==
X-Received: by 2002:a05:622a:1993:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4f4abcd2349mr170577931cf.2.1766510548311;
        Tue, 23 Dec 2025 09:22:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IELOZLadzmeT923Apr1q19BK8/IF5aqoXyY9oEU+mG0faNOOJ8/zuvfSBi302s+Dsez0NMa/Q==
X-Received: by 2002:a05:622a:1993:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4f4abcd2349mr170577731cf.2.1766510547921;
        Tue, 23 Dec 2025 09:22:27 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9159a6ebsm14023088a12.27.2025.12.23.09.22.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 09:22:26 -0800 (PST)
Message-ID: <0c805217-6c19-4c47-85a4-fa5316c55df1@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 18:22:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Use lowercase hex
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
 <20251223152559.155703-6-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251223152559.155703-6-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE0NCBTYWx0ZWRfX6TxzyPzdyq1N
 p103XnL7TNmKLdgcN6o8ZzLUrP5pM/vs14t67QiciGdufmFPgjRtQ1kRVi67l+AdvFtmQwBNinU
 3zrbpVToRMI/a8pekNZ+D/coy7r7C0lMWvIC1gCMkpkbD3w69GfaKD/gHLOryHPMRt1NioNiijx
 EgaQpSQ8ErDAIEbEe3eZ5iRXSCu4rZrTKXw0KIFf5FE/ZMiq785KGA9B2T4xKdqxu1u0OmqPNtL
 VxfFyJ22WJOmCmbKvN+Q2zqIOl1qoUD/OPUhdw1lrth7ilJVCgyaB2MJLywxowG47nlksFcR/ot
 JA8pvtXDMlHb/ehheti49ZiKNFj1mwwc3PwIn4TbcYuHrTUJhvBm6y8PUeydObZnohgX/k4GxII
 6Yq9Y5m20LKzTZLXhU3f5zBU0+7t92DJ7gIDKHAfbL9prlMRHnpz9665PwGQ0CPRp/oSqKVv7un
 k71ibT0WdrVmZw7Ddsg==
X-Authority-Analysis: v=2.4 cv=Zb0Q98VA c=1 sm=1 tr=0 ts=694acfd5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=k3IfduSUFSsBsgMvupkA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: itAJNSBniLJnU5PIg-AKzVOJZwQzKQqa
X-Proofpoint-GUID: itAJNSBniLJnU5PIg-AKzVOJZwQzKQqa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230144

On 12/23/25 4:26 PM, Krzysztof Kozlowski wrote:
> The DTS code coding style expects lowercase hex for values and unit
> addresses.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


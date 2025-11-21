Return-Path: <devicetree+bounces-241144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCECC7A39A
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 28EED2E0B9
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154EB34F48C;
	Fri, 21 Nov 2025 14:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U1DsrRMx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Xon5N7sj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B45C34F48A
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763735897; cv=none; b=ba8hgnLD4AHTE7BfRW2KVklUCTAwlqynEq5IXPyjDmtWWfuJcJSeaVsBbGpIIrJLhBShT7Sw7cgUQcqCZ5Oe3BAzsTbhmu2UXtlHRqnO2qGmNSOg3LvJHgZFoMqSYdbmiR5tKG2uhmkcK/pKZfUasKrjnmc0BekfUahoBelkr18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763735897; c=relaxed/simple;
	bh=ZFArkNraaZ0L36n2Wo2EzKiOExURS5T/VCXeLAYPpBY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mtoHOkWLuA62IOAoEhyZJ9WfTlybbTcnUGDX58/cWIWuoOsu9DCnJVOztFYSXoILs7MzZkN7qVzymgd0GBmPdaflpunLIkKs9VH7i9T376LDQTJ2tBS0/KXybHNWqk0IQtPoLedN0+yxCN9AUQ9bdGzG0Lr8E3EWV63oW9Zggn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U1DsrRMx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Xon5N7sj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALEKtaV1390827
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:38:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6TzWfedC16FIZGAIbkXllIwmNHSNZoAyGyCi6sqPgWo=; b=U1DsrRMx2GrDm3jZ
	xmEKQDnYPLQEgGwD/s2UMRpVMTFYS30XOkH/C+vznh/t5r764uTc9DA6P1iwiLNa
	EPjmWTdFt38674XHpZP66PDvNS9DdL8JmExwsby+Y2/3Npy3JxTw2mZypsAICBtz
	whGTzWBzN5B+TzpZGLjE2NiDjo+vGSzPI5RDi2tAolWDVL/gAr4fiWrYWdapL9Go
	7TD1i+GSRJhzeThyOQl9kE/MPrec8laqexIllJ5o2esDzE+Aoe6VztJGKX6eZQdX
	Fw2XfmT3NO3sYYgkXtuUFNn/iZ2cFutJMdZVf+1SzRVnOooGZl0DWoH72osCExJc
	qUQqDA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajb532u6b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:38:14 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b29f90f9fdso52913585a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763735893; x=1764340693; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6TzWfedC16FIZGAIbkXllIwmNHSNZoAyGyCi6sqPgWo=;
        b=Xon5N7sjvLI/Tx0ixZonb5PhV5RoUy29bcsQwXaZy+Veq+xAOCTLgUpExdwcTz/FoO
         v6znZJV3yECTfUSOjxuBFkQGW2lTaFog/D7KA2iGvcyYv3uVcX9c+lbKpXePgkon8nWh
         9sRgI/C21XNlD6sQynLk+IrXrsSRApdx/lz4QAa6Vinc4R9E3qJbuja1bOzxmguedlWQ
         oEx9Ztxgq0sBdWNfqO0pwUYZfrfUZT+2VWVTt2aPPt/OaZ4G6iUkRIEPn8ifukcMO7zZ
         +QwclSqkutHLFWem3oBeGhRPEFHBnsKPBLtMUS3erO3R0sFkv8FIRjrnMazoj2672dnU
         g3vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763735893; x=1764340693;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6TzWfedC16FIZGAIbkXllIwmNHSNZoAyGyCi6sqPgWo=;
        b=p18oqOpUqOyr3cS8c77NeP+75YwQveUr7qzFATCQtFah0dtF9mkE5XIlBGRoznOTFL
         F3WXs2JzwCC16kJESrLqW3cCPbZd0hZK8sqNLPw2Bw3oUs5w489mQVtQTdrimWQj2nxz
         C3AaAGSB5wQqaS2qTeDcQrnDpCCbfzSlG0kYsuZYauipbvbpZmojttM8gDcN6F+kjUc0
         4dPxqePQvcKaEnKuu/+IVs5Oqb5knD/rEwgEao4jZb+H3Yln3MOGGKaHa4n66HuSgKBu
         6pZVyIuEktr9zL7v+UpKIwIgfS5uE5gzaKhVu9KST5WwEjnrrpE+MSYIPjXCbYHic1PJ
         71LQ==
X-Forwarded-Encrypted: i=1; AJvYcCVElMyh3e2j0Q9+goH5PyMtO/KSGLfE8R+y2tq4OpIWXsKLWK2Rt2g8LKBaHoXkEWQvwcxLhTBTweAR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw58AOmMTU5Z+0wIm9T6f7KaRRYEPb4pNGbqFbtyttJlVNIimkI
	7wznGEby+eL1fMbj3/q6CCXmnexFBCjsUQa42Okxvz34tN5et2FzuVey+aEb2T1mb5gVlAVxX25
	S9big8OuVzcFt4371k6dZNA79nGnEtl3AFBqnULggsI1QpLFx3thqLF+WNj3WKB6POIVTMdJO
X-Gm-Gg: ASbGncvqYaKh1E+1R9qJQ62W47kSg8Ro7vMQw8Szs7rcUZQec3LTpv3SsZ5dG4H2LEF
	uByZzuADxcOB4VWX+KGIigXoOjG8WK3w0oMFMfBz7C701orMoUOzeND4CBY3Dg2anoTYHE4sHvp
	6qSGZlOtOr6hfUbQO5CkSyCmvTW7Taf2szIQyTqOPJKefAwAI8u85S8Itev5+qPntEOc1LRbb1i
	ZsjmUjS47dHAdZypvoYt3bUhllDJaRUTGj0hmlzeTK00o2hoO0Y53PUlGChKbEW6D+iTRyDeHu9
	ksg0wauaEETPTDhhQkuA/SKcWWsv8cIQqFPvIsRz40Yx81kbxum5Kq9fDz+WjJxDOo0ZxLdRTbL
	z7qwUt4LIuyb4M3sy44vvCZUX43d8b+0hRajPZjoxMW2/m1lT45jvRIm3ErBpA0ccM8c=
X-Received: by 2002:a05:620a:f07:b0:8b2:e346:de7b with SMTP id af79cd13be357-8b33d1bdae7mr211617185a.1.1763735893370;
        Fri, 21 Nov 2025 06:38:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMu9pZpy2vRt5M4YmyPta+NLBOcWEyzBSFHlwSK9NFiMIDwPyu1lGevV9M9FA2ND/ftU0B3g==
X-Received: by 2002:a05:620a:f07:b0:8b2:e346:de7b with SMTP id af79cd13be357-8b33d1bdae7mr211612085a.1.1763735892796;
        Fri, 21 Nov 2025 06:38:12 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-645363b5a46sm4686247a12.8.2025.11.21.06.38.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:38:11 -0800 (PST)
Message-ID: <190d0703-726b-425e-8e5f-3ff24c8935d1@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 15:38:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] ARM: dts: qcom: msm8960: Add GSBI2 & GSBI7
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251121-expressatt_nfc_accel_magn_light-v2-0-54ce493cc6cf@gmail.com>
 <20251121-expressatt_nfc_accel_magn_light-v2-1-54ce493cc6cf@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251121-expressatt_nfc_accel_magn_light-v2-1-54ce493cc6cf@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: VUrwAtwoXMM4TcMkon6hHmUuBPzpjtkX
X-Proofpoint-ORIG-GUID: VUrwAtwoXMM4TcMkon6hHmUuBPzpjtkX
X-Authority-Analysis: v=2.4 cv=Wugm8Nfv c=1 sm=1 tr=0 ts=69207956 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=INxY3ozUAYpN26jWuhcA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDEwNyBTYWx0ZWRfX8OtjIo5B8240
 kNkkMzlVVF9pHV4s4bBW4bjTtHJX29V7GQBDN3BOMcn1I1UerJqE6GugIr04kgHQr8P8FWaGO/4
 N7ks2opb3leFSjcPbmakTzgjPEMRn2iC0Ql1S5dozhCHhaBSOQLwHr7cDzjNoHuGXBac4JCUgn8
 tw0wZboOQ0OkD7EAQfiNuNd0mvaywlrwWqrb/DGBYCNb64LkKljjHnS8EdwvZI8FRxDQAhESO3G
 P+DwWFAvQV300L5XWuKio7dfeevzQaFfuduvPLVBhiRu2ND0bvNjewmBZrqfqzhdD3RdmBkIolX
 fhuEdh+g2jaUPhLqLHGRQZuYNlJIMi3C2H3AF1+HprNhcAtrEi5JZZRumi02TqkR6mbsEo+clGD
 lyGLGv+0intI4HPcdGiFBKhj98A/5Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210107

On 11/21/25 12:44 PM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add the GSBI2 & GSBI7 Node, which is similar to the
> other GSBI nodes in this file.
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---

With a combination of some docs I was able to track down and some
downstream kernel reading:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


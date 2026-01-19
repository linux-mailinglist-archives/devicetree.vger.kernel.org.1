Return-Path: <devicetree+bounces-256944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0170CD3AEA8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:15:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B4618301F7CF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D05838A2BE;
	Mon, 19 Jan 2026 15:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CRciG0ib";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GPIGJq+r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369EF389E1C
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768835702; cv=none; b=Uy1N/hGK9ANKSE6C6+pcnBzj33yh7MJwHVkWkPrzvYIaVxYw8cPGNm9QxN//5eQCvQKUxcZq0ft6/qL1kQthQLD4AqaO9XQs9gD6BHVl9+nDl6K2VFehIw2Ny/EbK14ptOCFTpcl/entysx3zmjbhS0h3VxW5MiUzT0BgnH0Ki4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768835702; c=relaxed/simple;
	bh=Z5NzLRTKBasTAtzUcJeifItadjOfUoL8l/s/S16MFJ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BmaGhui6ry1tsqEPkkBm//FcvK+6FzqySTa4S30GSoVkArOnX2LUEXb/Gx959VRKREsxhUWUhABTAEL2fe1aJiAMzCKLxbXhYiPhO6X4X8s4845pMF6p5m3Wq2ub7UYwFOHFuceybAMD3CqOuYFCEUX/WaPfvGjJ3/ZYHkHpF4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CRciG0ib; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GPIGJq+r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JEoZSq2305926
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:15:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RgfcSAgwHvJnYt7WupVTbKfbhUvgAda4QTEtoBlpMAY=; b=CRciG0ibo/b7wt7x
	ukUWBxGnno9TCx5/e9oTXRBMtiLGLyRJq1Suh5YsO+ATUJAP45RxDkC81PSWPxFG
	f/gYvQLl4L2uwieNRsmnuRwb9vKItWrHBjolZfvkkvlBPxQZOQeB47P1rNud9yKw
	PWIcqwtLtVmMe0Jx4w3RIKNbuLtsKJM8mbued3BN4nuaKRbN3hQI5PRQsE6EgRXx
	gyEX3VNI+Z0tPn9IqQt0YRkkKThw4gxCcIvzU1ZyXSprIyEZ8Gv9l7bSQ+clCjWi
	9jExrXqc3lmp9sWQCPYg7pO6cLjQWqlLkRio/bBFMIOfBjrk+DGekJ/cU54bpshU
	RR29cw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bspqv82se-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:15:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a182d4e1so109538385a.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768835700; x=1769440500; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RgfcSAgwHvJnYt7WupVTbKfbhUvgAda4QTEtoBlpMAY=;
        b=GPIGJq+rJJ4FvM5HbOfun60XNEmP3j13eLRC2yKohIVd9l75UyS6K8Cd3G6onW72FX
         RCLUKtm30F5GknpJ9PaOKICGsbItblr+ZhmJSSUpLCUXqyDh+6MGFe2ACmOvXbFWI5T0
         KYXJKsuGT9gfjgssK8Dt+p6oebXGCsbElXJEH2Ufvk31O9fR+lDEoE+zqPBzHEgYrmeS
         U8yWDMYad+rlXTgUbXNN/a9R1MHVWmpJEy+UUIiqx+MP2dwicpeCc4MXD2DDT8tQPfBE
         yN87643/0+nzBk2k7epI71Lko2M+XNRcr4h8bFCH6gKbydRvJOnOUMlgAuV0l64i2XVU
         jKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768835700; x=1769440500;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RgfcSAgwHvJnYt7WupVTbKfbhUvgAda4QTEtoBlpMAY=;
        b=FskXjjpyhJpjMLJ4cQq6RzWKJzU51dH9ftUuXB/Gr5pJXm2tkj7nwoKbwywGVGcoPf
         YMEIsAZYYicgVycYtyF1RvecGpGcpw8BYbFTh5+VSTCjFoNT2+XIfqibB5atooZsfsKO
         aL6mox8J4rXGOnRT0TV1sx9GN3Pip8lZk+zV3zRRLkaLpCFPYhx51dtOagwQqjgwmo5R
         NfoxNgBVL+fa8i3R4rqzBHz+nKYgoVYeQ2Tg9JL7e+JaKEDoPHjpPUcHj06fgKLM0i9H
         xztW+cutR39bqiY26WzPXuzUxZOAM7SUuPZtMbFgytB4wXjGtQc3loEShixoM7pwCdcF
         rudg==
X-Forwarded-Encrypted: i=1; AJvYcCXtd3rBoC8DgNEIH/yjhbnCLywJgD5BRYxVFWTofofGaoCTpF+ZM1oupYJrDK56JJ1E4/LPKz8sj1DV@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe45w2hBr0X10ZhsPWsyBKtyZCG1r7vMWWqj6fS0HKL2sV7HqD
	k5dmRZQgAxiT5kpME/nQaGe00WRLbDh1gxyD3GoRojlbVOa7xdQsenYi2YiTP2LwMuOdfalX8+7
	GG5jC6CY8wPxNFRKLnvK0PQz5/Y3ZIUn2nVK327B6CUz9PCECqH67eTydjiQvTPNo
X-Gm-Gg: AY/fxX6U70XhkD7KsYdOHcjCRe5QGQSD7swqjdiY0eGl27AjW59VTnRn9hj+Znk7Ng1
	jYozi3kIXBIh8CGHEwXIzJ68R03faTWjbxf33dbL0sQYKm87m3+yO96OCbYPl3GpURutX+5wJj0
	zc0SENbgzezMUf9y9C3HOnRxtVPCf5ASUoqvrA/pv4cswD2gcvl3MpKQjg5MsE7EQvuqcbSTRGX
	Hn5F00i4adPYFOVuL9yh3BanU5720z5iyRXSMXBTh4xQNkTDacfIv/ElPx6bPUc/EwHftDRXOBX
	IT3+8eNfB2I1lW2fw0AiI+0iUt36wdm7mW9CoolRwDbiPsp2FvIwse3PH9FNYZ22nbufxHtO9nc
	cxsUu2jFRVUYPQzH9PmtOhoKuozexWcLnSar6VLfbfrETL8ZAsODOzjtzKY14RD6zjEw=
X-Received: by 2002:a05:620a:a215:b0:8c6:a719:d16f with SMTP id af79cd13be357-8c6a719d1a9mr1078661685a.4.1768835699537;
        Mon, 19 Jan 2026 07:14:59 -0800 (PST)
X-Received: by 2002:a05:620a:a215:b0:8c6:a719:d16f with SMTP id af79cd13be357-8c6a719d1a9mr1078657885a.4.1768835699020;
        Mon, 19 Jan 2026 07:14:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795168ca9sm1118682166b.15.2026.01.19.07.14.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 07:14:58 -0800 (PST)
Message-ID: <ede201f5-fd27-4ac0-b524-638df7c412ad@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 16:14:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: sc8280xp-qmp-pcie: Disallow bifurcation
 register on Purwa
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        YijieYang <yijie.yang@oss.qualcomm.com>
References: <20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com>
 <8ea2358b-00e9-44b2-acce-777863e8688e@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8ea2358b-00e9-44b2-acce-777863e8688e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Js78bc4C c=1 sm=1 tr=0 ts=696e4a74 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TK7EAqwxfNejasLwrscA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: X7globTBMgGOQJunmE3WcDL1-eTMIm7q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDEyNyBTYWx0ZWRfXy9CTrL4JJMCE
 ATZ08MNqjF+4YX0WPlO0YWUrTIMdzx04uRwUOCacfHQM0dPE++qIM7kDCGTqKQZY4zUu063glgW
 OSDUMtKlw6ycsXrNLprM8c0ctx1O8jv+gbaQpu6S7YKtZFBhj1adR0+8fVl253zNJeRDKwZrOkB
 QUazymZhXSuReFT/10rYnKYKeZTNj5J4CQtZnmLkvABiOAimjh+ZAEw6p1tbrTnLpU3AOjhZfo8
 +FHckT8Gzmx7aNfzZIyo8vkn5SiONn+Q/1TPsdz+1dipRZoFyc8+BLGIvjTxwF8fEbKEsEWbiHi
 gIAlfghSt2g1v2D4mB5jqlmgltRSBwRF23B8xbsBjHA1VoYc4DJQJncIt+p9OeQ34XBGEgE3FJG
 7qoUxU32b+VQywFH8FSq651EZQ49vPJQq9+ZZQ/FnRIa40d4mIA6uw00y9ql4t0w6nopjnFejii
 IWbw/qFqbwAefdJoldQ==
X-Proofpoint-GUID: X7globTBMgGOQJunmE3WcDL1-eTMIm7q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_03,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190127

On 1/19/26 3:50 PM, Krzysztof Kozlowski wrote:
> On 19/01/2026 12:48, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Neither of the two Gen4x4 PHYs found on Purwa supports bifurcation.
>> The PHY is however physically laid out as if it were to, since there
>> are two separate ports (A/B).
>>
>> Split out a new if-then block to un-require the bifurcation register
>> handle to squash this warning:
>>
>> purwa-iot-evk.dtb: phy@1bd4000 (qcom,x1p42100-qmp-gen4x4-pcie-phy): 'qcom,4ln-config-sel' is a required property
> 
> Warning does not exist in the kernel, so please do not reference it.

Only because no Purwa-based device enables it, so I think it's valid

If you really want to, I can resend with that mention removed

Konrad


Return-Path: <devicetree+bounces-238904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F38E4C5F78E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 23:09:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CFC13BCDC0
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 22:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1F63090DC;
	Fri, 14 Nov 2025 22:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GU4vT8DH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OYqCZNcG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E074530102B
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763158150; cv=none; b=LTgyLdEMY5BQUp2fL+BUDjKctHfbJPpIF+NzpE9eDwAwjp7Gjnb+lwtBPIt7JsdapMb/guoOj1iKRl/kzs0HZZhvgZEbl/Z03YTd4+wic2ZSFQ+a8vAT51rLKU07uLflOwpwxfpDY8QNj70Bg44X99qHEJgPPG5bKfjjk25SxTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763158150; c=relaxed/simple;
	bh=iPSh74YU5xiboqFUfUJ0apAdLhJxZLeLZX1ZnN1flkY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jga+iCqBICqqN9UcopB5xP6iIID5WYFp0pdtZfkRqOddSNyo5ZgL/sP2W91dJ0BN3HzPJiZgAyCt8uKY0XS0MwcINb+GDigm/naix7FrAAn+PUS4/K5smXz9SKZug2zjX/9M+4d7JTDFnqO/8YeVPDlUZQDV5+NPe2X8LC7ovlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GU4vT8DH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OYqCZNcG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEIQDQ1092024
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:09:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OIKkYwkmyZfinGLwUUslF9zDFyK5LvHr7MjMbKaAM2w=; b=GU4vT8DHyVKRpqp4
	QjZvVFP4a4/k6E0xA/+fKIvziTwyVf/gGIwfLbGUvAIERvWvjKUXqYGEayA2//TN
	M4uVvYEyEUPJUweSBnmy56B7Vd8E5dYWETlhJhEfMX319eLG0rhK7KP3mhBPGfzZ
	l1WVLSXxhJLd14bqGHTX5yEs3CFTsndfMUz8pqwXtSW1+OOMqDudLyqSKx4GejXH
	h268tXjRT/3Dfi7TZRE5SV56KGMnBiRn58kq1BFqwfhw6ghGLGuwdiovbXtXg7Ct
	e5HZNF9N3LRilWhCG8N16cQkAbCfAmEHzZzWcZbLoR/3ctk0dvSqfqjGm/5LyDfM
	iw/u9w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae6xm966w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:09:08 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee00f2b7d7so993831cf.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763158147; x=1763762947; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OIKkYwkmyZfinGLwUUslF9zDFyK5LvHr7MjMbKaAM2w=;
        b=OYqCZNcGw2hKGTkndYW93G+EkrFsc/tJazBtDW903brWn2L37vbSa+ErdtAemYXHNG
         kgeLKVAcak2XKT8Rp7gr8lBLSLUDJNiLiQGDoD7zhzyzz0IivPKJ15Fb1w3nwv1ioWHT
         sKlz9yzInf+Nb3n3rzdNs/4Qut254rsVvf+5pPHNOFVjou2vx9BvDXGXBNTMGVT6pPrj
         ZgoV/osNVC3lmxcIRw5+ZfxKHKPKdVHzUU6SB4O9i+ALB4jf+l4xhICFAnOfuCYvzXTA
         usQ3wq4ia2OzHCaAzUWFFtdxY1QKdZDyz8YENTxnFYwHyyncACSKthtgN0DWLIWtKKIA
         QMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763158147; x=1763762947;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OIKkYwkmyZfinGLwUUslF9zDFyK5LvHr7MjMbKaAM2w=;
        b=o9q7CyYg9wEks50GLsGVOeyi5PD471caK2OBA+A7xJ3MMTxscd0OC0rNo5GuiiGEv1
         8WsSPaSgzLm8EIgJKClSz4ykU/w0LRjh7B/KsDcmkJMqrMBz//gllZKwcEbU7fA6w7bi
         LFLvrKC7/cRb6Wlpn7dBT1FFkFct/nK72m0VK4EaCI0s4owRC2xRXqTyYSzPEKXhrSAB
         CwRf/3NZFGgBUQPz6KQaa3p+fcXcFi+lwR0GQP54okgBM4ZipHLQf3qwSEZniZcjUetU
         RRmJ26sIucRZ04NdYi683ojOcTyCIHpb48GsyyknK+AjbMQjmLnhQNtgV41vfY0FnrKL
         ONjg==
X-Forwarded-Encrypted: i=1; AJvYcCUWrZ2Jxsj0IkMuXmEvGNk6oqFSx0v4VhaEGu1rqqEPJWZ9UPN7t5ey5E+t4XKvAD0XKzQXlPU9fHG7@vger.kernel.org
X-Gm-Message-State: AOJu0YzRXi+a3wi4jz0trxWwjhLUzAE3DlLKAio2k7eTY2Qp8qwS/klO
	TKAj0pkEhm18KN6JAsa6MWRFcMhGpdoSTa4VECTpRGIdsdh7jIGOULOBjRZoL0X0uhJmtusW7p9
	Co/BW7AU2mc+cL8M1IBll+KTGUqP2mrM428rPxo2z7O2AnVNAZUxEMk4/KO0/HNlY
X-Gm-Gg: ASbGnctVKv65kwyQLOIdx4sz8ewYPW7ks8gVRR5YA65GJAeNNjuy0UQa0uNKmMxi2lI
	3cvwYdEW/UMGAIeG7xF60lwXC7d/dYqUBIwMBpfN3iKElmvcsNdmBzVJo9Rd6WkChkLjtibM6Jq
	roJjhhY6PTmB6iNLHn423/h18GMEHDYIsWGZYae5ZiK6ktFQnr/xnYIV/4LwbR/JmidJOj+72el
	Su02zO9nwus7AcKjzTXAdTzVJP3pfA62sDAqEXV6hc+b2NnyVlU+6JzotnfFyEEP2C3f6gd5zoL
	XGz3hj3Ac/yHqlOEKjPuQFJrTHQXVJ6Pi/axabAxShlkT5vNcSiCWAyNBnvmrIWD5rBz3OsRlBj
	F8yf2uzJfgVgiCapcg9n8nSs+U/xf6Q405eDHtUiwAVbqel/7kGUD1aKq
X-Received: by 2002:a05:622a:1820:b0:4ed:3cfa:638a with SMTP id d75a77b69052e-4edf36e5099mr43928341cf.8.1763158147117;
        Fri, 14 Nov 2025 14:09:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJ3lhrzuy4JyzwvIwqTZ6/6GXL03D2BYdDOgndLmL+2Dwt9jORtRlqVlvPuSyThbnEBKHiqA==
X-Received: by 2002:a05:622a:1820:b0:4ed:3cfa:638a with SMTP id d75a77b69052e-4edf36e5099mr43927941cf.8.1763158146676;
        Fri, 14 Nov 2025 14:09:06 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fa811e2sm475740066b.5.2025.11.14.14.09.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 14:09:06 -0800 (PST)
Message-ID: <bb5ea31e-8748-46a5-8072-8f0484e72536@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 23:09:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] media: qcom: camss: Add SM6350 support
To: Luca Weiss <luca.weiss@fairphone.com>, Bryan O'Donoghue <bod@kernel.org>,
        Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com>
 <20251114-sm6350-camss-v2-2-d1ff67da33b6@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114-sm6350-camss-v2-2-d1ff67da33b6@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDE4MCBTYWx0ZWRfX6GHW0DqUGPeb
 IKvAmwAGzfKA9jRaU2P9BUPMiJvq7KNLl03Leimk+D4+XZZ+bsDn1Z752OUZFn/WgufWVeR9JzE
 xdURGgNp12Uu2VFB/leDmUQpHyD2aMgwSBWqt80cO4ERsGZ5xuvOq0T5ZOCRnyKYeRUXzd9L9uV
 d/PfiG3qMFRvo3Keeqm3xgGhmuc4sjJvzzlgCSUGoE1ay9U9g+BZBnx8+QwYKBMGotjoCsofBkZ
 MwzZkDHCYE+DLkJS+rn+XE02QoLcOOhVwF8uwZ/alct8slgR6evDWUEWrBOs+OufgrdLAxB1zQx
 qfUvopmJpxiznZ1fRXRZP0nsGHYjhwdFBObL1yU4HBirba1xf01VUXDScivljdhwbXy9QDHj7QW
 xVE6xGKnfiup12vwSmOjlVR1VdiV2A==
X-Proofpoint-ORIG-GUID: ozv-R3UTFjbYqcjPxYcXPMrMI6MAQ2u6
X-Authority-Analysis: v=2.4 cv=NZHrFmD4 c=1 sm=1 tr=0 ts=6917a884 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=Cvb5ON7qhB3BCWpPquEA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=Soq9LBFxuPC4vsCAQt-j:22
 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-GUID: ozv-R3UTFjbYqcjPxYcXPMrMI6MAQ2u6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140180

On 11/14/25 12:15 PM, Luca Weiss wrote:
> Add the necessary support for CAMSS on the SM6350 SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

[...]

> +		.regulators = {},
> +		.clock = { "slow_ahb_src", "cpas_ahb",

Drop the _src clock, we do ratesetting on it through its dear
child who you have described right next to it

Konrad


Return-Path: <devicetree+bounces-238902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 368CAC5F752
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 23:01:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 754074E0F21
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 21:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D34A307ACF;
	Fri, 14 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PRLzmPpN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q10Q+7K0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D1A2FABE3
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763157593; cv=none; b=YRiaRZM2e72Nd+qg1DlmyURd6VBWIkv6xj/14WZAxLU4N9vV1h/eM3UWQDkJ94aUdDo+4wpd841h7kVHF7bzQsryWyvlJvVmnmw1E+RtZHf/ESGFFIvKzThCP2h994UpPN0p6tW48HYrFlErjl68xfLBXca30JSiMKA1iqLbrdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763157593; c=relaxed/simple;
	bh=A2EAT4dSbG9NJGZKZ/4kEmkelWRiPgGslb8Z49kRMx0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mHxjfkJFoSAgzpCJU5CsOMX8zBHJHzEQ6YdqMg8gy9i1BJ8prwTsGb8RgQ4YpvEih+GUBqyUegUzYsWZHpRYjJkpCrQiQj5EVQHBLjsMlFvfCdCqlKn6+RKPOW/vuESrCVUtfhw+/ochL0YmJv76294UDTreqADHosgpHl+Odyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PRLzmPpN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q10Q+7K0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEIQ69p241632
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:59:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XhKcalCbZ6CIYKOwmVkeP+G8NiKWk0cRuh7XCbJIBfQ=; b=PRLzmPpNOds+hLvn
	YlZBtR9/u+NEiCQXeRCn+JE6l91bBwkXKeehhX0t4EkcZzczH4QBh7ZUCCgCpx9w
	lgmll3xSStSAuLE55kQ9PBzMLw8gkZhYiS1ew/FHxVOtVmtoH2VvsYrX1ABAfl4z
	IcXhoNQvVNxQhYdrk8TvtFsh3DUzR0/glqJx0bZQpUmpycOEHoZZmLNWmIn8bBtp
	/LekNBCMqUBNMLFLbXDWp+D8vt7dKKZyfquGKdam94eKehic7xmztV6hzYrhkZRL
	i+jc1A9xeXsp/ugjQvdl9oJaNqJq5rC83cbnPAXUM+mRm/VKv/v8vubCRFVofZ1X
	c4dKig==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae7pj0y1q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 21:59:50 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edaeb11630so6652731cf.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763157590; x=1763762390; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XhKcalCbZ6CIYKOwmVkeP+G8NiKWk0cRuh7XCbJIBfQ=;
        b=Q10Q+7K0QLLROoYzpJHUiiHVFKGE5Y7KmaDb79V9g28USheTAs5CNeheMAB32i8+Fk
         Tp6hrWzZbdPW+XuJjujw3nwTPKpwbs7dVlR+6Q96kmmDMfKd5jUgsBMHFgGnb6AB+2PX
         q4mlwjacP5CebJ3RqbDfbUzFZDwwdJbfKvhDd6nPsYSWkw/r91Djm7/w9g1kHzvKK0e0
         QzUrspbSYXl/ANePqlVDNOuX/hqqHeN4cOsY/JGwsyn7oN9m3mAmsSPYEEdlUPin/gwt
         pwrpzrlVDsjCUxdMVxq/bhfb/qW3AuojJmMrMa5XQWh1gNKCBaOOHTjnGWnq+klp5IHZ
         sxXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763157590; x=1763762390;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XhKcalCbZ6CIYKOwmVkeP+G8NiKWk0cRuh7XCbJIBfQ=;
        b=UDPXtHYsRggH/rSRlkvuEKB2Pz67S2bJ89XftLP58PlUbnfcF/Zrf9wQISa86yMppO
         y8pz8t7S/hPn1bceKh2c0Wwinu8Stsp0+JKvatyc9i6cWaPKoAXiYk1E0STGqqqTtrTq
         fc9uoZ9PRRH4fcSifLmb0ZG7q+564dSbVogjzIATqv57vgsi6TN9GuL5c39d/tr4gWbs
         UL0Bz/O6KQr7zMjSSlGfPw1PqGbg86dbQRVpTB2ZblpsxlG5vI/duOfEfAbGWmC8L4B9
         l7ZCoAKU0Xd+HwLQmz0uxl5WQgqp6LtwJmGODb6xnw6ak40RzkGNagkXvQ/K/Am7C55p
         Us0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUzUukMVHXtCVKu/VkvJGvmlRqlu9gm6emZTX5VUXv54ihx8rIRpPDfzGBmywlUbPhUzEPZjXINlQD1@vger.kernel.org
X-Gm-Message-State: AOJu0YxCHVinufvS+j4eI3PSDD/LLr7oJfEK+HHlTvUcMLVASjwrX98i
	S0UjW7aD9Errk/RY4mnR1VDh1zygdzUXzzbDmF8zio1gPBpJEnb4Ws8qQXRMlMzKeuTWTz99sx9
	/0LsRjLwtoPQSl+l2uR1X0c1fQxfcf/eEQL7d9LtaatFqBsNTUf+PhadOEIyExNKH
X-Gm-Gg: ASbGncvsEfs4G+vgNQ9zFcfxTot5TkGbqLdCQ9nsvDJ/QxuzkHTxuXNDLdhIeIVEzxj
	jqCSEC23f5Ox8vRGmVO6+vkZQ3Jvw1AxT7FK3DtJuJwqezIxl3IWITJTa6ydppaQk+0TUr7Ec+5
	ihF8aCClC+8jV8Z7Jutqf7S9YBcR7B94bzXmSpb0B5k+JyapVpJbF7l40i086GfgF1YBUjKs83N
	B93KG3abyx5+nCxlqwH2/KAuX0wRCIyfrLk3r3QH9WtnAPtvousH/6XqGPaZfYL3gAvhebeJSlf
	FrVZovH9/TNOFXjymHuT7F5r9jkDu7qwm2v7zsWLDjmg4z5lhHurmR0+loqKa9IKQjzpG88ZD74
	V/mKIluWuF0WH2HaSRZsTFB38rN4R06qQNjTydr7pTZBAvygLm6TXPMda
X-Received: by 2002:ac8:118d:0:b0:4ec:fff:2815 with SMTP id d75a77b69052e-4edfc87b5a8mr18718401cf.6.1763157590075;
        Fri, 14 Nov 2025 13:59:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGa1yUZoc+1cz/ul+Mc+geNaqhfxmLf2qsxudKAH++WY1ZZqzxI5KpMHPofr4S3aw/9DF8wqw==
X-Received: by 2002:ac8:118d:0:b0:4ec:fff:2815 with SMTP id d75a77b69052e-4edfc87b5a8mr18718181cf.6.1763157589628;
        Fri, 14 Nov 2025 13:59:49 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad43dfsm468318666b.20.2025.11.14.13.59.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 13:59:49 -0800 (PST)
Message-ID: <3e54b28e-8ad0-46b0-bf78-3f8be3cbb079@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 22:59:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Enable TPM (ST33)
To: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251114-enable-tpm-lemans-v1-1-c8d8b580ace7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114-enable-tpm-lemans-v1-1-c8d8b580ace7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: NlqIndaJb1RtChbRfuxpv58bdvA0PsGB
X-Authority-Analysis: v=2.4 cv=Z53h3XRA c=1 sm=1 tr=0 ts=6917a656 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=2V1sWMUe3bcNMym9idUA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: NlqIndaJb1RtChbRfuxpv58bdvA0PsGB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDE3OSBTYWx0ZWRfX65yx7TJZTGIO
 9nQ/tzphRzvAR83iJFAUQ6rteoqPYiYBbB/9fByq8yhJvYEUAsAJvPx8QNgT8tFRUuW0ABC7G1V
 ry05D2DB4iwH+6ARKlZqm+khtXFkbr6/KNDwi/PZc5ccwBgzgccEWtnHW5QtDnOP26aCMNtEYO2
 r1P4Reeg6ZDXTlr/h3Y/bedIF0V23/f5UG5rd8Mq6Sd8eM/ZXvGBSueN+KwBj8bLA+m13r5bMmS
 Yz1aT2dzvADUZ0BuhfaCYVE9pT7KW0LSmUeYq3dpbx/GDc0pWdC85l7wEzKhLsx0WgFBzP7z/mJ
 Ir+timxkFlhZp4xcojJxOWozklsuYV63Gu2Y/6IJYhae+YgC7RybKUUPU63efemDCwDJVKkZiaj
 xkJGpl49IRGnxv6G8/RzooCYsFeJuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140179

On 11/14/25 11:15 AM, Khalid Faisal Ansari wrote:
> Enable ST33HTPM TPM over SPI16 on the LeMans IoT EVK by adding the
> required SPI and TPM nodes.
> 
> Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


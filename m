Return-Path: <devicetree+bounces-190509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E93C0AEBFC3
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 21:27:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF0681C47685
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 19:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCBD1212B3D;
	Fri, 27 Jun 2025 19:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fAvw9ewj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A799E20A5EA
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 19:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751052414; cv=none; b=DUvKr0XMZtXRR/9gGosn4vpc7PflBjSdYEqkC0vmaoktM6Y57h4vGTaZN4S2cPZrOf/0+HDqoXGGSLBH/XxePfRKigj+r2ZfWLRd1VIiQLHscwTJx0mgJ2NmRgYUp9KCkLUFJiPePbOkc5aurCWdI+f70KLjkfPEbyRgaAi/6bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751052414; c=relaxed/simple;
	bh=PgKJBp53dR2Ai67YO4V4HA071loDKNdxLue3b8RIr58=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=apevyIwB4jxCz7I0L1/OgcQA84ZSFieWyTbwF+O9LNqWZczqhGyhVTnhHeUdXgusvrZDiX34zoqONyDJdhl8ZLxAQGugKpN3PIGOwpcOWyqyaLq9pd1fgmJKYPwDwR1CkTseAhaijhHN5ZTp6brBMkBr8l2fAUP8lrevxEQVyQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fAvw9ewj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RC8H3I014328
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 19:26:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C34ONTM+joY3ACRb//NUdUTbM2c8N4wd1fosaRZcrkY=; b=fAvw9ewj+WXk6hsR
	H7EEKDhYakCtAsWIFBtBE704V+9MVIFwgkjPJ8+ByILnTPMBhoHyLjXHyaSwHHY+
	IHkBisTMnVksCJqHulekIir75GZ2VaWmMqFx1EfJ2Ko5YHW/k85gItEJnRMT/HPX
	Tn2S/HQdebfWS+YHYrbAu5AhqdraMR8jQLpfw1e5VvOpNveO6+rDXIwdWEtnJR5P
	vHUoOfLgbSNXQCBZwaDfnqVcxDryD4X4olYv2DRN9DEbzpK4n3H+IRZPFF3JB26V
	gisA2Amo4581exSBsuQnRAGtivDoI4MC14M95n8FMm1RaQ69rdCzFqmFYmw4pzR5
	AJqAtg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47emcn1mgk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 19:26:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d440beeb17so22224785a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:26:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751052410; x=1751657210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C34ONTM+joY3ACRb//NUdUTbM2c8N4wd1fosaRZcrkY=;
        b=xRm6jwEpcTz8fOXO/jAaMhZIVni29SNlwbVPL35sjFfuL60aFGUsvITNCv/DDTM9q2
         6kXtVu30ugYggcKgTwfV79sv8GgGIlcgoNYATp/xe8BplaCJwDqHmX1O9eIU09y3+VJZ
         Lti+OzYzp64M4uJiMhwRq4pb77rYYEU+OKah8GBW4arJErpIgHbrJqpEGV0ezaCEm0D0
         EkSEhNA0RKG4NazHkXBMOThMbK5ZieLo3TkwAHMEjC/cP1AraHNMGEw9Qiq1n1dFX3a6
         1VMBGL/mB7HdQraiMV6AVYnUBHbuJyp1XkozErK3IilBatXJT0YIIuhGYMycaaGuDFRp
         V+7g==
X-Forwarded-Encrypted: i=1; AJvYcCXkgELml7rgg8FtJ18AifvUMBL4+/NYKijuBJIbW8tIWbbyvCU6GIhEMAcdHnNzgLgBwvoQj2x3dD88@vger.kernel.org
X-Gm-Message-State: AOJu0YxkhWfw6QL8e5I55VRidqb92MImaJ2sdxsn9BSQLsLW28qH5DvD
	Um3QYA1ylbIJ8Qg3jiy7QKhe6StlOasV4GdBjOY2NGzrgdTEOJxU7ZiKV1DUHWgBZ7GAbLt5ipj
	bj5fsRiYhOnzdXrJQYms1yXkEamvbZfXO1aDuTlbM9K7DOhOInfa93eBroEsJ4IRv
X-Gm-Gg: ASbGnctb4a66xlBrmakQRRJKmuFEQ2e5jUqpBgBDcNexRbxHXyIzETlzdJYPhmMLBpV
	jqPpzxN3scPSVNBJP6dOcZKfGnHRjVgIO19qZibRim85330oD8zCY63e0nTCWYWr6mq/4t0Elo0
	rYeqTBZ1hs3MYgRL0kgVZt5/4h/nqkAh/fuBbCVm5yRjdlgQVgQ5thdi4Crbq4CSbQBeBBEKb1k
	srxZtvSvC+AbhkiGvb6EUqY7zcgpB3aMGSPvI4O2PoepDhhkSMapjBFUiBIKdtDJ0iTqNNT3vnX
	1F3OlHh16jzwdWUkr2izQ4F8LLvUR1F3GBVew9DpCqsP8CGVk4s1xGpZMjXQ3EvBiyAQTsza3f9
	FtPY=
X-Received: by 2002:a05:620a:4384:b0:7c3:cccc:8790 with SMTP id af79cd13be357-7d44c21acefmr18328185a.5.1751052410507;
        Fri, 27 Jun 2025 12:26:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHDPYkLsnmO2nGzNZ10OMjymrNY7J2wqTDz4VWNzNFIV4cSvpU0BqsujQtneyalnxm/ShhOA==
X-Received: by 2002:a05:620a:4384:b0:7c3:cccc:8790 with SMTP id af79cd13be357-7d44c21acefmr18326485a.5.1751052410034;
        Fri, 27 Jun 2025 12:26:50 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c6bc2dsm181908766b.136.2025.06.27.12.26.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 12:26:49 -0700 (PDT)
Message-ID: <18dddd39-6118-4b46-ba07-8304d1830798@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 21:26:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] clk: qcom: rpmh: Add support for RPMH clocks on
 SM7635
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-sm7635-clocks-misc-v1-0-45fea645d39b@fairphone.com>
 <20250625-sm7635-clocks-misc-v1-2-45fea645d39b@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-sm7635-clocks-misc-v1-2-45fea645d39b@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: kxo6BrdUVLiV7MMHI19Dkr0sl0qv7pCD
X-Proofpoint-ORIG-GUID: kxo6BrdUVLiV7MMHI19Dkr0sl0qv7pCD
X-Authority-Analysis: v=2.4 cv=J+eq7BnS c=1 sm=1 tr=0 ts=685ef07c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=WWQFUNGd85j635JlVwcA:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDE1NyBTYWx0ZWRfX8xmGptVTOUNq
 pt7uJ1ialzGEYawl2Lgr659Cu7zsuq1+tt88jqCKN/8Uq3fc26Cjyi/XPkPK6iThyITZ6osraV8
 oxntePE9DiI/icDGnQVeNvK6kyDs0bk5fJ5b73Puph0cAcxtMHPzAOKuiAmA/jjqVJpW9VV8xl2
 t54r30JnjLcI2kSWF5WqZw4BPghXYHXlPOJlzdgRonggfA1ND4pI96yKl5aUlo2sFyIapl9nk3g
 51C0ewjGW+RfQ5kQBW8bzUKzjhurWZBwHPKaax2Hwm9JhraNZBHGgIXsLj86LL0Ofk78r/HdnVb
 o2+CAirbsb+/G4ehLZHXyDAQAK623uo+onzkhkRRGllArzL3gLzTny0iEORhVeSHcKv0CKcdYfS
 b3egnE9LzI6QNwZNg0r3Hmc/Dd28pqxt18AyjonudXDb9c7Nhi/rvqXnXC7xn8Hs99Dlkhga
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=858 adultscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 priorityscore=1501 suspectscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270157

On 6/25/25 11:12 AM, Luca Weiss wrote:
> Add support for RPMH clocks on SM7635 SoCs.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


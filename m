Return-Path: <devicetree+bounces-252664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0714DD02395
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:56:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 79BF5300B350
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B09F834FF77;
	Thu,  8 Jan 2026 08:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J6el5agI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ke2ubWbp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE129344057
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862559; cv=none; b=KiBdydRH9oekh2OY0OVR98EAiY7tskC3PM2EIJAxaDZXtiGYLJWgl1sD4wvlW6pzxhdOkaEbmhCwTvYEBCr4EFJYCnuU/+lu/Ws39J5ZBsb5qzQKsq5+98wfd/sen+Nt8KFejSoM/Kn9YeXYgt20NTWTsWO/JfCh4yycm/JTpVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862559; c=relaxed/simple;
	bh=vihXKZgC0RF0ZvWdSb9dihAYRm5zi3vzFR6ngUhuC5o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oR+GmhayL+ShL9Ir0pUYx1Sp53Ohi/m4HIVV44xtFyzJa4AV6QeUPVu8FzlDKIttGa4TQUWgZ/M0c9v8eQzpxQVIfr3LadGsU+B5gWgTei0aBlNFgeM/xfB7HNGZYmiaHg2nlRclo39+FiFThztz10Rk3DbLGRP5JBV2y7uw30E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J6el5agI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ke2ubWbp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6087VSCv1838190
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:55:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F+LUBAWmsVKlASWBuram6zTfQJk0Q97+yOU2s3t9Be4=; b=J6el5agIdb0Tv0H6
	AweZ0W4e0nDdcw6KClr0kxkxvvWoaHjpy6kcoeFZjAHksZ9JORlHI33VBmUyiXNZ
	acCvd8okWKfonyTboawiXCvDBQ3lCF2mozB9amhs1tXGSSj0mL40Y9bQ/h7QpYHL
	G5rPr4mqfumhYo/0MT5F5bk0F0fCImunLaedL4Ee8PjE9acJ7ECMNmCuOZ6D5KLO
	OL0R5DffkJuXu4g34WsFaS54u5+QfEp3D06xvlf9ivL6kg6L2ciT8yXNQmvk/BJm
	NzDNTqR7Vkscyqu/t2R8AEJEWZ+XyabSlRussylCI5FbIuJJRupxtmDuUnYzEEVD
	Hmmyqg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj89207q3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:55:44 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee409f1880so7335971cf.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767862544; x=1768467344; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F+LUBAWmsVKlASWBuram6zTfQJk0Q97+yOU2s3t9Be4=;
        b=ke2ubWbp5m27bThrAYFevJyC5SdLT33EAIAMrYIm9W97HCUucpt0E8+oNxGAwF5l4i
         jXOwbfI3YCcAUCO30QPe0kYbPUMK7rL51DobbjFp/iDwO8oEHCFmZy32wd9RBCZo+v6w
         mFEhJp6t5QNaEU8vnen9K4yYPVO0ew28wADf7lcTXyc4dslrtK5O22S6mahxBCK6V6Ny
         uLz/F3gzcn1AYL3TXsx87dJfqNtpwOlJ6g4cCDVZXEOYgneGFTluMgDFkWLnhMObV7u5
         IrXjmeUWIWyS2Xt+6DBKKNeF41C2fIENjwuc5LDVQeRkmMoT7Wzv5a3vMTkyYtLR0nrw
         UEPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862544; x=1768467344;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F+LUBAWmsVKlASWBuram6zTfQJk0Q97+yOU2s3t9Be4=;
        b=YcuG4hTFC6qIZ0/IFAkal1xuPDhF1qwAmxRQz0H99tq0tuwWW9oEPImwGgK1Vks8Ji
         1jOJX/2ykheqtHoDk5+LhwxyjzxxhVLw09alytmJw1POax1U39sAzaautD5dpNYwqiiT
         lxtm3vBRjpwYhP53Po/666zjnLLbF1dRMIDmK7lMghbh7RcgiNFT81ln8HloAaGkIfkW
         61suPPDZtbxNHpUkClbYgJ6h0Ax+ZCHU+lxmJipmSWeNeIBypwaRHpQ0bVYlUOnzsMOP
         unN8I+VzoOdm2s3Wg5y6RZrvI9SydBnl5MkObQQO/NC2iIy5D5lzxQUOvXR1VQEEgR5Y
         b1Mw==
X-Forwarded-Encrypted: i=1; AJvYcCW+ovsXPgwefmZHpvqa6OH4fTi2v449R6J9e97BfWJUkcfbhIpEotbVYEHfqN7ayZRqeWWv917UlUF2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy39ldA4k5XZ84FOlOwSTynkNGS/vIDkAeUII96IVUgSXVwQRpk
	OUJEP8fWmN+N0USZuUK72TSpk7zwrshgHwo5NyMRoS9q1Ncvz/Ijzchm4LfIPq8tUeRyXrlneOi
	4Sn0Jg4t3nlZW+J1HulyKjnyzaCWYbbJJTE5w9p/O3GMyo70eSPtYK5AaK1bkhmoJ
X-Gm-Gg: AY/fxX6lTL06CJHX/AKeY36RVbpNszrAn2wiPAoXh0kJwbb0w6lITkUX3SKLhjKxNJ9
	C8JCsI1a8pVabnmVIUBBlnbMsjmEMpasXq5ANoUUu8rYdUU9HrU9G+WqIsLMRVP+M58StCmbMCY
	leuBcMzY7uJ7cjPTPfNfJH4evEOVW49Hu+86oFKUSKyioU41jXNJp98mse9nUPTx9WpE8MAfGNV
	LC6mr2bFXj5odbhqffLm4dk5WJeZWNTWKoNOXWX5G2T1DKkw9aQD79Jai6dXtKttHLGfEkGw4nJ
	Z6NcOu8f8lcyGYlksdrAYtqW3FUS3kcPJpqGE+rtYoCqUIJDOwQmiS68aFV7o8IusTPv0QLGamQ
	myDy7sPLubYXhHUIoSNU7b9qv5QHFFBKp3NWAE+z1nOOQSJ+O06al7bMTZL4x3LtyVBk=
X-Received: by 2002:a05:622a:2cb:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4ffb48d3b42mr58398501cf.3.1767862543691;
        Thu, 08 Jan 2026 00:55:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG9Lv86d+HKglAfIaITF0v/1w20K9Yw1Cy6aKrCbkHCUfrjyUTzhk3wIiJr3LYFJQaOUvw//A==
X-Received: by 2002:a05:622a:2cb:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4ffb48d3b42mr58398381cf.3.1767862543327;
        Thu, 08 Jan 2026 00:55:43 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8429fdf4e7sm780584966b.0.2026.01.08.00.55.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 00:55:42 -0800 (PST)
Message-ID: <736c8986-7adf-446e-9720-c4a71272825b@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 09:55:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] backlight: qcom-wled: Support ovp values for
 PMI8994
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Kiran Gunda <quic_kgunda@quicinc.com>, Helge Deller <deller@gmx.de>,
        Luca Weiss <luca@lucaweiss.eu>, Konrad Dybcio <konradybcio@kernel.org>,
        Eugene Lepshy <fekz115@gmail.com>,
        Gianluca Boiano <morf3089@gmail.com>,
        Alejandro Tafalla <atafalla@dnyon.com>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
References: <20260108-pmi8950-wled-v2-0-8687f23147d7@mainlining.org>
 <20260108-pmi8950-wled-v2-2-8687f23147d7@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260108-pmi8950-wled-v2-2-8687f23147d7@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M45A6iws c=1 sm=1 tr=0 ts=695f7110 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OuZLqq7tAAAA:8
 a=GYwjzM_fwieWSpg0kukA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: YnpzbsNZ0P8tT7Jc6so2D71d-490qb2p
X-Proofpoint-GUID: YnpzbsNZ0P8tT7Jc6so2D71d-490qb2p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OSBTYWx0ZWRfX2DTJ10fpApHY
 VyQJqU8rgKH/uNezd4KvHy4ubljkGyCINhv7r0eT1LYsr5BwuDA9qy+1c+D9ydxFP1DZ74QlDir
 6HqtVGAhrG2MvdZ+ydkt9BbtAz6jL2Z7OJG9iuB9nc8yWm+g0WT0STYFJZ5LoMiz1w9DpI4TMPi
 ke/tTybTrMociwRGsExFiUttha7bZ7ihXSyLnSG/6wMbkfQSvg5lMwMGqoEbSsMDS1MhDBaYfDh
 gs0zLG9rN12BR0PB3wP0vQTZLMrTdHzfp895aXl1e2BFbs8f92mwKPQAcQm5v5eDZGEsbNzafnL
 l2sYh9ftHUKCUsJyvE6s3Oot1rDvGf2/B1PJlDVBWa+C8tGwC0mxIRCqrwPXv6O65gO1PxQXLNG
 tkykmV6XO7n1wmqw9O8SBizaoJdBg0wwpM4K9p7k0bVaG1eo77fwyJe9KoSsUA/6TuhqgEyHOxi
 xMu8zxwFJt4Bi7nm5qw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080059

On 1/8/26 4:43 AM, Barnabás Czémán wrote:
> WLED4 found in PMI8994 supports different ovp values.
> 
> Fixes: 6fc632d3e3e0 ("video: backlight: qcom-wled: Add PMI8994 compatible")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Likewise, I reviewed a version that said PMI8950 instead.

Konrad


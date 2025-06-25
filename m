Return-Path: <devicetree+bounces-189571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DD0AE857F
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 16:03:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BCB63BA7CA
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 14:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB675264A74;
	Wed, 25 Jun 2025 14:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X4cMehir"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD14262FF6
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750860193; cv=none; b=J99vwcRp1iMZzzp/3HWwtsSPnSuOUVMOUosFsnpeS4ojfySrXSFjtzrRIYFVueQmNPqsyTDg0Dk3Dw/GnFRK4hy5/JyZKrcTsFyyK2pzP5wI1BoPwXNNfUS9TyUx11M6tgp9lhSpf0d9fh1Usrtutowo/RcI83zXKz+BWueUtPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750860193; c=relaxed/simple;
	bh=5zMJXwwWW08GGXTySP2knMOGm23otbDvAH32Yql1p7k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sCETCSeG3/k9ALsYh7UdEh7GXWQR5V+tQ69EUiewXpoEDx9ZsYc0iJlgoAs6s2SUMaHeEFKxh2zRszE8wg200xv2cSArsK2Na1CCGs0EndlRikcRw1IZpFgJHZARxyVgmNtauCFZlQRSkBP+QrjkEuyt6Bfw/6POX0xERJFkvKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X4cMehir; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55PC6Amo013337
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:03:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XFqnMVGRQpupfxD1RJ2vO64N/c6NtFXjip6hXI1/5Fc=; b=X4cMehirXtoXBVvk
	ABmJsgAVU1YrN1uzZ6MEUfYF9AjNbW4SRjuWooTtKuxPC08owya/wc/Ckcyn+W8c
	OVOQ0H2BfBGrhgvhlX0VXyTiKmW1nsD+xNsyLqLuJy0edGOtiFXIK19qvKw86ZAj
	fcdo6v5zEd2tJX9qVdC+0rYnGPTxm+l0hTSE9T996loTAcNuGhLItlIB6mk+Zpoq
	FtsMDXw9IRBU7XSb5F4dyKD1G7g3hbMdXNGScjC6rtUasl+tokn1kXKiYoGt+b4U
	VwlzAo4aCBIRAyS3h/kjvHW6TGi8v1zUvzalSjARgzEZj9N22tLApLFw6QN53eJ9
	fFoFqg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbm1xp90-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:03:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d3ba561898so115526385a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:03:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750860189; x=1751464989;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XFqnMVGRQpupfxD1RJ2vO64N/c6NtFXjip6hXI1/5Fc=;
        b=RU4XTex+Xi+BVYcSC4d46UAHeO/JDQbjS+n/HR7JVxGIsx7s/dBcEd2Cl9sKcRrj+V
         imEZG5eNKbERZ8GnKbhdFbZ6S7eYKcunf14Dmyb0cF8kgkjWhVnP98l2VVzCYaYdJKV5
         LHeeVJdakw39tkuuJl8fZrpW/zwsCZybarSNtw2v7t2uOjOojVnaUjciKW51/fVRiSeM
         A2AuYWtIVSGRSyLOGKPUTTErD+23Efy+JAMJ/Kq+idujrcrftYPcMzci8ZAyjUsHRdGB
         amR8eQA7N95dWMnW6nha08OF5Pd7crkAInhmENWL0uYIwukc9icpauIVeFmUNuVtf1md
         pebg==
X-Forwarded-Encrypted: i=1; AJvYcCVqCX5U2cm+cf2IH14gPeWFwiTVcya6o60OiSKGqqSOjGvLuRc626lZ5iMBUVp23JqxD7xRlSQ4J3uf@vger.kernel.org
X-Gm-Message-State: AOJu0YzTBI8xcNF2zDmlw5Z74CNdaJc/6/Uvt9zO5pH6AxYfQnsraIRD
	u0Xbf5/4E6qVJ6MCyxepg92Vm3yqHuScpa8nYcmpcRlMVDa/DF1LhJjnV80EPhGWJAZucze0g94
	I5hwcch2BkYm6BP+HTq1QrHEe73Gd9ikQj6X8j3oIAHNxcraKJQUQ9+mah3k9vrWp
X-Gm-Gg: ASbGncu+rDHK3dvPqUWODcJWoUA7so3cIdp1COTkrXm+JZYJvigpGKZAwOiUxs3iAyf
	9yMQ5qJqUMcA6MGhq1IFhmoK9JPekYGFXNXE03u74bdeyLMeq2H9OtlwJVddf1pLffCy/S34wKC
	xi9dPvETpH5DVQrauyhd594O3G6pY8rIjCY/HueRJT8xg06McYCBVR4+uQAhX1aP8P/H3Vc2sGN
	n+fRYyrPxuxUsn+/jPqCE8+hEwseR3dO87XRstv2B4AID/GRLbZMFao1NkJYiyL1NhgLdQ4xL7e
	jRWyJvKo761rCBi+lX87T5MPoVqotLrdwgea4kob/g4H2zf3aptfLD4FRa7BWtD04zOHI1k0aou
	m/jw=
X-Received: by 2002:a05:620a:1b89:b0:7ce:e99e:bc87 with SMTP id af79cd13be357-7d4297074cfmr151196585a.6.1750860188771;
        Wed, 25 Jun 2025 07:03:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdIBsWsp4TsebQh9ea0CxfPNx1LapgZvLTSmHhJ3o+vsH2NNt9o3OqUtv9riIIP+wKvxF8wQ==
X-Received: by 2002:a05:620a:1b89:b0:7ce:e99e:bc87 with SMTP id af79cd13be357-7d4297074cfmr151193085a.6.1750860188053;
        Wed, 25 Jun 2025 07:03:08 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054209ad2sm1067888966b.148.2025.06.25.07.03.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 07:03:06 -0700 (PDT)
Message-ID: <8ed0cca0-c2ed-47b9-b2e0-bbd66e133f78@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 16:03:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] regulator: qcom-rpmh: add support for pmr735b
 regulators
To: Luca Weiss <luca.weiss@fairphone.com>,
        Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com>
 <20250625-pm7550-pmr735b-rpmh-regs-v1-3-cab8ef2e5c92@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625-pm7550-pmr735b-rpmh-regs-v1-3-cab8ef2e5c92@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YYu95xRf c=1 sm=1 tr=0 ts=685c019e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=FIv874YiPNcmhJNsip8A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 2uwjPpR7n-6RiwSPTzu-DsYlHlO0HTbV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDEwMSBTYWx0ZWRfXz9UjaMTd2qvL
 C+R1QmojNO9Jp/njQuK9X+olsmJAZDFKWxEWpMo1U7ICNkHy/iPGeaAP1I+jgt5VNhu+w3ObpxI
 Tdv4lWUUOw7LgdUy8ZOd1T0E7P9v1LkJSKxqCfbYUMHjHY6L4nAiBawjjv8gR/b/+vQNne9qFAK
 GsW89HsnA6LK7uZHPsBdaK5ppznW+LPrcKT3to2JX4PGayH1V5gJEylu5a/e88WL86Wu9+XKRzg
 JtLb9qI2U2VV3GrZxFufu5BuwDAqAUrlC8JZXyIr6V96JAWvWD01mdF2RlGiWbKwoO8281Sc9xS
 CsqxFkjsQlt4uwdydvwTKx7rbqwIMnYInoG6l9jqnoz1PQg2w8wcDsl1lMKQcfJRpekHp4QpwAo
 uXDSiC4KCAWgDeLqTOvpOY8Di4t6wFX7Tnfh+meNjElqXyknEKkdeQuwGvI+b5PVsL1s0xGP
X-Proofpoint-ORIG-GUID: 2uwjPpR7n-6RiwSPTzu-DsYlHlO0HTbV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_04,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 mlxlogscore=911
 clxscore=1015 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250101

On 6/25/25 11:18 AM, Luca Weiss wrote:
> Add RPMH regulators exposed by Qualcomm Technologies, Inc. PMR735B PMIC.
> It has 12 LDOs with 2 different types, L4 & L10 are LDO512 LV PMOS
> and the rest are LDO512 NMOS.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

As far as I can tell, this is in order

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


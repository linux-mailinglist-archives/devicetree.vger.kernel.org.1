Return-Path: <devicetree+bounces-250808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2086FCEBF01
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:19:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BDD8302D936
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49757320A20;
	Wed, 31 Dec 2025 12:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cfge0or+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MUVcpUsd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2852DF12F
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767183506; cv=none; b=D1abMrXLhBKM3lE7j+yR/MpWnAgXkvx1VJMvwyjMDUtpNONwOu4CnrpqU3EOWlwp3a3kUMkDCiaAQkGwO06WQsegq67ryNESntXHJzoNJD5bqUpwxeOHq6xd86hDwPprz+7Bmf31hFYsFnNc7tthye8Mgq6ZPfkWVwNntKGN7D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767183506; c=relaxed/simple;
	bh=vR25SYRzjiDlqhb74zWnpwbujse6EwlvQv4/tQfE+48=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mB3hVMm/0GHYiOKTPI0PWjfrwHJ7Eor2wGIjvl8SXUMzxOQPcqIKWrGrxvZtG4AVFay6MYuJleRU+uzlVapEq7vM3B1vuwpu8lM8bOfaNwFJ24kqyVB1HO9zRxaJyozFyZHS2Uo/bICoiXXI6lQEa4WrYt+lQY/y/sz5NGE9KwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cfge0or+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MUVcpUsd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BVC8QKA2551807
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:18:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IWPcobs6vfaZsrdB9wU8wUq6VCm4lbG0X06J5zTpzNA=; b=Cfge0or+FimIZ4ft
	ZoIjV+UUEVPWXYDwflBGfqx/ADLwjuqjmy/4pUXz3Z6OOVLH5Y1ruf1ePI+7x4iG
	pRctGSEw7CBbNBYDNtq6+6h57SIP7R3UWtOWY70q777FurXmKvMw4+Jrhf7pY1Pe
	WfKawEip+biCJpKDBF9/Lid9N8Lkp30j0fvUT/lJGTybiEyeHctmwrRryWyzAgg6
	O/Qr7FlRPitFUhNA9nyEzJ2FBAm0z/m0LUKHemdl6BEcyrpHgyLnF/jlfMkuC8D6
	C42F9WMkEVa9NqyScVZT7GLpeZFfpjkcVIyo0S56cECuPdPpYmtVReoLpDIU+Dht
	Ka8jBw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0skm9nh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:18:22 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88fce043335so30588606d6.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767183502; x=1767788302; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IWPcobs6vfaZsrdB9wU8wUq6VCm4lbG0X06J5zTpzNA=;
        b=MUVcpUsdJAXVOQYX2HPwIvc3fP1shH3V1eQo2zmQWR8bACzyDYd+NJhHNXZG5cKatU
         L3+PHnTcr0pax6KcMnXDwymw/Pq0kMTYkfMSZaBoRO7g4ZsDHR8BUsZyNzUbBCbPeW29
         ab2Q6HWrugt5juBCgpVCYlk0NZkCER45vxl+IMzPOgp4WqwCGPTCxmDq+5SWhIEfVgY0
         Pa26NS9LRRYjWCkrpLF3OnWbL4pXRNHlhta3hRs+rwGNx+WPyDiiE6Mw4yAwpJmPRto+
         24GiGj3JFWx9jfnoTOeOjfTp34TVxomOjYUCG48eklHxAoOXU8Af1TxpcHkDfxgwO0L6
         /Q/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767183502; x=1767788302;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IWPcobs6vfaZsrdB9wU8wUq6VCm4lbG0X06J5zTpzNA=;
        b=g3G+yTEg+UGN/NEy5HiPMniarR0N8Vz4rURKWQO9K/4oEbNSgz5yQxb11EPty3U+O5
         Nj6P6N+dOD9t7XiKQV741hyaDQYWdN1KjleiFBrv6zFTXNly/savxeX+721enmB+2Spc
         4CGBIz/CllpxI7gIsyYMq+YBSLpArOmg0P1qY4kfypCDLL/jMwyxu5rYWwO7reqvdmHK
         YuKkHn2B24gxDG9jfCVzN+XiQcWDZGNDIaRG1fU/Bf6QgVD71k9673EeaG8m0Jru/1F6
         VUCdO4GY3jsB5aos1dY/prKYNjHW84G7HW1O9zO1llk2jjRa8CwhPaCTLfDg0ewsySzy
         FDuA==
X-Forwarded-Encrypted: i=1; AJvYcCX5YUF5/PDLrAfm2+UjmEvXX6QPF7yVICJYjVqgfab1nKSpSyllzzIg2zE4IITuI4kqEjHNevk+gDS+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1CLXSh4lRLEizX8MPAm6AhfkQgCYp8sqTYxenTeNE8jaixHbv
	7CEQtDPMXLKg51J6cEloMlVprhg6U9d/d5GWPrRFMqw6FZZKprTA9XrwBxkYrLWQiTqJemjbXyV
	4xOzjZRp+zNZCy4oKD7CJAxT0s6E0beWTCRiCsSJupiRgHY5fH4uLcmwVWYZgqBMA
X-Gm-Gg: AY/fxX5iyzgSPcpybnpaKllZJ50LPVnaYJWW2ZWQgdCfmwNVU6tetuefLO3OAyzClXE
	n5j47c1Sg8Cd59Pzj7KI5Ftm3fCfPOvSbmR8D3qH2YGgx0vUxq/98ll2j/UyvSJl/054oePjROP
	1fmdSty+O2IWTU6IUUSumP3uSxhHYKrFLsDVuwhVQcRuRQuATd7PYSZVKGkn9MV8NpU2jkS9l7i
	yqYc/CVKaa8tLWj1lN8l4FBs0RADxaLH/OS9EdHgORR0JdCyp0rnb9SiLTHSESWH6ZE8uNNt+8N
	sEpSf+qgx8FPMwXXbVYGjZbf5JWG7cpOOLHGwXudGWj5B4aBLsgIhx1sTQ1xb3Txt6hrAolLdK7
	/TJOw53OdwyWLKAYL6HOZzZzH02LwrPVKWI2891LQ3+gq+8+didSWDscbSQvGNJqDTA==
X-Received: by 2002:a05:622a:cc:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4f4abcf3ba4mr419688781cf.3.1767183501901;
        Wed, 31 Dec 2025 04:18:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4xZ0NZV6OIB9S/tTaZX8Jwqb+5SJHZnAnR3CZjAFhy6aj42iDY49quAMU/SvRZ9mwZtROpg==
X-Received: by 2002:a05:622a:cc:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4f4abcf3ba4mr419688441cf.3.1767183501315;
        Wed, 31 Dec 2025 04:18:21 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b91494ce2sm37741474a12.17.2025.12.31.04.18.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 04:18:20 -0800 (PST)
Message-ID: <9c3cfc5b-a036-4f40-9121-5e00893f4301@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 13:18:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/14] arm64: dts: qcom: qrb4210-rb2: describe WiFi/BT
 properly
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
 <20251231-wcn3990-pwrctl-v1-11-1ff4d6028ad5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231-wcn3990-pwrctl-v1-11-1ff4d6028ad5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwOCBTYWx0ZWRfX8cCi6uNNoz0V
 j6yw4J29qkiCGIcDf74HDKHGLFIjuyba0O1B54Xr49j94qFlSqZ9OL3lEV7TxxCsFDy4FEmfp7T
 OGeabmoZoFLUVtnapWG6WzZAN3TSLqUkRmm3sOtrQlTGtGVYBTZqmhW7Jb57Ls90RbMqfucHs9e
 qWcWsS38LrcqbrZZ9z6dbko668Io/h9aPTZokF2E+eWqQP3CUmKLKoSFZj1/+MCUEBD+zY6zNEI
 GbT7UiNI2ayJHdKEQWEeZ4huqry2TkjQJXP1x89UGp74hnefa9N+OwHO37om9Q8ORYr6c1RJdCI
 j6AUZb0BpIfCvnvO0hb3s9t2MyWVESaT6zEjd9+rjrO0j08auS9fjeNHnDq8p3NF35OtooG0ym7
 YL34VnwJo6EgjeJTJ1pSaXCpl+GGlnTubf3cqcYfNgIyBRa1A4hhPnY4/aUvzELv/4bmtbNwY/x
 NbQ+0N+oaWCoZqic9Zw==
X-Proofpoint-ORIG-GUID: Y5yq6xFW5i1vMVIGKBCXQq1GFEj_UWux
X-Proofpoint-GUID: Y5yq6xFW5i1vMVIGKBCXQq1GFEj_UWux
X-Authority-Analysis: v=2.4 cv=FJ0WBuos c=1 sm=1 tr=0 ts=6955148e cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=YN4nVyxdPvXl5XCbABQA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310108

On 12/31/25 12:36 AM, Dmitry Baryshkov wrote:
> The onboard WiFi / BT device, WCN3988, has a simple on-chip PMU, which
> further spreads generated voltage. Describe the PMU in the device tree.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-187307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BD5ADF7AC
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 22:25:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE2993AF470
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 20:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38A621C198;
	Wed, 18 Jun 2025 20:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GujBmtGE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4B621B9F0
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 20:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750278318; cv=none; b=DZAB+JKiqS7mELZWoFJfBQ7cn6pwqbVt1Hx7fOYoq2t6q8LvQtPlodoU9nf4866g0TRlmTy4DWa6v6+A856PuBv0YZ12jni4h4T9PYKmoGrJC9Gv5n7xB0EPQQdMTp+X6x9wvd/HGt9RyxwCrc19DnGjCMbEvtutbA1gg/kteEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750278318; c=relaxed/simple;
	bh=Xp9l/tJ2kja1jz8SU88/Ddj1PCPORUiv+hAOLS2xETg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lW5egcXnlttXY5NfidoAloqeKPBD189cxBVPt5+ZhB6t3rnb43Co4qA+T6K5Yl2SmP8JOMTDrftEuswC7tdmg1K/Df9zdAPShilyC41NsgilRFUfRRmDBJMIcF4LBToBo10fBZ6gyuV4VsSYkzapoFfZDu6+oY+n+J7ilZsZLOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GujBmtGE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55IHBK3Z002625
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 20:25:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X5rdETK0CGMbwpmdwX2di0zfwSYlupuJsv/QKawqVmQ=; b=GujBmtGE3/ZZdY4X
	/V+zSQYHNbjUEjEMOJ5QFC9C3PcT1adjcW8xc4IzwIWfJ0zAhaSKHpsFv6Fg92MK
	Nzl2fHEGqy491AtxAiuzWMizebpsNSRF1dAtsrdagBBcAUdblpLJl8xCNj1kXyRW
	Adt3ApCAB6pyG/gyjf0tcKLcGdWDh8PGzVhFzevSfdin5fmpx9e42t/9EaKW6YRT
	iR+j0y2Oo1rFp5D/9xqLDaGq6EZjwiZsRXr8PBHgUPAck9tZqheGhLDQii+qM5TJ
	hpvIsq3zHmnGBoY6ylaaL6NXZhgwcZwGYxVOnX1GMjrTavulWQ80sUQyNKMYwTvV
	JAHu1A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hd5n31-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 20:25:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d3ba561898so1466185a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:25:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750278300; x=1750883100;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X5rdETK0CGMbwpmdwX2di0zfwSYlupuJsv/QKawqVmQ=;
        b=NfXYeFchDTWfpFswyJT2dlJRy0/cTcnVV25Vd4WvNs7bzBBZHfLcJe/FqGRBq8VhsD
         lzDKPPX7OKDXfJapjiL7oSky4j7vaKoo4InvREYDS57QldKaU8QBgR/iERLxWv0AiUn3
         qZOPS3291SLl9jzPzBACENJXWXLnqzwGT1k+mJ4P5LAF4QQ2T7YY72Ua1Bek7ByHoB8n
         CfJwbW3HSgvIGCvrj+h6bBetmROPWE9PTRO1XkmDNH1XtN28RvAaGARVPl8+4mRVxy07
         1qbptW0sUcG2nbrN1sTM6g3AHbSMsuSTqBegMa1DDsKCdbUlvYnjUYcIaBo8Ki+U16oM
         /sDg==
X-Forwarded-Encrypted: i=1; AJvYcCU/ZMc2pNg72PNiYpJXangVyhN75231HQax4rTW70zOcn5j6B8s8m1r1nQTwkav973W+h78c+GY4+W8@vger.kernel.org
X-Gm-Message-State: AOJu0YxVQcbJOOyzmCeEeODpnzsJrgUNyU7iGZG0EWipjadqEyAAVNj4
	y2dfOrULEeCLxnhqaZaF0wIkBA03VT7DYFUKAXPURF/Elr39kfODf7Fp79wS6VIPo/75jvcgdNq
	Rf2XTwlZUjaHFaSyyzNkB9hodvLzm0hbR/lCgS5d8YjEIs4WTegNtN3qRGEUBz3vn
X-Gm-Gg: ASbGncvYNLomN/s4nv9ytvDT+/QoVJEVBzoNCOFiG42C/8Mz3ojhCmK8I/SfEvwxHaT
	aN+d5huWKhRjeA2RGpn2Lg6E5JAAstyJhwg2VaaPNdyzHPjUAs/RJqcdKNXq17mqJxm7cr0BbK+
	wh/36em74L4BVWDdIFEYlptjYxV3AxXvUvlhM1s68XDSsmdvgqMovs9jIpZCm0QBtiCuEzM1v7h
	dh4QX0JA1AHlYbcUIiuTWd/prfCn26/F/vEhxzhJ1WtowoT/vup3cCN7f5o/eXHLbBYICt4k4FQ
	hkfwWe8K76wq2rsnl6XPe+cgsckybsy7Zgxk56WLekDiez52/IO+e++x7l908qs4rEqXS4g5ddq
	sNKI=
X-Received: by 2002:a05:620a:1a1f:b0:7d3:ab3b:e477 with SMTP id af79cd13be357-7d3ddfd8928mr518302585a.15.1750278300532;
        Wed, 18 Jun 2025 13:25:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEk1TvaW+rFRP6NHspvxWymzXPy+5exCsFRUxs4VaLgedmuLlQ9Pbjj5RZryxTjrMp4+BQcAw==
X-Received: by 2002:a05:620a:1a1f:b0:7d3:ab3b:e477 with SMTP id af79cd13be357-7d3ddfd8928mr518300785a.15.1750278300142;
        Wed, 18 Jun 2025 13:25:00 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec89299c2sm1111742366b.119.2025.06.18.13.24.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jun 2025 13:24:59 -0700 (PDT)
Message-ID: <7d96ab73-ea00-4817-a8e5-5b15ddda3107@oss.qualcomm.com>
Date: Wed, 18 Jun 2025 22:24:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: rename qcs615.dtsi to sm6150.dtsi
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250604-qcs615-sm6150-v1-0-2f01fd46c365@oss.qualcomm.com>
 <20250604-qcs615-sm6150-v1-2-2f01fd46c365@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250604-qcs615-sm6150-v1-2-2f01fd46c365@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE4MDE3NCBTYWx0ZWRfX6om6rXoV6u0V
 0RF/+nOunaWsJocc1JiwUdEUo5dEhXijt4oO1t6sKXsihh+z5vSgDCge7VZ8yyV9qKzgtMRKPYp
 z12KanAZJPPOAt41NihGjk2adhN8UlDXF/5m58k+hZzwilkBdN2P8TitMaQF0NWXWoj3YWIaWeN
 wwspBhbolD0ACB2V2MUY+Ob2pi2X26Vb8KByT5TxbzIf5o3avGbAFJA9Y8y5tMuor4T3nGlDhdA
 x7RVktKx+mTc9bDoOxh/uH+yzKjGrSBPdGD59OiryC120z3BcW2VUQ72R9O+9olLHwsy/Pu9cN5
 fuq3/KTRCoN2r0DKO9TP18l8U3c6L7VlbNnVdUCcA3t01D9PzkZitxPYpMAzwH5TRE6WJS2GFzB
 kC7R6mu/yg6cz1rexUv0PvRnLHJuF1M3QaEaunvXikfTKy64Sw5HEj3M1z9MZNIfLkEWBhFi
X-Authority-Analysis: v=2.4 cv=PtaTbxM3 c=1 sm=1 tr=0 ts=685320ac cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=1anRd3zWmIIzkk0cLioA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: QabOs20l6oQM3LDruMNHwlp8iMF7JIwM
X-Proofpoint-GUID: QabOs20l6oQM3LDruMNHwlp8iMF7JIwM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-18_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 mlxlogscore=739 suspectscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 spamscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506180174

On 6/4/25 3:40 PM, Dmitry Baryshkov wrote:
> The established practice is to have the base DTSI file named after the
> base SoC name (see examples of qrb5165-rb5.dts vs sm8250.dtsi,
> qrb2210-rb1.dts vs qcm2290.dtsi, qrb4210-rb2.dts vs sm4250.dtsi vs
> sm6115.dtsi). Rename the SoC dtsi file accordingly and add "qcom,sm6150"
> as a fallback compat string.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


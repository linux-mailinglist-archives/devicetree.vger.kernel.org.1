Return-Path: <devicetree+bounces-135343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F99A00949
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 13:33:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D504163B93
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FDC81F9AAD;
	Fri,  3 Jan 2025 12:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gSU6ysg/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3DE1CDA2F
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 12:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735907621; cv=none; b=QJk4xsUS0whO++IVBiSVhPld9AG84+4XSHQa694Xf2trrd3rpDZGog67iFAjawDv1OMiYP6p4FFeAQcLgiMeFD2o3itlLjJsRUUxl2TpVdbvG9xHVbyO7aTrhpJ6lZFkm+2vyhuGXV0IuoSxMtuydWzRSG47pDntdUnuVKFT2Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735907621; c=relaxed/simple;
	bh=pEzUak3KSwcyxR/a9pc2u+/ko9TsfzXb06M294EVjmw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ty2ecFL/XokDAP9Nd8WzoOKOsZ9HmzPkeEkrQEwtNPiTGVchzqVT/eL+GZZ981IkKOljTGYV1NqXkkzlvQ9jK02AvnLucnEDv0KSH2VJatbLeTUObw9oDYm7wQNdXQFe3oPYbhUcdrQMS88hBo1v8fyUuEw0r/8/MDS8DCxQxOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gSU6ysg/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5037GarM012104
	for <devicetree@vger.kernel.org>; Fri, 3 Jan 2025 12:33:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n2Dpbmc/KnZM07+zlG/yLj5EEwSqvLtt5wQl4yd+ONY=; b=gSU6ysg/NIkk9D+9
	++Vold3gv781AW4DhM6aV1y2JM2HGBq5Dl959mngtiMICh5ZuZBAsXAFuuJcY2t5
	9WPCfXdxrRY+lEhPWgxtGUw1cYWP8K40P5X2OOp9BH11L8yNAPCojjUW+qqgR0Ak
	qK8E0eJpMydmFYoGKx3RgO5JS2yW2C8WiaOwGgK0+5L9lPNDFbVMljthACC22V1G
	44mj8AfzHxpA8YsaE2S3Eyzlx/9yYFQRT2QUWCxqBvHb6RvBHW7W7kOOELG9aLo0
	t5phHpvChr0I6oJHlwsag4buHaULmge19D3n5/9fB3MLUSujjvrK/iso4GxdVVnt
	rL/k6Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xbbp0na3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 12:33:38 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-469059f07e2so29450091cf.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 04:33:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735907617; x=1736512417;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n2Dpbmc/KnZM07+zlG/yLj5EEwSqvLtt5wQl4yd+ONY=;
        b=XIvEggxYymH5LIk9G5ZY6ygPD/+coHgiZUK5I4NO8bQ+yR9xxSFQfRIwBXmODwc24K
         MU6tz8mjhZoFgbS4Dcnk16I3xeG/4TQj5IePaEbcpsPFcKgtaWkFYDkzIoq34nny6F5U
         xTRRXFhwOXFvFA/p8KV1FHD2FE70R7OrpBhyMmc8VAwRv/3mwK9z08W81A7BPGilfWre
         XF9azLqxnViH9LWN6IaMQ7C+6/MrvkxTisVbpZ6x+qUvo6Yl+evmRIKUGK3Lbwcq15lG
         4bGYMIxrCfyTqsbWVtkBnjoNHH3/BlnEWbTJGg3O6NX/EYam2LnLlE+AJkQLNmcIyVwU
         zObw==
X-Forwarded-Encrypted: i=1; AJvYcCW5kTdVuAjlhCJWqb0Mg1JNOadgKal8m6Ps5YDpZmLNYr5Nl9I8WnBr2bzXQsNeSE5Tat9czat0rqzP@vger.kernel.org
X-Gm-Message-State: AOJu0YyW4TPh4ckdRyDd07UYWa9HDYSVC56ZVGREgGfhLjLxp8YyiKiG
	z9aRHRBFV5btodsYpfss2haY4BGcd+y//ZrSgrJ4hzVACCaJcTAxQ0wLeST8EAkO+0bsWil7Gtc
	TdUaAzZZfikSES9oV/6DqciRHymcjqnocOcZnwEEyMryoMDqqF7CywM9sFlZw
X-Gm-Gg: ASbGnctlHOlV7Czg+4f3DZd73p3A0YvG4TDPhVTqo1EPYJLaPR4k2OuitrYQguiYdsN
	W7CKKVTFUiq/0Rpgxvt1HkL+DZDPUOyYvEVXX1RKuyGZtoofV8h5saOY9UCr+mQ2xna1AhDGdss
	XJ9qN4h/1n/K1fZI1iY1PTnRTP8igUL0EbRZKSK+YmXjERxA4xlmfzJnufbpI/7XacfacxRg1RN
	p44a8hSGaspbCoXTK+2TzQRxM/rZiFf1zqSl4SZJ7odjEpXno0E2ckD259wq/CDEnJZJv1gS8kj
	cE1aC7tsVpsaJXk4dVfS50bBdvj7gaYQ6/E=
X-Received: by 2002:ac8:5a4d:0:b0:467:5462:4a14 with SMTP id d75a77b69052e-46a4a68fa9bmr291986131cf.0.1735907617229;
        Fri, 03 Jan 2025 04:33:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnMA0EQ857HFoyRLGK5cmdBugpr0LylR4BGIjaNVCCKL8WAfGOH/wKHJw8YeCRcmbXx+Ybig==
X-Received: by 2002:ac8:5a4d:0:b0:467:5462:4a14 with SMTP id d75a77b69052e-46a4a68fa9bmr291985931cf.0.1735907616857;
        Fri, 03 Jan 2025 04:33:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82ed65sm1871999766b.33.2025.01.03.04.33.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 04:33:36 -0800 (PST)
Message-ID: <aecff79e-0c14-41e5-82a9-e24413798e21@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 13:33:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-0-cb66d55d20cc@linaro.org>
 <20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-4-cb66d55d20cc@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-4-cb66d55d20cc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: tIQOpyJk3Q9pgJubV-z-2DCwXVXYgx38
X-Proofpoint-GUID: tIQOpyJk3Q9pgJubV-z-2DCwXVXYgx38
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 mlxscore=0 suspectscore=0 impostorscore=0 adultscore=0 mlxlogscore=853
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501030111

On 2.01.2025 5:32 PM, Bryan O'Donoghue wrote:
> Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
> of previous CAMCC blocks with the exception of having two required
> power-domains not just one.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


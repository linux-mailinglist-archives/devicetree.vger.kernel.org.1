Return-Path: <devicetree+bounces-220990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CBEB9CB94
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:56:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 731C21B2718C
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43951283FE9;
	Wed, 24 Sep 2025 23:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ea+Y4f2N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA34011185
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758156; cv=none; b=jOazvL4DUptELvhkfE62hTcJktC1XCjAe+U+rawho7ntjrUDbGuiC1YVb+SkX+5wT+geb+mzPOqaWjMmXoTsryV3TciURF90mDEiq678GnY2LpyYm7G3yG+HZ/qCeDQPHSkp4Ky/ICi1ffa29ut5oZ2gRCANoCywGvQW2VsTMlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758156; c=relaxed/simple;
	bh=pVFWRyED9uXe9kpHIiNh5s/rNAukrjZqYdBaoVesJPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k7faZ2bBtlAcB8EoXrYCYu1q4e5+SfAq0uPId2Sd70MuttqUa8JF8YSqPCwq2vbVSxy9P15ZiZUO0pSABeQEcjvUb5/lmD5gKbjrezQjLq12gJ6I++TO6bqBwcqP/bykr9eIm0TQq1TrOp5hfzXAMefIhQ322W79BkzkZ6n4isM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ea+Y4f2N; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OClc1F025358
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:55:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+KQxcXsvZfAS1wOTJMcdFx0mfDRF5q6RjS3aOLT4mUA=; b=ea+Y4f2NY5vZ8Jx8
	uPTphXJmu2TWODn/nklaUjeLfv7cGSV6z+oFfah1tg251ajdMV0S/urHWVUsvz8P
	9UaERUeDUZiYO9Y2dJPaeSbwC4z+K1DWLEliefK28hTIi8+nXfjwEliUb9twl3UC
	Du30Hd5s5U4/LCt5g4J3lZhvMAapmGFC7PlSmuZSigVM9HF7NokpDg0X/f1oHxGp
	XFU4x+bhPVkv1w1kcDn1R99JpfuCchxIh3y1u75g69wIA2m0NT517H/xETz+rwVT
	nOBTw8WBeItV+GO4wG2bB+lWuf4kzNA043XnomSuU0eCtfhd7icA6USIUqE28h4o
	dDG4vA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexdpd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:55:54 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5514519038so456849a12.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:55:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758758153; x=1759362953;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+KQxcXsvZfAS1wOTJMcdFx0mfDRF5q6RjS3aOLT4mUA=;
        b=lENM2XldySKcAq3LIphKSe/CbJSqaaPOQw0TOi1ka55DNLKZxItEJR1pMr/v0phAYH
         rAL6oUO++8cGqj7znOrUSgPhsWjo4ABxDnGgKZr1UkDAoeRMVIda+ADC2hkVywjuMPli
         yxAOgY55DBnFe9PcifZpa6zI27cG2wuCBQZo4BX/tJjNxd1ms7lzpYknhfLz5VIik1Y3
         /gS5ei2NNO4Hgbt7bXrpKlc31M/K3FiCbBQgfktmBbxIKG7nrvI9z+Fi0CfgQCZLmuRq
         rvuIUL+bJtpA+52xWZZFvZ5GSktzXQ4oqMhLmf3gFSWgnHEv7YslOFnDsualEYDj+cyA
         pYZw==
X-Forwarded-Encrypted: i=1; AJvYcCURUT3d1VaZRZivf1/VonnmMpZE5aU7DeNbNhxR2ZpF/DVgRc6NYoWanxa04lhQHEZYsIokPmEJZLJc@vger.kernel.org
X-Gm-Message-State: AOJu0Yykf88nIsgCe++NNNpHhp1oOUBuyFHkA+XVTs4IvgCQIb7kfWRr
	NUySFLRJpt8dv0B+2puaPoSSYIvVyC7AHDj2RadiQyGQBIVyAGkTGLmokMJFlNFcdBJsBLRFBdl
	hIILLIokyKd0p/7U8wqJP7+JEpFH/186hX2/+loT+xMLlgAcfdmPmS6/fOCJqOlhx
X-Gm-Gg: ASbGnct+IjkbFhkbh4Fzru5/key1hJm33lk126LHKAvwib9Vu3UlYbUcr6z8Cc2om4J
	NhK+Da5Lr9FoM03Wj2c4l+LnNfjZeoomzSbbhPrdNfhmrsseTuiHXkHZeE66ODI6RSdy2QMyNex
	G3nYWc9alknuKP89CbFuMa//ZDciTChtxIrQum444st10eclMfqPYM4fEli+b0xi76wBTWujmDw
	PD7fDLR8Vlks5E7+djCx/+TSC1nOr4Sqc8JWLdcisJWgIDm4ha/sCgVt1ot3XcqyDI26dVuUS+1
	OLw+7FiLFF85KGRFno+7g0HV0hgCMY3UMZG2ydzLjw9dGN96AMhQ2XSEI/bZFbzz1SmyG0Bk1jE
	5MhftlKGxK6XrBN4UwJ/mLne7oRFDLYUjTYM=
X-Received: by 2002:a05:6a21:998d:b0:2b6:3182:be12 with SMTP id adf61e73a8af0-2e7c7ea3a80mr1785214637.19.1758758153127;
        Wed, 24 Sep 2025 16:55:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnZP/Cw7FjCDl1k9YPTWC9PsfI8KuZIFhusxaePj9Boj23xR7A+imFLsr21Pu2tm9ndHFGvA==
X-Received: by 2002:a05:6a21:998d:b0:2b6:3182:be12 with SMTP id adf61e73a8af0-2e7c7ea3a80mr1785187637.19.1758758152728;
        Wed, 24 Sep 2025 16:55:52 -0700 (PDT)
Received: from [10.133.33.164] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238cab8sm233347b3a.2.2025.09.24.16.55.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 16:55:52 -0700 (PDT)
Message-ID: <e06694ec-41a9-4d31-9fd7-8f24f6aa17ba@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 07:55:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] dt-bindings: leds: Add bindings for Kaanapali PMIC
 peripherals
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
References: <20250924-knp-pmic-peri-v2-0-32316039db2f@oss.qualcomm.com>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pmic-peri-v2-0-32316039db2f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: j19AuEJ4fOkkRo9wWL0DBF_jAKuZsqH7
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d4850a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=BM8lxeQmQxDjDH1EPigA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfXx+olEgjslKyS
 MS9RPFOGE53paKsVgLfdaGwMLmm/kYStbQ0u1gfDrHvaQmiUyh9406FWSJUvFh0nZRGyDAnV4RO
 3lg8sE016lKcdk4MwALHzVZfMejFzIULnCH28BkFysvWaB6CtMDpyQj3KLc5FAt35Gpw8D5I/4c
 KuMMZzibZVdvcFG8Hu93wUCxEV5wFotgfb0c84PmumDEAftAere27EJ/e29k/hrg1ImEfDnkbMy
 eI/pjgLzeJ48EXd1+y+NxZc9xvd9deGZfa1L8gEDQbEQgE7icE6muFEExQrFQbIJIGk0YH6ALqR
 3AeUyOfk+50nqM4bVQdqG9f4oMbMOwRWPQVDvKqj5bkfl0l80Q25IonjpRjXcQf9NZP/E+M3lYQ
 zwALHIxL
X-Proofpoint-ORIG-GUID: j19AuEJ4fOkkRo9wWL0DBF_jAKuZsqH7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

this was accidentally sent twice, please ignore this.

Thanks, Jingyi

On 9/25/2025 7:43 AM, Jingyi Wang wrote:
> Add bindings for flash led and PWM devices present on Kaanapali PMICs.
>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
> Changes in v2:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v1: https://lore.kernel.org/r/20250924-knp-pmic-peri-v1-0-47413f8ddbf2@oss.qualcomm.com
>
> ---
> Jishnu Prakash (2):
>       dt-bindings: leds: leds-qcom-lpg: Add support for PMH0101 PWM
>       dt-bindings: leds: qcom,spmi-flash-led: Add PMH0101 compatible
>
>  Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml       | 1 +
>  Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml | 1 +
>  2 files changed, 2 insertions(+)
> ---
> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
> change-id: 20250923-knp-pmic-peri-e067c827c531
>
> Best regards,


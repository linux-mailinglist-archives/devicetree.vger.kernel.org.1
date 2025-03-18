Return-Path: <devicetree+bounces-158634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0656EA67887
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 16:58:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0549B19C04D2
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 15:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D940F21019E;
	Tue, 18 Mar 2025 15:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WW1Rw35d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972FE204C2A
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 15:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742313464; cv=none; b=SxOQS0rRMWNAIcrXEnoSoTShYYiZN52nmpAGiBMapgmog35rwz/6xqU2s2mKekbfUH9BnsjFIhHhz88AIU2sTGnoXmm825/AONm3Z83euzcxk9U/DjVEXfDmUoJAO2sCkxTQJHe1QcWe17JagWG8x7nnqNbd4U7cYaYz6WTrEFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742313464; c=relaxed/simple;
	bh=DCJk0vDnkiwGs/YFeXYK7NVY9JSOcS3tfIJ4EY3c6bs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l1kZO4WOxP7Swl5Wtr6gR4rdvKnqsjo+iXqTqMNpXTosRCdpO7BSPvv88012cUfUi4jVpi3JOTQN/eoF/JMISAGzdzSwqDKT8eEZHuqKcS9IsbG44BPtHsCdsSirFUij3MCv+YBo+0AVpZaBZ4rWr3kw/tYohENljH8Z2o+HSr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WW1Rw35d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I9h0Ml021042
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 15:57:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FeHJEhC0iU+He1qad6Ja5YF9BG+A4eapl/2jYPrTqCk=; b=WW1Rw35d4u8RTEhr
	jDSggKqe1/vzABSj51PY3e/yoa0nzWmEAuxa4UoGcK2l9Flr358UOGgqka/ohqnC
	j08BBRjKV3AePSj+wr3dBfc8kDw2fWOXBeciBDH3RpUplhZT33ufpnH74lU2e1dn
	hoMMGzjCCgqRA2cimEvIwJOcaXwYQaxPaslb6WnulWfcAg3jMBMNuDQVuY8nommR
	r6v5ybt5/9RTel1CSF9rjiPXotY78ZNdkP8jCS2jU2nyv5/hF/XPOr2V71ADZFtQ
	lRU/T8M8pwMGDGUI3J3m9P9nhI5oLqyX2dyPT1AOCfKpk8c2TIvMN9vzcsZDx9BX
	V/OA8g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1uu0r11-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 15:57:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7be6f20f0a4so59142385a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 08:57:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742313457; x=1742918257;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FeHJEhC0iU+He1qad6Ja5YF9BG+A4eapl/2jYPrTqCk=;
        b=jN9Dnwz+q43Zz1sDh6pV/AqbDpybpbTQUCcY6jCCBoo3qsEoTzFPubiW9uf91Ka8jx
         NvybHYX74aHXepbvxSzI/XFuCBa7pSe0BkxxQAGmCqrZVuoGdJUsrJGGl+44gKOC0B/d
         DhuJZv7oXlurOSHsJ/q+HgN8WR5rO6H7vldqbzoE9DlrAEJi3SIHMtUNFu5hXJCf2Rnm
         wqY05FcT91Ve9qD0G7SJTUowmNdfeA+okw3BBePZnryUMuDOTTLp6XTPswXZYComylAA
         kk0lG+BhRvHl0NRZdiPb2MmacjCwfwcPeyrQM9qYkm4AIHJC62lTtJJBfgNNZUh1tGj7
         MMhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoEgcK6nojBJe9NmtKi97hEPf14266ADUmENZNS2zh6468Wr7ZW4cKhuxkNSqnfikE3cPycMta0kYO@vger.kernel.org
X-Gm-Message-State: AOJu0YzxDyp7twos/XH3oGh+9NSvCJZwluU+ATVOtNflKRcIGOk5I+KI
	VVqRp+LPPsquyN5UrEpgh4h9ze4y5AKNNj5SR1+DzsJImgjUwY588/G3uf67VwRgbRYvq3Zes+9
	XouGoq8ztGgZppoYRGxFWvx/afQ2ox7J7EPliosp4QTr8JHOocRKP4iKX/F6T
X-Gm-Gg: ASbGncuy8qFkENrsIOrLeMVGN2jVS9yBylI1GRfcvbX0MwuFJtBkpkYS7M2K6Zbcyky
	/X9GybIvq3d8YHTpdi4YjCq2pNVzmcCmyBIorUl9jcqq4hmEuVIclGnqSOcrq+DdXEa2L17flP3
	oF+xFgn6VlaiTrLrzXXz+7pIDgDLbFjp+F68j0po7XLGQ/IzEzdpZs/8W05AHHeROGpxu61ZkU5
	g474kuOzSxZxtxbmkHmra9B2HoDCoWWwG9Q2EHxFE0ygfSMrYeEO5ryr2PBVCOO6XcdqiU5/uHj
	48Yw+6y2jrHwCWhCGyiDDMICyoEY94FL2IO1OiEyhqiMbEhCdW6OqLfTcSMyacczrOmB5Q==
X-Received: by 2002:ac8:5d51:0:b0:474:bc4a:edc8 with SMTP id d75a77b69052e-476c802e949mr102101031cf.0.1742313457540;
        Tue, 18 Mar 2025 08:57:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrg6Me9RJqrQL6OlFw5UaljHV1F1lZL86EsHOvErE3FXJgcBWNqdW6vNoLgdq+29YE/UNF4Q==
X-Received: by 2002:ac8:5d51:0:b0:474:bc4a:edc8 with SMTP id d75a77b69052e-476c802e949mr102100921cf.0.1742313457210;
        Tue, 18 Mar 2025 08:57:37 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149ce8efsm869552766b.102.2025.03.18.08.57.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 08:57:36 -0700 (PDT)
Message-ID: <66049cc8-3e4d-4d5e-8ff9-67b408e5b1a1@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 16:57:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Add device tree for TUXEDO Elite 14
 Gen1
To: Georg Gottleuber <g.gottleuber@tuxedocomputers.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Georg Gottleuber <ggo@tuxedocomputers.com>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        wse@tuxedocomputers.com, cs@tuxedocomputers.com
References: <57589859-fec1-4875-9127-d1f99e40a827@tuxedocomputers.com>
 <5e72992c-170c-48b9-8df4-2caf31c4ae44@oss.qualcomm.com>
 <5hvghahezqms6x4pi3acgaujyhiql6mzl2xhzph5phhki2yiyq@oi3xjatj7r64>
 <129bf442-2505-41c8-9254-ad7cacefab89@tuxedocomputers.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <129bf442-2505-41c8-9254-ad7cacefab89@tuxedocomputers.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H8Pbw/Yi c=1 sm=1 tr=0 ts=67d997f2 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=prfVWYIJzO_NFut4FmcA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: bO6RIpFauXIF1nKdCKp-f-FWUx0Tfa95
X-Proofpoint-ORIG-GUID: bO6RIpFauXIF1nKdCKp-f-FWUx0Tfa95
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 suspectscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180117

On 3/18/25 4:24 PM, Georg Gottleuber wrote:
> Am 07.03.25 um 07:45 schrieb Dmitry Baryshkov:
> [...]
>>>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
>>>> new file mode 100644
>>>> index 000000000000..86bdec4a2dd8
>>>> --- /dev/null
>>>> +++ b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
>>>
>>>> +&gpu {
>>>> +       status = "okay";
>>>> +
>>>> +       zap-shader {
>>>> +               firmware-name = "qcom/a740_zap.mbn";
>>>
>>> Are the laptop's OEM key/security fuses not blown?
>>
>> Can this laptop use "qcom/x1e80100/gen70500_zap.mbn" which is already a
>> part of linux-firmware?
> 
> It seems so.
> 
> Because there were no logs about loading zap.mbn, I activated dyndbg
> (dyndbg="file drivers/base/firmware_loader/main.c +fmp"). See attachment
> for dmesg output. But GUI freezes after sddm login.

Okay, have you updated mesa to something recent? Try the current state of
main branch

Konrad


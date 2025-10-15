Return-Path: <devicetree+bounces-226871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32810BDC493
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 05:15:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C26653B3C48
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 03:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B861E26E17F;
	Wed, 15 Oct 2025 03:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mVAN7RI/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE87C1D79BE
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760498115; cv=none; b=UPZrDfrBg/pPSsX8Fesii9OwMqARL45TIbrYEEjPVdSRFgM5qZK485qOQ2XkrZ3KFxm3GnaWwBEbwf0iQmmtxRTZx6Yp3aLUgX+ekwvD9aTo4Qhukjec+aeiW7zYf8dCpaFFndK3OO8LCICkTMUijsjlTzCrzPwpxvSuOFSVTGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760498115; c=relaxed/simple;
	bh=Z2EcDgOIRnYP1iO3bEVKH8ESk4H0ObpufOU6wembBn0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xqui2O0VmJxgoq8H2BJSlObjErhDA2/V2hvFSZig5/r6I925XoM71v3lCl06OmmLdaol0qJvK1Swz0F8xftEQ9dNT7GvuOPggM/bOgEe0p28tEKerwMuIif45y7d5f6OrboO8lsNI5P308T9sYbsTQa21bxOJBq9bQvN5Tw0Bkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mVAN7RI/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2s6Bb002544
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:15:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z2EcDgOIRnYP1iO3bEVKH8ESk4H0ObpufOU6wembBn0=; b=mVAN7RI/A06bfnIl
	1gCkbCZ8teDNzbQuKxj9nsliOeh1IhTBwdOOUxHbzZt/XdLIgTALZH5D2aZoPnco
	gGefSCpJVDANTSVFWyUSNo1LO2xe5vpFLU5De4UhpCoN6W9G/IWpIrCSVcuIzc+s
	d4WboTsmBRSafPpZKu9zmCbuybIOII8gwvloOob0ITam/t/U2PBDs46pgPdhNlH/
	ELdmmkZR0HgWh3vp/1fW6qk714ttANC+xN+tiknE9xAe1sGEahFbAxi8YAqeaHnd
	1zrucOPv/S0orQt47wnG0FkT+ZnfXAMVa6z5y2hmFO/OTTrnh7cE0R7YW/RnPjVZ
	Wzvq+w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa8awd5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:15:12 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2697410e7f9so224919925ad.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 20:15:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760498111; x=1761102911;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z2EcDgOIRnYP1iO3bEVKH8ESk4H0ObpufOU6wembBn0=;
        b=K5WQVcLedDUt9TR7c47F5ktbfyArT3FY9kn7dGVD037lMrZcShiaINerLbeuhcs6cT
         HnnsX6Puje3ilt0hb4nCpkNQ4B4tFVxSv2maBqRjEn8tE/L6n3FYE37s8ponyyiWVhao
         G+ibfPeDOylpqzu6SXJZrd3Nbajt6k0+ZmNXDcigp5QtjuWrYJo0tw3dbi9hvN89ae0p
         OjCAB9wsYBal0PwK9+9LDtsrVDsyVTWbqiy6aq9aNXHXYt1Da3wG71w8W6bKQ+a+u1Ll
         vsZsR5xGAmvpkp2ulIGO3CoTBMr7SOf3eXtT5WrNU44pspDpT0k6bAxymL9N03zz1gsV
         QsXA==
X-Forwarded-Encrypted: i=1; AJvYcCUQKaFzMQ8kjHPILHuQqN/W6ao/sO7b1imYz2FpPyLfNyLWQe7v+O6xXd757aX1MpgnkViGJzaIPc+R@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4A0/sXd/yS7zu9ZBVYgoiJPn479A8MXIjl7TL91Gr0ZaN3/M8
	npshimamnCilyEQ+0qQAFesiLA2Hgmr75BtliKo3aoHG9EyCGiTHzIWBREInKNnKK3RKn42z26/
	x0hTNMAHtCAWLsIOcRcJzQAPT+hiV0Jw5nzuyrVYUgqnrhY+sy3RxncIWvLbKR+B2
X-Gm-Gg: ASbGncuBql1KcvJETs8ZKC54CLgXioWp5jP6YBg6dLggSFyvfJ3nhjBsXnBas/hahP5
	Osv9BJ5Lounygz3RvItf8h+98zDiC8bxuWogkPSJG8YtxW0tfgoFRkQKXfAzyzmRVUGB1A2VyIi
	Av2tp7H8rgvpAkylUHP5cYVx6ltG7b+hFa+wabu74aFqC+3AjEMIlhWoz8I37wUGjRZWrrKnN/x
	0glC9Cjg9KVFHDEhPsL8OD0Pdo6ICw6Hn5IvF5oYcxXNDLjJYPgvaJ18794fSKVE3UPi7uNkSdM
	3z++bBjQMzwRZAKwJI8HTmCQm5I889qqBrDbVKCjUqCGOgFCtAk/1KOLfnk61qtVNt6upZ1Qqev
	vG22MHFP1N/gClEUgcMHXOaexwMCMdpnybwM=
X-Received: by 2002:a17:902:d481:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-2902723d3e5mr379806745ad.18.1760498111439;
        Tue, 14 Oct 2025 20:15:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHp8mRCfk/F3vxmV+6b5oqRQLgmQBXREp84fmteVqzoMJJXI68+BftcVdGldgZVlfhqzx5J1Q==
X-Received: by 2002:a17:902:d481:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-2902723d3e5mr379806135ad.18.1760498110835;
        Tue, 14 Oct 2025 20:15:10 -0700 (PDT)
Received: from [10.133.33.56] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678ddc9f8esm13665626a12.10.2025.10.14.20.15.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 20:15:10 -0700 (PDT)
Message-ID: <446fbe37-3bf0-4dae-bf7d-b863f7fa3b4e@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 11:15:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: i2c: qcom-cci: Document Kaanapali
 compatible
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com>
 <20250924-knp-cam-v1-1-b72d6deea054@oss.qualcomm.com>
 <CAFEp6-38buo3WafiiXUEUs8n-=SKgacMD44gGAd1pnEDAsizCQ@mail.gmail.com>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <CAFEp6-38buo3WafiiXUEUs8n-=SKgacMD44gGAd1pnEDAsizCQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: It-qk61BNL_307bQwSdGG34Zp0rESBdk
X-Proofpoint-ORIG-GUID: It-qk61BNL_307bQwSdGG34Zp0rESBdk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX50efSA38BYEf
 jFTIQq+fZDsxUNG1atOe1ImzltMzoLIuCfHp/9wtHmvtODphFWETi2ij96+BvGG6FE+Es1IfVIG
 apS3aMY19HOqcF6DjkSlyGf+8mXP3t5WKVP7Ybzsk3MnBdjL+N+g2LeASDZdrdI1uzCSyUCOLD0
 N7b4qTRj9dqvs743mtQgdgnK7Dm+tZX5OvV2qLax73dD9WMjKgUwVubLYP4wJjonjJZi8I0RXAI
 V8ZFXkfsqWYNATcEAknlqiAvtaDvaBRG2g4/soImsGGBcruANspvGKKF6lRODjzAlXsIK15XCBT
 sH3UBapIOoytwa6YFOuZjKmgbqsvJpQc5RIRbBgeq8nOEqwdZUyu/2kQCFBFsMWZTshZLHUl5jJ
 EQBH+uWUY27N6/O+6i7/jlTZr+AHAA==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68ef11c0 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=t5TqcTtw8i3Z0Z80VL0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

Ack

On 9/26/2025 3:32 AM, Loic Poulain wrote:
> On Thu, Sep 25, 2025 at 2:02 AM Jingyi Wang
> <jingyi.wang@oss.qualcomm.com> wrote:
>> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>>
>> Add Kaanapali compatible consistent with CAMSS CCI interfaces. The list
>> of clocks for Kaanapali requires its own compat string and definition.
>> This changes the minimum number of `clocks` and `clock-names`.
>>
>> - const: cam_top_ahb
>> - const: cci
> The recently introduced qcom,qcm2290-cci has the same definition with
> two clocks, ahb, and cci.


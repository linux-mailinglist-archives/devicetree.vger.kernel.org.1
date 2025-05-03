Return-Path: <devicetree+bounces-173308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAE9AA806A
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 13:20:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CFC1E1B60535
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 11:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C0161E7C12;
	Sat,  3 May 2025 11:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gAFPu/kV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682682566
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 11:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746271246; cv=none; b=OYiU59cJ2SRefBaQXaHN8HrhoRf3ZVRM3pW8tA54qe2SHSh9hjMGdGmEhsUbktGLU3yHP6fszjAvoF9va48h/nJLzUwUOWw9DnGcA5Wx76pRelHVaqfSTuoY/iVWrTnD6N/nOEmwxDco7wpvprd9IyteHG6jy34Gp9kIpxQYo+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746271246; c=relaxed/simple;
	bh=ZZwm4+3kqdZaoUrJVAZp3I6AuMg2MOE7m9ADXt1bIrY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fxtOcJPAR+7p7rsFgT++oxDaklC77VwHdI+k9FmO50mR2X7pvqDwbO/q0y+lG3uCfTGmZ0Ejgx6VaEwUg7RT6S1iLF6dph/l0xQhl1qV3vo0cBAv/FDU1ibq+wJWQ9CJ4tEgM5emEgnLf4JVlHdl+zjfQlxJ7t8FIdH/EBjiSYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gAFPu/kV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5433S25q023695
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 11:20:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZZwm4+3kqdZaoUrJVAZp3I6AuMg2MOE7m9ADXt1bIrY=; b=gAFPu/kVSF7z2zpw
	JsmfR/Fl+CYVrdezpvlE9Fu9Thwz3L0nnxqf/tRBEO/Ponq0O360EE6/9Eyn2msj
	aN5xZI/IJvtfIQKnoT9wC++Yqfxw6cbxJ8EIqvKRLZhA3OmQFtOIqUDx3POo2wHO
	5SRfa6/5SeaagKEdvoKuOpBK3MVqirzm4OA6waCPv6MOnRz+xM9jBzGr/Xd8LvTT
	BTfNHC/Fmxm0sNv4L9QIcovlumy6c3UbVcNy0/0Pa4yd02Ol5XV3o9SHOzyU0xnV
	tXDGEPFAYJfPtV3jIOUp/cJrx/ikbgPWrmIy10uFoO3TSiHDr0D7s7qwquKrsUpW
	Jlf3gw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dafg0jpf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 03 May 2025 11:20:44 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8fd4ef023so6873126d6.2
        for <devicetree@vger.kernel.org>; Sat, 03 May 2025 04:20:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746271244; x=1746876044;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZZwm4+3kqdZaoUrJVAZp3I6AuMg2MOE7m9ADXt1bIrY=;
        b=hf7OtvNirw9q+WBvmf+/PswU6NB/Vim3ay7hcO851fsvviqqeGovMBbi19BmBYxwrx
         OxYKQwTf6c40YY6LtM9fRbsy9FZdxyCZH9Wf/VX7uKJ/14X6pnfioH8kJ+ueaVGuAyhC
         yWmxHpmYuEWbrODgttS2UAobK7+/d+kaLaTOi6xggIiWy8xq8ZuddhfKC4FytuFpw2SV
         GOcybhfL6CWYOuFJQUiF4+qRlnKOqwkLQu2k3nz/jru5o5xDvfbRscNNEf1LBJQShJYB
         1/dXIErbgEaUHFDLLLdnJYDdTJePi50f4g2qtm8EFtoAoeu4wPIVQFt+g3Ld9r1Qehoq
         mB7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWe5LbvURWXWnCmxhbFGpXO2RrBHEFS7A6MImJcb5i8+BVsWk4mXKqXQmM7jT8nMtwuZW99QrQ0OSt3@vger.kernel.org
X-Gm-Message-State: AOJu0YxOIlhJPbCZm9OqCCgEHY4L1k7BDCj/ei4tYjtK9uv6+xcvUCNE
	oNKk42lFcQUgNlOIJACRm+5o8qJL1aBOv1VELJI7IM+aFMuLKE2XZc9cGr27ETA1EqmwFAmDQBn
	eO97xmoDgUpMRMhTJEgSiBhi/rH3BUGnW4JgcDzrH0EcanzwVu5HN2tVVy5JY
X-Gm-Gg: ASbGncvPvPeP7f9eUrQaoCcRu7J2QQX4CvKqBun81EiqGGCdWYkhZkUZ25r7FUy4Ef0
	Za/3IMFGKOcx+eQLxHzIYSW30S7kAxSHifL+wmONayWfzmlgqsXFZejGIzF+FU1EWjeF5aXlhr1
	7cvBb7/W7apNk4VxI3Ot4kKjrzNXnl7QorGDsmwMyaSOBME6DMuVzbRofTSSxH3Z5dchmlnb9Lv
	5qzKGYvqZZZVLF+yBdiNX5lN5Qt7kWKj8RFdvKYvUJKsrmTL77ycehjSTaOaOPIPCTSHzPSN2Pe
	ogZ4YER29WhZbBiVdXCGAYQm3aCQ64WorRjdMBZpkf1oaX5RuZJnemuqePzevNUQRkc=
X-Received: by 2002:a05:620a:190f:b0:7c5:687f:d79d with SMTP id af79cd13be357-7cad5b4a71cmr328842185a.8.1746271243657;
        Sat, 03 May 2025 04:20:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPb7K6LSDWBZT1Dho5YFFLrfHITP13o2fAlVZXPwohh1JHtEdiAWbk/ZWvd2Xrvglqu4P/0g==
X-Received: by 2002:a05:620a:190f:b0:7c5:687f:d79d with SMTP id af79cd13be357-7cad5b4a71cmr328839085a.8.1746271243159;
        Sat, 03 May 2025 04:20:43 -0700 (PDT)
Received: from [192.168.65.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad189540d6esm179999466b.185.2025.05.03.04.20.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 May 2025 04:20:42 -0700 (PDT)
Message-ID: <64268903-fec1-4418-95ac-665738435366@oss.qualcomm.com>
Date: Sat, 3 May 2025 13:20:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] Add support to load QUP SE firmware from
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>, andi.shyti@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.or,
        andersson@kernel.org, konradybcio@kernel.org, johan+linaro@kernel.org,
        dianders@chromium.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-spi@vger.kernel.org
Cc: quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
References: <20250503111029.3583807-1-quic_vdadhani@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250503111029.3583807-1-quic_vdadhani@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FfqIaxMU-Fe-t1PHwMYdveX3zXLxykCl
X-Proofpoint-ORIG-GUID: FfqIaxMU-Fe-t1PHwMYdveX3zXLxykCl
X-Authority-Analysis: v=2.4 cv=atqyCTZV c=1 sm=1 tr=0 ts=6815fc0c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EGseXkZT_eIdJ_7nNB0A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAzMDEwMSBTYWx0ZWRfX2hkPW0fW1E1h
 J1KCdqOIlwUjaEWofiRMuaieJS225bJxzUaUzeYG1il59JEGCWAZZwthj7abakFhKcv1PwrAI1j
 rJb3rqMKBA03YR0tWmY0vMaeszdjv4WAGbY/iIriaayAqZuilfFEdzVNBDsBXpuKt2VFwa2m1Zu
 08EHCo7cINPlhSxxP9/Fr9ZUD6NS8PYZt/Lw/I+dmLgPwLJGN7JfG3RZfwLmSsGu33hiVRTIUHA
 LxI/vr69quGt3AYbhJdfgZoYNOYTTYVGN88Fx9zZXcQ0ZDl4+rh/WoscGVXatWH7ncsiEq1M7xx
 /KqbD4UwDnfIVNxBwc0otrvulEfjN3T+K6kq+rRg7PLU05G2DqnHtFezgE36ZuzjFJIm4UTXrZQ
 4aoTLTJXBMZyrmp6R85nXKnywBKH1Dwj1Bx1z7tH/iso2oyzhyamj0ObxQjMeYf8FzlZs0Ip
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-03_05,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0 adultscore=0
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505030101

On 5/3/25 1:10 PM, Viken Dadhaniya wrote:

You sent this series at 1:10 PM and replied to review comments on the
previous revision at 1:11 PM - please refrain from doing that, as
you're effectively stalling your submission because of lingering
unsolved problems that ultimately still need to be solved before
the patches are merged.

Konrad


Return-Path: <devicetree+bounces-203562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BD249B21CB4
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 07:07:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA0D31886F7F
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 05:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BA552D3A68;
	Tue, 12 Aug 2025 05:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dfj80GVM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077AB254B19
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754975233; cv=none; b=JGkw+91jYZmH5C+v869500wKh45a++1KBXZANZN6OPQxhz5gTRy3syz2/LLeXTAmB+KGyAXLkBBzNRoopznPeBHqD09NgsCunz0Pkusm4rO2jOD6catKPmZGpzz3KrJ1n1PxqzEEDZSad3xKK/EW7XdiAYOdenTmPkcp8hmbHLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754975233; c=relaxed/simple;
	bh=JW8imEaLawVdDB6pLuEapa6akjqmjGy+TlVBOIdQTJk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=biy+8gdMcG4UWZ7yXJ4vLX+cG4SDh9LhEbCe0gaUnFWwZWppjPY3SzN0c4MaAoMqPXdlK3zct4ceY60XJiR550SEo2cQXlFqo69xK2lY7qXkuibBV/xyHaNRnTVvySOSg1Hbv8euznrDN93USTIwGtN7dLmCgT984O2ZjlgPwYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dfj80GVM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57BHLvFq029232
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:07:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oNkEVDKLytEFqjfBNwlsGmqz4UAUYa8AuW7pBH2uoB8=; b=Dfj80GVM+Y5bhCYP
	zMLeMO2K/ZFS/sru+sGIT+iynd5c/OmM61twuHzNH85UyFCbs+K4OGmJenKBezPh
	NaxmtzjVHBAWnbkQex2yJbts90kd33oFDXGvk3DhyjhIh3imS+RP/hs5LqzBG00W
	tZ8+h8RgRrFz/NH7Q0/ODt3JgAaA9gaitKs66gFt+t8YtW5a7qhX2QNO9kmTfsRp
	aFDChMzZwQpCDr2RT2fngQoCBrA7OF5dCzD6vz1kk9t9nrIvGWgWiznjfdVE+8IN
	bZHhh6lF9YrVM2D3wq7DTwdIRfB547T/+iZRUifZpjjSrNmp3xN5cijwzWfyFMb7
	/3EV3g==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dygmet49-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:07:11 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-31ebadfb7f2so4883101a91.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 22:07:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754975230; x=1755580030;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oNkEVDKLytEFqjfBNwlsGmqz4UAUYa8AuW7pBH2uoB8=;
        b=xPSrYEM7OPRAAHA589qd6ke9WAt7i2fZqtTJ5lWx9A84NRh7lWLcvv4JbW/by0G2XK
         8vnxK4Snklf78h8HugJNSyf7OEjLoWDZtRsAUS0Z96LSnoVwRdTjPhUSNw5lYAnvHVcU
         A9S2zMc7EhVay/xv3+KNoNT8eYjhiQAaOzNrcU/W3d3bmSpMibookZsnO5km+twIxWca
         FZbjhsGoLFQJqGEdzXHPw6fRBhgbQO3uzbUPhgDB6nn8FDnegZTybkYQoAEeeE7sZtFN
         3PDUY6Ml4TNF4VnR2JxKuC95onshNKjGmJIXJy/Cr58LScbWMNJ6iEqbeK56Jl8iVsuc
         FpUA==
X-Forwarded-Encrypted: i=1; AJvYcCWubWXL7/df+bquISf14vGcVscFjhD8Omaq1a1fY68/QbJ8U8MO+Khq0x2wem0K/OaiibCiawGbUm1j@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0BC++/oCndDLdqO12vxJfIufHp6SgCDaTubZazkWQ7A3Hhi9j
	3XHMkBy7buCn/elbYadHGTzC60u5Tn9g9t4xnqNL2AltWvCo8ik6BENM4HiCblavdlp8wug80yF
	Vk7JjN0pN1Q4J8EtrYIB4vsXne7LaOD5S2PRoZ+dUGA2jfUgj0z95dcdM13fTsiyY
X-Gm-Gg: ASbGncvhszQPwuXpx/8HcYGGm4ErVUnBAfXQ4JjcMOcoIXERnPZ9pHRoO5Jg40OELnb
	RzSmJWpaXmBe2ke21is4qJr2WQrVlsEy/7ZD0A1xh4QsIlezkQhdUi1ueHGsntubfU5yXTSN6ax
	tWcKU/FHkpiwzvu4Wv6nf3S611MpTuQTIb3oUdqi3UtjFd/nTh6LvZAays9d1m7I5MH6hbXBWyo
	D7qgtz4ttRzbrRNd7iAYTxJIFdbUnllDs/mZt6qLzb/VZcR5EdvhwFsRaoi1qXFPSBR/veWQxsS
	0fB8e3YbhuKvHvCLyGAg/i22vEGvup8AL3u37oUaIJVadJq2/Yhys4ny0KjcmMxM8srp
X-Received: by 2002:a17:90a:ca96:b0:31e:c95a:cef8 with SMTP id 98e67ed59e1d1-321c0ae441bmr1689054a91.32.1754975230173;
        Mon, 11 Aug 2025 22:07:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUuQTvbkjznzZD3wAoSWPaV/NV4ZMjR4FA8Z5+ChKoQlXLWNgp3NjNrHW6g0TBMCJaplmSmA==
X-Received: by 2002:a17:90a:ca96:b0:31e:c95a:cef8 with SMTP id 98e67ed59e1d1-321c0ae441bmr1689037a91.32.1754975229729;
        Mon, 11 Aug 2025 22:07:09 -0700 (PDT)
Received: from [10.217.217.159] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-321c2be2c2csm735782a91.12.2025.08.11.22.07.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 22:07:09 -0700 (PDT)
Message-ID: <7da20363-7b7c-4b98-9068-d82a186170fd@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 10:37:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: clock: dispcc-sc7280: Add display resets
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250811-sc7280-mdss-reset-v1-0-83ceff1d48de@oss.qualcomm.com>
 <20250811-sc7280-mdss-reset-v1-1-83ceff1d48de@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20250811-sc7280-mdss-reset-v1-1-83ceff1d48de@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNSBTYWx0ZWRfX8hrE3i4VOEC6
 tAz0WTQFVIcWj86GUa4REJ/40+uqpUfBXNhdYh+ArQ5gDZW9f5XBTK1zvciY0H8pcqQ1hUAN3Ax
 Uo17Ei7lqUsuuoZ6CP7WLtTJGMBCIRoLe5KT9UKwcZH3yGMYwHvhvQW7UJhvYnoKMmGodvzlkqe
 BrmOUppA/XhbCapVy1dOKi91+abPU2blcEneAOgWGuHampqv2ZvBKW/q6OnmCyEnXLxAhUekZNr
 RujxpbEvQEf09UquVCOb3iph66bdAvVp7Lsj6B76DQQGn7nrftw6pOcXcvYKcfUDfydfpA352E/
 MLVRPKJzrur5j44hDohj5o03J5l8I8DO1OWw1RCL69Qd0e/ZVJMpr/BSJpA9JrH3eiYZM3SAF1I
 ImnVwQfh
X-Authority-Analysis: v=2.4 cv=FvMF/3rq c=1 sm=1 tr=0 ts=689acbff cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=C2TcYtzuST-dhkRVSHAA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: ZGKHWdTE6ToI-un8JiPn-6EBmwXQL9G9
X-Proofpoint-ORIG-GUID: ZGKHWdTE6ToI-un8JiPn-6EBmwXQL9G9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090035



On 8/12/2025 8:41 AM, Bjorn Andersson wrote:
> Like other platforms the sc7280 display clock controller provides a
> couple of resets, add the defines to allow referring to them.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>  include/dt-bindings/clock/qcom,dispcc-sc7280.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/include/dt-bindings/clock/qcom,dispcc-sc7280.h b/include/dt-bindings/clock/qcom,dispcc-sc7280.h
> index a4a692c20acfc954251fd1a1a59239ac62b20015..9f113f346be80b8a7815ffb17a6a6ce5e008f663 100644
> --- a/include/dt-bindings/clock/qcom,dispcc-sc7280.h
> +++ b/include/dt-bindings/clock/qcom,dispcc-sc7280.h
> @@ -52,4 +52,8 @@
>  /* DISP_CC power domains */
>  #define DISP_CC_MDSS_CORE_GDSC				0
>  
> +/* DISPCC resets */
> +#define DISP_CC_MDSS_CORE_BCR				0
> +#define DISP_CC_MDSS_RSCC_BCR				1
> +
>  #endif
> 

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>

-- 
Thanks,
Taniya Das



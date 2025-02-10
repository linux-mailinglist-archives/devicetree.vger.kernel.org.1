Return-Path: <devicetree+bounces-144835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6D4A2F699
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64A9E1886D65
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B32C255E4C;
	Mon, 10 Feb 2025 18:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k98TtJxG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929CD24FC17
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739211355; cv=none; b=sfpxHXc5CSiLlRGFAXIiejsruLm2KFgeSr/onJww+aNzLo5jIGi7/MAMFZGEK8V1C2wCMJYH4AYJZXOcgN6gRnxjNJcuLl9S9WbpWruroCBla05jywHGjqfpjzVShr+Yfa8FwqZ20bRAIC7TFHv2Z0pDnTQ5KTZcBPsCNDLsoUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739211355; c=relaxed/simple;
	bh=DEygm5HWW7X1xdGiLNElosyRq33AJuWmRSE4tqMOcIY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s944jwJ4RnU6G2CTthxUkXotooyzHUWICo2LnSiBbAg7VnFWICPTZW0APW0uJnHVYdAZQqvMtLOXn5DqgPoi8oejTaLwS5ZsHQZEyXpkCdSzwtnRXQPqo2oOQXngzDK9vQfk7IQ8UpawcmtfP7KOt4IIp1xun2z+wbwMX7HT7B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k98TtJxG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51ABgEeu031923
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:15:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zCHZNtni/CSZJ0FFRkrYJ71iWbDqICIFGe1C4Jypxx0=; b=k98TtJxG9YSJjlkz
	AZn4RsntfJ37bbMCwWkkY6LGBUw+WXm0i23q95qFfFBG9wSOxFzQ7aQaN1vLHXTc
	t16eCKLZcEd9Ng3RlWoINgr4B+0iu3EmsBXovO5HGRPRM76udX/swr8InhRYzYM3
	qYnKXvuvldCKB8tuL6lCSgs8yqklbLHdBFPdtyKW5TZ/JrfZ6Cvx6b/hZLoZWaqj
	ICqGUL4Edn/+pVeq0nvdeyfFlAsFa/bqwea3trGlIlbuFTFh7zu29JDM3BpyONdB
	XWT0mlS5euFx8RvxLJY01O72MUSsjzb8cnXLoduwp9bOvuTzJ/SmaPj1SOjKnXuj
	EXff7Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qgtk11x4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:15:52 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e444e99f26so4664176d6.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:15:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739211351; x=1739816151;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zCHZNtni/CSZJ0FFRkrYJ71iWbDqICIFGe1C4Jypxx0=;
        b=hs135HGVEHGkoyOoUNyV/3pttq6rNBshEv+zkjQ+7zfEQWDBiKKHXtVsvbxZSpHOba
         rlGp591b3GPuEi5WTw8mDI4KCcderOw4qD0uc7RiZjhlYfOCBPtPuX6g5p3Raoqb2Hz0
         T4ohG4BN3qQ7lrzj1XG5RGOEDd96LNZ7GkBmpeppai1sB4PYhthDcy2PD+QaMDDoda32
         4pPKJxSSphGZKjyGuntYPLFOkvJW5yKcsXzVyVsnRdntUMHlGxe+rk+gcEXKmfWqIHfj
         bnNKomzqI9jMwQeeuKoaj3rst0eagGdtVDYpWp1f36snMPXaMKOnY7CPcSViGy542BOl
         l7cg==
X-Forwarded-Encrypted: i=1; AJvYcCWRGF5I7ZfyJ+6fCuvH/sQ0PjPJoGbPfKrEY9BgVBJInRgR7JwHxY5htnlsTzfp/7aUcLdCQzg7p/X4@vger.kernel.org
X-Gm-Message-State: AOJu0YwIPWb1VYMGhvj05Jz6W48qnrvTgzCI1RLyDFqMSI6pftnOTVzM
	ocTYSdy1QeLROjQFCti1ywOhi8rrf6RzDpLDO0nDvLcvnxhmfHwQdgddtVae7c34o0LjnUGDvUF
	WjVKqSlf2FsmUuFELogLBIgU4AmUI3tsBUtHp1ViHq6/cVCupFwCRbSqMLmuG
X-Gm-Gg: ASbGncsuEZfyNr2vJtXemkblyHgoNSceyT/KSRF6Fxv1jz57VWvIBF/lt+cF01ndoWa
	Ta/iuWrjot4SK5rwsinoqs/NZnqP78YD6sFOE0BDKym+42oCT3GJQJXAjhV3q/U6qQspLey1qhU
	dwYKB7yktAB2LAajDCOU/evB4DvUEAELu2jTgSodw48Gew7MEBSS8FaRlZSV/E8OjMkGMalekAx
	Ies+gT2/KIYeDL+ePfBo41yHz8bBRH0CU7ZXOczKPtdO0kYlu/1xu3iGgeXRw0cUwrQjba6EjW6
	/NDoCqntPsVGM1891sIiW0i48oaOqoAMGbmPD4hi9EZVPJvp/Jp2FBXk0AE=
X-Received: by 2002:ac8:5fcc:0:b0:467:672a:abac with SMTP id d75a77b69052e-471679dc26amr71995211cf.4.1739211351344;
        Mon, 10 Feb 2025 10:15:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+wRXNnWRPbq293evDdIvEhGqEHzq1kYbvdr3w/KyUUAyfZrYq8rC1dDpVfln5xyQdRsb5ew==
X-Received: by 2002:ac8:5fcc:0:b0:467:672a:abac with SMTP id d75a77b69052e-471679dc26amr71994941cf.4.1739211350986;
        Mon, 10 Feb 2025 10:15:50 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf9f6c77esm8235727a12.69.2025.02.10.10.15.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 10:15:50 -0800 (PST)
Message-ID: <0a1735a3-b57e-4a98-a3c8-46e92b5cdf0f@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 19:15:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/6] clk: qcom: Add NSS clock Controller driver for
 IPQ9574
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        richardcochran@gmail.com, geert+renesas@glider.be,
        dmitry.baryshkov@linaro.org, arnd@arndb.de, nfraprado@collabora.com,
        biju.das.jz@bp.renesas.com, quic_tdas@quicinc.com, ebiggers@google.com,
        ardb@kernel.org, ross.burton@arm.com, quic_anusha@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250207073926.2735129-1-quic_mmanikan@quicinc.com>
 <20250207073926.2735129-5-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250207073926.2735129-5-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: YTSm84F5QN8czQXGP50cu4EL9Ls0Dz_t
X-Proofpoint-ORIG-GUID: YTSm84F5QN8czQXGP50cu4EL9Ls0Dz_t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_10,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 impostorscore=0
 adultscore=0 clxscore=1015 mlxscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 mlxlogscore=684 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100149

On 7.02.2025 8:39 AM, Manikanta Mylavarapu wrote:
> From: Devi Priya <quic_devipriy@quicinc.com>
> 
> Add Networking Sub System Clock Controller (NSSCC) driver for ipq9574 based
> devices.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

Thanks for getting this buttoned up all the way

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


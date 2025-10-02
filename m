Return-Path: <devicetree+bounces-223328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 132ADBB3788
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 11:37:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9D623A5085
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 09:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061BC2FC887;
	Thu,  2 Oct 2025 09:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="onyGy9W7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D39D2F3629
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 09:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759397829; cv=none; b=FEjvFrxD6EHcIIWB40jTiGa1QyQMKjw90m1BONZdcHtfpCMp2yd3pzFXOJ7065BqBVutOxvJB8ymzsQ9VOlEUIRA2lkfWyE1BqgffX/YWkOR0TJMygvBJ/QbEJc/hr+VgW4wI7j/sHEOPxwpHOd2Y4urcDxD1EHLpmNoIdzoxv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759397829; c=relaxed/simple;
	bh=dvC5aj7x6LVVGqVL6TWGGwvsTPpa+pvgVq2m9BKUMe8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FSdAijPRHRk/BV3uAa/kV2fpFcGKqSOLGlesI5yB7zOOx4iqlyrCoF0ieBW/4/AgoLkh2uLgODlIUZan/MRsvCkYZZoWk08R8AiUc05ErA+vEa1pMH22dA7o/BjCnPgp7bA6R7N+noEwwwr0Q6faM05+lxO/I0Y9aAk9gH9gde8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=onyGy9W7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5929K6kb022897
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 09:37:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3s3Qu466iD6u/7eQr/tGTVs0AQ4z16vZcusQilCroYY=; b=onyGy9W7e/rJQStL
	PzsnFvHp0TjBRQpTzbqblUo/aHdg3VlWQlDENMLelgTgdxuRODer3IBAd2Mh7Iwi
	BFlApNVqeWAXqi7ibjGmH3cM8sliDqANrect+O3BMKzvRjBEUi/11yGp7Uu3u4/J
	ju8TZfxLDbqNPyzJxREL+bTx2J6snJTetrFzY1FPJ478D9Ecs5unP6PIkLh3Uepj
	82IyercvLdYkTo0Eqoiinwxr9qjRmLuPo9E+gWH10hBjPtIJu8/xecFfSkz1U144
	BlA2bzAfAa5IxUtN7N7SHg9tmANq363UiZCqjetybP1WgPObo5VxG2vLFmY1myxn
	hhI2JQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n7rr3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:37:07 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-850553dfef2so1975936d6.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:37:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759397826; x=1760002626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3s3Qu466iD6u/7eQr/tGTVs0AQ4z16vZcusQilCroYY=;
        b=JoZOfF1im25ty9Lj2ElUQIx+1yOUPexU1iu3Mv6HPoAaHT6aVsRdW1k2NzgLWkan5f
         Vwhy33Yxib1uy6CeJbiXLyEe0+ofy+WjnQTVoJDbhQkchzlMjmn9U/7wNhrSMM9m11QG
         2EWRXuWdb64WHe1/adDh+BaFH0wZxms0bCEng2zsEdrPdPBDxN2U7fNmSWSsP43vTRwF
         MgkWEKCmE50YzIdiSAwmhWAYf/UCax9PltwW7QL4naCMUwmNF8W7dmx2FbM5h5IsKYfx
         z51Gim3Cj2V3WJtgYbp0Czk3IpnZTnERoMxPjetP50HLkbtotV94zM3DvrHK2W0PwS1g
         ++7Q==
X-Forwarded-Encrypted: i=1; AJvYcCU3ezWA2yWf9qp190beDYfnsErhVbef9wj/GxPk/N0c8AAVSvCXdh8Xa9cZyX77mX21Mm7oB8EcHMOC@vger.kernel.org
X-Gm-Message-State: AOJu0YyGfyt5oQ5fDwAI5pAGN19jKtDn9p3AsW80UMQtgxGJRj9C+6bK
	Jf9jx1foWb687DPIk+2DqTk+d7gaWyRd8YH9YScsrjckPjNAkJlIphjJQiqGN75RdMyEapH85hE
	fFz+q0UHuUs4BFMrU80Z5sxZ8vHNTFcXNySAkEjk+l241ilrSaFmngV3JPOvYSspQKnI1x6sN
X-Gm-Gg: ASbGncvIMOwsX9mLTKM8VBjOziZxlC0l9nZzxSRWev0YCTW3/Q7V8nc6juwbT5Z9xB/
	XTx9kYqyyjmw5TOdXvaccjUSzxWNpKt6hIz+3p43+7/2IKKua/GBK7CgQH2gFZkRC+mssgZsrLi
	2MiROwrObW+4e7sLQ7exh3f540I2vt6tstlOJ88TuklQjLeG/Eh9risVaL06L3ss01ca1h72u2n
	Wsukclmchn5UG5cY3KPk15EUYS8KsSan26+Nl3Atq3AxFuZaEo532A7a8YjiYW/gOuw/ijMJVHH
	/X1Z0sM+uGlnumdc/KJjVFIz9iINTC61F5X2JsZuU1JeqbATsU6xsI9wvTwQCRnDKFoS2USUh2t
	83aNMNhZxvQJndz8RqPMJPmdLCFk=
X-Received: by 2002:a05:6214:5184:b0:789:e48a:fc05 with SMTP id 6a1803df08f44-873a5b356a2mr60282306d6.6.1759397826305;
        Thu, 02 Oct 2025 02:37:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErl72Ov8A6h6hpFWJYLw4FLn8Y45zGs4EHrpv/AiJf6QoFNUh1bWYskfoORIRZsVZrC/1sFw==
X-Received: by 2002:a05:6214:5184:b0:789:e48a:fc05 with SMTP id 6a1803df08f44-873a5b356a2mr60282166d6.6.1759397825670;
        Thu, 02 Oct 2025 02:37:05 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63788111f1fsm1501744a12.36.2025.10.02.02.37.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 02:37:04 -0700 (PDT)
Message-ID: <7661d9d9-eca3-4708-8162-960df0d7f6c7@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 11:37:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/11] arm64: dts: qcom: sdm845-lg-{common, judyln}:
 Add wifi node
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-7-b14cf9e9a928@postmarketos.org>
 <f58493a9-6def-4610-9c3e-d6a877dc23d3@oss.qualcomm.com>
 <d38801bc77ad00442b1669ea252ae30a5c6af5b4@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d38801bc77ad00442b1669ea252ae30a5c6af5b4@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: yXsiuktweyTJYq72PbN7_pg-JDHSFjSR
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68de47c3 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=hUOHGeh7YKFiNrxugmEA:9
 a=lqcHg5cX4UMA:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: yXsiuktweyTJYq72PbN7_pg-JDHSFjSR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX4WDi3DjXD8l2
 UaPnXVxQzs8horBzTu66NPg3xIfMMLt/Mu0UomohXb8nUIzOcld6ZDE4+sKOdzbidClr0aEGnxh
 Z3GQb6BGD6lSQzI7ZffDvtLVB7Cn20anj8NdBo6GtTKiptQ7OBKfy1u1J1o/mSkJAHxlAt4/5LF
 2ukNQmLZOY8qj4341yOtCLlnxcpsp5SQ7qhCkPNu7NCgFwvN/7QQDaJ8doncn5/fQiinVBAkbEI
 ZKtc+KuDV2tQItVVwi756G6G8giseoz19puZBga+4dq1lim5AJCFXmrVC16jTF/cQmWa2+DY79W
 yxRvMJWBOItEiDwT6T3lBjY7ElxQQwmextAcZ8alA53h6ru3ySNbdWtoCg8prbo5fV9U4lgSsaJ
 Aj1wJtD1B/m3SLKrtOAVDMtFrig5VQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-10-02_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

On 10/2/25 6:51 AM, Paul Sajna wrote:
> October 1, 2025 at 9:14 AM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com mailto:konrad.dybcio@oss.qualcomm.com?to=%22Konrad%20Dybcio%22%20%3Ckonrad.dybcio%40oss.qualcomm.com%3E > wrote
> 
> 
>>
>> As the dt-checker points out, there is no such property
>>
>> If your wi-fi works regardless of that, you probably don't need
>> to set the one you intended to
>>
>> Konrad
>>
> 
> Perhaps this only exists in the postmarketos tree, but it definitely exists, and doesn't work without it. I'll remove it for upstreaming for now but hopefully someone sorts that out. upstream.

So you didn't test the tree you sent? :/

fwiw

drivers/net/wireless/ath/ath10k/snoc.c:
	qcom,snoc-host-cap-8bit-quirk

Konrad


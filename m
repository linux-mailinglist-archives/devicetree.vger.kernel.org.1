Return-Path: <devicetree+bounces-267910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGquHoqlnWmgQwQAu9opvQ
	(envelope-from <devicetree+bounces-267910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:20:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 891CF18787A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E1EFC301F6B4
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 524EB39C658;
	Tue, 24 Feb 2026 13:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NKA0N3zs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d61WNaSj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E6D39C64A
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771939205; cv=none; b=B1sSLWoQMVGAUl0UldNo898rS+sNyUFS+Qct5+v4b5apXe+9vK2cbxbcQgzeAsvCpxhog6ZB6fsxm8fFNSOYXK5QEVhvenYOjrdIhvvjmbvUbTb5haHHso86aQCyXHyd5b3gK6U/0M5fUcJHN3zZjRkSYDJpU54Pds9+7AgCKjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771939205; c=relaxed/simple;
	bh=dqXu4dp6EhpMQd6phBO8LxhfJIX7M4tuyuXV1A9yy/0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xmuwh6XQTd6e80FG+X7bdz0FBhxCvp0Y7tEkQEGXItw0ssaecQQX5gjNLCwGYszOl8NAlxkqQ5Et+/zzzkTPm6sFXRFetP+KKD2naicX2TvtFt9boCPV72yZ2ylxD5LTRNOIZxw8ud1vtVrfmorCA6hIZTGk2JGIwtKPx93omDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NKA0N3zs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d61WNaSj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFSma2774555
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:20:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	emPDKvwv7i96jq83XWglXYWY9VE4fVnc26KM4iSxWm0=; b=NKA0N3zsWFso8LND
	aYLCxGfClRg7AmXTfD63GwU9KMTQO4KPb+5iBgr3mnO+n1dHUBtm55ojCRRLSXPA
	2vzdXtV65+rKxyxSf5Au5LC34SrUmzK5nPkrYrxkFA8h6zo8Jyodd7N8qTSkC6vP
	H/kk9PkEstVgT4H+PreKj1ihguRWs/9QFareIGXClIAUAu83Pt9/v+YVtNoeXChE
	ii02dshQwju3CjB6M6PojeUf+M7rFsMbejLEOo4i7If+2SXH4Enm95O6kHnVDCeu
	LGsQ15y5kQz1pVzLuBYHoqrP2ulBxynd5gcJBgAFnSTsiGAnCQk8FjVeNoRyZ2Kh
	8V5mFw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgr69ks18-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 13:20:03 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb456d53a5so575037685a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 05:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771939202; x=1772544002; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=emPDKvwv7i96jq83XWglXYWY9VE4fVnc26KM4iSxWm0=;
        b=d61WNaSjEtQkbcGDJw5ncmczZF26GI2Ath91jg+1EZAu+A4Ur81+RmeJZIqbd9qOwj
         DjRyN9E/sDQRJM7lux/1iFiTYSZVttCk5PAgtjBIBqFQ/kHjRokYYCqKB4+y/EKSKbjH
         dnCAJoT+ZYarRw++eaOTkEm+btoaFjXDAIgy4IjClYfuQ8zzZZSpJa/yIbW8Gu2pQ4HQ
         9LcV6TN3PU8om4yBcoLMmi8lWPzUL6ZH/Xji38GaZbFqBX6TQOuiB6J/JqvZdBStfWNA
         TD4GNJTs8lwWqbPmV9+E0gV/bQJTWCdEf8RlEmp18my++GYhnY+prAgrIlIbEPoLau2C
         +8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771939202; x=1772544002;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=emPDKvwv7i96jq83XWglXYWY9VE4fVnc26KM4iSxWm0=;
        b=LBY0CFxBBZViZoOcXJSvsBNQuZaUEHNAsiuRulmjpIFfLD3tVuQSubzpgTNuynvp3X
         ooEvyoffpVOj7iMxx2pm+nRHhcrdXTeDBBmOvMsAa684NeHq6NLdf+5Dcg1k/kZhBfCE
         T/P7ZnEmmygIDVs37eD9nnLZo0mphB0ndLG5lubpBG5bxP6hGL93l2aVEgKR+8UYNePb
         CqbZTnrDs3R+4xnmFwiR7Jy4dDiXwECmsOeFvdaV0j1xCtWofFeu+pItOztxf4M0uJq/
         SA6gNEHxRZlgPXIRlQMOR5Xi7+EmO1LP3abyizCcBWZNIEYS4M2TD8vZbC12rKpobIdY
         uAvw==
X-Forwarded-Encrypted: i=1; AJvYcCX57+RU7C0tluVAfxiiKECVdRyrqqYpvGVJxlMMX1U/RUkoFLqmtLNRahfRJR6FrI0vbZTGeiAxqU9B@vger.kernel.org
X-Gm-Message-State: AOJu0YzDz4KOyub4qSXL7iRD38YwlP/rUdLyzluAAE9RRyyZacxoIne7
	32khLaJFt3kQAFLGt6NXNkE6Zm3lYOHreyh9VI1cAyvOONqD+3j1iKgsy+3jt0Esl+aomPiEicc
	oP19nS3Pzmc+nVN6EvECPMEJg7QS8v3rjHpB2ew5HXDF4oKQcPsWX+2qgybbOoYLu
X-Gm-Gg: AZuq6aLAbFObMvLS3leeYUI4ImFbt+jInRRrIG08T3dVnvFZEuHtDHxy+tDBBo0eJpL
	rJsoi7zf8lWY/7oOMNjqPKU8d0lwLMzbbxm+NpVqpZ5MxLUbrwfp7vdLEBthFN3ifQmV/nViZwf
	Fdrd6KFwEUBr8st5jRyWVGielWib3pImXV0T4gzTHu8fc2LG92WB0KoI5F0mAA2O26jx+Hfqmb7
	efOqgfgHXBs4UiScQLz9/h6hJaSY2nX7DV+Ub14lO21velfdo4VGovZ6dDjr3i7K4mxIFdj321e
	flTIV0UI4EKf7T4jXAKsZtsSaugWffUo6Wpxzkydx77NqtquCsbjNgOHst+n6MFtUw0ltEvEtgX
	+3++krJmSVKff39VMtio3JKuMxbfqPpHiCegXh/YspuxoUeioQQ3dxRw8V15ZQNG2IDm4m6aPp4
	TW2MY=
X-Received: by 2002:a05:620a:2a12:b0:8c9:fefa:89d5 with SMTP id af79cd13be357-8cb8cae5751mr1126952885a.10.1771939202279;
        Tue, 24 Feb 2026 05:20:02 -0800 (PST)
X-Received: by 2002:a05:620a:2a12:b0:8c9:fefa:89d5 with SMTP id af79cd13be357-8cb8cae5751mr1126948185a.10.1771939201549;
        Tue, 24 Feb 2026 05:20:01 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084e4bf73sm424673566b.43.2026.02.24.05.19.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 05:20:00 -0800 (PST)
Message-ID: <a7462f2f-4972-4760-9043-f18b6427f563@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 14:19:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/6] clk: qcom: Add support for Global clock controller
 on Eliza
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260223-eliza-clocks-v5-0-dcc66df713c3@oss.qualcomm.com>
 <20260223-eliza-clocks-v5-5-dcc66df713c3@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260223-eliza-clocks-v5-5-dcc66df713c3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=O6A0fR9W c=1 sm=1 tr=0 ts=699da583 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=XWK_QsXDIVX7E2KYersA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: jvN-HuiziC5CCwfY333ekHXDNQHWZahz
X-Proofpoint-GUID: jvN-HuiziC5CCwfY333ekHXDNQHWZahz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDEwNyBTYWx0ZWRfXyb/XfAJaqYim
 6YUlon9xHOHNyWDumzvtkdykpAIgJRG9fAV9M/WG/Iv2mispS3w3iOceI1qkAnYjCzdVAUSOGKb
 m3t4IIxWsOJZ6x/qS2+HsvzTH7L6B/ugj07XtuEivRYVoA8QqHxStgs4k4+SqlD0aZrL2ia5+ZS
 fOw8d/IfBZGMbsyYC6Kz4f8e+BTRww/NXzABW2lzuXxzhMresjfbLKeX2vOKJcXyf0kFbu7T+J3
 2AOpM0uBlTv0lNuoLdzjMzqoCorzsMMKyRoA2nTmOoy08q6fJfHKKpiVGTyG7Mhbo4pW1RZemmf
 0/YzoDjlezda1GSsNpMF02lzhCqbqnjFOh4NwdLYJ2EgsVqMcqL5YtiFkqJUmar8AMyys95tDVK
 3YbOFan1YavFaFUWVxuK3GvzbrQ7uURp9iKOe/0lY/bWmOe+UjO9zLYrse2cBaSVpMCY/6IvRhB
 DNKli1lenpHf7NmF1Og==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267910-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 891CF18787A
X-Rspamd-Action: no action

On 2/23/26 1:01 PM, Abel Vesa wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add support for Global clock controller for Eliza Qualcomm SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

[...]

> +	[GCC_CAMERA_HF_AXI_SLP_STG_ARES] = { 0x26018, 4 },
> +	[GCC_CAMERA_SF_AXI_SLP_STG_ARES] = { 0x26028, 4 },
> +	[GCC_CAMERA_HF_AXI_SEL_SLP_STG_ARES] = { 0x26018, 5 },
> +	[GCC_CAMERA_SF_AXI_SEL_SLP_STG_ARES] = { 0x26028, 5 },

These are different from the ones we discussed at 

https://lore.kernel.org/all/d6392cb9-9ab2-4743-a13f-7432ec03762c@oss.qualcomm.com/

but they are also sort of similar in nature..

bit 5 selects hw (0) vs sw (1) control and bit 4 is the sw vote
for asserting (1) or de-asserting (0) the signal

Let's drop these too until we have a clear path forward

with these gone:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


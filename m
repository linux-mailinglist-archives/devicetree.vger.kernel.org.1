Return-Path: <devicetree+bounces-154040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC52A4EA07
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C9118A5E49
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 17:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0BD6292F92;
	Tue,  4 Mar 2025 17:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eDSLBcOd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAE01D8DEE
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 17:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741108059; cv=none; b=bu8Qzx2g8PHTJMfLTmBfpZO3S7OICXd4+RokNuEq5Os19vpCc7+1wdTfQz3b99BFFVhIdVaMeKIE1npBuqqpkcunD2MFm3j7nIpGzT+y3xFGy4M8ak/vtrryky+V4vz8BskCgl5h4FRs9/0B4IEGpGXRg4mlgMC/axs3ZlgJG/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741108059; c=relaxed/simple;
	bh=F6vBJ46C8KHBrc2nlBww1FKwxrACcBrJIPlpSKujlac=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tZr3znBNIfZxkBpxESD+3pSaTXfV68aLwZOU7ybHi23mR942dJID7bfKs2d/O1NRoXU7ODHnOvW2CMa/EYfRnN1o7ZeeBUibwXVcEVCt7kniPGTMRfjTJa7owJwvTZjAJsYcOXfr/LkBldl9mhhiiUjij6dvH1YapkegSt8crYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eDSLBcOd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 524AErkb015625
	for <devicetree@vger.kernel.org>; Tue, 4 Mar 2025 17:07:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TZjKJb1JOrr8sTlUj8cLvVtyiRSkt4t6v6lKPN6/FuY=; b=eDSLBcOdxsMG0hUJ
	ghhBPgeoPlnvTrAabKcrj0E41z4EPKUjm9DToA8aA2OcVvWCjXQ/uKywRyewbAE1
	c/8kPzIDOpwLTujKF8AwW/2AbpL/4bOmjWaj2y4dwiE4UgdgLHIPbkB1Be8/C6ZH
	7HUfb1mkOOMunn++PgOQR2vBlPrIyZ/F/etkcFBrFigZWsUuPKLPelcr4tEAyuuQ
	vKUHaThpr0lB76UaOY4GKpIg8Y5Ru8wvmSJp4cAQNaOYFpM7RJmONYBsnAV7HO+Y
	eGTOqJjaUGov8Rv3kLz0wVhYjB39fJy4Kvc/iA+b2x7bOCdw4W53VzlfXS2JBNiN
	jp8LSg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6v2j3d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 17:07:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c0c491f065so128971685a.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 09:07:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741108056; x=1741712856;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TZjKJb1JOrr8sTlUj8cLvVtyiRSkt4t6v6lKPN6/FuY=;
        b=DjP+wg4fmfyjIvOX55VhMxTbGroRpqnduADYZvJZaaeBVegV3fQ3bfjsGHiExHBPGg
         5L5bJddYcYdGgI56tYY2Bh0tL0Cv1LSd9yoyggfH0Hw7jm6CWNt+OHZl6KVBqOmoi2Jp
         /pekIcnQCI0571WChtVGzpZY7KsUwxsuz9mFIydFzTQaXQZXUEpVdmIccKb9vaBPcgAm
         YTO5ezOBgWzg91ccL6ze7CHEu3+as+lSFJJIavI+F/vKESfVK0YSznwMEO/GQhp0jlkV
         cuJxivmNXNogm5i9n9s48qrh6sF5wbgo2/pjZjTSkDVc/Nvxz4MugfJVWophZi5mraME
         dhfw==
X-Forwarded-Encrypted: i=1; AJvYcCUsZ4EejqTOEAQUipBzH2SII8Gy0JU/ZC87RVvNKdRShS0X43JN0aWpHobLs+IgZCgz5tKW/yUNAfU2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu/VXeQrtIZIO9Veu0DofFBOME1cPCltct6ejpP1MrOB6XyGix
	dQAvyJYKUT66T4eV7M0K/LAG4guLaF0aqB4zCD4DVSEp9HbOoLaU4qUhoP0KaZMVBsj5TGdraSX
	v8TEBqksYQNx1w3VnVChEG6tGw4WWDID+Sovd01vH0RN16sI3PMyGwrY30U52
X-Gm-Gg: ASbGncs+z4ftA9aZ28v4sRR2FDvUY8XC34aEv2E9e1PdzWdvaZE+nVczDbTULc9qd4H
	HXeFUmD7X3xEvE/1omiYH6bt9lAk//DKFLvaJB9+tkMvZQc4yLC4re7/vEK5YR7YtYBvzTdfLI0
	gI/qnGdTW2SLXBm5QpwAUQ49Zz79Vm/4YIJEOKx+TU/L1G2j6lg6KSFsczWzVuFj66PaIgGZgEh
	0hFLxPhcElPDOeRAuvUoZXv6BqzpqNwqjKUOZpSJdmgn1CI+rgP2osWAcIQ1qWKjQ6UIV3eRy7V
	htWVHz00sJQGMR4bImyliZQsNxz0T23HwN78IFjLDzSGHvjfHQiYczej91aNz309VZhOqQ==
X-Received: by 2002:a05:620a:24cf:b0:7c0:9f12:2b85 with SMTP id af79cd13be357-7c3d8e11286mr2259885a.1.1741108056267;
        Tue, 04 Mar 2025 09:07:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGycWLrT/C2q6turqjkv0iq3pJCNvysSEJz7MN9YLMLfaYp65ERr5z75S8aZId7mJvpsQy2CQ==
X-Received: by 2002:a05:620a:24cf:b0:7c0:9f12:2b85 with SMTP id af79cd13be357-7c3d8e11286mr2251985a.1.1741108054387;
        Tue, 04 Mar 2025 09:07:34 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5992d29e3sm486357a12.31.2025.03.04.09.07.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 09:07:33 -0800 (PST)
Message-ID: <e6dc86bb-1dd1-486e-8e3e-18974da6cf86@oss.qualcomm.com>
Date: Tue, 4 Mar 2025 18:07:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] arm64: dts: qcom: x1e: mark l12b and l15b always-on
To: Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250227081357.25971-1-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250227081357.25971-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: TAQoJjhckiHVtTNlVvadVYCUgXPXx0Zt
X-Proofpoint-ORIG-GUID: TAQoJjhckiHVtTNlVvadVYCUgXPXx0Zt
X-Authority-Analysis: v=2.4 cv=fatXy1QF c=1 sm=1 tr=0 ts=67c73359 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=Gm5MeFswuaCjAzcAFrcA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-04_07,2025-03-03_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 bulkscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 lowpriorityscore=0 mlxlogscore=683 mlxscore=0 adultscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503040137

On 27.02.2025 9:13 AM, Johan Hovold wrote:
> The l12b and l15b supplies are used by components that are not (fully)
> described (and some never will be) and must never be disabled.
> 
> Mark the regulators as always-on to prevent them from being disabled,
> for example, when consumers probe defer or suspend.
> 
> Note that there are likely votes from other processors for these rpmh
> regulators (at least for l15b) but the OS should not rely on that in any
> case.
> 
> Included is also a patch that adds the missing HID supplies for the
> T14s. It was a corresponding change for the CRD that made me look into
> this to make sure these supplies were not disabled during suspend or on
> probe deferrals.
> 
> Johan

This looks good, too bad SL7 was left out :( I'll take care of that
myself

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


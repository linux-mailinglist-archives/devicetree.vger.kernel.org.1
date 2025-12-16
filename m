Return-Path: <devicetree+bounces-246999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC622CC3893
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:24:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9271C30DB8B3
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:19:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A3B3587A6;
	Tue, 16 Dec 2025 12:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o3WaOQ1z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U6x1Jx9V"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1586E357A5B
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765887265; cv=none; b=Hopq5vJnHTa7CJ3WOKSCRKF6TIKHshhhOBJDj5NCBkP8gwypLokvVoOg/g/o2SoBggmrbxmhjYRaNX71zlmJaIFNjt3nrSA/Hyc40NrmK5KOMrugayy++EQ49BEXXfmyb8jg0ApVttIALxLCZejL2qR/QbqXaPKTYtqg2L9w9x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765887265; c=relaxed/simple;
	bh=yJKFLN7YW6OmeRE6BOlO9IK3te1IOjZ71MvoO4qgMgY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YI0mLBWxVKCwmF4xxs4zYvpz3S7/rpjWMznL/BDpCZGneNHAxoAbmOJCU3ZqGAAjlNrE8HtwJleOBCMTKxO8jXEX1czrB+xscnx6gZWDMRR6rxa0Ae7FKjDf/+7UMrP+NKsTpRB3n+Bqh62OkKz+nQTpSdcOlcRNwMmv91ncQ6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o3WaOQ1z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U6x1Jx9V; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGC39Np2810921
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:14:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	16/wIy2pdlULZ8ONM9EfUI4Zmyro5D9Bgds/oD362R4=; b=o3WaOQ1zfc4R4Qvl
	BP7m9vK3HQjtpkTJmBgNH6MLkJbkbZzBUoFAS3MXHgKrNwT3EjH6sb6djnHHH7hB
	qwuQTY3vaabpr5DA9uMrZFxHtIqnjbe5uyn2PMRQEVl1DGi2Z6Ml8lNUGHVglUHx
	d/84O/bNCwtN3C20lDERjXQiy8OMawQ/BwFZ5fnkEXaGhZZDsDWAjN790z655ela
	8Y55H4ysuj+YxmBIShQLL3VIstoykGPgKUNQZCs3o8FqLGcxvSgEd3q3PUWaO75w
	EEPIAMJFfV24cNKVu+vrXDoIf1h7u5+Q5Ty0V7wVvrWHil1Dp7j2d39gmVJ86NAs
	+2prjg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b32gas9pu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:14:23 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2ea2b51cfso102171285a.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765887262; x=1766492062; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=16/wIy2pdlULZ8ONM9EfUI4Zmyro5D9Bgds/oD362R4=;
        b=U6x1Jx9VbSV7md+jl7GGG7S0WF7vJMBKUtLqLXzOp2GZ5XpbOXyWLlyTbDGGGk2HWG
         ojokEImAp09diUbdGDLZvz7Miy0qxWZRgBgwYWsZKKFEHyw5NqsOIWKucKgykt5x0KSE
         BZIIxTxCqFXhrNn/j8eWJDY9skrhnB0WjmvEDdlUnPluONuIPdPodO78sqvKFRcctmgP
         1/OIzTQz/7+6nDoS/ahngp7iw9jjGMI4kfr2Ise/tnmJKAbSeO2Dd2w+5bVEgupOnAC/
         TsSlFwz8XJLYB8JDExyyKdwBI9KPbpQZwmmW6geoWa2zrpoNjGXHuxZiLWiBX8XfgIti
         fjeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765887262; x=1766492062;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=16/wIy2pdlULZ8ONM9EfUI4Zmyro5D9Bgds/oD362R4=;
        b=xJEu6SOSkgNA1oI37E9JWSkUWhLC1mpY2ryqmtGtJvpVfps+6654uRIq32uqcc/jgd
         uDvIC83VDpo/idHijfk7FR+FGd6hv/3qv9T5Pnx25BCrn8HqhfOYpoeaVG8TCOcZhFpz
         7jCEO9OgqcknAuywzNWd0nroZhRB7V7WX5ldn3vfMju6ONu/z+tqur4pegGJyAUa3gIf
         W1JszF/zoIOtUligS+uhe9c9cB5MGK8nc6ylgKtAQMc49mfZ/LPB6gV/j2iFf0CyVXwl
         zV0XvCg2hvP+I+UtXcRWnE8UJ8AYIs2w90IvVzHXwvHk/UlA23/CZ5o2N4A6UY+Pm0t8
         1mYg==
X-Forwarded-Encrypted: i=1; AJvYcCUGfBDLgHK/sbtD8W/osQVLB7j0Hj2g82FDPsEuDFf9xpCPYpRJDFcAf19udB6wC/JhCjMfpo5U/ZjA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfd6on6G5PQSL71CmEK6Q1j0EXhjNWASg10jntOaTyyVF+7SJe
	YtTIPm5RK5b0DZdep9MLLiJx0aBF+e1tR21ez0+QLVkWNTkv6d1TKkWrdpcQobklpCb6k2PxUx4
	FgHktVuI6T6iQa4Oh3BcQf4OdQ/kak2YL6N1ZxVCsMigJYY4Jj9fQ1HEEhLCpznpj
X-Gm-Gg: AY/fxX6P4ldXk7a+GBvOS2fRlEHxa+itHi79MjXnYG/C8qzNDRuc0iFOOeEnfoPQIxb
	eCf2QSj+1D8VScB1auqEazoBIDuFiONNVMa3TUxpu5Ko7MZ9zvmIA5kySn+p5uzR7PJ+8xdpjui
	MEYz5NvjhQrJNpsjGA0i2GoCZWDqImC1QT3Ck+pblwSTIr5uDrxYtzUNX/QJQS7cZzzeTqkGWpA
	90p+2KvhtptwjjNlaFx0KhcbfMm+NnZDTn0z/64RXHR73dKaHcAxRW6qzjGhQbs9Ew4g9WAtcK4
	2zm6+urE/wpkD0QCWeO6l+GMC95R+0C4YTRNLHN4X15cMeyjIpuUVWjg0PypbYNHrrTjWDykvlr
	C9uOGCiQfcQEfjGvHBKego7Jdp94u0kv36qwxiLlc4wxJSBxSn2D9H9DYKoXZ5h3TkA==
X-Received: by 2002:ac8:7f49:0:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4f1d06724b0mr152370291cf.8.1765887262275;
        Tue, 16 Dec 2025 04:14:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHC2vmxl0OpZsjtN0+6EBlqKqjmbjan6XEWRnP+Dkk2hDl2mEvaNtMJ5HTZ0L2t6SWpujDP7g==
X-Received: by 2002:ac8:7f49:0:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4f1d06724b0mr152370041cf.8.1765887261921;
        Tue, 16 Dec 2025 04:14:21 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64981fa5514sm16025465a12.0.2025.12.16.04.14.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 04:14:21 -0800 (PST)
Message-ID: <f1dc4911-fb20-4289-942f-ac6d133e9591@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:14:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] dt-bindings: power: qcom-rpmpd: drop compatibility
 defines
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251211-rework-rpmhpd-rpmpd-v2-0-a5ec4028129f@oss.qualcomm.com>
 <20251211-rework-rpmhpd-rpmpd-v2-3-a5ec4028129f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251211-rework-rpmhpd-rpmpd-v2-3-a5ec4028129f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Vcb6/Vp9 c=1 sm=1 tr=0 ts=69414d1f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=lR2tOKNDw1Un2gOXHDgA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: Juz6zEag71LyW1KLQaeck6dZkD1_VER6
X-Proofpoint-ORIG-GUID: Juz6zEag71LyW1KLQaeck6dZkD1_VER6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMyBTYWx0ZWRfX/NVmdUAzToxb
 T/UO4VjZfp0Xg4dl1tQm8JXbxt0TS13YV8s5iWOxx6REhW7nozgM6IIVzMgEYu90XNmPBl1K004
 gafxn00C0UQ6zDC4lBTftDJ0A2KSKbIv1nzgStjkI6IvWWS+cVHwnFh7ue62GnQhXW/qDQDZcyl
 AsZu8nwm3sfmdy69FdsivRFvyGfnIJLUi3PnpOQUXMxlgBcdojzDrIe+jvVTnITocWDtn/zvYxu
 nCYEZck9oNZ0ZV7tk38l3SYIj3tKzjG0rlQz0i+g1ksjfjlgMIGamooYu3nzOpthWJ+HQMO+AmV
 gQzt98Jbm7jY1I4iDb5CqbziC8onGPkcBEH34UGAwonJha6p4dhjJYU7FfZHHtN6iezZsRzTfS4
 s7bzJzVEBNeOaL50sd7F13iZQ1ah5A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160103

On 12/11/25 2:52 AM, Dmitry Baryshkov wrote:
> Now as all relevant platforms were converted to RPMPD_ defines, drop
> compatibility defines from the qcom-rpmpd bindings.
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


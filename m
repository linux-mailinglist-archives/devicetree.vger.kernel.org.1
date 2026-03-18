Return-Path: <devicetree+bounces-277378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHrMOe7dumk3cwIAu9opvQ
	(envelope-from <devicetree+bounces-277378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:16:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7661F2C00D5
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:16:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BEE8430F4701
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3EB332901;
	Wed, 18 Mar 2026 17:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UCLlQRwx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HlGZA8vw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE1333C1B7
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 17:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773853776; cv=none; b=sFrXdZG7K4bjHbSRCqG9w/DXZcHVkPSX3of5EjNJQBy35W0VEuupkwv/anYMeUaT5FszGXQFsd0jJMvKbzJhdP/bcDunXsQYrA84rzU0V/oYhkdZF1+B/371iHdIrfB+1jW7qMcF3fksMRCO0pRXl5VvPa0vkXpFwN2Yb1poBB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773853776; c=relaxed/simple;
	bh=NH9+OVtPdDHqeC7pTIE8pHeL4cphd9YvgiXAgWcJH9E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Umss1QgKeuLAc5SlnTkTUUA9rSiJxE1H4jrw1z9FneS976cQpGrhfvVzsVyIOFU4IIcJFjysUMq0WbbSP9tzFCufG9MZ4/riyvM6zLXO3ApiaIYHJZlAUjV9zDu+TsJALkestbhBy2QDTNBR+as0aGacoU6pHdtr1ycgBGkinMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UCLlQRwx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HlGZA8vw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IFgu4V914354
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 17:09:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KWy6AvBvJuSLSKIvUfXuWYTFb2xoDYuunAiAip6CnCI=; b=UCLlQRwx62Gtdcyb
	ef2BYcyCI2drwNJtS0Il8DPuhISa0lef9Im2M6XGJ9dj1Tsd87TBoi0uNzszE+rT
	HVYimFrYPRXYM8AUDfpUyKwqljflitDuWMBT7i+7FDoF5xEZvVLmiDhlHHpa20l/
	Yv5IWiE9KLKSvUzo8O5snY6IRaaSlPRdo+utQqbK+v5nE4zyFnQyuimqtEIXRrbt
	lxNdcJ0w6e/PTJm63495s3A7pR+ehYCF5QM7Rty+z41KwXViT1qQTYFFdG9apV7i
	/SSr9j50skXti4oQLO7as/+hm+N0MeLcVwddd55mjmxTSrPV3CWIu1b6XwGehtkv
	/FFp1w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cytxys9re-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 17:09:34 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35641c14663so221120a91.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773853774; x=1774458574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KWy6AvBvJuSLSKIvUfXuWYTFb2xoDYuunAiAip6CnCI=;
        b=HlGZA8vwDVhxVz4YSue7d+kIuPcgI8IEYaKAr/kj8CTiOFRaTlkJGA0Cz0LFObcXZX
         yrHdkzHpKtpDY7c65hWRocWCUEzH+Ri8hRjiUTp01FgadmV9wKqpO3iADPCqml0+F1kB
         CHQinusphM3jBYQH8Yi8l1mlWQf67q/zuDRRTiziyux9KLCVxa+yihYmnGm2jmvAPZTK
         zDqR4/LgpqPTflOVDfU+F9RWMmBICAOTSUmtQh2bbXtPjyiAE1gArtBCQpU3/+WaLUah
         lvpajFkc8Ye2bWuV7B8kQRm1orV+aIwXvUTSnra2H7CBQsqeGNNc86iOvJNAK1AajNUy
         SLOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773853774; x=1774458574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KWy6AvBvJuSLSKIvUfXuWYTFb2xoDYuunAiAip6CnCI=;
        b=HCoRPBGRha8vllEbWfLqTGE/Mbl6WEbHpWnfRro43bYqpxDNFopRmVRh7RAAPVGDsw
         uKX+3wzFp+QKvVeiIdNyP2MxyI0N5iUIj132Md+ifC1LrA7aDenixEo84c6D59fhTsvG
         kPokGKEOKgL3IX3k3ozl2hu+jJCUc2RATR0kiqFgZt5aC3GiUmnMf9mJ3SIV/Io+fIFu
         cJd2w+MKwiwAHl4JgjB4OX07U1lgwbRl5pKjKpUOetm6BrDadhPNwm1c3h+0hCVTtgwq
         zu88u7ae+EOkn4mDpRt+mG3iUq7LD9WtJkyF3zliiOf3wtn6OLqDyr5s7YL0FxUmWboI
         GMTA==
X-Forwarded-Encrypted: i=1; AJvYcCW1sBaNL/ZuZJ8dNuOtt1vSzRSrUyQj31kHQaSVUl/GTOsRgZjH+4bzHtaitqSSS6/QCTkOkencpyW2@vger.kernel.org
X-Gm-Message-State: AOJu0YynhUxKOTQ/LD4Fktb560SH2PUzA5BUnM/dEfXLrmJKnnMCLiUc
	E2ZDtUGXaonAAu+LlUEuMfFBukAv1cA5Wh4Ey6qtbt09NF9fjFfeN3qcrlAIvuW+IFVSUCxAiuz
	s6+k/Gj7zK45i1rStiDc+A6HHc9+wKP/dkKS8z/nQbhWttaOio6ENDNfkCwQRfTGy
X-Gm-Gg: ATEYQzwenYl0c9rPQD/aI92xySCo48uvU1IBTgIMQmw0HBq4BiRxkcu1MjNnf1T/14N
	l0pPjVOqqpCKiVIbGoKXaEilhvcxJbT6Ey/U39an1fFeoHU5PdKkChDEqgX6mBX91Tsl1dWTFUI
	9cE43YHcQyBjMxkjPj+///yfoGf/KChOmPvIT3kXEpP6Cei2v26jJFny5vs0FP58k6I3T9WrNgz
	rp8SGc/gDtX97SlUokTfaEGbfhe4r/bWpxLFIB0hhXhhx7zdj3pPHmksnIgL8oQRxvfPSV8Wc/e
	O0cnxcBkQVws/8EJSjZXH+bFwM/0LzKdiJ+XAbXXDJiSYLqTKp4AaGa7B7qp/r1A3T4Zcd27Pap
	osaB9L6cYP/YuwpmzMdJnF+KFy8cl1NGFAEntA5DBQVAoy9iY/w==
X-Received: by 2002:a17:90b:3e47:b0:359:7b9a:2cf4 with SMTP id 98e67ed59e1d1-35bb9d92ce0mr3656542a91.0.1773853773974;
        Wed, 18 Mar 2026 10:09:33 -0700 (PDT)
X-Received: by 2002:a17:90b:3e47:b0:359:7b9a:2cf4 with SMTP id 98e67ed59e1d1-35bb9d92ce0mr3656516a91.0.1773853773480;
        Wed, 18 Mar 2026 10:09:33 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.29.107])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bc62b514bsm171902a91.3.2026.03.18.10.09.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 10:09:33 -0700 (PDT)
Message-ID: <cd63e6e4-e8c5-4c26-b929-cf47e9b58250@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 22:39:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: qcom,eliza-dispcc: Add Eliza
 SoC display CC
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
 <20260318-clk-qcom-dispcc-eliza-v2-1-8c05581168d1@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20260318-clk-qcom-dispcc-eliza-v2-1-8c05581168d1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: dP_EPBSdj3eLDlbhOLwiPWMfQj2NMFr4
X-Authority-Analysis: v=2.4 cv=FKAWBuos c=1 sm=1 tr=0 ts=69badc4e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=kWG1ar9lY4jofqPRq7zosA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=biJtGA3NR2aAF7uD6uoA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDE0NiBTYWx0ZWRfX8OOWFkZ3sS8M
 gSrZfVlAYdC4J3L5CM9fxp3ijezbngdyFnuU1fpgSIxgBHVsPq+H9aTgTTX/90pbY1I4KyX1tWv
 Nfdg8dsPjto7aDeBQkHjzv4SJjL59VsX7493RN9yVEHLTRv6BW0HoAmafEYtZuhcxv6esFvMxNE
 N8gYOhtHaxUgD2km7KPwLghSCvgEtBErwfioh1CFGthXgaXXq+ixVjxJ8nLoi2R8BWJE3ep3/MB
 6WZIcZbsnnFyU+QyS33FxvRwqM+oE5nnfDbSmZISUbeEYhf+7R3KmOmQWMNweMWF61HJaxmkw76
 x7xglDI6B2r3Pj5bzh6LKydEWPJV6wVWFqevz4ALaBYldPBqLPRfL2BwoGaaXJ8ptdmXTLv4UBz
 0dXAVTX4bGYbzHTxkla9xttdbAO/vSIG6VHZrJMtluWSGK/lO9abcMHONpPJJ1Po4OGkO+S4oop
 bfdnoe9zUCXWRwEQ4aQ==
X-Proofpoint-ORIG-GUID: dP_EPBSdj3eLDlbhOLwiPWMfQj2NMFr4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0 bulkscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180146
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277378-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7661F2C00D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 4:09 PM, Krzysztof Kozlowski wrote:
> +  power-domains:
> +    items:
> +      - description: MMCX power domain
> +
> +  required-opps:
> +    items:
> +      - description: MMCX performance point
> +

Eliza, does not have MMCX rail, it is all connected to CX.

-- 
Thanks,
Taniya Das



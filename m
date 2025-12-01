Return-Path: <devicetree+bounces-243401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1086C97741
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:02:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13C523A811B
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1DFC30DED4;
	Mon,  1 Dec 2025 12:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S0BfY/UJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dk77N16E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D182F5A3D
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 12:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764593745; cv=none; b=HEZNCN3llMjYqb6EwmhHTRJ5gAujoPA+G89iEWVcFiW7iKj4Yv12vAeTTaaEVn7tUoMzDEuM+6eUth3FVu5grAZ6JddILXMNq47PHkwsRRFqR8nvzUainUAi3TJgygtNkVNVOHRttXgIIqCplAyvU0sDfS+my2qq3hycD7r93tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764593745; c=relaxed/simple;
	bh=qjX1boH73SydNBCKz6rHEzs7qKGoe+IFikmqMqToHyw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CwQ13i4jTUVfgVtrgJC7uuHdZMtQC2ADEgZjjUCM5AkNyV0wJurPdUiUwYyRLiVqspWOVDc+S++KFA8IEzjIbprt9yEEy3Pbjc4XAUT9h9aap+MSIcKQGiHyoLy7+PTVSSVzH6q6aCA3VhGQZ3nCdTuTEZhEI8UrsKNI8l/i6ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S0BfY/UJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dk77N16E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B18xa322700226
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 12:55:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P0bpogltmQbh7eQJBYiW+bKvhzS+VMTMFejGkBnimcE=; b=S0BfY/UJX158Rdxn
	eaO7DsrRTqxR9Jeg3D3Dquagr/XXW/x8NUqoq2cnpVD91mHI6awFGb+0+Rh3jhTz
	+RFjp5IIpVPa+hLr6H1xMi1C9p+Sitjxv9/agGXN+9XWNPAxscy2ZbVwZyXpXIeF
	Vfizccnc0lNSpk2ejy8tgz4zUr1Mkb0KBIhYW4K1EI7cGhA9fiS7ve4QiRscIJpe
	9OV0Py2i+Ygxd/PFdidpBGHb9QZbDEvKBr1YxrJt/kUTLkkbbYjKMQrj9rSN2CUK
	kg4dEySdiOqhvvm5Gf973QBVxGR27ox+rRYj5vUy5N1u2GKZug8jxuVqbs1+5HMd
	fKTMSg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4arwnvt115-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 12:55:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed83a05863so16063741cf.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 04:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764593741; x=1765198541; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P0bpogltmQbh7eQJBYiW+bKvhzS+VMTMFejGkBnimcE=;
        b=Dk77N16EBC7xrAX9Z6slMdyv3QO3I9v84DS2czXq66Ai6XPq00KJXDrF7uo0fgVjem
         Cs0KVdfKXBenocsYljEFH+0Qbrp8026oQSdWaMTt6Na4Bq1ficWdxFYmtYOGub0bvEIn
         z25oEZJqEZfZ1YOpIcQ7E5Tu0oKZzMjl2df+Ltm9H0vfY1IaVqof3XWTMg353l0ZqLZj
         i3GgoILlQz40F+BSwnTt2FrOIN5UnAUbVxw+QIu9aAY6p8Sunz4IG6m9vkyb5Qh3IobP
         XdgUEiDlNJu8EeD9xGAJQOmpPhISsWANwhaaKWkV2equKDUqi9k/ud5zYyTsNX8Ib1Sh
         TmIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764593741; x=1765198541;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P0bpogltmQbh7eQJBYiW+bKvhzS+VMTMFejGkBnimcE=;
        b=hrLsGVZ+BV4bgOsKS/Ve9Fe+o7z0/rNmQWQc6FjuLo/jhyuOETBezj/MIwJZBcq/Kx
         1i576ekKsJtlm3Ua9O7MZWZRzFVRuN2QKb7ozo5CVCTyjXez+bpxTHWuH2osKQCjylJ9
         Fz2Yq+ZT4FgCp/81/tIZRLVUx4/2JHAVMIM07XsDyadnElfnBoWtMQbcisqP8+LpZmTJ
         h0f54Gg3/ZGhmrmFoCV0x/ly3apHpB5Vv1j/tnatTtHIX6fZsH44dOXD9Pq12+kmFenX
         T0N/0LuOPbQGuyO8oY+Km3/R3R2X2f+VMBlWFwPek7YmtCyD+tDLn2R07wQsPWg3SvHX
         uqWg==
X-Forwarded-Encrypted: i=1; AJvYcCWhHMKoNydSMdql1CwGfIFqx88X3pGdAag1KHvhr64/9vJ3H9uiQm5PNHO39qCbQzNGfJTyUuS4Lcyn@vger.kernel.org
X-Gm-Message-State: AOJu0YzBbDF8cqDN/zcfTv2bTetGm7xskVxaxJvHQLaNirtbRzqdovw5
	sL94xcVpEy9tQgzD5/PCkDcY65oupyoaphv4uLh18EolMvRXKzcw+tRUHuSUyoDGaIJmOosPx1E
	yXP5isTU8oD9WfSsQ7ocyfTZLXEWRsYh0bAot9dEhGhpMI9HO75ezwjsqhNUhVPM7
X-Gm-Gg: ASbGnctWLZqfTKXneYyWI6tMNH+FZlRqYvHhI9I84FjJn8++jHfszKIu1IJOVD3ya4K
	2+KHLzV2t9jCOptQDmp3+1vFSMO1mJVqcAHw5UDDmJkJ3dCi2JTFn0qsAi+Ms26G0e0Hl5+L0xL
	52i0nm6/nRKxXb+szsEJavrSj2bS9IOSoe19k7VHKYk7+Am8fUubxWCgP2zDqbVQQ2USPTnVvEP
	so7aPRbhqGB8XzHtyh91XDfZHnmyrVeD4GDbSrGg56V4AjANY8GSxvWTbyl1OgYIirJrjsVltE0
	Rzu5A5uqtQjq2AweNymf4Rk3bsRAjJwRmvJO9MCKKAD7LwwHgNrVrq3zqu8ALu1lr5v12Hghvvv
	+dOeZU5x1Zas27q1YP/Wa2vFYu5xzpZ283g3knID0wgtlWg1cDqZiAONqkCjn6afZSeE=
X-Received: by 2002:a05:622a:1108:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4ee58850982mr407107071cf.3.1764593740998;
        Mon, 01 Dec 2025 04:55:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHmjj0MqTTdL7Sg51Iv8ThAIsd2fTvcywFmFZkGgrzSN/jzajCzDAtkVxmT1U936hxOLJRBSQ==
X-Received: by 2002:a05:622a:1108:b0:4ed:a574:64cb with SMTP id d75a77b69052e-4ee58850982mr407106831cf.3.1764593740545;
        Mon, 01 Dec 2025 04:55:40 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a90c93sm12300309a12.9.2025.12.01.04.55.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 04:55:40 -0800 (PST)
Message-ID: <0d63bddf-7a88-4c59-8ba3-6655e7a8854e@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 13:55:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-oneplus: labibb is not used on
 OnePlus 6/6T
To: Casey Connolly <casey.connolly@linaro.org>, david@ixit.cz,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251130-oneplus-labibb-v1-1-bb3653e43120@ixit.cz>
 <3fcfc5b8-7509-4e4c-a1cd-e973d7e1d091@oss.qualcomm.com>
 <f86267ee-ad70-43ef-8e48-b9f2e509c193@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f86267ee-ad70-43ef-8e48-b9f2e509c193@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: xdWcgwUUXFNDBYRHtXXGSVeoZGESjWj1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEwNSBTYWx0ZWRfX1IVIQRCI0ccj
 Pqr/mzLnBq1ki/3Yw1YTpOQ6AZmg+8xBWBfKMM/GBQxePLMBmYjub+vHgRHWAe+DWlu5EnX6Vbd
 wK5dUE+kxW6N3P/JhsgGhyXDL606Csw8G+mS9Ye/Zby193Cjq1g/EyWg0XbSeMnxJPLlcr1IUVm
 oKfsh1mxE2XEhzNxse8QaZH36+OOfS2WTQ09wQNU4r9Ora83vFAqppdgiAurLjrN7vcPAUb1up3
 SbnZC75RIe7y86h5UGrbNnABK1xlkH5whej+TtwUshE/Ig7hn768Jjfc0Z+zyWVnF2ZkikhxD+a
 FBiIw4n5NgsUZMOSaYmNbsyk/ssoiagavwoiaVrwkmDLBRqkPaz0DC7nnarwKpre07JM3KnCB7U
 E/Nh5sF1BmK+E4zHYNvj1xzrM/3tpA==
X-Authority-Analysis: v=2.4 cv=Urxu9uwB c=1 sm=1 tr=0 ts=692d904e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=4_HY7mAHSgI59XXtPg4A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: xdWcgwUUXFNDBYRHtXXGSVeoZGESjWj1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010105

On 12/1/25 1:50 PM, Casey Connolly wrote:
> 
> 
> On 01/12/2025 13:48, Konrad Dybcio wrote:
>> On 11/30/25 1:08 AM, David Heidelberg via B4 Relay wrote:
>>> From: David Heidelberg <david@ixit.cz>
>>>
>>> The lab and ibb regulators aren't used here. Disable them.
>>>
>>> Removes following warnings:
>>> qcom-lab-ibb-regulator c440000.spmi:pmic@3:labibb: Failed to create device link (0x180) with supplier c440000.spmi for /soc@0/spmi@c440000/pmic@3/labibb/lab
>>> qcom-lab-ibb-regulator c440000.spmi:pmic@3:labibb: Failed to create device link (0x180) with supplier c440000.spmi for /soc@0/spmi@c440000/pmic@3/labibb/ibb
>>
>> These are only vaguely related, as there's nothing to be wary about that's
>> specific to these devices - it's just devlink being grumpy
>>
>>> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")
>>> Signed-off-by: David Heidelberg <david@ixit.cz>
>>> ---
>>> I assume this is right approach, as OLEDs on both devices are driven by
>>> different regulators.
>>>
>>> Question is, if should be labibb nodes enabled by default?
>>
>> They're onboard. I'd rather keep them predictably parked than left in
>> whatever (potentially ON) state the bootloader may leave them at
> 
> Shouldn't they be default disabled in the pmic dtsi and only enabled on
> the devices that actually use them? Many SDM845 devices with OLED panels
> don't use these regulators.

As I said, I wouldn't be surprised if they were enabled by the bootloader
as part of some reference/common routine and left hanging. Linux will
switch them off if they're never used and I'm fairly sure the users won't
mind the odd couple dozen bytes of runtime kernel memory usage (which if
we go that route probably balance out with the added couple characters for
status=disabled in the resulting DTB)

Konrad


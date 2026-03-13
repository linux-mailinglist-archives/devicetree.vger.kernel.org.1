Return-Path: <devicetree+bounces-275314-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFEHB7octGlLhQAAu9opvQ
	(envelope-from <devicetree+bounces-275314-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:18:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC7F284C8F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B0953322F7A3
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D91A4396599;
	Fri, 13 Mar 2026 14:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dmOXagPF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="frwlslwm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6793368AB
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773411242; cv=none; b=ErUKpiFl+WwOizfUlqvRT6mRdMKhM+/BYWfCmKXa3ntT95ADZgWg4ta6Kl6BXhicBphdc55f05GhjPgMuguS/lBHkd5zxkdXqzJ9gSpt0BrPXsj525h2FsReNfnoYdauGqTb+fxBxdFe5z1LlCQYvfCaq9mN54m/rnb3cWRPkY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773411242; c=relaxed/simple;
	bh=2Ax6mEoBmIIINq7jKCbWHwBPcWYjG4Z6TEjYdt9ZADA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Keyy+udc58FgGSReQ3s7SLLfhRqNv60qLr1T+OOqXWgrM/cYhL2yc6F5gJDaDfrUlYhnY16NOz8xaLMUZIfQGAFp+eeh6RM3dt1YI9A5L2719Tgl//gtELw+Q3WKvM517Ie2v+62tkieaDvnjZ90QbVXkn1xP0sD5dPc97CY7m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dmOXagPF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=frwlslwm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DBrXpx4140736
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:14:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6MkXKrmgHZEgqEUoaPglu+nEPsg2SnNw3eYI/5+7A20=; b=dmOXagPFgDc19zEQ
	I1ngbGcpsA/rJ3dxQEUqfQBGXf6KBmN8+/BQpNkn1RMkkguWcDF2UIUITYySjm4R
	TgJcDKkqBT7KbJz02P+SYgE119LxFikSH9C3z8FDpGGuZjs9lqN2Stg3OrpH2XxE
	UVklkl1aE1HQmd7Jc6XIw++fFs+uzwDfGPhrI8SLF3G7cpFoZ2wk5EF+0BhJhbk8
	6ar9FEVOw27OVbhPMd2Chwk8rmQr0ZwjNR9fQlHNOzgFgEwlHHoMSCtrdTStVk1D
	6uCsiSil4CaJGGpQMcwZ1Nk2mUR0PIGxH5xCsBLOBiuInsG8gAyDSjbMB1d4I28+
	sYmonA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvbn29x4m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:14:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aec6c572fbso106855175ad.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773411240; x=1774016040; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6MkXKrmgHZEgqEUoaPglu+nEPsg2SnNw3eYI/5+7A20=;
        b=frwlslwm3ZlR0nJ/INtWnYB8PLFnX8NUWMoK7/4vjDmZTbgC7HYzY6O0onR7UwTk3b
         VOYLE4uAfLmsoTfBv0m08QahdE4BAFM8KblysNaIchc4i0IyUXUwf3lZfE9juOMo4iR1
         CwO21XZ3QGIOaJiCOMzqZEfwQxCtE5UMIewq6YBcuc1isJ59PsYtMkUr6YonAC30e2Cu
         qgA8WQAbjhIYydQ7cpAcEbjS/RSRTAwod8vPSo4s2EWx8DmTaSVqkmI2kVP5SfhugvFE
         +Oy5Cu537kdIvKc/KGIzBMa7nUzknjEmIhibDq5A9bVCAL7tNiAhbk1lmGe4p5RcCpkc
         sCtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773411240; x=1774016040;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6MkXKrmgHZEgqEUoaPglu+nEPsg2SnNw3eYI/5+7A20=;
        b=THZBosUmeIb+EybCrIG0Hh2UFcvfmLIoIGGY6kEvSbUmMKaD/Wg9IIIBjsqJbHETmH
         4bBLRA7dwjEPiJA+BC4vVSU1NFfQEK/yK7tcTRJD7utiVwWOGvPCf/RUCEhlFhMInpsK
         92pCdpQJT7YxYx/OcMNXBX5AqFP3nBVRB7LDmIPzBUJof6hUH20s3+mna5AVIFPsd9Q/
         MCuL+PKotRPRKH9Fy+MM+GYIIh13sedzFmsCafREkx5p6R27EZtPuylhQandAudT2EYm
         iCiJk7hXKjTzNlmFHp8kQUVVqGF4FSipoHZoG4UE4XTikRZDggo72naZCyrxwjuknJ1t
         U/IA==
X-Forwarded-Encrypted: i=1; AJvYcCUaU2Kh9kJEPZ0pPso9fXdET1VmjliI/S9pgQxFS82b+2DeEytKzAwVR6s3ZcVXfCynCWrTbL+wJUL+@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi1t9gXCgFe+NFeErQcJThoFOSqAwyuXLiqsLg1PUj/25r6tYw
	XzHd9aRvAtrUMTNr7yB2PFZWFsFtVYgIr6+WkG3dhshRtLsZ+pAR3z2SsKY2gqqCUFRQerq8ssn
	BXfGJAUm16nPIBB3gqA++G6WPe4WsupR5V8zfx2A3keKUybKSmHbbQqu8+B4yQlP0
X-Gm-Gg: ATEYQzwDrlaU879vCPnNdsfaS7DhWsG8OydCSOV67POWJ2HM0tn6zbGRNPQMo+SELUo
	18R28tDx44Nzj+7GzMdlAKkgfz36TVqciBMOSyVvib3h3XZq+sl1hC4cgNSe6FmxeWmnTXORSP/
	JbP+udMuBwTtQCY2kOZtE90HrOAiWI5Ibh1GG60kFZytYrFHisMNqxMD0YLcGoU2INdQ28rt+o7
	3orKbR3XE3Sm437YXRYL00uOeXGemT4j8GMU6GVcLAJap76aIVGs3hEzM9TU4BOlhq9JNd1jbYU
	lU+wiiIm5NZ8gPSIKE1NIhBzama4M3j5Fm05O9lZDdh1pNYQsQzd3mATcGSUOhdhQWDcApcSX7q
	4nNbtu+5J+wWRqXrXv2UwdZgojcTD4Uzi6aN987tBTDQ=
X-Received: by 2002:a17:902:ffce:b0:2ae:d3fb:bc08 with SMTP id d9443c01a7336-2aed3fbbe29mr12260865ad.26.1773411240342;
        Fri, 13 Mar 2026 07:14:00 -0700 (PDT)
X-Received: by 2002:a17:902:ffce:b0:2ae:d3fb:bc08 with SMTP id d9443c01a7336-2aed3fbbe29mr12260555ad.26.1773411239885;
        Fri, 13 Mar 2026 07:13:59 -0700 (PDT)
Received: from [192.168.1.8] ([101.0.62.124])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece56c2b9sm30155405ad.18.2026.03.13.07.13.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 07:13:59 -0700 (PDT)
Message-ID: <b734c3bd-c54e-4463-a93f-0a9b89f2d7d6@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 19:43:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] platform: arm64: Add driver for EC found on
 Qualcomm reference devices
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-2-ca9d0efd62aa@oss.qualcomm.com>
 <9241da21-6b02-434d-a746-6bccc25a335d@linaro.org>
Content-Language: en-US
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
In-Reply-To: <9241da21-6b02-434d-a746-6bccc25a335d@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: oFFmi-JhyRJNjybgg_Sif98kn5dVcktQ
X-Proofpoint-GUID: oFFmi-JhyRJNjybgg_Sif98kn5dVcktQ
X-Authority-Analysis: v=2.4 cv=ZKfaWH7b c=1 sm=1 tr=0 ts=69b41ba9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=EhmMhbG5NVnfTD3xWHIiWQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=kLZw7Tj2Bp1Qn3bclxgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDExMyBTYWx0ZWRfXy0zpXy7B350H
 k99mnAed9TrSqMXy/0+4/aacskDzcS4NUtJ1/9a3D9zu4M1/9ftQZZiMu3yex0vIlmAhL8nL9eU
 V2iRRi08iJoO8iWRAkzYTj981O4kzwRhA5UJt+6m2UeuE327OhI4NJYeNLFPy+fz5L/xSrMx6U+
 61cxhCTG+Z7yRzaEKDFrKoWhvumyX0HGGpS0UwP40tBCnW/nM+eWyBpK5ooY77LwP0jeDDUA+LB
 NM819MngKN5YrueprfXgdJ4d8VGB+HkCwOPBaZ1WTtDc0TkU4VzpRytYailgVU5O/UmOPW4GXM5
 cQZiiXryPR8dpEf7DO1myD8DMUxjA3KFNuhdczQdKmY4YsJBz0JGdhqemFrO8Xpd+Y2cz8pf4qT
 k7yCyiXxmsNS5lsMb2UgXZto+bU8w3AfO+DToGRKdJ6kfUtVDAJSjTfcOyXS4Lf7GOXfTgIBeAf
 lUyc5iZ3kfikwccb+hg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130113
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-275314-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6FC7F284C8F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 5:47 PM, Bryan O'Donoghue wrote:
> On 13/03/2026 10:29, Anvesh Jain P wrote:
>> + * Read Response:
>> + *
>> ----------------------------------------------------------------------
>> + * | Offset    | Name        | Description                |
>> + *
>> ----------------------------------------------------------------------
>> + * | 0x00    | Byte count    | Number of bytes in response        |
>> + * |        |        | (exluding byte count)            |
> 
> Great to see this documented in the code.
> 
> Please run checkpatch and take heed of what it says.
> 
> 0002-platform-arm64-Add-driver-for-EC-found-on-Qualcomm-r.patch has no
> obvious style problems and is ready for submission.
> 0002-platform-arm64-Add-driver-for-EC-found-on-Qualcomm-r.patch:184:
> exluding ==> excluding, exuding
> 0002-platform-arm64-Add-driver-for-EC-found-on-Qualcomm-r.patch:224:
> exluding ==> excluding, exuding
> total: 0 errors, 0 warnings, 0 checks, 28 lines checked

Thanks for the review! Confirmed the typo — will fix both occurrences in
the next revision of the patch series.

> 
> ---
> bod

Best regards,
Anvesh


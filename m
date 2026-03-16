Return-Path: <devicetree+bounces-276044-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH9EDl/Pt2mDVgEAu9opvQ
	(envelope-from <devicetree+bounces-276044-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:37:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 998212971DE
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:37:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A0169301477B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:37:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C669A38947D;
	Mon, 16 Mar 2026 09:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XXrGPEhd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VFF3PfS+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99357382362
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773653849; cv=none; b=g26iDzHbkDkUH8nYGR3PQmYvHyyaT3Nqtzv1QPuCKp4x0Ln4bfiLhlRhGW3/mlR8E7u6lfz8s140ZvH44bgV/DB1Z7scpvVl8TqqhlAgatElWP4k936T3TCOV+nL0wVGXvDZSJlHgs2H72Rq5NnmMylaXoupGlqZ6xAAohBSQbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773653849; c=relaxed/simple;
	bh=DbvCh94rpXDv7WluBYY0jPnaT6bK+G4/fSGmypdNLWA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OxDXCDIQ/F1KkbOSss1obj1VThTLjVGnHMxQh4cJPBQFGFPSj20KNStHnh3MJkRBwJ82FyTUzIa+Yt15eqEPG+GpcbK2OKm9D0vzkbHYO8Ae2tkepBbwg3Eet6TQD76AYAdcM07icwHPrA00KyK/4pfa9Im+aMn8wyj/MkQrCro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XXrGPEhd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VFF3PfS+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64jMM538903
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:37:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vL0QFFEBT4HCnrXbSuzaMv26nwLRIwkg7ItBWYHCTmw=; b=XXrGPEhdVCVgz8gy
	tBUuw4mAsye4Rzy8JRLsrKWQHrc/dOuqFBtj43aBPfI+oH2OpN8BR9cHcsAOXf27
	ghIcwGPyo3x6cLnmvGFFSBnXPx7VM5bE2ilYfu5uexAercdLZx9FJYua/b6I6tfq
	5TRhGz0W5GooLJYsA3wVewwaCatvZEI3yI4sRqAPf004cy8jCLnZw1DfXw2Nvksc
	hzwAJBgKUk2mxRtQdKmNt9FZUGRWpHNN/0PvD8uT0Foka0AtMi5bPLGk9Xo1VrVr
	QLJ1VppyRyJinhwo20w5Ied8dtp6swAKwWk0lXLNiGKLdMPgPSTDsmCQI4M2bAW2
	PR2LrA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyy5n215-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:37:27 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aec805eec4so28396025ad.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773653847; x=1774258647; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vL0QFFEBT4HCnrXbSuzaMv26nwLRIwkg7ItBWYHCTmw=;
        b=VFF3PfS+w2vKaBMA2coDKnxumgvN+m2r16tk19Ql9X8Yh5acpmTGhyRGH8aLXnDunn
         +QaTOHHQTNdxrGI5dRKr0XSzhj/vYI0wBoV/oC6tyArxdUc9brFE+B36XJHERmphu1kK
         cMSsXNCavTwJ2tNlw4AdPp89Yk5ITiDc1ZnmgS6xewUrNeaAmZwZKY76vdUSmrIX7zr7
         6fR1xh2hqb4bETokQrU76FPyzOkyth5Mua+7QBY/ePCGZM6vH+9NtMayAnwhQN4qIJUv
         LxKiQCL6ZH9QENkPYfTlpRqj8sf3VWJO570OWgfeRMUoKmoaqQulGY9fi/iu32qc8xUd
         GRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773653847; x=1774258647;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vL0QFFEBT4HCnrXbSuzaMv26nwLRIwkg7ItBWYHCTmw=;
        b=fjrV92W/3lubC0fjibCvL/sgdxePyRwg1m+kED98znCieLuFao5c+R3EBoOMcIvlXE
         6ntP4EEbUCIg5FTJeo/IcRws3VxvN90FgYompSmgLRMXAoj1x7+hFSRpFWSvoQILbsq4
         uPkZHlHgJ7zlY+dllx9Xp3DKA2Hf24jcyT1SP4DZgbvRUvjxY0+I09j48PxOFTAqNAtg
         E5XzcWG5z11G9KBsjUVSrkeonO+6eVUJP71RKRMcw6LmdJOuDQ9/ltX7dklvl4B1opY1
         ftfg5Fcf4mZRQkY233z1bzg+6bNW1xpCDZ5UEzgJCQHPiaEtoOAsqa2P2CZ7JpDZNXf3
         EkQA==
X-Forwarded-Encrypted: i=1; AJvYcCX0NWYyFEO43gFRA8EPx+gFMXDTZxBKDqalwuoxxDdVgIwY3sokaIGtkenaLAjwGHEe83q26pMjh2LF@vger.kernel.org
X-Gm-Message-State: AOJu0YzK943Tw8miUbeb/kdPsqWimvfreyodK7A+aYdm06P9JRKLJ6S6
	eRhTGRExHVtvWUdjgi1vFQernLD7KMcElTgekSxTedLNsXH74IFIC91HwovZgOSIqQ4WauIxhka
	GqIOhSMyWzVcE2/lginwiH3Td0YsVHM1vi+gHCu7QQ9lmvuFBnMd1kmZPi04z2CIE
X-Gm-Gg: ATEYQzwdRS1OOeI9YZx82gSxsrQOYY/hS0V6CJEOk7KGXMLyBRNW+WRQRdE8yItn/as
	yLSM+pPNBgC53PpGx46yJIgYlydVwie0QcizoGIdaP0E6vmVul/gT2zQvntzEY2woJIHPckO9cF
	g63J2YoUuANHt1dNqTFRVMXRigzRW9EpLR4/cPvqP6YoyhHOgcXIptboyYxojgeNFgIVMnShht3
	IqJaiywb6KBsE6QjNa2R//ajc3FNpcHpj+f90wQLA4SvDOhWi8PcG4dH+dprB/k7iTVtbPqOyo3
	ypqkeZPy4Wa1uhCTXFqnUafhb0wvKmectgUy96VF/9H5BTOwDgAQY0JraGwSq309SW/2wzf9Wrc
	qt3y5/tyHmL2AkdrkrUiMQlec+z1ZwU/AY1dbjTtbVD2WG2Q3vfJyz5Nw+glE4dkEo8a2Ai2HWX
	zAiWG2Y/O3tTmSjtTTiYmMm0MRuhA1z5ZuMw==
X-Received: by 2002:a17:903:3b8e:b0:2ae:3afc:eb42 with SMTP id d9443c01a7336-2aecab04a1dmr114987495ad.38.1773653847104;
        Mon, 16 Mar 2026 02:37:27 -0700 (PDT)
X-Received: by 2002:a17:903:3b8e:b0:2ae:3afc:eb42 with SMTP id d9443c01a7336-2aecab04a1dmr114987095ad.38.1773653846553;
        Mon, 16 Mar 2026 02:37:26 -0700 (PDT)
Received: from [10.79.197.144] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b05f0ab2b7sm15664115ad.39.2026.03.16.02.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 02:37:26 -0700 (PDT)
Message-ID: <e72263b2-fcd8-436b-b283-76a90ae0effd@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 15:07:20 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/5] dt-bindings: embedded-controller: Add EC bindings
 for Qualcomm reference devices
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-1-ca9d0efd62aa@oss.qualcomm.com>
 <de539038-7e9d-488b-a6a6-45396247bf63@kernel.org>
Content-Language: en-US
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
In-Reply-To: <de539038-7e9d-488b-a6a6-45396247bf63@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: jfT5WrjsEygfR-z9E5QXVmoZBSkcyw5k
X-Authority-Analysis: v=2.4 cv=QOxlhwLL c=1 sm=1 tr=0 ts=69b7cf57 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=P-IC7800AAAA:8 a=gEfo2CItAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=yKxla6SPEuOvPVJYePEA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=d3PnA9EDa4IxuAV0gXij:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: jfT5WrjsEygfR-z9E5QXVmoZBSkcyw5k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3MyBTYWx0ZWRfX5VyNXItubhpw
 90vsi/40UUrLymyUoJc0PJ2lK9cKbkET++Ozurl02CrjUZZgOKs1tClu0sdtcZ4FBSLLVENOue3
 lZI6Fg9SfwlKhs9ySMTFUYqc9kRhNBAvzv6xZCDXkQI8KJDy3BpswjpEGm6feREUZKMBFncKFo4
 K5OnEOC0rnWmZoKf6plcHfWkGLtCt+VYilXb6ZSQruLxLNEW5ag7fXGxG6Zeous6J/WMv9LG/S+
 6r5X2zFwR5zxBNt7SUk16EUznAzTzBMd58gGuoldpSN0WJhZ8TTtpfgzgiHhQ8wanE7deE9VAtm
 eSeaE6ekUt0Ed9LyD4NzPWmQ8DtebtKEzxkNSdKvNYG1VuA6PCUrTYfdK7jqNekiGzvzzdBxvyJ
 Fbr8c28R+pBd7epVRxuZ521U4d03Haf67V16+27T+NH5pkf+XVMbGhiLjVrRZXF2ep87JgMvN8M
 VbfrGJwhK1IuDHnPkHw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160073
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-276044-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,bootlin.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: 998212971DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/14/2026 12:31 AM, Krzysztof Kozlowski wrote:
> On 13/03/2026 11:29, Anvesh Jain P wrote:
>> From: Maya Matuszczyk <maccraft123mc@gmail.com>
>>
>> Add bindings for the EC firmware running on Hamoa/Purwa and Glymur
>> reference devices.
>>
>> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
>> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
>> Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> 
> A nit, subject: drop second/last, redundant "bindings for". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Noted, will fix the subject in v5.

> 
>> ---
>>  .../embedded-controller/qcom,hamoa-ec.yaml         | 56 ++++++++++++++++++++++
>>  1 file changed, 56 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml b/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml
>> new file mode 100644
>> index 000000000000..baa95f06644a
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/embedded-controller/qcom,hamoa-ec.yaml
>> @@ -0,0 +1,56 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/embedded-controller/qcom,hamoa-ec.yaml#
> 
> Filename must match compatible.
> 
> This is a standard review comment already documented in kernel and your
> internal guideline, no?
>

You're right. The filename qcom,hamoa-ec.yaml does not match the base
compatible qcom,hamoa-crd-ec. Will rename the file to
qcom,hamoa-crd-ec.yaml and update the $id accordingly in v5.

Thanks for the review!

-- 
Best Regards,
Anvesh



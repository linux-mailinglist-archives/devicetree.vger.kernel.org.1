Return-Path: <devicetree+bounces-262897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOEzBElbhGl92gMAu9opvQ
	(envelope-from <devicetree+bounces-262897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:56:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 552B5F01F9
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 818BB3063D59
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 08:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6705536657F;
	Thu,  5 Feb 2026 08:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WYb72xJN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gUTR59fN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35411361DBE
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 08:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281531; cv=none; b=qiAq7sM0qtCcfJkllp/H5PJYwx1OY/j7YnDLifFSySiQ3VhZbFlwhgbitsY68svvOHQ9soFDnNX7/EbsZIlPMleXd6fyzfndsuB0Y9tZdR7yEZ+1Pik+yszB1i13dyLrXmn78Cc959L+98Kn4jLl6MUtV4LwfDQDf0qMAE6gSgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281531; c=relaxed/simple;
	bh=MzHUBTrOm0xOLs4Wt2aeY5+7WG3Iv2ljfhgZcIajsfw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VZp9meXpk8Kpz2wDqYszz+YnbNAl73cvCY2SItNzujO5SIqUpDSS/DEcV+wA1NAAbB8QMK+UIgyJWWLhGr1SYv6aNyWn8FyTQ5zU01QKcAFvkQl0KE10wUVy1Id2NPUjmvhKoQhiKB28+wyArIe1087XTmWx/RHM4gMH8uZbnYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WYb72xJN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gUTR59fN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153dklJ2639654
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 08:52:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fxmtMQ/Xer1Woebrd8VxVxAvYRAf+XtB2W/IHEnNBPk=; b=WYb72xJNrkRI+r+z
	whXNNR37N31FJ86dsLUCNIfrFupGY03qKoREtYoHiJ+le/6xrzvjsxb3MErqDnaW
	T52ZuTtHCHo7tvLLhAcS6cMDi/sYoUhji4bfTy8PlyPy7pz65DTi5jJYCfk6u3ff
	bSn3iCV+nwfgNBDuej+n35MAUaPh5+B4xxJU962Wq+O9lvDXBVAVB4uQwnjPoGnA
	gMw7V9AgJZH7+mqP2EkR6clUn+VfdUrdsgbqVhx8aPxX7WhURH5lcECYBHsVo59b
	2ugUgYoIf3oxxO3GNj+efgRvPBAROZUiRfkZQjdFkqBXDZmyizsdNCBMUeqT2myv
	BNgykg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c47qvb2pt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 08:52:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c533f07450so24829885a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 00:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770281529; x=1770886329; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fxmtMQ/Xer1Woebrd8VxVxAvYRAf+XtB2W/IHEnNBPk=;
        b=gUTR59fNLuzvZuLSM/Uhjg33fyux1BW1/W36mQMsDdtz5//v+uu5Q/YR7SXwb5ZaKf
         2SJ2Wr0wnXmBeEWiQOBe/GRdECzH6Fu0KcQacaRcpDPqc87SIwsEx//1abpWIu4xPa3t
         fEe96R+CrVDksPnyzMtsCabyFf55Ol8fUR+o1V+VH0VoPr9+a/ESHXS60ExDthc+dPDj
         /yB4891VskhZ4z4zlao+mmnWEPasS1kbNq9QEMEhYiEBSGgK+pgIo1HAoEt5x7IDAFvW
         BfK7O6RuKMjXew9pymyx/0doRVCuBx5/l9MDORLksJ7wR/b460zp0RuPhKmuR3cYqLUM
         IzKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770281529; x=1770886329;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fxmtMQ/Xer1Woebrd8VxVxAvYRAf+XtB2W/IHEnNBPk=;
        b=ko4Qz+i5eav6wS1TKBJoAbiMLs43qCtu4gtmT3o/ACfWsG3lOUuAvEnuNe6mtMxHtb
         Rfc5xZsiHTnS4Q5N2ZCqgJdvLgT8eVs4TsD9GFchLegXNIx/Vjm42quWMCeGnp1qcqBS
         CQ0RNmSt9WozrJFntsrtwmKF6Uk9M7y570fa5Cy8EQXYjP9RTHCyUVbrtdc4p0lChYSD
         mcwzCNe8Q/JgwBFU/o04pU/G6ppbP2zpCA/l5zdxYF3+ob66PMCYcz5ZQLVixKpfZ4EL
         E6qPqESGWtu8WjGr8eCatWIcQ8kdJ/1vRmV90UmG0PlGP32NcOAeK2kNsc8pimbuBbaQ
         fVZA==
X-Forwarded-Encrypted: i=1; AJvYcCX5Eqdn3et9AlF+HtNZWtphx6rp9wlfYXztJ9KaifgM2/3afdL8rM4AUEzH53W/2uUoJ5bIp3VehR42@vger.kernel.org
X-Gm-Message-State: AOJu0YwMQgsQ/iIIpYZbVBXqBrhDLVarr24hLRjILsSk5ynjXyItN8yo
	cyF0k5epAFreKyXYYuhh+XjlbWQi9jc1pa8KyDiDG7BbByaFC5kGTO5mutW4iHBq77cyffW6WVu
	QRDQXY1jHUvdXPDf2kWrOHiz1m48kD3iESujqG8FjJhq9YweaphIIjORMqmnXgcbI
X-Gm-Gg: AZuq6aIzC2+GWwP1iSWuFVKr7uObItBccSPuxTF2q14pGltq3mix0yaPe5S8RtZNcig
	uEL0fAGneKLzpNKCKI5DtYtckQjPOpVCpHzBy0rNqbq0bGmHjBVYb4cG9bdzj4F3kmLAIBlyBNp
	T8LFVYztLgSTWdzCq+LbbO1/3NsFhIShPzZ+FKAkqxUSC38PmmJO0ntYiPqDcHAfqQKOaPx/oRO
	GOjmK0Rwo8ANcftlq/jQ/z/D9f3K5bNw1p95Pxuf78pFwwGlFmYmPlnGZKFuheluVJuHdp23+x6
	VjNPzTfZ9u/rFklp15Tn+fISifJRiboHAdKKFEvXDzG10SwJXEQOdM4m+FlI6xp17/SesQJPvVD
	20bTfhZsJWC3WWIwzGLqgmEgkGCsCUFYi/0s1HNrmf+CExpYUJlTndHZRfoiT4ePWx4Q=
X-Received: by 2002:a05:620a:31a7:b0:8c5:33bf:524c with SMTP id af79cd13be357-8ca2f9bac66mr577880285a.6.1770281529430;
        Thu, 05 Feb 2026 00:52:09 -0800 (PST)
X-Received: by 2002:a05:620a:31a7:b0:8c5:33bf:524c with SMTP id af79cd13be357-8ca2f9bac66mr577879085a.6.1770281529024;
        Thu, 05 Feb 2026 00:52:09 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9fef001csm206756966b.44.2026.02.05.00.52.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 00:52:08 -0800 (PST)
Message-ID: <eefc4df5-78dc-4dbf-89f5-c255d3ae41a3@oss.qualcomm.com>
Date: Thu, 5 Feb 2026 09:52:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1
 IoT
To: Roger Shimizu <rosh@debian.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com>
 <eb9c1489-4496-48b3-8709-739cd45c11b0@oss.qualcomm.com>
 <CAEQ9gEkH8mJu+kwghbFFwNi9RfbQ6CzykoYVJqa6YAL-74SaKQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAEQ9gEkH8mJu+kwghbFFwNi9RfbQ6CzykoYVJqa6YAL-74SaKQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=GaEaXAXL c=1 sm=1 tr=0 ts=69845a3a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=xNf9USuDAAAA:8
 a=iwPp0qcm3xoi09PGkWYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: eTFmr11gsVELw_85hY_Z69ExRWDT26rL
X-Proofpoint-ORIG-GUID: eTFmr11gsVELw_85hY_Z69ExRWDT26rL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2MyBTYWx0ZWRfXzYQhUW3FKbqs
 9s3Mo7EDBiWJcp7peZXEY3y13zkQeFdN2X/boF4mYDcPK2sIWTupofiW3eCeUu+ERdGO49KvPi4
 UyELGWKb8bPtRYATqPcjlEhbRSdFUAC82/t2COpNXSdc7MXcUPSolNjROPXf6qiD6ck9RZmqmlb
 4GS5EKQVwdFM2bxlzOqV0rfLPtePdSP0Et9mnEUKdyhhaWoEn7H1fHi0YDxTh/CX3e7KlKocEQl
 h/INaIeMlFUtx8R3Zolrxo/W1gRtPMb9mqxUKwcwSYKyx4YDnMHiO54k+3RTNEdAOp336VUNGhH
 pvezywWXp4kz+WosFkilAvIzODQyez0vuZprlk0SjmtymtF2EjjoWQkfeMGa8WDksEWW1ZaGk9o
 Hz9kQv3GKx0BPZJ3DBkOFvnE8x9s1oZRe+Ssm3Haj4lIDVSRaC7TTGC0Z772HO6TKVVi9CWW8IA
 mBMLv+iXbJiwfbqt5aA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0 spamscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-262897-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 552B5F01F9
X-Rspamd-Action: no action

On 2/5/26 1:04 AM, Roger Shimizu wrote:
> Thanks Konrad for the review!
> 
> On Wed, Feb 4, 2026 at 1:21 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 1/31/26 11:31 AM, Roger Shimizu wrote:
>>> Thundercomm AI MiniPC G1 IoT is single board computer with
>>> AI capability based on Qualcomm QCS6490 platform.
>>>
>>> This device tree is confirmed to work as below:
>>> - GPU
>>> - HDMI output port
>>> - PCIe M.2 port (for external Wi-Fi or 5G connectivity)
>>> - UART / serial console port
>>> - UFS
>>> - USB Type-C port, with Display Port
>>>
>>> Signed-off-by: Roger Shimizu <rosh@debian.org>
>>> ---

[...]

>>> +             vreg_s1b_1p872: smps1 {
>>> +                     regulator-name = "vreg_s1b_1p872";
>>> +                     regulator-min-microvolt = <1840000>;
>>> +                     regulator-max-microvolt = <2040000>;
>>
>> Have you cross-checked the regulator settings against the original
>> vendor-provided sw?
> 
> No. Those are from RB3 Gen2. So far there's no issue.
> If there's an issue, we can fix it later.

The issue may be that once you enable one of these regulators, you'll
see magic smoke.. please cross-check it

>> [...]
>>
>>> +&pon_pwrkey {
>>> +     status = "okay";
>>> +};
>>
>> This one is already enabled
> 
> May I know where it's enabled?
> From my search, pon_pwrkey is defined in:
> arch/arm64/boot/dts/qcom/pmk8350.dtsi, which is disabled.

Right, I must have misread.

Konrad


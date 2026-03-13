Return-Path: <devicetree+bounces-274909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJrfEpexs2lYZwAAu9opvQ
	(envelope-from <devicetree+bounces-274909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:41:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9226A27E3EE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:41:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1B0F530180AE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 788442594BD;
	Fri, 13 Mar 2026 06:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="igt3PzcN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gPBqNSqp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A4419ADA4
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773384042; cv=none; b=DHjQg+Nw8XT29+zsOBXGvQ4VFT7PbkT29jx9XL2HhxT+BB5VgZYAnT5h32Y0/E7c2e3B95g1eWoEeVCVm++ouc3LjUT8jlwZVCmSR+d/AeaFHUlpoXdQtMBOXIyxuU6o4zKlqeDeRA0MDWJ6n2dpql8fS+j7iACi/3ly3pzISsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773384042; c=relaxed/simple;
	bh=e09vajKUZDPJp/jtPUeU3JFL/LXPxR/y5475uhVbaV8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XpQNXuq7/dSoqzATapE6REyz/X8sXQMYkf9NUUEs95hoq/rRrSTRlDOLjxbKj2eLQiP9hUG07QJ8/MWkoN9JpvMk/Gn7L65+wRsgKBWxfwsCjBa8Ar6+jduCYKIAxhNBkAmWsBhnhRY3HWlzg6FXAHoKibQVzAG+72T1UXA6C7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=igt3PzcN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gPBqNSqp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5tdNu668710
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:40:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z2yHacvHoEIS2iQIpmAHHWFbIhfSnfNYOJJs/3j8L5k=; b=igt3PzcNK9I98DSL
	VHvueWo2j9CWkpFIGpFBP9CT4CmDO9ra1MMdk6sqBhSjlLctmC18afwIPFjUrDAe
	3kddXrWbr1vgSWWWsSwX5HtNzkz6Ys+G0vdUmwZBqXs91X9Kq2ShBaByRCfzZ0vB
	kVWO6lOFqoMcQaSN3wIBziYb6VUAHiQqdkHzKMBWlmwM7GQ6gKtjbKrzPdGSCBGb
	k3Kf04SNM0AAvT76DM6qMzDHaNQ6IG92nM1DxK/14sh8JwW0pgYf9d+ihTbkj/eU
	qScEAs5EorzHHnC1b51Fld4ZaePc5phInRtHHjNNukym8CHTHOQFK5z1pCBhrxdo
	Y2pgNQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh5q4vj4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:40:40 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2adc527eaf5so14062155ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 23:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773384039; x=1773988839; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z2yHacvHoEIS2iQIpmAHHWFbIhfSnfNYOJJs/3j8L5k=;
        b=gPBqNSqpeDOd5HwhK1bdTomJ7bpDTNAkKHzJd8JC1EfV8yLrUZFITI4f6qTAb/wcUJ
         6pepeIxotUPpC39Gl78xnFONBz16TefE1AKQJaYgbmqnZ/bVlw/UMDkBK985iLv2ojL4
         /IrwFc4GF9pWxdHKQs505egQIhGRfqXj2PqfL8+GakgRV4aFKM/u7S91G72zFE5xxLcW
         dcmbsdZ+AHiFMHcfbms2+iacpq0jZshRT4HjlYcTI0Fba33Ej4twOj4+l6aG9N99nA8Y
         4eelNCN8rmzT/xt69QwnD3bfy/QFozsoVhCeIcK8IWXfiuZP1UsSiPk46VrltiqOxv8j
         J40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773384039; x=1773988839;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z2yHacvHoEIS2iQIpmAHHWFbIhfSnfNYOJJs/3j8L5k=;
        b=W6uWdlDb9rauoTosdJUcL/YnfX/aLQfADHGXTuKYVpMY1prcYy3cuNgDJ787YL0LgO
         p9kC17szVzh6e59PuElVmNRxzeGlQ/56JDsk7FwqIW9hyZYQMU/s5eYvINmK3BjUXogx
         DR4O9I040y5zSHOdYq0A8HjL99fSOezC+BjMZb0gBsSmv1Zw+lN4NbFpg+FZhYa9eoBo
         CULyr8LsWCKg1vzxj2gicA59WFtSGqNLm9T8O3f6zkymr8BsNc3TMZm5mlbCB4Ukfp8G
         bsq9qYYvtMiK9IeEZEARhVcs0ypNk5RvyzkWg28IY8HJ+BH7OcOmfjp5Rnv3l+bm0ZI7
         N6uA==
X-Forwarded-Encrypted: i=1; AJvYcCXf0hvXzBBABOxkPW0TUQMp/56mEYQVfrLN9J6+bneYTbhZTIxfVxXCJFQP35qzvJJGEk53+atxbVdY@vger.kernel.org
X-Gm-Message-State: AOJu0YyrmqOVLXWZ4rraQgUHeVCnPSYZ6Rb40MwOGN61QyPUquk4BhC5
	08Es30PSfsIQY+s5C4o4oZ2BDsRW3iit6EjtxrMGZI/QqOsUJsD4QfaH4JHhOaSRVfc7Bd8aJ/3
	LTqNvWwn/mi8RhjYOS1NmGp2trE2cdkh6ghVgFWFyAAysu0Oh+4HmGdxnLtidId+q+S//6JZa
X-Gm-Gg: ATEYQzx/tCA7w+UOoZZLW5TwT5Ji589cMsGPXhvFaYO+NolFiuelSKLIHKWttmecKe9
	HC/lvMih+9uU2AGXYdHJHsh84iZD0KrLl3ukDU2DukgrnToBPBpG551KGRdZ9utMrp2yECWCiLz
	a+9m1iSRpLJ9BX+fVerG+joWqcG8jA+NJCncPus2JZ1yyKormftboGbegTYvqWh/JKwPfJnMbt5
	Cv3iyY9QH3xrSiNDmR1hnTmAtFpb+0FFaWvKc5tUNwyLBVWgWE6xpQFT0zGqGJReD4iW8ffxHh2
	fkvY3s9jxLuZ4OvHXEWWl/BK2wsRMWKAbTuYfnAcLxnMarlxp7ZfGqHFAYVk8tnPaDrqG2JNl01
	hwgV66kZ1XJnT2cx7pKPdpxs9b3cPAPNOD25mtCC9f2hNBGqimF8=
X-Received: by 2002:a17:902:d58e:b0:2ae:ceeb:fa5f with SMTP id d9443c01a7336-2aeceebfd57mr9326845ad.28.1773384039344;
        Thu, 12 Mar 2026 23:40:39 -0700 (PDT)
X-Received: by 2002:a17:902:d58e:b0:2ae:ceeb:fa5f with SMTP id d9443c01a7336-2aeceebfd57mr9326555ad.28.1773384038853;
        Thu, 12 Mar 2026 23:40:38 -0700 (PDT)
Received: from [10.217.198.242] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece62c581sm14676585ad.33.2026.03.12.23.40.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 23:40:38 -0700 (PDT)
Message-ID: <771a8f63-90d1-45b5-960e-342d9041fc4d@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 12:10:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] irqchip/qcom-pdc: Configure PDC to pass through mode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
 <20260312-hamoa_pdc-v1-3-760c8593ce50@oss.qualcomm.com>
 <eizcoxjnjgbobjwndnq7gewqnynnm2o2aqhh4muposgnhhagaf@tnomg2p4uj27>
Content-Language: en-US
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
In-Reply-To: <eizcoxjnjgbobjwndnq7gewqnynnm2o2aqhh4muposgnhhagaf@tnomg2p4uj27>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: iXA1tqRXRgtVSXK2j1A9UIT6gbrYYTaB
X-Authority-Analysis: v=2.4 cv=CIUnnBrD c=1 sm=1 tr=0 ts=69b3b168 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=wsG5e61cFZotgxzGgJkA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: iXA1tqRXRgtVSXK2j1A9UIT6gbrYYTaB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA1MSBTYWx0ZWRfX/rAVbTT+Vmfz
 CJW+6nosVjELIMvVOULZZcWJ06TOLVcstl/XUYItwMaAD0JBoDhAWKOcoydJwfENrcfy77+zpBh
 Q4d+wMfRvpbTJTXOnowk3QiF2nu4RngHR2UlHmHnoqykJWf+P+eAezTQAsHp4bIw3A7iZyjSG2v
 31c5BUgzMTxdnuwQA7vgDahgCnAceX59zm9GdptHg+QRg8Fz9sHTOkYECv/uYTOx4Yh06gEtdmV
 YAAuOtpLohAmKFbm8QOlkTCV+I9Le4qjYNhOmbJrrQdp/bbAUM1sWRdGsysHhnxe68gx3TWDE67
 hOKzxlfmom1rodxiBeefy4SxP5u0s+j7FKllbuPgKE7Ww+SPSln0u7yPCsumm3SOgckEXFeV8Qw
 F7neAzSzYID/D/dAS6kIFaBaiMZ7Ajak1JyUjH0sjyEmn7/kaehbRgNWTZoi/0cTmInSjySsabw
 ctBXGbccjags9Uj8CHQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_03,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130051
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-274909-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9226A27E3EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 7:52 AM, Dmitry Baryshkov wrote:
> On Thu, Mar 12, 2026 at 09:26:37PM +0530, Maulik Shah wrote:
>> There are two modes PDC irqchip supports pass through mode and secondary
>> controller mode.
> 
> Can't parse this, excuse me.

Ok, I can drop this in v2.

> 
>>
>> All PDC irqchip supports pass through mode in which both Direct SPIs and
>> GPIO IRQs (as SPIs) are sent to GIC without latching at PDC.
>>
>> Newer PDCs (v3.0 onwards) also support additional secondary controller mode
> 
> It would help to mention the platforms, not everybody has the core docs.

Sure, i can update the platforms which are v3.0 or higher.

> 
>> where PDC latches GPIO IRQs and sends to GIC as level type IRQ. Direct SPIs
>> still works same as pass through mode without latching at PDC even in
>> secondary controller mode.
>>
>> All the SoCs so far default uses pass through mode with the exception of
> 
> Is it something that must be configured by the bootloaders?

yes, currently changing the the mode can be done from secure world either at boot
or after boot via scm write.

> 
>> x1e. x1e PDC may be set to secondary controller mode for builds on CRD
>> boards whereas it may be set to pass through mode for IoT-EVK.
>>
>> There is no way to read which current mode it is set to and make PDC work
>> in respective mode as the read access is not opened up for non secure
>> world. There is though write access opened up via SCM write API to set the
>> mode.
> 
> What are going to loose? The ability to latch the wakeup sources on the
> CRD?

CXPC (SoC level low power mode) would be lost if the device can not wake up from GPIO wakeup sources.

> 
>> Configure PDC mode to pass through mode for all x1e based boards via SCM
>> write.
> 
> Would it make sense to always use the secondary mode instead?

No, it would not make sense to support the secondary mode in Linux.

> 
..
..

>>  
>> -	pdc_base = ioremap(res.start, res_size);
>> -	if (!pdc_base) {
>> -		pr_err("%pOF: unable to map PDC registers\n", node);
>> -		ret = -ENXIO;
>> -		goto fail;
>> +		/*
>> +		 * There are two modes PDC irqchip can work in
>> +		 *	- pass through mode
>> +		 *	- secondary controller mode
>> +		 *
>> +		 * All PDC irqchip supports pass through mode in which both
>> +		 * Direct SPIs and GPIO IRQs (as SPIs) are sent to GIC
>> +		 * without latching at PDC.
>> +		 *
>> +		 * Newer PDCs (v3.0 onwards) also support additional
>> +		 * secondary controller mode where PDC latches GPIO IRQs
>> +		 * and sends to GIC as level type IRQ. Direct SPIs still
>> +		 * works same as pass through mode without latching at PDC
>> +		 * even in secondary controller mode.
> 
> I'd say, there is no need to duplicate the commit message.

Sure, i can remove from comments.

> 
>> +		 *
>> +		 * All the SoCs so far default uses pass through mode with
>> +		 * the exception of x1e.
>> +		 *
>> +		 * x1e modes:
>> +		 *
>> +		 * x1e PDC may be set to secondary controller mode for
>> +		 * builds on CRD boards whereas it may be set to pass
>> +		 * through mode for IoT-EVK boards.
>> +		 *
>> +		 * There is no way to read which current mode it is set to
>> +		 * and make PDC work in respective mode as the read access
>> +		 * is not opened up for non secure world. There is though
>> +		 * write access opened up via SCM write API to set the mode.
>> +		 *
>> +		 * Configure PDC mode to pass through mode for all x1e based
>> +		 * boards.
>> +		 *
>> +		 * For successful write:
>> +		 *	- Nothing more to be done
>> +		 *
>> +		 * For unsuccessful write:
> 
> Why would it fail?

It can fail if the write is denied by firmware.
As i understand the older firmware had neither read/write as such firmware
was meant to be used for non-linux (windows only and not for the dual boot).

> 
>> +		 *	- Inform TLMM to monitor GPIO IRQs (same as MPM)
>> +		 *	- Prevent SoC low power mode (CxPC) as PDC is not
>> +		 *	  monitoring GPIO IRQs which may be needed to wake
>> +		 *	  the SoC from low power mode.
> 
> This doesn't quite match the description of "latches the GPIO IRQs".

It does, PDC would continue to still latch the GPIO IRQs (as the mode change failed)
but PDC won't forward them to parent GIC as they are masked at PDC with __pdc_mask_intr().

In summary,

Below is what x1e users get today if they boot up Linux:
 - All the GPIO interrupts works fine for them as they don't get forwarded to PDC
   due to commit 602cb14e310a ("pinctrl: qcom: x1e80100: Bypass PDC wakeup parent for now")
 - SS3 idle state (CPU level deepest low power mode) not added in device tree due to
   above commit.
 - This prevents CXPC (SoC level low power mode) as the CPU subsystem cannot hit deepest low power mode.

Below is what would x1e users would get from this series,
 - GPIO interrupts continue to work fine after reverting commit 602cb14e310a
   ("pinctrl: qcom: x1e80100: Bypass PDC wakeup parent for now"), PATCH 5/5 of this series.
 - SS3 idle state (CPU level deepest idle state) is added, PATCH 4/4 of this series.
   Adding the SS3 idle states opens up the path for the SoC to achieve CXPC (SoC level low power mode)
   (This again depends on drivers removing all the global resources vote)

   While all global resources votes can get removed, if the PDC still could not wake the SoC from GPIO
   interrupts, the CX is kept at MoL (minimum operating level) and TLMM (which is on Cx rail) would then
   wake up the CPUs from SS3 CPUidle / suspend (s2idle) state with GPIO interrupts.

Thanks,
Maulik


Return-Path: <devicetree+bounces-269988-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBj/L+iEpWkeDAYAu9opvQ
	(envelope-from <devicetree+bounces-269988-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:39:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0021D8C72
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:39:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA3E0306ECB6
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D7F627AC31;
	Mon,  2 Mar 2026 12:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l/2j2UZH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CS5lFrfY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5522B35F612
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 12:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772454716; cv=none; b=EkvIjyU6L+ezmd7cXzdVOlw2ArvRflBgagg4FPwKMZgivjEDb+eOsNunTmWLJx1WQNnwpZd69UC0erb96iRBtBlkpfx9cFjleViRCsCtiVw1cSRBSKq6hR1auEUWHt8mAsbxPXFKKLMhIsG6PUw4h5okzFzYyngW5cRRN9WgNTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772454716; c=relaxed/simple;
	bh=Md5xRA8YEGesOFAjU15qapNqJizqyuaB5pZwTKTaHoM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GQnjXdWUJwNcF+zwypGD1Opo+ewV8kFTt4uu3zh7hnujuh9G9r63Sw6vT68pwUMImfwMRTuRA4D7fPSj6ViOuHnA30IK4FFGZy0uUnCNFMP3VjAzKWmjYlKcD9lcTLVDhZ3HhDsQ6JmjI5wQnUM/zxfwN5W5Kkpw8CCzfgRJ2zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l/2j2UZH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CS5lFrfY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62285b7U662340
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 12:31:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W4ngh7auUa12FfXGU5s7rRoEdx8wE5chgTwMb2MLbMI=; b=l/2j2UZHcRmn5rbV
	O+/c6SmQKiAQFuspxc+q4FCvrWT9S6yIzhVa8Y9akmNXjm05hHuCGnhiSszkeE2t
	Tt9p5y7553HB59PE8K6QFYxgXTCiAET+SJS4XQ/EuIrIfdRaggFXhvkL64DiU74J
	XuTRyox/KzCVD7zGuMKrBcYaRZm2CY7KMqcMpdCCTjlFzu6WgJQT/nM57oAlL6hs
	CPdXrCOL5aIW2MSj0Q5+62V6SezL3lTnxlBZBof3gET2+meUmLMhU0DZP9NTlYIb
	jf/eQU+s+hcL9vPDZAws6ysuIIhX10gQj9KSH8jOtUGKTFxhH5YKEtbSLBDX4XH5
	/mYAWA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn6r2ryq3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 12:31:54 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35678f99c6eso2962460a91.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 04:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772454714; x=1773059514; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W4ngh7auUa12FfXGU5s7rRoEdx8wE5chgTwMb2MLbMI=;
        b=CS5lFrfYDVvFyjISCYgCzPH6cNDBJAp6CJl8xTWd11XJzNDWiaJEHdLlv2Bq+KXEMQ
         tRyAO2GNvXOevMRLmPmSGCMwnmXbPKyoAudztYmSjFfR8cMpQfUEzbbzq9+Ok5XeadI4
         BhpBFx60gnTMY4lY7UBfzhxhYmyv2N0HZPs1bBV3fWjDpqKfMc7E51ORTf5A59dDEzgJ
         HRTkFS48aNxRk5L3suwhVJ+3JuscqHtsIJtuqkbiPZ4yWwqNsjTii7GHBNPAr5g9CUda
         7iOK79aSr1YLpwqwTTd7EmfBaKu7GXKUSoJWkzUEomteyZot/Twj4Z/Hgjrl2iacVXQg
         2m+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772454714; x=1773059514;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W4ngh7auUa12FfXGU5s7rRoEdx8wE5chgTwMb2MLbMI=;
        b=nEEbqTHBoaPwNNimHX2zwplcFOC3B0q9yf6+o7XAsVXbtLRdz7wF0yHNbgI8l2wPHS
         n7LCZM1tpe+3LsPxt8RaF/14QWancxGlTjOYQlIfC7Ngxfi9hFcGo2Wd4cQ33G8ta79V
         5xlMPT2d9fg/XGsKlUB1BgasDpFtbSR8LMn/8RrYVcMtRfdnSPtX4JXVtwyTA4NC1f2+
         oRcXZJGDkQlUSTJUOTHmaGPHVmEYya74YmO3mkMBlxZsprv7pXYsrzWwU3h4jQjwc4jQ
         hhWi/neMUipzwadpsGMdCNBgBFxYbAuEkkbbodPQO4YlHOjy+yr9sG75toDCtt1PGOWM
         5kjw==
X-Forwarded-Encrypted: i=1; AJvYcCWrqHlZSFghqrsVPd9ks2uOxXFr0OIShQ9eVJrKHRwm39RjIeruBqfqpr1RPDpCva3uPq7L2pP5QikD@vger.kernel.org
X-Gm-Message-State: AOJu0YzTNwK1QCCQ5xhZXJ7SHnHaVRnrbfpn9zQIf7zgOp8GcLW+qA3D
	pDw0w5R4KacoKBr3qfb23RimDO7Bz7KnYDCDL/DQKlceZFemHUoF19wS7mxc/FJphabtwAY55bF
	OxIRUBL5Vz7uENuksF3ntLG/rq6ygu8hyIq/ZZiZSASBPwiNQdFMGnP+cBi8jDk/s
X-Gm-Gg: ATEYQzylzjuEVaXPjqmQXstFOGuRx5+2sUneYkPgVtx5acoSlXY2biDCpkf45n32/Sq
	cK9HOsge/Tilx+QCSc4jUH3AmIL8Tj8hnIeVkA73I0PJXa6ATwIOBDucqTgYIWhx/Guyp3Z+/ci
	k+3DvZ+QuDaVLXDNoDkxTiafFrScfgOW4kp1ICwaGo+CuKPpqDjM8aHRT+EpL8+pvIt7jzBUVt6
	6bZccxpfVcO7kVo0o4Z6oyg2L1G3td7p21nuAFWJ/w5M06IRq0Sfe3Jticv6kRAiJjgzC8tkacw
	V0Guew7wFw+hoPlf7X7Ex95DPRakubrKlveS9fyqF0PSmInOB69ilYuiQAn2LHSLFOdvzPQtARt
	c7rtssUC8NOBoiutsHEnCKNLUmNNqUSSo9Lh5VioFW6LROilSJsvMqRai
X-Received: by 2002:a17:90b:48ca:b0:356:24f0:af08 with SMTP id 98e67ed59e1d1-35965c17eb7mr9037587a91.1.1772454713718;
        Mon, 02 Mar 2026 04:31:53 -0800 (PST)
X-Received: by 2002:a17:90b:48ca:b0:356:24f0:af08 with SMTP id 98e67ed59e1d1-35965c17eb7mr9037568a91.1.1772454713176;
        Mon, 02 Mar 2026 04:31:53 -0800 (PST)
Received: from [10.218.41.175] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35977bf69bcsm4006727a91.7.2026.03.02.04.31.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 04:31:52 -0800 (PST)
Message-ID: <ec377914-32af-4db7-97a8-64995f5c26d6@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 18:00:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 06/10] power: reset: Add psci-reboot-mode driver
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan
 <andy.yan@rock-chips.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>
References: <20251228-arm-psci-system_reset2-vendor-reboots-v19-0-ebb956053098@oss.qualcomm.com>
 <20251228-arm-psci-system_reset2-vendor-reboots-v19-6-ebb956053098@oss.qualcomm.com>
 <CAMRc=Me8WQ=aMd-NJ1yzzHzqU8fT1u4eb7as=EjSpZ+Rpv9+rg@mail.gmail.com>
Content-Language: en-US
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <CAMRc=Me8WQ=aMd-NJ1yzzHzqU8fT1u4eb7as=EjSpZ+Rpv9+rg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: A-dZRW36V_MHDtEIg59Sgr49QzCV3kXj
X-Proofpoint-ORIG-GUID: A-dZRW36V_MHDtEIg59Sgr49QzCV3kXj
X-Authority-Analysis: v=2.4 cv=Hpp72kTS c=1 sm=1 tr=0 ts=69a5833a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=UGKnsmkkt59Ar6B41U8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEwNSBTYWx0ZWRfX/BQeHJCF63lo
 NguNkjUQOX/VF7jO2ev7X8K7FhfidtG+S7jYpPCduTNLip3EUQE1kgl/tKfZdD5KThY9xOt2xbU
 bXW2edY5ymjHtM7+AXBuxk66qTtsVZmRjZ7kp/cxdKYPqASHk1Imm7PQ2hpjSSG/BMXMNhAfGz3
 CO4tdTstO3jnBH3XWOc6p8pOJPqeyhQ6vt4AmBLNCegYkF0ARO5MzE1PuImY4D9qs+Gs8fV2efn
 G0A/v1MKqvchX/rxVzUtbEBe4uYzVBCa1QGRyHYTNPBacokRM2Aqve7ZFf+Y5FV64s40SlHyrfe
 aqFe4XaQSyLDIvLLrjTYOsuxVgI13bF//T+YwLsXREP7UeOPiIeIuPTLjK0hALdDEKA0UKKxPpS
 lSqpaVIW/cClq5hnpPltTa/jgsZLg8KnjaUGBzhdOTZ1Tr1RwsmvB5nL6619mt+j4zS/9yrhPwi
 jTBrWzC/TsABDHc34Nw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,arndb.de,arm.com,rock-chips.com,linaro.org,gmail.com,ettus.com,broadcom.com,oss.qualcomm.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-269988-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shivendra.pratap@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3D0021D8C72
X-Rspamd-Action: no action



On 02-01-2026 17:27, Bartosz Golaszewski wrote:
> On Sun, Dec 28, 2025 at 6:21 PM Shivendra Pratap
> <shivendra.pratap@oss.qualcomm.com> wrote:
>>
> 
> [snip]
> 
>> +
>> +static int psci_reboot_mode_probe(struct faux_device *fdev)
>> +{
>> +       struct reboot_mode_driver *reboot;
>> +       struct device_node *psci_np;
>> +       struct device_node *np;
>> +       int ret;
>> +
>> +       psci_np = of_find_compatible_node(NULL, NULL, "arm,psci-1.0");
>> +       if (!psci_np)
>> +               return -ENODEV;
>> +
>> +       /*
>> +        * Find the psci:reboot-mode node.
>> +        * If NULL, continue to register predefined modes.
>> +        * np refcount to be handled by dev;
>> +        * psci_np refcount is decremented by of_find_node_by_name;
>> +        */
> 
> Can you make this comment into full sentences, I had trouble parsing
> the meaning for a minute.
> 
>> +       np = of_find_node_by_name(psci_np, "reboot-mode");
>> +       fdev->dev.of_node = np;
> 
> The logic of the device assigning its own node is a bit sketchy,
> ideally this should be done before the device probes.

Got one doubt while trying to move it to init.

We used a faux_device_create() in init.
faux_device_create() calls the probe function from within its
implementation, so do not find a way to set the node "fdev->dev.of_node 
= np" before the probe call when using faux device.

thanks,
Shivendra


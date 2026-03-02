Return-Path: <devicetree+bounces-270000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPG9G8WGpWkeDAYAu9opvQ
	(envelope-from <devicetree+bounces-270000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:47:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E45851D8FFC
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B06E3067863
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEE3A37472A;
	Mon,  2 Mar 2026 12:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cryyzL6J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KzfXG4fr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831B937419A
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 12:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772455169; cv=none; b=Wvetj972wivMQO2yT/OazMrm7W2iOojfeIIu46dYqniEyq2Wbo0lcoJQIOC5TH9KArLEHlM2N32c/6tuuPBH6Qh6Y9eC7MfK7Rxs9PzWRw/N7MQmbjIc2H9G0MkeVbj0vbh0TvbXTpEFaTh1dZMp85Ht4ULykJJoJpWZJ0Wj+J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772455169; c=relaxed/simple;
	bh=sgSw6uvz5TkF6fAter8Gcyz6f1Qegkklbw6CY016QSA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZkJ/5X/3ruUU2IKhrOTwTof8bInGEAJchoRsVk5lCadBfGgB2/C/hARb8p1+gWA+VK5jhMegaGNZ7Ar+vTcrcmMZ21qoE+nB1R3nanNTHW3Wz2DKyAUjnYlOYey8wBhRIXWzVdvrfeWalBGlbmCI3uoDzrVhINH7qNeGd7dTyQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cryyzL6J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KzfXG4fr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62283lfd249402
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 12:39:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ww8449eIn2bp2zLGxyNJVG6ROnNNqCtapX2um7IMARc=; b=cryyzL6J+aCfMbmN
	zGRKsJrhKW0FA+ShER+4QxbPAqdq33JlPqP1YwZLBbBPpIfkMdEQENwpmjEe8UO+
	QUSywtocX3cKo/pwZXKy55772Sdlp2SLSoAzLQ3KTZT8vFfgnctQxlBusjUVpziw
	Yb3C6AgupT9eSE34lTz22u6FcmJZ65Tp/miaMHfkkjvaIBga2lbDFV2L3/FcrwYc
	2Vy7u+eE/0dllQWHOQxbfsfYyMoFPvIwGx2ZzaPRMIp9aPJ90M/VwtyLbWSYyw7e
	X8JiKKKew4WRoGXaMjw0yViFIFk9TlpYm+BTs+c4P8fi57Yq+88nIcaAcUoJVkbG
	hbHNAQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cmw64absn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 12:39:27 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35449510446so4112027a91.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 04:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772455167; x=1773059967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ww8449eIn2bp2zLGxyNJVG6ROnNNqCtapX2um7IMARc=;
        b=KzfXG4frL2BV6+81Zi/5Ork3A+/cXZ6WOKUgnaQ1GGp1zj4eQHhp7Ue3SUcLH8DsdE
         pH2yWOz2NRmDJSYmet0gTaFunBN+IOF30H170gaygttqcA5NCSaHWbLN8RX6DNqGsSJh
         kj65w1nrn5V8lrgAILKzWzOhdbkqa9sbUrZG7XiR1S8RkU/t+IH5UYrDOJuifatwrEs5
         lKaci/kQubkPkxz4sQtF1FNaM4LIoHmlaCQxhtTWOXNSIWh1fofoTZs2KMwhRJEYQEkv
         37uANg2G/qEXPA3s5rK0rKs2XBQ5fkbDKEQvEvoAWjQDuad1wJ0ic6mu3+GY86PY/Y0O
         TjLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772455167; x=1773059967;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ww8449eIn2bp2zLGxyNJVG6ROnNNqCtapX2um7IMARc=;
        b=g+6e2kGNqGzMviCQVoFM25sbDVOwlkNas8raBV9v6RTbdLOIm4RlgEehBHSiLXpqfi
         2v/CdyJvaB/1cKUwU47rmkcmck4SOJQF7zypj+W9DB4BjS+pMc5ooDf2UOovn0QRMj/9
         ek19Z8Fb008/u8UY2NPpSXwBF0bmW9O3Mvre8iMy8dtrbg77aNj2rkQl6p3pdANLeefT
         CMAs9fd8On9J9zkMgvDHKqSi+FD0g8atkLblXrMsRShcDMdUH/5+DvAV4WWyUE5t1sHr
         A2Dkph8VuQg/96NNMObWnm7RKTHyDoz950AOxxfriH6SD91T+W6tfkGWQVYLJRmzLlHU
         /mXw==
X-Forwarded-Encrypted: i=1; AJvYcCWR9QISAu5V6Pe18dh/Vbq9yGPnJwLkhF9J8DlCVbyivd1aQM5Bn6Ah3OuIRC86swpymCXCJcYoJY9T@vger.kernel.org
X-Gm-Message-State: AOJu0YzRSlcg32rJuxEyPJyDW/2jOGLfEzyxL67wu7EzUyy6xH3zLRWB
	3x7ngPsm+mjiKzFcrk40Qr1GJ5f/KngcJk1VgYO3uppgxHNrTbObgVeifFvqMw/+jPTodsG2YXf
	UXX3j6b3G8JLIK+vTF65b4T/gv76JfxbCIn/Pj4LrRNRrYK/fk+npsYZDpozJlIW+
X-Gm-Gg: ATEYQzzm4Lc3awoBBpZ4iXxBSTde81gzmCrHg66LmhcQnW955UDghLIcYejVwJeRqi9
	1kkWdG1j+GQ46Zo5g/Tbb44ipst3DxZNEPaxEbm14sXsrVZQbjKI9ZfKb937aK11sATAvVMElyg
	WH72JxRzPt1xnGat5NMdA1pNEPtKx6/aASeiB64l7wBQWL9kr0m8BYROrbrcWXcIUkN7Bvw4waj
	zGen3FB6KUaD3k+hcixTXDmHmM8Ee54CgVba0LR+KnAdlBhwDsIWfkaGvhwuRpJD25QEE1+ER/L
	LBvSHNR6S6LrYJPMvy+8MIgYtjKEoUsC1+cEZwjLOc530TtapKLCWNTJltxq6+hM5jgMABjWWCz
	d9oJr+CAWNxQjxzLnpXP7c5RHyaquoINkv7IkQLZwOYFQbLAlx7AZtNCV
X-Received: by 2002:a17:90b:1f8f:b0:354:a57c:65db with SMTP id 98e67ed59e1d1-35965c926a7mr9003685a91.20.1772455166962;
        Mon, 02 Mar 2026 04:39:26 -0800 (PST)
X-Received: by 2002:a17:90b:1f8f:b0:354:a57c:65db with SMTP id 98e67ed59e1d1-35965c926a7mr9003661a91.20.1772455166462;
        Mon, 02 Mar 2026 04:39:26 -0800 (PST)
Received: from [10.218.41.175] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35994b0ae60sm2048878a91.2.2026.03.02.04.39.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 04:39:26 -0800 (PST)
Message-ID: <8271eafe-ec8c-4d9f-9eb1-1bc115efcbff@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 18:09:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 00/10] Implement PSCI reboot mode driver for PSCI
 resets
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Nirmesh Kumar Singh <nirmesh.singh@oss.qualcomm.com>,
        Song Xue <quic_songxue@quicinc.com>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan
 <andy.yan@rock-chips.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
References: <20251228-arm-psci-system_reset2-vendor-reboots-v19-0-ebb956053098@oss.qualcomm.com>
 <2dcd9e3a-0a40-0dfb-29b8-99b70b73a59a@oss.qualcomm.com>
 <9e9b9faf-7c5d-2e83-a8ac-37afeffd81d4@oss.qualcomm.com>
 <aXduTklGm6AOeaGG@lpieralisi>
 <61f166a0-44b6-a917-66e4-1e1230fa1115@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <61f166a0-44b6-a917-66e4-1e1230fa1115@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: P2KObmDQR7pP3lpGUPCTFwuIFrpB_I2n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEwNiBTYWx0ZWRfXzB6U8kxTFyCH
 xdA7i0T/suTwpGuaYru6+zOfO+LknL0S64dvU7c9NG899hjVN1rKCH4Uw/BF3JMT15956cDQvNd
 hSAOO0LRXUYSYNKS9C5ROIgebVRkg+bu9PYjPgjW91SB076l/0oorZ1VboWoc5DtyJF5blZT8YE
 xk3tTNSkte5Cpa5GHk7xFPmq4+yXjnfQPI4dKvHLJp02q34iiuy28LcK50OM/rQudfwczTb+opM
 vsqjaLV40QeOJcyPbDolQ/ROZyCCM7GrxaK+vzz4UtcBkDO6AHVQyTYbMeB5K6HUCErI5CqGjom
 t2U0hs9IPvljiGGqbJp9Crcao4C7OaSweEzckcJuimU+mHjaFg3KA+mLF5Ui87SpXbNAf4fANIP
 UhukUSQQBW8eGu5STiCp3B5dgKcDafJn/A0CTIXOZkU5g7/+arB3w2nIiWiDexo8lXEg5sSHQjL
 GoCz/Zqsn8wKdaiK7og==
X-Proofpoint-ORIG-GUID: P2KObmDQR7pP3lpGUPCTFwuIFrpB_I2n
X-Authority-Analysis: v=2.4 cv=I5Vohdgg c=1 sm=1 tr=0 ts=69a584ff cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=1ilHWjMHOYMdorrszqcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 phishscore=0 impostorscore=0 bulkscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020106
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
	FREEMAIL_CC(0.00)[broadcom.com,kernel.org,oss.qualcomm.com,linaro.org,vger.kernel.org,lists.infradead.org,quicinc.com,arndb.de,arm.com,rock-chips.com,gmail.com,ettus.com];
	TAGGED_FROM(0.00)[bounces-270000-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
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
X-Rspamd-Queue-Id: E45851D8FFC
X-Rspamd-Action: no action



On 10-02-2026 19:35, Shivendra Pratap wrote:
> 
> 
> On 1/26/2026 7:08 PM, Lorenzo Pieralisi wrote:
>> On Sat, Jan 24, 2026 at 04:08:11PM +0530, Shivendra Pratap wrote:
>>>
>>>
>>> On 1/6/2026 4:38 PM, Shivendra Pratap wrote:
>>>>
>>>>
>>>> On 12/28/2025 10:50 PM, Shivendra Pratap wrote:
>>>>> Userspace should be able to initiate device reboots using the various
>>>>> PSCI SYSTEM_RESET and SYSTEM_RESET2 types defined by PSCI spec. This
>>>>> patch series introduces psci-reboot-mode driver that registers with
>>>>> reboot-mode framework to provide this functionality.
>>>>>
>>>>> The PSCI system reset calls takes two arguments: reset_type and cookie.
>>>>> It defines predefined reset types, such as warm and cold reset, and
>>>>> vendor-specific reset types which are SoC vendor specific. To support
>>>>> these requirements, the reboot-mode framework is enhanced in two key
>>>>> ways:
>>>>> 1. 64-bit magic support: Extend reboot-mode to handle two 32-bit
>>>>> arguments (reset_type and cookie) by encoding them into a single 64-bit
>>>>> magic value.
>>>>> 2. Predefined modes: Add support for predefined reboot modes in the
>>>>> framework.
>>>>>
>>>>> With these enhancements, the patch series enables:
>>>>>   - Warm reset and cold reset as predefined reboot modes.
>>>>>   - Vendor-specific resets exposed as tunables, configurable via the
>>>>>     SoC-specific device tree.
>>>>>
>>>>> Together, these changes allow userspace to trigger all above PSCI resets
>>>>> from userspace.
>>>>>
>>>>
>>>> Hi Lorenzo,
>>>>
>>>> Is this patch series now converging towards the design changes you
>>>> proposed in v17? We’d like to conclude the design so we can move it
>>>> towards closure.
>>>
>>> Hi Lorenzo,
>>>
>>> Can you please review if the design aligns with your proposed changes?
>>
>> I will try to do it this week.
> 
> Hi Lorenzo,
> 
> Any pointers, if the change aligns towards your suggestions about the
> psci_sys_resets?

Hi Lorenzo,

Was planning to address the current reviews to send the next version, 
wanted to check if you could check this approach towards psci-reboot-modes?

thanks,
Shivendra


Return-Path: <devicetree+bounces-236781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 59408C47453
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:41:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3CA854E0F31
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24D83128C8;
	Mon, 10 Nov 2025 14:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bfILjCMM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LNDHg5NV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4991923BD1B
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762785708; cv=none; b=YbUl2g+OpdErOP41Z+zBYyQ2ZM3JYVim6f00jJJvpl9+YnhhG6wPJu6aKDFYYw9GWFKR3qwcbxmGCF2NPJMNbd0w323WmIUnT8sZ/3cAKu/8phhvfX9Sc4O9QvTuxWGpaJighIKgeGGRP5/bKWhQGWA9YoJoQIak0a12/tmstu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762785708; c=relaxed/simple;
	bh=EGsoQ001UBEf7yxavI8ZABTjuEBgxU+e7Nmf8KHADdI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dJ5dFXieEm5K9/WTa6gwoaiVrrHvE1aMUCBBBrQG14Az/L1iEUxb6/UxGrtcnAXcjjQWiuJAAP95Z3hCedj4QC+GmlX49ah1mmY8JbqRg8qOmV5aWPkdDXTKdT763E8qJ3tCJa/b3esZ/SbAMVezl4Y5mvmSKiMag8w4iM8Q4Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bfILjCMM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LNDHg5NV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AACMuFi3306799
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:41:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HYPBMmPMrl74VcBNfaZK6P0Th/jmEX2D4ZwvG4S3pO4=; b=bfILjCMMjXR9ll5x
	cD6jtvxG6fD6T52Kv9T5eFgtaACKtgd2pxJrJYkaEhSdnaM0G+6qMOnEyxVw2yen
	nmcvAkwEwJggDXfQcRGcs/MT52ntoYywDMTghWYOAfQDTvazF2IIX6muvRRypGTt
	x8vgomIVGqrxB59uYFQIxGMx3TZWKb3fmh+SmVuUNocYD5V7cwCQsPZaZs5F2/RB
	z5OlpnaqX899nLntx4ApLqe42zY1vRkWgA0SMYsI+iKlLn2JwNGALeD+zMx57m3c
	hyhkTX25wcuYf3cNxj5vL8BW4eS4tRJhRvSUdnKFh8C33GUfWnHecHjyk0tCeDsj
	yWYvEw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abg0q8c39-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:41:46 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-295b713530cso37021865ad.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762785706; x=1763390506; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HYPBMmPMrl74VcBNfaZK6P0Th/jmEX2D4ZwvG4S3pO4=;
        b=LNDHg5NVywSXuikZeB0U6w1nob8Hm8N8OBTwhUVJwsqVQyOmz/x4k319Xdl57EHMbE
         VBG0oO5jiROiPdUjPwo3pvzmQ8XoTI9UqR+DmIbnvohAL/H4f+m/bLsTjd5T27FutTq0
         eJ7tjTPNqZcG2Tkco3IsRZyiyeqzYyD5Qkm5fz2Cpd8YwUpXv0dIlvJZveESHLJwPhUP
         SUTjUHYly6RkVwUiKN9b8J5H220wNibbnIKqxvc9hxOf5ShDAeFkNpYqVjAf2WXFVLYo
         fZ2Ogo1OisN+ATuni/6Eb0NPVdGBv6aUN2hYUBIqVgOCFtqHShHbukcJS7FkeV1q44Rm
         7C9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762785706; x=1763390506;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HYPBMmPMrl74VcBNfaZK6P0Th/jmEX2D4ZwvG4S3pO4=;
        b=Mt7d3He0IEqINC1CzwhzioSRTx2u/l2JsCdebaFL1e4xtkCae6CMLk8uGfAWHj0SqP
         iQxLhBk1bhneuN3vsNpsTJ08UhQADme3rxq0X7KMUfkPQV40YlWrcaOvJz9AD1LaIFz1
         LPLH5Mu6GvJ10rW3xoT1aL58Git2pvbTvJbwJKC1/woxyUYbaolwF+v8agFZjBXY/6dr
         UspdpXsVF0cB/5KyyrPLxKIzMrqJMLaV8mxUM8p507r+l0BcDt6XrP9nbG3UjRZBrEjm
         4EhiMukaOpFx1WjMUNsuIDN+t3QUK1mQnPakDB5RDlJfLwBb59PuPaH2M5ycyzi+G/s8
         JAfw==
X-Forwarded-Encrypted: i=1; AJvYcCXe2W5p6boIBN6UmsKXAlNtCVOcN+jdtrTecm98yoY/m0xEaNU0dt0AJ4bg+SlDmTlvKbj7fCd+UGGn@vger.kernel.org
X-Gm-Message-State: AOJu0YzR6jtdZFB6ZJKzS6N04Nk64hyqwNJnGbpK9YA1TbFqhBFTfC7I
	TjpDc34bWxQ0Zx+aj0qS11TPEDG7mE8Nv0ny8M9ruB3I+I8PHvkgeX52ZcWX7mr08Slue/iIR2M
	jykEZwNIyFoI9g4sO+vYpP5I+iD1tuRrjID3UT94OUaQg4wII52nD9CyzCIdxAxI7
X-Gm-Gg: ASbGnctyF4QnYKuw/4+p/8qWNAkyIArUSLEHZahvOPQi7iK4YghS46MMo05VE7d9X+L
	xjNwcN+uJmos8iFAQJDUcLjNytd0zB6fJGtjC05Yp/BX/IvhPCcYA/w643EPE7SWB+NPpA/hP8X
	WCcbwRTkJYIq232/XFv1t7IRaB9fSYsqRXGAockWja/cj4pq6B0gr5fvVNyBZhizo8yJpemds/k
	KAVzPMmHqGHazrdHpkX3ifrjHTayOYWFKBRXLraEjbGJxTJCB0ispopzm2cl3XXe+EkheRebJwI
	bAjfNJxl+PbNkxvbSJRcdHGzPaubqgRcCw6vUHxRwvi231ZEI3qk87nOuSv58e6MmtzapZtOkZc
	oyXmE/VOLKhogOjBXmP4kYtU80BYilrFf
X-Received: by 2002:a17:902:da4b:b0:27e:f018:d2fb with SMTP id d9443c01a7336-297e540dbf8mr103670225ad.6.1762785705554;
        Mon, 10 Nov 2025 06:41:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEzUGI3gfRP1roHcIKhz5BZsgRD+n11EwhNGgQ9IIMPUd06GGUlB6wwr56gPGTWX6jx/IrBZg==
X-Received: by 2002:a17:902:da4b:b0:27e:f018:d2fb with SMTP id d9443c01a7336-297e540dbf8mr103669785ad.6.1762785705031;
        Mon, 10 Nov 2025 06:41:45 -0800 (PST)
Received: from [10.219.57.23] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34370ec58d9sm7675580a91.6.2025.11.10.06.41.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 06:41:44 -0800 (PST)
Message-ID: <821358a8-64ed-46c9-3fd4-538e194fa5b3@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 20:11:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v17 07/12] firmware: psci: Implement vendor-specific
 resets as reboot-mode
Content-Language: en-US
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Xin Liu
 <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Nirmesh Kumar Singh <nirmesh.singh@oss.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-7-46e085bca4cc@oss.qualcomm.com>
 <ec5c9da3-297f-4a07-bb95-512cc607917e@oss.qualcomm.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <ec5c9da3-297f-4a07-bb95-512cc607917e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=D6JK6/Rj c=1 sm=1 tr=0 ts=6911f9aa cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=yV86LA_xD0RmO51t7RcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEyNyBTYWx0ZWRfXzoMISuNqcmU+
 ymixGkKWHX5UVhK9TzWMw0FXBiPOzQL8i9EhnRpolSG21uNQPEWDi8/V52Hi0elOZsLMYgnm2Ao
 dAvSeB6KAQm8hoFLF3wpMvhuUR7SvvrMgIKgOlS2hg3lhwo1tjjHqEha+TF5cFmayQNk88S68+Q
 XaKqyBq2dYshzdZKqDnSU2s4Pj8rBtSGDJ4hoPtWUAIGS2I11rD3o8Ef1nvKWumVkJUt80wuZlx
 9KtM5n9jBXrMLlQl82M8mYuQ3NH0uJZJ2jo+Lv5vzVnX8+f1drz1kr7ybRwdODARtb/XRrKtrtg
 BucbU3/R7qcBVV4FHMAYAQjkj4oQ2SCSCFTN93gfBPht/vDDQHdE6jdBaI3wx/QwUjIEfg5iz9F
 b8TgXatTFoKOTF+kN4jAKRIG70cU4g==
X-Proofpoint-GUID: hzpOupUQzcfH0SznY8D51QK4_yvKaNHO
X-Proofpoint-ORIG-GUID: hzpOupUQzcfH0SznY8D51QK4_yvKaNHO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_05,2025-11-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100127



On 11/10/2025 10:10 AM, Kathiravan Thirumoorthy wrote:
> 
> On 11/9/2025 8:07 PM, Shivendra Pratap wrote:
>> +static int __init psci_init_vendor_reset(void)
>> +{
>> +    struct reboot_mode_driver *reboot;
>> +    struct device_node *psci_np;
>> +    struct device_node *np;
> 
> 
> We can take advantage of __cleanup() attribute to simply the code paths.
> 
> Declare the variables like below
> 
>     struct device_node *psci_np __free(device_node) = NULL;
>     struct device_node *np __free(device_node) = NULL;
> 
> and get rid of the explicit of_node_put().
> 
> I think, we can take up this an improvement once this series landed. But if you happen to respin to address other issues, please take care of this as well.

Let me evaluate this for next respin.

thanks,
Shivendra


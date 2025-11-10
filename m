Return-Path: <devicetree+bounces-236502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEBCC44EC2
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 05:41:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A7913AF0A2
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 04:41:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD51528C5DE;
	Mon, 10 Nov 2025 04:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hz9rDWis";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YAFATxla"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1952367CE
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 04:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762749662; cv=none; b=mq6uOEcmXJ/mDO4gOYlsQtU+Ax4S8RUf8Ves6KIYAYkgn9KxH/onVFpM3xVnXylxj8nj3UjUs0Dw5ZWYjEl1HFM4S3OQRrq97PZFnltdpaRZYKtOpDhw8xDfbS7qzHCHGoCr6LsfZfsK0R75kmLM5vfcinnn7Ovyz3Y/5aM0KD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762749662; c=relaxed/simple;
	bh=ZkmLFPXPzIwwvJADl8P3/PaLpb05x5dNLwlFnXQffCg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tir+loCj8BRh3N0enAmGf5la9c80NY4jZzVHahgveHRPXCfQp9ydHvqE2syBliJMz7/AivhooFIfAIii15kqaxZZZN3ogzgFZYqi6VCFPeTuHKqr+S+S7Whqbiq7DkMtSdGQXXJaznjfGYYYLIZ8SqHtmaMYf92OZLOZfTi6JBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hz9rDWis; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YAFATxla; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA37Yph2166641
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 04:41:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t9xnx5/NNsxUGtpH3H9vE0Zs14pQaGPl6qrNXKqGzbA=; b=hz9rDWispoNTjzVc
	Y1+y07xhIUp2Wr65swIG3HJAXUDZKuoyIemfhgn8w+Oc/3bh7fHZwz56neB1jPcc
	Q2fRq9AVNSXAV6dclYK8yzY4gMqyXaRTdCPdbZdxAx12cXITW/DfwixYtCR+OAHW
	Ucr5dwRoQtcjEw2+IoGFh70zNGGtGotJNzR+LGf/yD1WXIbEkgd+GzB1B7svVR1O
	Tb2KM5/0SKN1ij6Zl5A1knmxi9uLaZZVfBX29r+LN3vWE1srLt99Ws28Tj8roUMQ
	YmFAebc/AhCUk9V/LY+YhkMISsCQ8MHMhdNd24Zs+mZagEoPMLZPBLfvdOL1/GC5
	zEtIPQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ab7vcr60e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 04:41:00 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29555415c09so32836225ad.0
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 20:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762749659; x=1763354459; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t9xnx5/NNsxUGtpH3H9vE0Zs14pQaGPl6qrNXKqGzbA=;
        b=YAFATxlamC6rjxYCUsj9fykZOH5QRkVcddHb9J7pAvwBK12uSAkB4fi9bv9zlZz/vx
         Dnaz1fJfwbjCHPMW3gUtqTgqKZeCnDQO8pO79m02uQeWQ8w8pdHg3ThTezq5FQZLeiRn
         U5QqWqjAWBYjIE+mGX6o5zBlG3jDTFEVi9Epl5PuNbXJ8An9XsBTBeYg6IPBRm9LDfV8
         6g63BZ6LOvDyFckagOCuuAgm84A7GzCQO1mRjhv4OEau//A8MUajKesnk5c39eNYNb3j
         mbGFY4gH4pfFlYwA/qZwrpCYvZunmuCbCImcg8S9vEiJfqvW203pWZD2hr1lZto7qdZP
         1qBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762749659; x=1763354459;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t9xnx5/NNsxUGtpH3H9vE0Zs14pQaGPl6qrNXKqGzbA=;
        b=tvSSlB2Jek/X1d3BABMvWQbe2N9RLMB/r67u7IVlMFu1uiy3z7g0BEbYDZ4mq6lPwp
         NV+257fXmP49CQ+G4GYxgS887K4rqTDbaW/NrOYd2hJDrlnvR1jC0Y02jLKclxMs3pUy
         R81OqRrNw6lAV8TVDOwdmq/9LDT1MRaSzzwhkKuKccu0ESofTV2/nuMKIOfls3dOoVBV
         IDmbJykxFUVXMCb2EjpZQ7g/DBAXyBvMBObt3/IpCZUE7KxMEqs4lyYvP8tEIMA1Larh
         NXmScVlIeF+0l24tYEvohTCOUzh7mCw1hIsFUkX43ESXa50AaqEmLu3+YUlvMapCbdbC
         R/+A==
X-Forwarded-Encrypted: i=1; AJvYcCXXnjzLmJg2yqGp9a2LMd0a5PsZ5400DQxzg369mAZiYSB+sKVG1dPq6KajE2pB2x7P15uC05lkpac5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw34hpatHaX+PtMeBI0jwPWeq5nIFgfWDHYC+HJ4C44TuzWVGmI
	SAdazT+bwXuB0nd2fv0XDdrYzs3EhtD4606uPQCCCQgoZK9LQcsGjvp0dix2VubRvN2z2W8v/Mf
	rIxxZ67hdjSWtj+LH3easC/VUeO8XmHpEZVKV3Z3ex3j34xmovTaVJ54GbQLN2kKh
X-Gm-Gg: ASbGncvdz4ZlfkGlLNavMe1TzIO+NYJmE7YVhJlS95VPYuXCY5KEfMfydGalFLWzemM
	NRG0DF+OSTct1TBYpIp4CbYPiWpIsW0UF/uPuFD4YJhtvZd6RzghmvWtV/Dtsaumj7ehvpIyKUo
	Cztxb7URGJX7esAuL79IVwkVg0LSJIl79dwwRAZmnFS09X3k3fqnujJNq/9OdPY0uUev5SS449k
	i3N5hJHwU85spbGA4MJcsc0G9VVgHDbJEz1KyHXB3j/+E8PlhAKIoANW6Ie/1aDloUM62miyg7p
	0efGVT+iWgXZ2v7XH0eQsyFsAmT9U2W+hgDWw1fOtiSpXZJevVPyOu2PNewvI0fh5M4AWNBpT2x
	QBtCe2828OXYNI3EjSeSlWN2RHjRWeTbo/gfxH49HsxA=
X-Received: by 2002:a05:6a20:734f:b0:2cc:acef:95ee with SMTP id adf61e73a8af0-353a428d5fcmr8378760637.52.1762749659502;
        Sun, 09 Nov 2025 20:40:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFs3BvO0OD7+LWZO/k7GVlxxdsy8NWXk+Q/cW7eDlhRwsTQl5AgxR/jL34RGXKgTrqDOBmKwg==
X-Received: by 2002:a05:6a20:734f:b0:2cc:acef:95ee with SMTP id adf61e73a8af0-353a428d5fcmr8378717637.52.1762749658917;
        Sun, 09 Nov 2025 20:40:58 -0800 (PST)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c9f00beesm10145070b3a.25.2025.11.09.20.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Nov 2025 20:40:58 -0800 (PST)
Message-ID: <ec5c9da3-297f-4a07-bb95-512cc607917e@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 10:10:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 07/12] firmware: psci: Implement vendor-specific
 resets as reboot-mode
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
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
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20251109-arm-psci-system_reset2-vendor-reboots-v17-7-46e085bca4cc@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDAzNiBTYWx0ZWRfX7z/DFsI7in4d
 /Jo77KpDVcRHzgH10P73+9x6wQVfJIWzvttBSq0kZXcF0QkZL1JjLZ4AyHIerFD71qe73jp2DL2
 S0oUP/VjE89EjbEXx0fTucZoWKtBbxL7+fC2qXUEZjeYwc9RwSXbN1V7aZxdus7BNsVzpZQK9iu
 1zemkkkHZJ6GEzNCoBL31VbLUl3NlueLZTrgaKOR9AXpdi7JXU8G6TLQ7K43dTO1s45KLePteV6
 B1rgYTp+/DpdB3qGKeMYHTkWbMJRQrn6N2WQX1itagS+3049iFarAsmOlBHEsV0E7gZ7id7XEY2
 xA3o+PbBA1f/s4y60UiXpWiP/BjrsPNwZVzrz2w8Yl2IqqD2ykfHegkWm+7e3W+KUVwVuwubV+M
 VLSb1/njuLypZDY/Nq9sVONZl3BizA==
X-Proofpoint-GUID: z4bgg2th7BMQj9PuLOUR-dIMWXMZNYa8
X-Authority-Analysis: v=2.4 cv=E8HAZKdl c=1 sm=1 tr=0 ts=69116cdc cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=eAYKFCynwHV13TWbRR4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: z4bgg2th7BMQj9PuLOUR-dIMWXMZNYa8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0
 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100036


On 11/9/2025 8:07 PM, Shivendra Pratap wrote:
> +static int __init psci_init_vendor_reset(void)
> +{
> +	struct reboot_mode_driver *reboot;
> +	struct device_node *psci_np;
> +	struct device_node *np;


We can take advantage of __cleanup() attribute to simply the code paths.

Declare the variables like below

     struct device_node *psci_np __free(device_node) = NULL;
     struct device_node *np __free(device_node) = NULL;

and get rid of the explicit of_node_put().

I think, we can take up this an improvement once this series landed. But 
if you happen to respin to address other issues, please take care of 
this as well.


> +	int ret;
> +
> +	if (!psci_system_reset2_supported)
> +		return -EINVAL;
> +
> +	psci_np = of_find_compatible_node(NULL, NULL, "arm,psci-1.0");
> +	if (!psci_np)
> +		return -ENODEV;
> +
> +	np = of_find_node_by_name(psci_np, "reboot-mode");
> +	if (!np) {
> +		of_node_put(psci_np);
> +		return -ENODEV;
> +	}
> +
> +	ret = atomic_notifier_chain_register(&panic_notifier_list, &psci_panic_block);
> +	if (ret)
> +		goto err_notifier;
> +
> +	reboot = kzalloc(sizeof(*reboot), GFP_KERNEL);
> +	if (!reboot) {
> +		ret = -ENOMEM;
> +		goto err_kzalloc;
> +	}
> +
> +	reboot->write = psci_set_vendor_sys_reset2;
> +	reboot->driver_name = "psci";
> +
> +	ret = reboot_mode_register(reboot, of_fwnode_handle(np));
> +	if (ret)
> +		goto err_register;
> +
> +	of_node_put(psci_np);
> +	of_node_put(np);
> +	return 0;
> +
> +err_register:
> +	kfree(reboot);
> +err_kzalloc:
> +	atomic_notifier_chain_unregister(&panic_notifier_list, &psci_panic_block);
> +err_notifier:
> +	of_node_put(psci_np);
> +	of_node_put(np);
> +	return ret;
> +}
> +late_initcall(psci_init_vendor_reset)


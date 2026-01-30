Return-Path: <devicetree+bounces-261135-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFJpHyF9fGkONgIAu9opvQ
	(envelope-from <devicetree+bounces-261135-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:42:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6A4B9011
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D531E3008787
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7585430BF55;
	Fri, 30 Jan 2026 09:39:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1D93254BC
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769765942; cv=none; b=KQg/QHcp9F6qlYfFTsA1EZ4B13f8FXw+2w0lnw+TAIIWoEmHljWuuQN3KP89epXhvwZIhtd4cb8ExxM2q1b2DU1vWmTdAjyU1QfXsNCOzVjFsK6rR0o3HgD5dii8e6p4878nMHZooHnN0DdFIMhKrDo0PDlxNiKUXDdbEB4Rnok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769765942; c=relaxed/simple;
	bh=6CQCeSmx1NPfMoOs+T273vl+VJ4+Z2z7Z482ryoAy7U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L9WY/i1iu2TZPdHchPAGO+eg8725vVsaXUGFrRnR8JJ+otYZ8NShJdu6M15XBq8XwXLsXVLsv8LtOxPYdxYw7fhbsoDJBdVs1wFGZGilHujvhBqjXST/mjRADZdRGddRpJsUXgQ1FzwNZSr14DIHeTrIXDOi3nQhd10Gou9MBMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip2t1769765875t80ca54e3
X-QQ-Originating-IP: l0u9r9mYza1ctZoUFdu/XHUiiwczQrS912ncDLmX2JY=
Received: from [127.0.0.1] ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 30 Jan 2026 17:37:53 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9275328956173114574
Message-ID: <11D9329300A4B492+9485ef48-5ac3-4030-afd3-e5c7dabfa1d8@radxa.com>
Date: Fri, 30 Jan 2026 17:37:51 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Add remoteproc in EL2 device
 trees
To: Xin Liu <xin.liu@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
 jie.gan@oss.qualcomm.com, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260130073113.3091884-1-xin.liu@oss.qualcomm.com>
Content-Language: en-US
From: Xilin Wu <sophon@radxa.com>
In-Reply-To: <20260130073113.3091884-1-xin.liu@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz3b-0
X-QQ-XMAILINFO: NThjqhhlLoNlStShM4sK9zv7QX/K6lM+7grkeBoAehyx112v+xHIL5LP
	JFxAa8G3JAs9Nn6ubb7G9ayZTJ6ol4hD+WBP4ES6GrPRaYWdJFfWoySNMlACnoHkEaSUypa
	VsVhNcclPgbA16AnfAaNMAfeZB+exRsyDHMERP5CceFtHF8TvEfgqVk8hyNC2h5A+jWwi9M
	Ki5ePmaVyQboumBolzPOadrAoALVn8aRyBsfR9qCJWCkMlWsuvETp9u0YzAsm6ERqA4uahz
	RJtb3wqHjgLElF9axIejKXb5jB3/fjIF1qVqxElUbsuVTFx9R7yGIPYZRxHw4h6eQ/YhbGq
	6ajtXW4DoV/pu72LkzL5nLFgB37EFOLbd2LV/vCd7hCVBARCHvXvcvWQrj1/6lYfQNyJSau
	pSrZTrCzKXzxMHkYUaqWeg4B9QvrZ0h4XfKaMqF3f5KI0CYCmpHrAGsevEDdKBCz0KzY07N
	6fAQtvpS8kICXS2VaXTofS8l1P5NSETV0SkBrDkx5Im7dW3gYRsXh6RitA+Dj4tqyS0HDr5
	L3hYijQbhp+PL8OD9riVJSUFBXbPi26xocjtf0sQKGdFOF2e3XGQJs49PHOUt5jxuCh/fOt
	ji0tr7iGMBx2WI+JkcSa3YgFlsc3RnvbAhFgpmrJ0ze5od9RsUKLIyZ6AyYfT/K7kbMjGBf
	TaqfFJLoL3B4WgINfwW7TelRxG/aydwlh7AkDbP5910zvVCJ878J0DhzotUJxPhCXjpK6Q8
	onsAJzbv3EnHbo41bZmJeAb92B6JulyZjtzo4bJPhUJjO56VigM7BoWHJLLDUCIcFaZWXKE
	nLcdsRuKBDlX7q+vXHyHfOZ+9uks7rRjW+yIWX2kLBdR0RDdXx2K2ezsAe6zmflyK9Abis3
	l/c2edHwREdCBA4DKOZKqr1Q/SFgESR5+4Dg4Dy0SrV0Xtt5v8zACfc1u7ci3Bj0VOTtSoH
	+fqPRyByYFpxbUuIRoeIr5/ORimjFKqrytuaw7BXbZfuQlG04QqeUezG5hPNJZl2YUc9hMj
	dmnPV/nyVBARKb8qvWC2PHUkdcbLRvOWr4r8zP2loR3Z7eF7Ej
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
X-QQ-RECHKSPAM: 0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[radxa.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261135-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_MUA_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sophon@radxa.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:url,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DA6A4B9011
X-Rspamd-Action: no action

On 1/30/2026 3:31 PM, Xin Liu wrote:
> All the existing variants Talos boards are using Gunyah hypervisor
> which means that, so far, Linux-based OS could only boot in EL1 on
> those devices.  However, it is possible for us to boot Linux at EL2
> on these devices [1].
> 
> When running under Gunyah, the remote processor firmware IOMMU streams
> are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
> by the consumer of this DeviceTree. Therefore, describe the firmware
> streams for each remote processor.
> 
> Add remoteproc to the EL2 device trees to generate the corresponding
> -el2.dtb files.
> 
> [1]
> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi
> 
> Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/x1-el2.dtso | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 

Hi Xin,

Will this work on Snapdragon X laptops running the older Windows 
firmware? I believe that Peripheral Image Loader support in EL2 requires 
a newer version of the TrustZone firmware.

I noticed that the TrustZone firmware used in hamoa_iot-ubuntu [1] has a 
different version string compared to the WP firmware found in laptops:

iot-ubuntu: TZ.XF.5.0
WP: TZ.XF.5.28.1


[1] 
https://softwarecenter.qualcomm.com/nexus/generic/software/chip/ubuntu_qualcomm_iot-spf-1-0/ubuntu-qualcomm-iot-spf-1-0_test_device_public/r1.0.r1_00004.0/hamoa_iot-ubun-1-0-r1/common/build/bin

-- 
Best regards,
Xilin Wu <sophon@radxa.com>


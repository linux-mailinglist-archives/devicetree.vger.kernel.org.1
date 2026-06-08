Return-Path: <devicetree+bounces-307955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Us5gD2YvJmrJTAIAu9opvQ
	(envelope-from <devicetree+bounces-307955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:56:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AF56525A4
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:56:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=rock-chips.com header.s=default header.b=fd9Fgd70;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307955-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307955-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=rock-chips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0CBFC30068C6
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 02:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A4263396F4;
	Mon,  8 Jun 2026 02:56:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32112.qiye.163.com (mail-m32112.qiye.163.com [220.197.32.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175D01624DF;
	Mon,  8 Jun 2026 02:56:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780887394; cv=none; b=sdxfdOnADXTJEfedrwTReYjpdJTPhyqDSCxjZQVOjea75BTp0GdaOPngzfXpsLER3tiXGnjS49fdlwY81X7NpIRN7FioRwM129HBNerFTXQIqYLwFUPxWJggTDBEm54DEZD1Ce3e/qg4siIJo/sh4dyMF1CgXttItTCOCBgQd4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780887394; c=relaxed/simple;
	bh=lWrFFzVFH+uZI4fq9CcaXDY6AJ+jlr3YcKA5DCz9wfI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dVEzsGRxoVvnyQrzvMQOAbTg+59DqBebD+MmSCDKusDEePVGX8B1P3rI/eU2W9lzaLeQr7W6wBXES8fvFZEwjltnVUB9BN2wLJpmW6aCq11fqmcKUUsyZZE/dIN8cqBRD8XMcFhT3wu9fcs7b6uw+JxNVn0+brg3Ygios/NMTt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=fd9Fgd70; arc=none smtp.client-ip=220.197.32.112
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 416b76aca;
	Mon, 8 Jun 2026 09:40:38 +0800 (GMT+08:00)
Message-ID: <e5058919-9485-4de5-8eea-331ebfc2987c@rock-chips.com>
Date: Mon, 8 Jun 2026 09:40:36 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 0/9] accel: rocket: Add RK3568 NPU support
To: Midgy Balon <midgy971@gmail.com>
Cc: tomeu@tomeuvizoso.net, ogabbay@kernel.org, heiko@sntech.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org,
 will@kernel.org, robin.murphy@arm.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 linux-kernel@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
 <3d99569e-9c3a-49d1-93fb-1335382523e9@rock-chips.com>
 <CA+GS1Y1s78PwN63X2YJoS8VEGp7CpTERo_K65yKs00U4VRAw4Q@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CA+GS1Y1s78PwN63X2YJoS8VEGp7CpTERo_K65yKs00U4VRAw4Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9ea4e3928003a7kunm2dc5485516737a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZHRhMVk8eQxpNQxkaSkIYTlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=fd9Fgd70jQYunloQSZc2Sw1ViLh44FaOLEhh8/tp6FuCuEqh+zQpvglmCBICWSNY4eMQ2EG3F6nYIRDMlWBfyr07TaYpQAnqsDsnK7+my9QhXHjn1qw65oOnV0stueIXxBjcZ5b29o9ukMPv35PD2ONVCXGOSRJMTHrJjXosvds=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=UrntyxENooj6wbeRVkJOCbYDj96squyuxfsHscwtUdc=;
	h=date:mime-version:subject:message-id:from;
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:finley.xiao@rock-chips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307955-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaoyi.chen@rock-chips.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,rock-chips.com:mid,rock-chips.com:from_mime,rock-chips.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 07AF56525A4

Hi Midgy,

On 6/8/2026 5:03 AM, Midgy Balon wrote:
> Hi Chaoyi,
> 
> Thanks a lot for looking at this -- input from Rockchip is exactly what this
> series needs.
> 
>> Hmmm. If I understand correctly, the NPU IOMMU should be v2 rather than v1,
>> implying it should support 40-bit PAs. Nevertheless, please note that the
>> upper limit for DTE is 32 bits.
> 
> Understood, and that 32-bit-DTE note is the crux of the trouble I had, so let
> me lay out what I see and ask how you'd prefer to solve it.
> 
> The mainline node is already v2 (rockchip,rk3568-iommu in rk356x-base.dtsi).
> The problem on this 8 GiB board: with the v2 ops the page-table allocations
> (gfp_flags == 0) can land above 4 GiB, so the DTE ends up > 32 bits and the
> NPU's first translation faults with DMA_READ_ERROR. To work around that I had
> switched the NPU MMU to the v1 compatible (rockchip,iommu), whose ops set
> GFP_DMA32 and keep the DTE sub-4 GiB. That works in isolation, but because the
> driver keeps a single global rk_ops, a v1 NPU MMU then trips
> WARN_ON(rk_ops != ops) against the SoC's v2 instances (VOP/VDEC), which is why
> I based the series on Simon's per-device-ops work.
> 
> So my question: with per-device ops in place, what's the intended way to keep
> the NPU MMU on v2 *and* cap its DTE at 32 bits on boards with >4 GiB of RAM?
> A v2 ops variant carrying GFP_DMA32 for this device, or is there a register/
> config bit that constrains the DTE address? I'd rather follow the Rockchip
> intent here than carry the v1 workaround. (Simon, cc'd -- this is right next to
> your per-device-ops series.)
>

If Simon's method works, please use it :)

>> Can these operations not be completed via the pmdomain driver?
>> If some operations are controlled by TF-A, are you using open source TF-A?
> 
> Most of it is in pmdomain already. Power-on and NoC de-idle are done by the
> RK3568 NPU power domain (genpd) at power-on -- the driver no longer pokes the
> PMU directly. Two things remain outside it:
> 
>  - vdd_npu: I mark it regulator-always-on in DT rather than wiring it as the
>    domain's domain-supply, because as a domain-supply it created a device-link
>    to the I2C PMIC (rk809) and genpd's power-off QoS-save path then hung
>    reading the NPU QoS registers behind the (gated) NoC. If there's a clean way
>    to let genpd own vdd_npu without that I2C ordering deadlock I'd much prefer
>    that -- pointers welcome.
>

Please refer to the patch below regarding the RK3588 NPU pmdomain.
In short, you need to set a "need_regulator" for the RK3568 NPU pmdomain.

https://lore.kernel.org/all/20251216055247.13150-1-rmxpzlb@gmail.com/

>  - the NPU compute clock (PVTPLL): set from the driver via SCMI, and only
>    needed for actual compute, not for bring-up.
> 
> One more pmdomain observation from testing, possibly relevant to how the NPU
> domain should be modelled: the domain's power-off/on cycle doesn't reliably
> re-de-idle the NoC. If the NPU is probed after genpd has already powered the
> (unused) domain off, the power-on de-idle fails ("failed to set idle on domain
> 'npu'") and the NPU IOMMU then takes an external abort on its first MMIO access.
> Probing the NPU before the unused-domain power-off, or marking the domain
> always-on, both avoid it. Is the NoC de-idle expected to work on a genpd
> re-power here, or should this domain effectively stay on?
>

Not quite sure what's going on with PVTPLL and NOC.
Maybe @Finley knows about this?

> On TF-A: yes -- bl31 is built from upstream arm-trusted-firmware
> (github.com/ARM-software/arm-trusted-firmware, RK3568 platform), providing PSCI
> and the SCMI clock service. The only closed blob in the boot chain is Rockchip's
> DDR init (rkbin), which is the standard situation for mainline RK356x.

-- 
Best, 
Chaoyi


Return-Path: <devicetree+bounces-277764-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLh+FHvuu2liqQIAu9opvQ
	(envelope-from <devicetree+bounces-277764-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:39:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5653D2CB40C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7447A3007A64
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 504C53A5458;
	Thu, 19 Mar 2026 12:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eY1hSnri"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AB9346E7D;
	Thu, 19 Mar 2026 12:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773923955; cv=none; b=E1CmeTpmoIrAEwQzAI7QV5wwOFzgdLawLEWGbjIHjYUjFQtLaki4KVfFjTRhOG9ek4Ccp3e9C2CqNmw9hD4fGw+GmLDoSgVK4h+lLfgl1xsE0OZXTQOPrHG6wOGmt43cUrYMP8Xp4JG5dxaRczj6rcQOkkaQg83IsNAMOy64GyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773923955; c=relaxed/simple;
	bh=b2hXWke5hff36ALTmkbm2tn3mf/2ht/PrV95s8fwmFg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lzgNJFLkqwdVBGpzVBZXUxCb2gITfBR05mi54mCbQkE5U6w3f+Q9biKRPSLS/CBh+7a8EewFwaWASFyffsUoMmcOm5egc0cZS3+0R3kaPYTxxt7zrbth7a+/SX8167FgSyKXVhP+Wgc9UqkoQRujG1RGSNIMVpqGxCwtqTBRZos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eY1hSnri; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CA08C19424;
	Thu, 19 Mar 2026 12:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773923955;
	bh=b2hXWke5hff36ALTmkbm2tn3mf/2ht/PrV95s8fwmFg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eY1hSnriLeJDdlJCHc+2J3erwQYuT4CHImKIetRmHwP2f69N7R8Hp13tht/AatRqp
	 df30Jf/SmLUINMmstl8HGToAeMNZpaRwj54bRPedeT4gDPL8cbcTZWlD+0QMkDkBgT
	 n2Jq2+oLrtSp7D0l2Fb+LRMu+IH/e1PPMpxgWac3cOBjfCi9bB3TXYNsQDhDfIF6KW
	 TCfU/zFq4PKqiqywLszg2KW/LpU4SMBBJ+Ca5/QevVYMinpyu0ftGxn8X6+Q7AWeON
	 06XoHV5VrEnjnNf5sESSV4JlSOsEMfr4GLmiK71XNZ9H7BPoI6Pazb7SV1gaQC89XG
	 wi49i0Z0JHHhQ==
Message-ID: <12a5b597-a479-40cc-a39e-b82ed3624b5c@kernel.org>
Date: Thu, 19 Mar 2026 13:39:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ARM: dts: broadcom: bcm2835-rpi: Move the firmware
 node down 1 level
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 "Rob Herring (Arm)" <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260114015810.701076-2-robh@kernel.org>
 <CGME20260114182227eucas1p16eee8f1fbf41f998214b89517793bb0c@eucas1p1.samsung.com>
 <a9a202c1-048f-473e-b8f4-6f0550bdba2c@broadcom.com>
 <86bce6c0-dbaf-4508-9f40-ff209c85a76d@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <86bce6c0-dbaf-4508-9f40-ff209c85a76d@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277764-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email]
X-Rspamd-Queue-Id: 5653D2CB40C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 19/03/2026 12:19, Marek Szyprowski wrote:
> On 14.01.2026 19:22, Florian Fainelli wrote:
>> On 1/13/2026 5:58 PM, Rob Herring (Arm) wrote:
>>> Commit 32eea985999b ("ARM: dts: broadcom: bcm2835-rpi: Move non
>>> simple-bus nodes to root level") moved the firmware nodes into the
>>> standard /firmware. However, /firmware is intended to be just a
>>> container for firmware nodes as it is possible to have multiple types of
>>> firmware (e.g. SCMI, OP-TEE, etc.). Move the RPi firmware down a level.
>>>
>>> Fixes: 32eea985999b ("ARM: dts: broadcom: bcm2835-rpi: Move non 
>>> simple-bus nodes to root level")
>>> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
>>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>>> ---
>>> This is only half the fix. Unfortunately, a kernel change[1] is also
>>> needed to make this all work. I do plan for that to go to stable. I'll
>>> leave it up to the Broadcom maintainers whether it's preferred to revert
>>> the fixed patches or apply these fixes. A 3rd option is revert for now
>>> and apply these DT changes some time later to give some time for stable
>>> updates.
>>
>> Let's wait until your fix for the /firmware match table gets applied 
>> and then I will pick up your two changes.
> 
> 
> Florian: I've noticed that the $subject patch has been applied to 
> yesterday's linux-next as commit 0603d8af97ff, but the code applied in 
> Your tree differs from what has been posted in this thread. See:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi?h=next-20260318&id=0603d8af97fff097daa118faf04d9f439b2227ec
> 
> https://lore.kernel.org/all/20260114015810.701076-2-robh@kernel.org/
> 


And regardless firmware as non-MMIO cannot be placed in soc node.
Nothing in patch SoB changelog explains why the patch was modified when
applying (and it is substantial change).

Best regards,
Krzysztof


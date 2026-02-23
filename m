Return-Path: <devicetree+bounces-267601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDi7J5yenGmyJgQAu9opvQ
	(envelope-from <devicetree+bounces-267601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:38:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0790417B9AA
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 19:38:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 643F3315FD49
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC50A366DC3;
	Mon, 23 Feb 2026 18:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqVg9V9B"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A965E33ADAC;
	Mon, 23 Feb 2026 18:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771871628; cv=none; b=On1pz3N5uipsqgN/yjxm2Bu4J/VeFsSA2llalEwrtn+CTmP+yryt/42N3CvJA1Dw3RG2ZX7S+qs22xb+p3Jj5o5+r4pMENzMPqNCNiOnNCS8rIshA/nD3vS1E2yU6yOpcTbUM32y88I3NpCKoZjL2N+v+Be3nguRYEkEeFwO4BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771871628; c=relaxed/simple;
	bh=RhX2UFdyCVFy2VGUE9/HE8xrLzqG6iKIIO/9hX+S7oc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ijm9r8oQtk4GxSCdzVxoEaURA1kfNDhQVUI8EnHlXFKbdk/TXM7rZv7mCrEeY2nULdk/3vhj4Eba9m8XoIBxQ2gUHa5MgYs9fOOymh0Gx4CJI3bdRbsh4r0J+NtGoJuEfFTRhxk8Z3o8czwhnLRVHYeLjilD48WZ4pbpWZk3g1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqVg9V9B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5DEFC116C6;
	Mon, 23 Feb 2026 18:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771871627;
	bh=RhX2UFdyCVFy2VGUE9/HE8xrLzqG6iKIIO/9hX+S7oc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=YqVg9V9BS4qZnoHA+JEzEc/HkpApWS7qKEeSNksgf+IqqAFIPH1vbiFjz+pZQd1c4
	 FlZvDz04S1/loQMih3lwkK+vVF6mpbVYjeJOG8Gtg+pMdHARyvRHJIpvq8H+j3nptr
	 2b1cDr2lnNgRx/d/e/OuB22oM9VY7rmSXXqM3Lt73wyWj7MrfBHgCG7nLtO7qSCmpn
	 bUy/WhJf0pLGkTNQbnYxgc01zzc+K1EhnEVwiPruB3oNphKToot6yvp5+ewK0J2BG8
	 0NXTePYMQqIsyA1GBfKr7/CX6704QDCuO6EL8Sygx4QecX5bMikusNlQU43A9Acv/V
	 tnugzR4HqXaTA==
Message-ID: <27aec2f7-f4c1-495c-8a7c-5c0a0d09b848@kernel.org>
Date: Mon, 23 Feb 2026 12:33:43 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] Add eMMC support for Stratix 10 SoCDK
To: "Ng, Tze Yee" <tze.yee.ng@altera.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <cover.1769407657.git.tzeyee.ng@altera.com>
 <907db5dd-414d-4333-8667-bfe9e69db576@altera.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <907db5dd-414d-4333-8667-bfe9e69db576@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267601-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:email]
X-Rspamd-Queue-Id: 0790417B9AA
X-Rspamd-Action: no action



On 2/23/26 00:45, Ng, Tze Yee wrote:
> On 26/1/2026 2:19 pm, Ng, Tze Yee wrote:
>> From: Ng Tze Yee <tzeyee.ng@altera.com>
>>
>> The first patch adds the device tree binding documentation for the new
>> board compatible string. The second patch introduces a new base device
>> tree include file (socfpga_stratix10_socdk.dtsi) containing common board
>> configurations, and the eMMC-specific device tree file
>> (socfpga_stratix10_socdk_emmc.dts) that includes the base dtsi along
>> with eMMC controller configuration.
>>
>> This follows a hierarchical structure:
>> - socfpga_stratix10.dtsi: SoC-level definitions
>> - socfpga_stratix10_socdk.dtsi: Board-level common configurations
>> - socfpga_stratix10_socdk_emmc.dts: eMMC daughter board specifics
>>
>> Changes in v5:
>> - Move Acked-by's above the Signed-off-by: and remove the empty
>> line between them.
>> - No code change
>>
>> Changes in v4:
>> - Included Acked-by from Rob Herring and Krzysztof Kozlowski in the second
>>     patch commit message
>> - No code change
>>
>> Changes in v3:
>> - Refactor socfpga_stratix10_socdk.dts to use the new common dtsi file,
>>     eliminating code duplication
>> - Move gmac2 and i2c2 nodes from socfpga_stratix10_socdk.dtsi to
>>     socfpga_stratix10_socdk_emmc.dts as they are specific to the eMMC
>>     daughter board variant
>> - Fix PHY address in socfpga_stratix10_socdk.dts from @0 to @4
>>
>> Changes in v2:
>> - Introduced socfpga_stratix10_socdk.dtsi for common board settings
>> - Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
>> - Added fallback compatible string "altr,socfpga-stratix10-socdk" in
>>     the binding documentation for broader compatibility
>>
>> Ng Tze Yee (2):
>>     dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC
>>       variant
>>     arm64: dts: socfpga: stratix10: Add emmc support
>>
>>    .../devicetree/bindings/arm/altera.yaml       |  6 ++
>>    arch/arm64/boot/dts/altera/Makefile           |  1 +
>>    .../dts/altera/socfpga_stratix10_socdk.dts    | 67 +--------------
>>    .../dts/altera/socfpga_stratix10_socdk.dtsi   | 71 ++++++++++++++++
>>    .../altera/socfpga_stratix10_socdk_emmc.dts   | 81 +++++++++++++++++++
>>    5 files changed, 161 insertions(+), 65 deletions(-)
>>    create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
>>    create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
>>
> 
> Hi maintainers,
> 
> I would like to gently ping on this patch series that was submitted. The
> series has received Acked-by from Rob Herring and Krzysztof Kozlowski
> for the dt-bindings patch in v4, and all requested changes have been
> addressed in v5.
> 
> Patch series link:
> https://lore.kernel.org/all/cover.1769407657.git.tzeyee.ng@altera.com/
> 
> Could you please let me know if there are any concerns or additional
> changes needed for this series to be merged?
> 
> Thanks for your time and consideration.
> 

This series look good to me, but can you rebase it to v7.0-rc1? I'm 
getting a conflict.

Thanks,
Dinh


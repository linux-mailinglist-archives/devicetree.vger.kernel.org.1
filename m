Return-Path: <devicetree+bounces-268114-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNu0C5FznmmfVQQAu9opvQ
	(envelope-from <devicetree+bounces-268114-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 04:59:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9547C1916C6
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 04:59:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F1C42301DD5D
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 03:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E67D4247DE1;
	Wed, 25 Feb 2026 03:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzJ78p3/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36E61BD9C9;
	Wed, 25 Feb 2026 03:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771991948; cv=none; b=COO7sSRqI7n7817Jj0DbG3ZsNySGoB4Z7XGAL84Z5vFHt0Cnmb3xGKu3AnoOVgjFKYLrPKgSYWxQvSXfCiPLZIZU4pjaHp24Ag6XREza5QhMZS7fYkKptGw/jV5kGEVc8mRpLDAmPz3DrfbStRT6nrFzHlXhvRTl8lx9V6eL3h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771991948; c=relaxed/simple;
	bh=RR1CSf/xmMaYYzYR4Iu31gTxwastWPIYI2WXCct8EYc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=cfBafRZ+uCC7RlIJD0LMTdTVuOybDhUr/6pAQqiTDz3eO6KWNt9iRMS2y2MSv25OOtt4pHJrOkfSkfzyQjrMb2IuQ7Y8WTD70DvbZ29+I+R/ocbqo4ryzRrm38tuk2BN5TOI1Lpngqg7cr/IBiOiKoQcRXEN5RPiTmEHxg+7WAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzJ78p3/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E67A7C116D0;
	Wed, 25 Feb 2026 03:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771991948;
	bh=RR1CSf/xmMaYYzYR4Iu31gTxwastWPIYI2WXCct8EYc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=KzJ78p3/EZIPllSK+IRYewC4eAlSRFmKJFWmYIvlxVHeSLESoE9xDSKI5Ygmfhw4v
	 Y4xFIivA2gqM8/eLezRaetX4e5tH2Bguv4BSRo+Z6/06dRfNQSKo25hHdzFoGg+frC
	 EIQDzo3Y5Ko79fK/ivI2Zj2UkpAaU1nxyClhrNDbGu7IDRO7AC5akZoPwaojFrxenH
	 Ak39VKQk6w/VNqKdY4ebLzhLpM4XjOjVBe0TG80lFdoIdUpWFkzUWPPjTsvyMoT4aH
	 ozTOiSbY3cU2cH/VqKFNOoEDxTTrmiIwCdbUKpQs9b0cfI2X2dGXfsjJuOT3zJylNh
	 Etzii3GA1bpug==
Message-ID: <e1f7a861-e2e9-46f7-8829-505be0176052@kernel.org>
Date: Tue, 24 Feb 2026 21:59:06 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/2] Add eMMC support for Stratix 10 SoCDK
Content-Language: en-US
To: tzeyee.ng@altera.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1771911773.git.tzeyee.ng@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <cover.1771911773.git.tzeyee.ng@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268114-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,altera.com:email]
X-Rspamd-Queue-Id: 9547C1916C6
X-Rspamd-Action: no action



On 2/24/26 00:01, tzeyee.ng@altera.com wrote:
> From: Ng Tze Yee <tzeyee.ng@altera.com>
> 
> The first patch adds the device tree binding documentation for the new
> board compatible string. The second patch introduces a new base device
> tree include file (socfpga_stratix10_socdk.dtsi) containing common board
> configurations, and the eMMC-specific device tree file
> (socfpga_stratix10_socdk_emmc.dts) that includes the base dtsi along
> with eMMC controller configuration.
> 
> This follows a hierarchical structure:
> - socfpga_stratix10.dtsi: SoC-level definitions
> - socfpga_stratix10_socdk.dtsi: Board-level common configurations
> - socfpga_stratix10_socdk_emmc.dts: eMMC daughter board specifics
> 
> Changes in v6:
> - Rebased to v7.0-rc1
> - No code change
> 
> Changes in v5:
> - Move Acked-by's above the Signed-off-by: and remove the empty
> line between them.
> - No code change
> 
> Changes in v4:
> - Included Acked-by from Rob Herring and Krzysztof Kozlowski in the second
>    patch commit message
> - No code change
> 
> Changes in v3:
> - Refactor socfpga_stratix10_socdk.dts to use the new common dtsi file,
>    eliminating code duplication
> - Move gmac2 and i2c2 nodes from socfpga_stratix10_socdk.dtsi to
>    socfpga_stratix10_socdk_emmc.dts as they are specific to the eMMC
>    daughter board variant
> - Fix PHY address in socfpga_stratix10_socdk.dts from @0 to @4
> 
> Changes in v2:
> - Introduced socfpga_stratix10_socdk.dtsi for common board settings
> - Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
> - Added fallback compatible string "altr,socfpga-stratix10-socdk" in
>    the binding documentation for broader compatibility
> 
> Ng Tze Yee (2):
>    dt-bindings: altera: Add fallback compatible for Stratix 10 SoCDK eMMC
>      variant
>    arm64: dts: socfpga: stratix10: Add emmc support
> 
>   .../devicetree/bindings/arm/altera.yaml       |  6 ++
>   arch/arm64/boot/dts/altera/Makefile           |  1 +
>   .../dts/altera/socfpga_stratix10_socdk.dts    | 67 +--------------
>   .../dts/altera/socfpga_stratix10_socdk.dtsi   | 71 ++++++++++++++++
>   .../altera/socfpga_stratix10_socdk_emmc.dts   | 81 +++++++++++++++++++
>   5 files changed, 161 insertions(+), 65 deletions(-)
>   create mode 100755 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
>   create mode 100755 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
> 

Applied!

Thanks,
Dinh



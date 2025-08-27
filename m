Return-Path: <devicetree+bounces-209638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE08B382BC
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 14:44:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F288F1B650C6
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 12:44:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1968634A32D;
	Wed, 27 Aug 2025 12:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="hLDL+MAe"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com [91.218.175.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D5C34DCC4
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 12:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756298640; cv=none; b=ATzKIPozVDOx98rcpC7r5707IqFtqQPKkuSw/XggPuVknbpU7v6H3zT/baBY9K6w/9xUTzeY1ZyrU0+V5IuNFVJKymeL3y0v0a06f4k7HxIyYwpOwXlkeitDTO+4jArrldFjD4XCb+Z4pXV5joAgF+lEngmLFkAvGyujc+LPnOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756298640; c=relaxed/simple;
	bh=pfXL9LNkVlMzLJ8k3+XfUf3hhNWeq5ZzTbCIkPXyFVk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WUv4HGkPdeNweWNtggGP1drxKYilw44/Z8rAfqYuUN0bOtiVRF4X+RQWXOMlLMz+s0/6rflrf910T4qP3QZxCO1vA7V8oUyN+GyTBLV6A34lyw7Be0FlXfZs/vEqLEFXtkOtWKJb6yuHirah/QGb/4pBrgSilJgwrmE6QvxBryo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=hLDL+MAe; arc=none smtp.client-ip=91.218.175.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <228e871e-a5c7-4570-b672-a97ac3db90c5@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1756298625;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5XXPK9rgm6hm8EGqcOxFtZdeNx/wbCo+a/fjPKpMhLw=;
	b=hLDL+MAeFdO6S6GwZPo1qT89iojAr28gdNsifMukqxo6jLtLXLp09wsQpXUT20NMePmJzl
	+hexT091mG1JyUQ1gBSNCqhuFLf6zoRLv5jpZnmAONL2ZIZL/ysE7sS7x1tgJDZG900Nyw
	/xW7WAPkq+XrMuaOv5g9JWlqYu3+DaU=
Date: Wed, 27 Aug 2025 13:43:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v4 2/2] ethernet: eswin: Add eic7700 ethernet driver
To: weishangjuan@eswincomputing.com, devicetree@vger.kernel.org,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
 yong.liang.choong@linux.intel.com, vladimir.oltean@nxp.com,
 rmk+kernel@armlinux.org.uk, faizal.abdul.rahim@linux.intel.com,
 prabhakar.mahadev-lad.rj@bp.renesas.com, inochiama@gmail.com,
 jan.petrous@oss.nxp.com, jszhang@kernel.org, p.zabel@pengutronix.de,
 boon.khai.ng@altera.com, 0x1207@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com,
 lizhi2@eswincomputing.com
References: <20250827081135.2243-1-weishangjuan@eswincomputing.com>
 <20250827081418.2347-1-weishangjuan@eswincomputing.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250827081418.2347-1-weishangjuan@eswincomputing.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 27/08/2025 09:14, weishangjuan@eswincomputing.com wrote:
> From: Shangjuan Wei <weishangjuan@eswincomputing.com>
> 
> Add Ethernet controller support for Eswin's eic7700 SoC. The driver
> provides management and control of Ethernet signals for the eiC7700
> series chips.
> 
> Signed-off-by: Zhi Li <lizhi2@eswincomputing.com>
> Signed-off-by: Shangjuan Wei <weishangjuan@eswincomputing.com>
> ---

[...]

> +/**
> + * eic7700_apply_delay - Update TX or RX delay bits in delay parameter value.
> + * @delay_ps: Delay in picoseconds (capped at 12.7ns).
> + * @reg:      Pointer to register value to modify.
> + * @is_rx:    True for RX delay (bits 30:24), false for TX delay (bits 14:8).
> + *
> + * Converts delay to 0.1ns units, caps at 0x7F, and sets appropriate bits.
> + * Only RX or TX bits are updated; other bits remain unchanged.
> + */
> +static inline void eic7700_apply_delay(u32 delay_ps, u32 *reg, bool is_rx)

inlining functions in .c files is discouraged in netdev, let the
compiler decide inlining

> +{
> +	if (!reg)
> +		return;

please, avoid defensive programming. with this check you also mixing
code and variables..

> +
> +	u32 val = min(delay_ps / 100, EIC7700_MAX_DELAY_UNIT);
 > +> +	if (is_rx) {
> +		*reg &= ~EIC7700_ETH_RX_ADJ_DELAY;
> +		*reg |= (val << 24) & EIC7700_ETH_RX_ADJ_DELAY;
> +	} else {
> +		*reg &= ~EIC7700_ETH_TX_ADJ_DELAY;
> +		*reg |= (val << 8) & EIC7700_ETH_TX_ADJ_DELAY;

these 2 assignments should be converted to FIELD_PREP()

> +	}
> +}
> +


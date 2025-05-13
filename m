Return-Path: <devicetree+bounces-176914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EB20BAB5D14
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 21:23:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 313263A18D9
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 19:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14542BE11F;
	Tue, 13 May 2025 19:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="VtZdYZuF"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74561EB5CB
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 19:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747164228; cv=none; b=W5VT7VcwUkGU65fHOj+Ymx5+lFuD0oJ/oJXdSHQkXFNFXqVvZIJf6x5JSE6dfLc6YOH7zwj7QTdOV83gz5LLWWVGtSQG6fsLu81nfk8N9sAMcNcU1hTP8GJ0DKBstYqL2x9kHvUnZNewVSbN+MkgML67u1u7nr7tWvhVBWItWbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747164228; c=relaxed/simple;
	bh=3iRniRj8xSsyd561ljqVCrZvXjuqMumo5zOGYqjLgmI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lSae2iTM/adsfclZgNGUgqd1uzIeweDXca81ryuK1udGMoCdZcp6rCs739tc9LzuqGPwjsSzozUtHPkYv5KI0rnqpqcECSU4EWT8Q6eN7KTOI9aSEQsNQ9ZHAhWVemtR0ore8LoCLkK4ivb5jLkNiSWbjHYYd/2xo22su+m8JcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=VtZdYZuF; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <7b50d202-e7f6-41cb-b868-6e6b33d4a2b9@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1747164223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MXqgYnE3AepAu7OCHe6xShNfWSkRf6wZdbffLDc2GQI=;
	b=VtZdYZuFJN9nYBtFV5UQzISBic9XzYAiNeQg++rh/pXLuhJcMYllZu/O2Q6GMMAQ4HuCEd
	fGuZJB6B1v4oafU0j7h8i/qH0U8a7kaLqNm+j8GElY07h0yssh4/rb36IGjQjpJoS079Yu
	kWKljet5kNrkLMPVphCd9wOA3iwyNO8=
Date: Tue, 13 May 2025 15:23:32 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [net-next PATCH v4 03/11] net: phylink: introduce internal
 phylink PCS handling
To: Daniel Golle <daniel@makrotopia.org>
Cc: Christian Marangi <ansuelsmth@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Philipp Zabel <p.zabel@pengutronix.de>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, llvm@lists.linux.dev
References: <20250511201250.3789083-1-ansuelsmth@gmail.com>
 <20250511201250.3789083-4-ansuelsmth@gmail.com>
 <5d004048-ef8f-42ad-8f17-d1e4d495f57f@linux.dev>
 <aCOXfw-krDZo9phk@makrotopia.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <aCOXfw-krDZo9phk@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 5/13/25 15:03, Daniel Golle wrote:
> On Tue, May 13, 2025 at 02:18:02PM -0400, Sean Anderson wrote:
>> On 5/11/25 16:12, Christian Marangi wrote:
>> > Introduce internal handling of PCS for phylink. This is an alternative
>> > to .mac_select_pcs that moves the selection logic of the PCS entirely to
>> > phylink with the usage of the supported_interface value in the PCS
>> > struct.
>> > 
>> > MAC should now provide an array of available PCS in phylink_config in
>> > .available_pcs and fill the .num_available_pcs with the number of
>> > elements in the array. MAC should also define a new bitmap,
>> > pcs_interfaces, in phylink_config to define for what interface mode a
>> > dedicated PCS is required.
>> > 
>> > On phylink_create() this array is parsed and a linked list of PCS is
>> > created based on the PCS passed in phylink_config.
>> > Also the supported_interface value in phylink struct is updated with the
>> > new supported_interface from the provided PCS.
>> > 
>> > On phylink_start() every PCS in phylink PCS list gets attached to the
>> > phylink instance. This is done by setting the phylink value in
>> > phylink_pcs struct to the phylink instance.
>> > 
>> > On phylink_stop(), every PCS in phylink PCS list is detached from the
>> > phylink instance. This is done by setting the phylink value in
>> > phylink_pcs struct to NULL.
>> > 
>> > phylink_validate_mac_and_pcs(), phylink_major_config() and
>> > phylink_inband_caps() are updated to support this new implementation
>> > with the PCS list stored in phylink.
>> > 
>> > They will make use of phylink_validate_pcs_interface() that will loop
>> > for every PCS in the phylink PCS available list and find one that supports
>> > the passed interface.
>> > 
>> > phylink_validate_pcs_interface() applies the same logic of .mac_select_pcs
>> > where if a supported_interface value is not set for the PCS struct, then
>> > it's assumed every interface is supported.
>> > 
>> > A MAC is required to implement either a .mac_select_pcs or make use of
>> > the PCS list implementation. Implementing both will result in a fail
>> > on MAC/PCS validation.
>> > 
>> > phylink value in phylink_pcs struct with this implementation is used to
>> > track from PCS side when it's attached to a phylink instance. PCS driver
>> > will make use of this information to correctly detach from a phylink
>> > instance if needed.
>> > 
>> > The .mac_select_pcs implementation is not changed but it's expected that
>> > every MAC driver migrates to the new implementation to later deprecate
>> > and remove .mac_select_pcs.
>> 
>> This introduces a completely parallel PCS selection system used by a
>> single driver. I don't think we want the maintenance burden and
>> complexity of two systems in perpetuity. So what is your plan for
>> conversion of existing drivers to your new system?
> 
> Moving functionality duplicated in many drivers to a common shared
> implementation is nothing unsual.
> 
> While this series proposes the new mechanism for Airoha SoC, they are
> immediately useful (and long awaited) also for MediaTek and Qualcomm
> SoCs.
>
> Also in the series you posted at least the macb driver (in "[net-next
> PATCH v4 09/11] net: macb: Move most of mac_config to  mac_prepare")
> would benefit from that shared implementation, as all it does in it's
> mac_select_pcs is selecting the PCS by a given phy_interface_t, which is
> what most Ethernet drivers which use more than one PCS are doing in
> their implementatio of mac_select_pcs().

I generally agree. The vast majority of select_pcs implementations just
determine the PCS based on the interface. But I don't think this is the
right approach. This touches a lot of other areas of the code and
reimplements much of the existing phylink machinery.

I would prefer something more self-contained like

phylink_generic_select_pcs(phylink, interface)
{
	for_each(pcs : phylink->available_pcss) {
		if (test_bit(pcs->supported, interface))
			return pcs;
	}

	return NULL;
}

which could be dropped into existing implementations in an incremental
manner.

I think the inclusion of PCS lifetime management in this patch
complicates things significantly.

> Also axienet_mac_select_pcs() from "[net-next PATCH v4 08/11] net:
> axienet: Convert to use PCS subsystem" could obviously very easily be
> mirated to use the phylink-internal handling of PCS selection.

But the bulk of the patch remains. We still have to add the external PCS
lookup. There still needs to be another case in mac_config to mux the
PCS correctly. And we would need to add some code to create a list of
PCSs. I don't know whether we win on the balance.

>> 
>> DSA drivers typically have different PCSs for each port. At the moment
>> these are selected with mac_select_pcs, allowing the use of a single
>> phylink_config for each port. If you need to pass PCSs through
>> phylink_config then each port will needs its own config. This may prove
>> difficult to integrate with the existing API.
> 
> This might be a misunderstanding. Also here there is only a single
> phylink_config for each MAC or DSA port,

My point is that while this is the case at the moment, it would not be
the case with a "generic" select pcs. You would need to modify the
config for each port to ensure the right PCSs are passed in.

> just instead of having many
> more or less identical implementations of .mac_select_pcs, this
> functionality is moved into phylink. As a nice side-effect that also
> makes managing the life-cycle of the PCS more easy, so we won't need all
> the wrappers for all the PCS OPs.

I think the wrapper approach is very obviously correct. This way has me
worried about exciting new concurrency bugs.

--Sean


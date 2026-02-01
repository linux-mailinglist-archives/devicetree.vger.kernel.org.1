Return-Path: <devicetree+bounces-261596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BYPOMqof2l9vQIAu9opvQ
	(envelope-from <devicetree+bounces-261596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 20:26:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4220BC70EE
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 20:26:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FA233005D2A
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 19:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 039402C08A1;
	Sun,  1 Feb 2026 19:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zq5BCUNb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46135D8F0;
	Sun,  1 Feb 2026 19:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769973957; cv=none; b=LWguobzh94D+z57+oJinNBtRmbI4Pls3JPPsVYK7P0/vW/bPkwHcyeVXV/VkkrSRSRlqbAg/TSnZBS7fnRVUnN9uWd3VBWTXxvHU7ifCe53/yLBmTrN2CEflbvRs/waL9Pu9Kk1VJ7eQqlOu2v7wm3jvkcVWLQh/Ieri+e3N/k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769973957; c=relaxed/simple;
	bh=bIDEY5frNolusbVDWxt6oMlaQ4LE9aJ4Oaroe+96lXk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U6H5L+kcXX8Gm5Z8N8hdY5Ne2KzVh1a9P86kG83HovNQ5K3qGj4ykx8AjnUo6lIpv8AO7z9vHGALsDy83GQqcnxWi/NWSrmJvoU9fh8AXofP/Bov+uiNdQ4yRT6AU1ReuuYrOsUwfvLEVKVVNXX1bu5oh+lWgW9letnYfAa6bzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zq5BCUNb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 971F2C4CEF7;
	Sun,  1 Feb 2026 19:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769973957;
	bh=bIDEY5frNolusbVDWxt6oMlaQ4LE9aJ4Oaroe+96lXk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Zq5BCUNbYCAzHaa5wrT3MdNU+9RFSYJeO7UZeXcwbEp7zyHF+2k2JcBdgzoknG3zp
	 w5/I5/emRVdf8GLHU5xp7h3Gs4POVu9bO1iy+OcTdgey6hpjRxUGihN+i57Ag5YUq6
	 HnTBUJLd1YHmZ2P7m1U69tK9tqLCZZ5Z/5Im8FwE/tNBYHD6XtlJsKuKA4NRieWzoe
	 mSh5nUj8x7du116o5c3TeJ4jE9y4iT4ud5NytHuPY1+NYMx2AjfeeZ43c7yJXT3BXO
	 pwXV3RVPC63d6fVsPveYMQ9rkMOAgz0L7zZlX5inHRFhQdrciB9yRCCz71GW18NpvU
	 qdyuK+fwiWdQg==
Message-ID: <aa9d982e-1a69-48b4-b9f4-16584aac9924@kernel.org>
Date: Sun, 1 Feb 2026 13:25:55 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: cdns,hp-nfc: Add dma-coherent property
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Khairul Anuar Romli <khairul.anuar.romli@altera.com>,
 Rob Herring <robh@kernel.org>
References: <20260131172611.28807-1-dinguyen@kernel.org>
 <20260131-pasty-dicing-4ed7799aa546@spud>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260131-pasty-dicing-4ed7799aa546@spud>
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
	TAGGED_FROM(0.00)[bounces-261596-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4220BC70EE
X-Rspamd-Action: no action



On 1/31/26 14:26, Conor Dooley wrote:
> On Sat, Jan 31, 2026 at 11:26:11AM -0600, Dinh Nguyen wrote:
>> From: Khairul Anuar Romli <khairul.anuar.romli@altera.com>
>>
>> The Cadence HP NAND Flash Controller on supports DMA transactions through
>> a coherent interconnect. In previous generations SoC (Stratix10 and Agilex)
>> the interconnect was non-coherent, hence there is no need for dma-coherent
>> property to be presence. In Agilex 5, the architecture has changed. It
>> introduced a coherent interconnect that supports cache-coherent DMA.
>>
>> Signed-off-by: Khairul Anuar Romli <khairul.anuar.romli@altera.com>
>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> 
> Why does this v1 have an ack?
> 

I respun this patch based on the mtd tree so that the mtd maintainers 
can take it. I had originally applied it to my tree, but avoid merge 
conflicts, I'm going to submit it through mtd. This patch is the same as 
this[1].

Sorry for any confusion.

Dinh
[1] 
https://lore.kernel.org/linux-devicetree/176488419217.2206248.9983976146883123306.robh@kernel.org/


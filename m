Return-Path: <devicetree+bounces-283103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFlDD8n9y2nqNAYAu9opvQ
	(envelope-from <devicetree+bounces-283103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 19:00:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B7036DA58
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 19:00:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 072B13134314
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 16:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49F8B423A8E;
	Tue, 31 Mar 2026 16:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="f74sWmNA"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4C7413225;
	Tue, 31 Mar 2026 16:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774975723; cv=none; b=hjhsm3bpY6SZfhEDCPaZuf/LVZy/PovYn0b+pwGMM8DBc1BuprygXeyXg0joEXkCRBRpS/KgQlFCGs2Wr6U0jre4nuEMDRtVJIcv8odlc/LKGt9jUBz2I+kA6W1it1nqgxvXo+tLC9KNsriH+x6stnxuppTnyMEB+UcR3VYK0G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774975723; c=relaxed/simple;
	bh=E6JwAt4pAUiInSPP+d17jCzhh33dDx3RElmAhqz3dks=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=lIjydMcUNIi0lMXJtKOGF1aBJELcts/uCe/gJFJByyYt2a9CDcPfe+5YSpSB6H91PeKPMKMulZZ/U2D3ONepejIS1Mkwdp6HVkNitPR76dKQhS60FC4szWmzEx927tFhl13XFYugkbQvhYXbsZZ16FEP4/6ZwMeNp7mIbeGPZUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=f74sWmNA; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5051A25F0B;
	Tue, 31 Mar 2026 18:48:40 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nIGKYODwd-YB; Tue, 31 Mar 2026 18:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774975719; bh=E6JwAt4pAUiInSPP+d17jCzhh33dDx3RElmAhqz3dks=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=f74sWmNAo5/OgPyomIPzVopv3r9edQPc/VePoGMEuqhw9A9BAUhGF4uveznpxjRe4
	 yoj3vnpP9I7MSTRHKgMEjoEs7ccYeku7gK9/DbrWER+jaNSjiSXWL+qHMkzzZIg8p0
	 RVpnI/yUziu3HuQ5h32RlTRQnsEfmTsKhrsK8uIhgkRgsXBsoZOU8nLxtzlr3oRE/4
	 qcEZMK4B0dwCWrD3GNLHZ/mwmsKiqju4gOXEVTPw5WClwMpP4YG0rHBc3oEJP4GEAu
	 z5iwZeeGFYA4RS71075qCBX6ll0kdilKpxu7s+dXb+vScCkWFeEzXulXzOmHuitIlC
	 9HiISAiZCsnZA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Tue, 31 Mar 2026 16:48:39 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/6] phy: realtek: usb2: Make configs available for
 MACH_REALTEK_RTL
In-Reply-To: <20260330215207.stx6qbjr7kctm4xt@skbuf>
References: <20260327160638.15134-1-adilov@disroot.org>
 <20260327160638.15134-7-adilov@disroot.org>
 <20260330215207.stx6qbjr7kctm4xt@skbuf>
Message-ID: <41ebd8edfe58ca8b9e9be4954be38c56@disroot.org>
X-Sender: adilov@disroot.org
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-283103-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[disroot.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,disroot.org:dkim,disroot.org:email,disroot.org:mid]
X-Rspamd-Queue-Id: B4B7036DA58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-30 21:52, Vladimir Oltean wrote:
> On Fri, Mar 27, 2026 at 09:06:38PM +0500, Rustam Adilov wrote:
>> Add the MACH_REALTEK_RTL to the if statement to make the config
>> options available for Realtek RTL SoCs as well.
>> 
>> Signed-off-by: Rustam Adilov <adilov@disroot.org>
>> ---
>>  drivers/phy/realtek/Kconfig | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
>> index 75ac7e7c31ae..f9eadffacd18 100644
>> --- a/drivers/phy/realtek/Kconfig
>> +++ b/drivers/phy/realtek/Kconfig
>> @@ -3,7 +3,7 @@
>>  # Phy drivers for Realtek platforms
>>  #
>>  
>> -if ARCH_REALTEK || COMPILE_TEST
>> +if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
>>  
>>  config PHY_RTK_RTD_USB2PHY
>>  	tristate "Realtek RTD USB2 PHY Transceiver Driver"
>> -- 
>> 2.53.0
>> 
>> 
> 
> The file now reads:
> 
> if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
> 
> ...
> 
> endif # ARCH_REALTEK || COMPILE_TEST
> 
> Please update the end comment as well.

Good notice, will change it.


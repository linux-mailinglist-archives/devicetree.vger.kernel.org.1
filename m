Return-Path: <devicetree+bounces-276665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGmCBslJuWmK+QEAu9opvQ
	(envelope-from <devicetree+bounces-276665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:32:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE2E2A9EBF
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F2883031AD5
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 12:32:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F3FC3C3BEB;
	Tue, 17 Mar 2026 12:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Te8jkm00";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="Adrdg2Xt"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFA93C141A
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773750721; cv=none; b=DLp7LMyOvR4JEwzkO6Tm7RGIXzilALHX+UQY51qLDMqj8rXlLDe/YukaZQ50Ug/AYmj6FsZa36T8rKf0wL2RzJ+lIFq0Lt1BWPFg5eTU1R5FICelxmVoAWiceLwZ3a9h6PKlheJVffr6HJYwHg7ejFlHcWtCMpsCmO/DV1QviYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773750721; c=relaxed/simple;
	bh=1jQ0Io1F3tQLKlbPYrvOiyY2JRwu/1WgFSk5RLQLW9c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JFyjgaAO2zOZYbQU+SASWK7HRCPAOQs5absZ4bp1/eQAREY2ukK33URgnpbrzR9aq3iJkpnQRbK0PhriW0hdyF+GsD2VaiPXHX0MZWPHBYIR4LSVApDG3O4udWX39FkImHtSffQ+UfFjebEAt4UF2GOsmNkoeilPWtD0qHGJfIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Te8jkm00; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=Adrdg2Xt; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773750719;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2iZiUbcHQjwJ43FxZPCYpG6wLuTswJ/Obh68aZ9hETE=;
	b=Te8jkm00TnPyEpXJVNEg0KxUxzHQIbEsonlq4p807udN0dclgVBXpacCW3bsBrY8l61BPG
	OBTgUrG411ngaBHigzGMMI/dZQXUw7PJk3jymg8B2rhdFr0zJg/H0ROdWLy7RuIS8jLjNo
	80Y9s6QN4Ia4qlGxmXP8oCroQFZayoU=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-26-lEvHBWkOPPeIryfygjZCrw-1; Tue, 17 Mar 2026 08:31:57 -0400
X-MC-Unique: lEvHBWkOPPeIryfygjZCrw-1
X-Mimecast-MFC-AGG-ID: lEvHBWkOPPeIryfygjZCrw_1773750717
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-439a9182148so3879698f8f.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 05:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1773750716; x=1774355516; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2iZiUbcHQjwJ43FxZPCYpG6wLuTswJ/Obh68aZ9hETE=;
        b=Adrdg2Xt/M212XjH+j/vIQnluu0qezxPVvwt24uFZxVbz/ELT3KdZDsBqKK6EgJqGT
         6e+ws63SinWIRzbp1tB424g0Pdn+ToHsE08wsPoEFg99q7e/LuZADMzOaO+CRmfrtrZx
         BB0tzbCyACOQ2unq7VmF+66rUF53mGCVGnVEscexeJhLnBWCVh9mXq6OCK1Fk8Pp9V5B
         STAYnF8gUafCW8m5F5XuGAuBkzaj/cv5ywlW6orOXd9cNIQlcRfReXrCIuFeuaChg7yx
         /ZT7djXczXVcj0P5XqDFWGnoKjHGUuguzfJG7uGzwITjMv6I7io04VFUmSkJPMJqcyoo
         2Rsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773750716; x=1774355516;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2iZiUbcHQjwJ43FxZPCYpG6wLuTswJ/Obh68aZ9hETE=;
        b=rDTzXcoAgvJNOOQLJWZGQFJm2IGeXLWUL7N9ZmvTSWQY7ZL4Ut8+Sbj1KU2SU5BcGU
         /xHIRCA+xx0YUxGL262TnrzYdWPkq89C5alC+Xx3M3y69LiQV6ZUahUoLc4dBC6uGCsT
         rJQ7BhweWlep7d6mUlB3YFZ1qDPFRYs7tPErtZWyvxvwGsrI2382ypORl/Hmoot2kmGA
         JCic33xSApLie+n6viJAds4jmkG2Vg9+9LdmOkUAuvKaP9fvT5j+4E41GVOIGlhifZ/D
         Bnwre7sh7ngvwSL+1OCKJZ4o/q67GtGQ4mIOIRZhXMbxWLLdlu9DeF4yoScQoW28C5Zm
         dzrg==
X-Forwarded-Encrypted: i=1; AJvYcCW+/NhK1ZpFnRtgRQ6f2dKhSd/aXsfJHe+mXCuxpCdwAhvsWzPN+PtKcvqX03he5oEHLTdpEGjdhDCU@vger.kernel.org
X-Gm-Message-State: AOJu0YxavTooXYMx9Kg6yYunW5Fc8eillHv4YzoWXa2EQwAoOnZWikbI
	RcaoC6b8Be3aXAt/EIil/bW1anvpkVVeFSwqSdIWdl1msBlwTzFzjEZvRCYSEYHi1EsXYLUzpZ0
	27j8P+P1aG0ew/kAcnuYXWsg1A4VdSZYj6+5jpD5w2hA1diQNHgoYUF/Kc+sfJnc=
X-Gm-Gg: ATEYQzxTN+PonnmXYEzEC8u5puLCzbYd7AX5Nrue+hATUiXXkoDrltferxsOgG59jFE
	vVeR0fesDFdMQx44uFSNYsA0cScY0OPN4gxrbO6x3Nyo2KGMapauO7P6RPYRf/4LGZPQCiWZjmE
	78Uh56JznsHJbQLCiVZq2jTbYC9YQ940vChU7lGz1XqsJjTKr34eTA1WpDeRwyX1v9w4+B/F2T9
	KhlzUszavj7egJGTLY9MgSMcNuNJKkxsmsP9807ApcB6OLOUIRE87pOtADkbnstmtNEwojsZPyX
	w08tk/m3jDXQScRBSzjyYojr+VX6kJ0UaGNnmQAU5aoq7mR0dcQcHJJoZGMxVEsNqWjrxzlIaoY
	eG4/TyekOIMqxYyuEYGHDM7XXlSQ8Dguwr/3qPyMkVoBhv3B5+R1rCtI=
X-Received: by 2002:a05:6000:2882:b0:439:b636:1fa4 with SMTP id ffacd0b85a97d-43a04dcbd70mr30274994f8f.48.1773750716424;
        Tue, 17 Mar 2026 05:31:56 -0700 (PDT)
X-Received: by 2002:a05:6000:2882:b0:439:b636:1fa4 with SMTP id ffacd0b85a97d-43a04dcbd70mr30274922f8f.48.1773750715932;
        Tue, 17 Mar 2026 05:31:55 -0700 (PDT)
Received: from [192.168.88.32] ([216.128.11.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe20bd9csm50468510f8f.21.2026.03.17.05.31.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 05:31:55 -0700 (PDT)
Message-ID: <78cc0556-7986-49dc-b7df-0a0d789a3fc0@redhat.com>
Date: Tue, 17 Mar 2026 13:31:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 0/3] Initial support for PIC64-HPSC/HX
 Ethernet endpoint
To: =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Charles Perry <charles.perry@microchip.com>, netdev@vger.kernel.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260313140610.3681752-1-charles.perry@microchip.com>
 <DH4DU4Z4X9MM.398FQ3BIZQIJB@bootlin.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <DH4DU4Z4X9MM.398FQ3BIZQIJB@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276665-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7AE2E2A9EBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/16/26 6:28 PM, Théo Lebrun wrote:
> On Fri Mar 13, 2026 at 3:06 PM CET, Charles Perry wrote:
>> Hello,
>>
>> This series add basic support for Microchip "PIC64-HPSC" and "PIC64HX"
>> Ethernet endpoint. Both SoCs contain 4 GEM IP with support for
>> MII/RGMII/SGMII/USXGMII at rates of 10M to 10G. Only RGMII and SGMII at a
>> rate of 1G is tested for now. Each GEM IP has 8 priority queues and the
>> revision register reads 0x220c010e.
> 
> Do you have plans to test higher rate? We might get our hands on GEMs
> that support >1G and would like to know if CCing you would make sense.
> 
>> One particularity of this instantiation of GEM is that the MDIO controller
>> within the GEM IP is disconnected from any physical pin and the SoC rely on
>> another standalone MDIO controller.
> 
> Ah, that means you instantiate the MDIO bus for no good reason.
> Code looks like:
> 
> static int macb_mii_init(struct macb *bp)
> {
> 	struct device_node *mdio_np, *np = bp->pdev->dev.of_node;
> 	int err = -ENXIO;
> 
> 	/* With fixed-link, we don't need to register the MDIO bus,
> 	 * except if we have a child named "mdio" in the device tree.
> 	 * In that case, some devices may be attached to the MACB's MDIO bus.
> 	 */
> 	mdio_np = of_get_child_by_name(np, "mdio");
> 	if (!mdio_np && of_phy_is_fixed_link(np))
> 		return macb_mii_probe(bp->dev);
> 
> 	// ... probe MDIO bus ...
> }
> 
> So to *not* get the bus we need to be in fixed link config. Do you care
> about that? I think that the proper fix would be to lazy probe the MDIO
> bus until a PHY (ours or some other MAC's) asks for it.

I think that even this one could be a follow-up patch.

Thanks,

Paolo



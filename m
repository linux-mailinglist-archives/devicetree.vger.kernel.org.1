Return-Path: <devicetree+bounces-263651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMBSLVG5h2lOcgQAu9opvQ
	(envelope-from <devicetree+bounces-263651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 23:14:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 277D51074E7
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 23:14:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D97C2300F145
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 22:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91BEA356A2E;
	Sat,  7 Feb 2026 22:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AemQ0PYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6AE3563D9
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 22:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770502478; cv=none; b=Qs53UFno1dpValo5bUXuEmNn7dnaIAMBnjWUFfDHml04uBaV/DxokY/+SywjnuY7A2zqXxAQuXWvIemxxeLKhYetPEim4ueR6mQ/sBsUqMAvU2QWleYlZ+QyVD92z360HJiV5uDATT4SsvVJ5mprJF4oMyn92ZnfkSfPf5d8D54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770502478; c=relaxed/simple;
	bh=wVV/OHkI3Z4KQtzVDooXk7EXxRMhF6PTB9BNiER4oB8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EGqHau8Cri26eaozEIEq+xF+SPR8F2wlEx9pBPRiGBOGKM/lvmaItcRV+IKBqWyFVF2pSb0JGN9BlJTFMHf7Q5UJcH1RiRHRWJONCGhDa9iEQHO1VfJ8Rcms3mCmEYRIlAzpbQOFxCZgOXUSdV8SUe1nm1fVVJF9RRwdHNXtFEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AemQ0PYZ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4806b88d8c9so4299895e9.2
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 14:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770502476; x=1771107276; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZbWUdr0AzBddCE7/lwnLtwuvGPqtGInyCAxrwKAOjI=;
        b=AemQ0PYZ8p4Qv1JVbCgf2wcH2t80+L82mxQJRNFF+eLVEBvJ3UUSzuTTD1cBZKFcBA
         zJ/xH7MzNfswAxhtxkc9NelF3jCqlF106GZeIPLJH4KFQSPHz/VZpaDXB7eSbXYqP/Sg
         P0b+620E/VORfEWYXKAGfVnejoPKDj7SSDI8bpYG4VyEyMVrifcWlGFYCt2cfXDJX4ez
         6cTaqjK3mo7pdNbNsO1V6NBmsYX3oce0DcAKVNacnh59tvQtV9VwEBH7QvUkADyw7CTx
         rZkrm4PP9nRo4wVhTTpInndFDSG/mpv72253Fhyr0KmMgh2SGR2RYfbqWlK9IohNS45A
         MsMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770502476; x=1771107276;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ZbWUdr0AzBddCE7/lwnLtwuvGPqtGInyCAxrwKAOjI=;
        b=BsqL+PVPmxecRXw4MokFzpoHMsIRv5j/G3wjdI4b+jpolZS4QoLJyddtbj3nTTNOsS
         dUtF6N5XqxcVgbl7KnHrg185sxb7qGn8x0xUNddZYnj5q9vaEE7zaDoB2SbMI/up9qmj
         eddIMoPNHhahxEWwUAq8Y74jfddD1ymNI1SsBjS0DP7EPjxTGoqW44XmW8zGNobeAole
         IEac/QjIng4vghf7+DVVMHpWJEU0f3qu1/PK1BGIS426Vn1c5/uLtREdnqy7NxJcYT+z
         qjYcqaqNyweiTzdWSirNYab1FBkuW4rtFF9Z48jYBJHcNx/Z5+y3HsSuV0YvxmzJmdE9
         FW0w==
X-Forwarded-Encrypted: i=1; AJvYcCVUH556ofDQyZc/HZ2Wfmz7xwK6WrloVdXJ74F6qys4+U3PWQOGBueRQfovZaPSbotEdA4c3EFiIJOk@vger.kernel.org
X-Gm-Message-State: AOJu0YzIcVSOtD+eUiyLgXwhV9jb6NERIsDHLXjAE6C1aA1VOTqzQVWK
	oNStCFQcqC8AmrqOJKDiC1iPotCK5fM5bA9LReX000U+IKM0FGWAD2xJ
X-Gm-Gg: AZuq6aIJ1HbCE4Zcq21AixA8Jh3LXqPZo26f6sFaGWBklCSWoOPXAJjtDkZ+HsM6Cmy
	ECNFOdSbZOS/iuQ22qOt1hIpkP7VGN/ZdNHz5BLZymoUSazUmxDRDNn609unGvvdA6GuEcbMOWJ
	Ezkip5GfFHKRLeChcngVPhInKGdmka5pViQqHODu9CmUNdU2UsKNeApTjlZ8vPDLeK2CVg+4znK
	lRKcl90E7HTuVnGoxZzZHkwdOEpBUImTaPVQ/o1OrEYFJRl3hbDtA4AmMByrTNyhI/SJYrurs3k
	Gk7GZq9qs1Loou6tJmrIs+5hgUBUTXo2SqxIzPkxEpTtnUh6enA6kOV1uE65MymmwgXPeQP3fZa
	Eiw1XYUa58Hl4Oob2RTs1fK2OXB8SXFeXyfG/LdI58vEbdWncjrt/2Omy7V2ZGuWPeNUHvEqKDT
	ET3oA=
X-Received: by 2002:a05:600c:c173:b0:477:7a78:3000 with SMTP id 5b1f17b1804b1-4832022a52emr67879265e9.6.1770502476379;
        Sat, 07 Feb 2026 14:14:36 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:c705:d6fa:62de:90a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43631c8d378sm9125185f8f.21.2026.02.07.14.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 14:14:35 -0800 (PST)
Date: Sun, 8 Feb 2026 00:14:31 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Frank Wunderlich <frankwu@gmx.de>, Chad Monroe <chad@monroe.io>,
	Cezary Wilmanski <cezary.wilmanski@adtran.com>,
	Liang Xu <lxu@maxlinear.com>, John Crispin <john@phrozen.org>
Subject: Re: [PATCH net-next v13 4/4] net: dsa: add basic initial driver for
 MxL862xx switches
Message-ID: <20260207221431.y4cckfsrbmhzs6ot@skbuf>
References: <cover.1770211259.git.daniel@makrotopia.org>
 <2da8267175bfe7b8ff92d67ba5aa88755fab1710.1770211259.git.daniel@makrotopia.org>
 <20260205182117.41618f8d@kernel.org>
 <aYVckqToPwzR75EO@makrotopia.org>
 <20260206133418.vxui223u4d6jdpql@skbuf>
 <aYYaJ4Yp_MAQ0eqw@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYYaJ4Yp_MAQ0eqw@makrotopia.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263651-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[kernel.org,lunn.ch,davemloft.net,google.com,redhat.com,gmail.com,armlinux.org.uk,vger.kernel.org,gmx.de,monroe.io,adtran.com,maxlinear.com,phrozen.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 277D51074E7
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 04:43:19PM +0000, Daniel Golle wrote:
> I've spent an hour studying the pack_fields() API and it's (well
> written) documentation. The only example of it's use in the current
> kernel I could find is the Intel E800 (ICE) driver. And there it does
> make sense as it is handling conversion between CPU and hardware formats
> in the hotpath for DMA descriptors, a total of 3 different structs, each
> with their individual accessor functions.
> 
> Using this approach for this switch driver would require writing a lot
> of boilerplate code, accessor functions for each and every struct,
> and a struct definition once unpacked for the host platform and then
> again using the PACKED_FIELD(...) notation for the hardware format.
> Surely, most of that could be auto-generated using the existing
> vendor drivers API definition. Yet (at least to me) it feels like
> over-engineering and also it would require rewriting most of the driver
> which has been discussed for almost 2 months now.
> 
> Also note that the driver doesn't need the naturally aligned version of
> all these structs in native CPU endian -- they are not used for further
> processing anything, you can see that because they aren't ever used as a
> function parameters, but only ever as exchange formats when
> communicating with the firmware.

OK. If the fields were packed more densely maybe the tradeoff would have
looked differently then. But you're talking to an MCU and not to hardware.
And you don't need to keep a local direct representation of the data
passed through those packed buffers. Your arguments are valid.

> Maybe I'm missing something obvious here and there is a more simple way
> to use this API, some generic macros using compiler introspection to
> magically handle everything without needing to write packed and unpacked
> struct definitions and individual pack/unpack boiler-plate functions for
> each struct. If so, please provide me with an example or explain how you
> imagine the pack_fields() API to be used in the context of this driver
> and it's total of at more than 30 different structs which will be used
> for all the different firmware function I will need to use in order to
> implement phylink_pcs as well as the various offloading and VLAN-related
> functionality the driver should have in the end (ie. the structs you
> currently see in the mxl862xx-api.h file are just a fraction of what I
> hope to add there by follow-up series)

No, the API usage example is how you imagine it. There's a structure
where you only need to pull in the fields you care about (and in
whatever order), rather than every other unrelated tidbit you don't
currently need and possibly never will (like ingress_marking_mode, etc etc).
And another array of PACKED_FIELD() where you say where each field goes.
You probably don't need a pack_fields() and an unpack_fields() call for
the same data structure in most cases, just one or the other.


Return-Path: <devicetree+bounces-324593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R1fDF8UkUWq3/wIAu9opvQ
	(envelope-from <devicetree+bounces-324593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:58:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 511F373CD16
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:58:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=UXEOihJW;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324593-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324593-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5A5013003822
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4379724E4C6;
	Fri, 10 Jul 2026 16:58:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D7F279DAF
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 16:58:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783702720; cv=none; b=s+WYXFEDbGWwG5uu9kjjXVNOY361FnfNBh3x832KnEj2psdXvCnOTibXhRu+fJ2XxcOg3NdCSsEvD9TsQsTUyUe25wOOQ12OR33mYD1bEtZlYuJ2WzBoN8Fp1U9WnLIxokVt1ckX/4X/UDQYlwuddaXWC2yeiTFUeR+JhinF6Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783702720; c=relaxed/simple;
	bh=GJMLoUvNdnWE4XXTv2fh0MAyR2jvtTtGXmw8+8W8SXY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OCCBDhnUox0sMF6iL0fqcUonBxxuV6QWPW3gYZ8lGMEhJJ3qcIbGV21kpOrq/4GcpH2+wmsCqQpWeLMEhr1S3I7+sDWGHN1kKdgZ2ljK5sp1KFzsYXLZuTKu+jJ7GWL9s0Rw79RN+fQo/A64j/jn3EBE9Ugow5Ll1wWQ4CHBVQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UXEOihJW; arc=none smtp.client-ip=209.85.215.171
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-c89636920a3so657372a12.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 09:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783702718; x=1784307518; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UzL1Q2+7WDC/g3DuLtI+wo+3VqWALiuVF8iASl1uPEU=;
        b=UXEOihJW19Vqc0rSCNVp5IKtJ6SOWfuNC3Zbg4X8OMuR8dHL7Il5iPLt8tH3Md58MD
         ZKupX2NvsrAK460q2O1uBqnug0mvyIqCfYmjDv6Rj2mcVqaT3aRk/b82k4APuLDdSL12
         vCbyosatL0yT6AWQUE6lwqaQuh1OIQZqiO2pPtlhyi9/FiF1JkcESFaEX/pSB+HGrKn4
         PqHHWc16yn8zaSZv9Pc6stQz4lvjegWT57bNTfH/K+4puU04mX25TenXbjcBeMgII5SX
         fjkYc+fx1UG3fI/JLlTMm0QRAMQBjXt30kE4WcIFELX1DdQMPZ+J+Zi3uaeZj+X2Wdwv
         JPkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783702718; x=1784307518;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UzL1Q2+7WDC/g3DuLtI+wo+3VqWALiuVF8iASl1uPEU=;
        b=YROBXrFb7zBburuyoLkivzlZGtkbFIVj+72mD1mdUPrWqdUX7wGQZ1tPSAP7wuryj1
         r+XzSjgL16ycrSlFnAxf3/e8SQUmf+l53IjiR0e6YSAXx03i7SZuWIy89ogR4qG2G7CJ
         yCoOb9hYqIk4jO0I4MTSVhbthrXESghxklFBP4vyV9JbOxQhqFV4gZ+kXDC9/nz8nodu
         rviPGU2rTRE8peDy8/lKWmWXO+z1DjUPKKSFZVQwhkzoMp8Uj7KnS1keU5m8j+OEAdUo
         edpdI9s9GmvCZr/yLRYxrRe4O8QORtJ2Z7Q0xttNiiaG0eNtS3X4+e+xjmxcDB8rPjTI
         vAqA==
X-Forwarded-Encrypted: i=1; AHgh+Rp5Oy0lpWzmlehJyserIdRJ/irp7wWH2zw/Y3e79OyAoh2+vCKgZD20x7tjGpPaoIQqb1vpYcQzCqoj@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzz+GoWCLLhvC7VzOjEzy3htE8nN4ASz+GZp/wP/0gl8f9Y4AL
	9hpMa843EdrTHv6PIkyY3dwq9ugIiEChTlOL4Yd2F3IKqhNSEeCE4vXw
X-Gm-Gg: AfdE7ck9FAzWXj1KwOtpIbsDDq2Nr+R0uacRnKRfvyVTZwdghZHXwCbs0854TKXqGit
	s1RYlt1nhajoDfNzrRA1D5telgVLTco6uEoEeE5WWxrMhG5Y8yDj+4cnEBcpfllGz5DfYJakwrt
	lVVPfRlcFxLQZRHX/CdSPZK+S56bQmVty/L1LA66YpIMeLUiULMnTLDMJ2E4sQ0WCgLn2VUoQ9S
	03eIRxG6VUmbZVRmaIGAmdf2RF+xjRh473G/F4s+9TwBql0+nUoQT4gs/QQHaNrQsp+ucXghR3D
	C7ywW3m6M/rXj57N0IBK/3CzGT6NCuS/9Ks7TqYrvr4ytcNlXqP1PN3FD2NY/4XxmRXxR/30J/u
	vPmAYKYkvpvNRSkpMXJklbfocS3ef7HG/x++Tujuk9WleD78EMoRZE/LXNT26SdfffMTS3OjHmG
	eN8bLuUYYtQSkja7vBdap23cWoO81kx4vwJ2IGUME=
X-Received: by 2002:a05:6a21:1bc3:b0:3bd:4698:e7c4 with SMTP id adf61e73a8af0-3c0bcb7f146mr13586972637.42.1783702718181;
        Fri, 10 Jul 2026 09:58:38 -0700 (PDT)
Received: from DESKTOP-TIT0J8O.localdomain ([49.47.198.15])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-311747f72a6sm48876196eec.1.2026.07.10.09.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 09:58:37 -0700 (PDT)
Date: Fri, 10 Jul 2026 20:58:28 +0400
From: Ahmed Naseef <naseefkm@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Ahmed Naseef <naseefkm@gmail.com>, netdev@vger.kernel.org,
	=?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
	"Chester A. Unal" <chester.a.unal@arinc9.com>,
	"David S. Miller" <davem@davemloft.net>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	DENG Qingfang <dqfext@gmail.com>,
	Daniel Golle <daniel@makrotopia.org>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Landen Chao <Landen.Chao@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Sean Wang <sean.wang@mediatek.com>,
	Vladimir Oltean <olteanv@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH net-next 2/2] net: dsa: mt7530: add EN7528 support
Message-ID: <alEktKWsrriHdR40@DESKTOP-TIT0J8O.localdomain>
References: <cover.1783680864.git.naseefkm@gmail.com>
 <1865eaedef97e593ba608764c7390209cae85b30.1783680864.git.naseefkm@gmail.com>
 <f968d3fe-83dc-4b82-972b-0d4d477a1a52@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f968d3fe-83dc-4b82-972b-0d4d477a1a52@lunn.ch>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324593-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:naseefkm@gmail.com,m:netdev@vger.kernel.org,m:arinc.unal@arinc9.com,m:chester.a.unal@arinc9.com,m:davem@davemloft.net,m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:dqfext@gmail.com,m:daniel@makrotopia.org,m:edumazet@google.com,m:kuba@kernel.org,m:krzk+dt@kernel.org,m:Landen.Chao@mediatek.com,m:matthias.bgg@gmail.com,m:pabeni@redhat.com,m:robh@kernel.org,m:linux@armlinux.org.uk,m:sean.wang@mediatek.com,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:conor@kernel.org,m:krzk@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[naseefkm@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,arinc9.com,davemloft.net,collabora.com,kernel.org,makrotopia.org,google.com,mediatek.com,redhat.com,armlinux.org.uk,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[naseefkm@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 511F373CD16

On Fri, Jul 10, 2026 at 03:32:32PM +0200, Andrew Lunn wrote:
> > +	/* The EN7528 LAN GPHYs advertise EEE by default, but negotiating EEE
> > +	 * with common link partners (e.g. Realtek GbE NICs) results in an
> > +	 * unstable link with dropped frames. Disable EEE advertisement on
> > +	 * them.
> > +	 */
> > +	if (priv->id == ID_EN7528)
> > +		for (i = EN7528_GPHY_BASE;
> > +		     i < EN7528_GPHY_BASE + EN7528_NUM_GPHYS; i++)
> > +			mt7531_ind_c45_phy_write(priv, i, MDIO_MMD_AN,
> > +						 MDIO_AN_EEE_ADV, 0);
> > +
> 
> The problem with this is, you can still use ethtool to enable EEE.
> 
> Please look at phylink_bringup_phy(), where it calls
> phy_disable_eee().

Thanks, you are right , the register write is the wrong approach.

While looking at phylink_bringup_phy(), I noticed that the mt7530
driver sets config->lpi_capabilities but never config->lpi_interfaces.
Since

        mac_supports_eee = mac_supports_eee_ops && lpi_capabilities &&
                           !phy_interface_empty(lpi_interfaces);

that leaves mac_supports_eee false on all mt753x ports, so phylink
already takes the phy_disable_eee() path for every port and
phylink_ethtool_set_eee() returns -EOPNOTSUPP. On the EN7528 I
confirmed "ethtool --set-eee lan1 eee on" reports "Not supported", so
EEE cannot currently be enabled from userspace on this driver at all.
That looks like it unintentionally undid the "EEE can now be enabled
using ethtool" behaviour from commit 06dfcd4098cf ("net: dsa: mt7530:
fix enabling EEE on MT7531 switch on all boards"), starting with commit
9cf21773f535 ("net: dsa: mt7530: convert to phylink managed EEE"). That
is pre-existing and outside the scope of this series, just flagging it.

For the EN7528 the GPHYs report EEE capability, but the link stops
passing traffic once LPI is entered, so EEE must stay off regardless.
The register loop cannot express that to phylib, as you noted.

My plan for v2 is to not advertise lpi_capabilities for the EN7528, so
mac_supports_eee stays false by design and phylink disables EEE on
these PHYs via phy_disable_eee() and refuses to enable it from
userspace. Does that sound like the right approach to you, or would
you prefer it handled differently?

Thanks,
Ahmed


> 
>     Andrew
> 
> ---
> pw-bot: cr


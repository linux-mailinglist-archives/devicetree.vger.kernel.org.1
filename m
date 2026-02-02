Return-Path: <devicetree+bounces-261702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMeZIPlxgGkw8QIAu9opvQ
	(envelope-from <devicetree+bounces-261702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:44:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44245CA3C9
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:44:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7F341301A2B6
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 09:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE24352943;
	Mon,  2 Feb 2026 09:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g07vD4Td"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A7533A9CC
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 09:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770025453; cv=none; b=biFF9/EwBww8agNbOawqj1OyGb6hVgazYgwhM344rSKu6k3p9OuU+keCBtUbzW67kcFwfbP7dzwro8RpmXpgFJ7fj1rlVqpFRIJRrN3mspi1080iiNtVtH/9k1W8g29a/FasxJ1IKfwdSEx7d0yEUIc0dlHkPgVTZqGOQq03/mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770025453; c=relaxed/simple;
	bh=5EL6AsHcVBdeADGxMcjKBj+/YFrUYYn5U1xjZYVD1R0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pVkojTXhtcbM+Tw2hGkEz0ZB2k9ZNg9d0jT0oNHzE6uSNtdQtup6K0TjtVs8nN/KKJqpnhkQibiDAv42vqqwstgz8ZzIyDuBlAnwYCIC0TmbhnyGBeYcTZ4hE5VnjSbyXxI7vBWkxK9q9QAslDeyoVyc8Sv13H2JTDLf4K0FeDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g07vD4Td; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47edbae8307so2110925e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 01:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770025450; x=1770630250; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0rIIYAGyPLAQP7m4TA99kT+nOX8OsDiOc0NkESM+vog=;
        b=g07vD4TdYLrGyQVgQVplCyFnKiXbeflmRduplqxTWOcj5qyhfYdzdzWagR+HnmQhv4
         HOWSI+iuUUN5G6s6mGyCxbwycNAdZD0e6pZiZYyXqNVIuFah0brR3N+/agXoOYYRgNlv
         6r21hsieVmtSzuI1uGHasNpKqQEQi5PloS7l4n3iYVbfa3AJ2SrfFIcdtLQbF5gQq093
         cGsSuRH6nAXd8W2zwknDLWKaIDvqlWmnfixu3Y/IHcKgU2a+nJ18BpgH82ajMegoxDv3
         3Fmz2BpXdocJckeTara/hHaUSZ/44YHLHPjIueOaJPyV1HGegQ4LinDx8R9fwHGdRxIX
         LGOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770025450; x=1770630250;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0rIIYAGyPLAQP7m4TA99kT+nOX8OsDiOc0NkESM+vog=;
        b=oavX/t32TiQrCx7C1nLeFLkvPOWXwNOq9botew96XhiAWxfMQH280kHCRMjXGim2Fh
         HpVfgBjE+0/By6VtlSVSn2gLpxFXctVwG/8BkYdCzIIsTXRsO7T05nw734i/fEDKx+4G
         m3G2kDWsYGBYeKEU4T2ff3Yj/Ychh0Ya89N2flg8nhizHSuXJd/EtaWOvIN8kFF+xcSJ
         5jnOfHnsYrEBr5WZSssRXhFKoXYpTw78e3B/f1k2i7tNiVyleCOjNksH0vmP1ST98oMW
         gCOlFA29tuTNQ3qGv0gjwNuoYthsmMHaV4fB5061Y5woTxvFGJ6kKyPLUwjldj+FEFoZ
         QimA==
X-Forwarded-Encrypted: i=1; AJvYcCWnQeiJjAEcrJCMXZVOLASmVxhRweaArs8sdm6lcLIuhPusY4YKPiydR0w/GhilVdj4re/G058o8sDc@vger.kernel.org
X-Gm-Message-State: AOJu0YzXY4YRess/NovKmyr8AjFKnFbwFV2kzYVK2srOus+tLz75tHvy
	5hbCkgu7ok5snuIrJlC57ns6RB4HTPMis7uPCQ/iPcI+tGv968ahHn5w
X-Gm-Gg: AZuq6aK08KVETkQHgta2RZt5OKifHbWKs57v4x92gfoipuAZ0GDR+qg1Kr0yxyM6P5R
	kHf7yABevOnAeOc5MO2zSDI4YC4d33mdfjWjoN2fQaDijUE303copJeFnaiKosT3ghwc7lphzsE
	EDtaHH6trSWRPLf1c97Ik8maUUEP8XYLAzK4EvUVjLQSBJYP+ZjoAFNnUtGFFDksF7IAtKhWh6d
	dfjJIG2+59rFSaUs+1NF4BgTURA0DqYFu1wiwjjwxi2/6tmbMA7DB+XjAuAET6p2RpO7OpsYlfk
	/iIcozQJY2GI9rOnQGa8pTSemA1GUv1rHWC6JrN/FWE/7glIyyULBcpNQbHo2JutRln38YczsnB
	EiMBRBN0SoFH+5fLRWvFDDGMOAfozPbjwOTqlvl5dCfLj/Sjuka92X6jTVLvO2kmWGBAgHuIt8K
	QND1A=
X-Received: by 2002:a05:600c:818e:b0:477:9dd9:ac57 with SMTP id 5b1f17b1804b1-482db2022f4mr72271205e9.0.1770025449530;
        Mon, 02 Feb 2026 01:44:09 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:74c4:3a65:f9a9:6c29])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4757sm44205033f8f.5.2026.02.02.01.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 01:44:08 -0800 (PST)
Date: Mon, 2 Feb 2026 11:44:05 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: daniel@makrotopia.org, lxu@maxlinear.com, hkallweit1@gmail.com,
	yweng@maxlinear.com, ajayaraman@maxlinear.com, andrew@lunn.ch,
	netdev@vger.kernel.org, bxu@maxlinear.com, krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org, lrosu@maxlinear.com, chad@monroe.io,
	conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
	edumazet@google.com, pabeni@redhat.com, cezary.wilmanski@adtran.com,
	davem@davemloft.net, john@phrozen.org, frankwu@gmx.de,
	jpovazanec@maxlinear.com, linux@armlinux.org.uk,
	fchan@maxlinear.com, horms@kernel.org
Subject: Re: [net-next,v11,4/4] net: dsa: add basic initial driver for
 MxL862xx switches
Message-ID: <20260202094405.rsojaz5xmorubjfz@skbuf>
References: <46226b74030f76bd04149ed5c92b3e263abbe6c2.1769817939.git.daniel@makrotopia.org>
 <20260131175243.1122906-2-kuba@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260131175243.1122906-2-kuba@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261702-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[makrotopia.org,maxlinear.com,gmail.com,lunn.ch,vger.kernel.org,kernel.org,monroe.io,google.com,redhat.com,adtran.com,davemloft.net,phrozen.org,gmx.de,armlinux.org.uk];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 44245CA3C9
X-Rspamd-Action: no action

On Sat, Jan 31, 2026 at 09:52:44AM -0800, Jakub Kicinski wrote:
> > +static int mxl862xx_add_single_port_bridge(struct dsa_switch *ds, int port)
> > +{
> > +	struct mxl862xx_bridge_port_config br_port_cfg = {};
> > +	struct dsa_port *dp = dsa_to_port(ds, port);
> > +	struct mxl862xx_bridge_alloc br_alloc = {};
> > +	int ret;
> > +
> > +	ret = MXL862XX_API_READ(ds->priv, MXL862XX_BRIDGE_ALLOC, br_alloc);
> > +	if (ret) {
> > +		dev_err(ds->dev, "failed to allocate a bridge for port %d\n", port);
> > +		return ret;
> > +	}
> > +
> > +	br_port_cfg.bridge_id = br_alloc.bridge_id;
> > +	br_port_cfg.bridge_port_id = cpu_to_le16(port);
> > +	br_port_cfg.mask = cpu_to_le32(MXL862XX_BRIDGE_PORT_CONFIG_MASK_BRIDGE_ID |
> > +				       MXL862XX_BRIDGE_PORT_CONFIG_MASK_BRIDGE_PORT_MAP |
> > +				       MXL862XX_BRIDGE_PORT_CONFIG_MASK_MC_SRC_MAC_LEARNING |
> > +				       MXL862XX_BRIDGE_PORT_CONFIG_MASK_VLAN_BASED_MAC_LEARNING);
> > +	br_port_cfg.src_mac_learning_disable = true;
> > +	br_port_cfg.vlan_src_mac_vid_enable = false;
> > +	br_port_cfg.vlan_dst_mac_vid_enable = false;
> > +	br_port_cfg.bridge_port_map[0] = cpu_to_le16(BIT(dp->cpu_dp->index));
> 
> Can this dereference NULL pointers?

No. DSA will not make calls to ds->ops->port_setup() with "port" values
for which dsa_to_port(ds, port) will not find a struct dsa_port *.

> The dsa_to_port() function can return NULL if the port is not found in
> the switch tree. The code stores the result in dp but doesn't check if
> dp is NULL before dereferencing dp->cpu_dp->index.
> 
> Looking at include/net/dsa.h, dsa_to_port() returns NULL when the port
> is not found:
> 
>     static inline struct dsa_port *dsa_to_port(struct dsa_switch *ds, int p)
>     {
>         struct dsa_switch_tree *dst = ds->dst;
>         struct dsa_port *dp;
> 
>         list_for_each_entry(dp, &dst->ports, list)
>             if (dp->ds == ds && dp->index == p)
>                 return dp;
> 
>         return NULL;
>     }
> 
> Additionally, even if dp is non-NULL, dp->cpu_dp could also be NULL if
> the CPU port hasn't been properly assigned during initialization.

mxl862xx_add_single_port_bridge() has been called when all other port
types except user ports have been excluded. All user and DSA ports have
a non-NULL dp->cpu_dp pointer after dsa_tree_setup_cpu_ports() runs,
i.e. also at the time of ds->ops->port_setup().

> > +static int mxl862xx_setup_mdio(struct dsa_switch *ds)
> > +{
> > +	struct mxl862xx_priv *priv = ds->priv;
> > +	struct device *dev = ds->dev;
> > +	struct device_node *mdio_np;
> > +	struct mii_bus *bus;
> > +	static int idx;
> > +	int ret;
> > +
> > +	bus = devm_mdiobus_alloc(dev);
> > +	if (!bus)
> > +		return -ENOMEM;
> > +
> > +	bus->priv = priv;
> > +	ds->user_mii_bus = bus;
> > +	bus->name = KBUILD_MODNAME "-mii";
> > +	snprintf(bus->id, MII_BUS_ID_SIZE, KBUILD_MODNAME "-%d", idx++);
> 
> Can concurrent probes race on the idx variable?
> 
> The static int idx is shared across all driver instances and accessed
> without synchronization. If multiple instances of this driver are probed
> concurrently on different CPU cores, they could race on the idx++
> operation potentially leading to duplicate MII bus IDs. MII bus IDs must
> be unique system-wide.
> 
> [ ... ]

Technically ds->ops->setup() runs under dsa2_mutex, but the "static int idx"
is still not ideal due to the ever-increasing index upon unbinding and
rebinding.

> > +static int mxl862xx_setup_cpu_bridge(struct dsa_switch *ds, int port)
> > +{
> > +	struct mxl862xx_bridge_port_config br_port_cfg = {};
> > +	struct mxl862xx_priv *priv = ds->priv;
> > +	u16 bridge_port_map = 0;
> > +	struct dsa_port *dp;
> > +
> > +	/* CPU port bridge setup */
> > +	br_port_cfg.mask = cpu_to_le32(MXL862XX_BRIDGE_PORT_CONFIG_MASK_BRIDGE_PORT_MAP |
> > +				       MXL862XX_BRIDGE_PORT_CONFIG_MASK_MC_SRC_MAC_LEARNING |
> > +				       MXL862XX_BRIDGE_PORT_CONFIG_MASK_VLAN_BASED_MAC_LEARNING);
> > +
> > +	br_port_cfg.bridge_port_id = cpu_to_le16(port);
> > +	br_port_cfg.src_mac_learning_disable = false;
> > +	br_port_cfg.vlan_src_mac_vid_enable = true;
> > +	br_port_cfg.vlan_dst_mac_vid_enable = true;
> > +
> > +	/* include all assigned user ports in the CPU portmap */
> > +	dsa_switch_for_each_user_port(dp, ds) {
> > +		if (dp->cpu_dp->index != port)
> > +			continue;
> 
> Can dp->cpu_dp be dereferenced safely here?
> 
> The code dereferences dp->cpu_dp->index without checking if cpu_dp is
> NULL. While the DSA framework should ensure user ports have a CPU port
> assigned during initialization, there is no explicit NULL check. If
> cpu_dp is NULL for any reason such as incomplete initialization or
> configuration error, this will cause a NULL pointer dereference and
> kernel crash.

No incompletely initialized ports are published to dst->ports.

> > +	ret = dsa_register_switch(ds);
> > +	if (ret)
> > +		return ret;
> 
> Is dev_set_drvdata() called too early?
> 
> The function calls dev_set_drvdata(dev, ds) before calling
> dsa_register_switch(ds). If dsa_register_switch() fails, the function
> returns the error but leaves the driver data pointing to an unregistered
> switch.
> 
> This creates a problem for cleanup paths. The mxl862xx_remove() function
> retrieves the switch with dev_get_drvdata() and calls
> dsa_unregister_switch(ds). If probe failed, ds is not NULL so the check
> passes but the switch was never successfully registered. Similarly,
> mxl862xx_shutdown() could be called and would also operate on an
> unregistered switch. While dsa_switch_shutdown() has a check for
> ds->setup flag that provides some protection, this is fragile and could
> lead to inconsistent state or crashes in error scenarios.
> 
> [Jakub] AI is a bit pedantic about leaving the drvdata pointer in place
>         but I guess it's not a bad thing to clean up

Can somebody gently explain what is the point? It is easily testable
that if mdio_driver :: probe() fails, .remove() or .shutdown() will not
be called. It really does not matter whether dev_set_drvdata() was
called or not.


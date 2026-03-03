Return-Path: <devicetree+bounces-270572-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM5+CJr2pmmgawAAu9opvQ
	(envelope-from <devicetree+bounces-270572-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:56:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F521F1DED
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:56:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 903333160ECC
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72F0038756B;
	Tue,  3 Mar 2026 14:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fxn+FZQL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EF037CD5F
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772549498; cv=none; b=p3O0l7FWwW6Y6tqQk3zTv04jtcWe7pHXYpMqR5LFRy68vZHu9bZpV/AfKriBGPcrri4ClW6rGAzmhDOAuSikFVh6mQP8iWr6YVYEraBvEjxtRKVo8A33z45m4uJw0yDSI1P8PtQiaJVDqSoSkVuOYy9d983ym6Xm9tKKiGUSvMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772549498; c=relaxed/simple;
	bh=6KdAnhQrt+OtDqhpU53NGZUuv8Yx4CgsDTHUa/zHqBk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qrs3vcyMaYFRCMnLw5N6BjCgQ0VPEbBa/5EB1NEHAAW8Ay351TG6fGM3dqVZRF84meToXRLXcOjPAYyOJtmH/2RtV9DaVGs1vuiseUo44d3+K/vRJ01o2VxKb1B6gaL7qPxxPzEL3AXTnzWBoIGRLQ+f52hznNy64teQUMm5mIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fxn+FZQL; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4830f029407so11795025e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 06:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772549494; x=1773154294; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YEdSGTNZRnrKg7rdXD/O1fVlFTgm/leciP0nfy91AHw=;
        b=Fxn+FZQLFum5I9kK2LgMpQYThU8VFT5GBrKHN9e7zDdip3HjkfW7TJLoqb7c94suR1
         vRyZouXtlvhHZZev4l6lbSO8NzOnwLqALP4KsNb9w9YAVIlD8eKz87Xx5F3BVA2U8SpM
         AnYUmyLikjEn8UpEQ8veuFeD6NJzYxenbCzZi6DnLOpngFHqF8FBCuNDNbuZwCo4OYTS
         qDEraDAceAx2DEUvdKPybUdGB49WPIyc8V5cjebf0z4wgefqMPKW4y/P7gsyyBAhxWtN
         hgNXqP2Ff1qT5OOrmN8VE41aNq1FCR8Qy02752JKbvxlErGVqR2rWBGY3n55um7wVkuw
         5qLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772549494; x=1773154294;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YEdSGTNZRnrKg7rdXD/O1fVlFTgm/leciP0nfy91AHw=;
        b=m2zYM5rPgywp6ioInByA/5I+z7m0qhyhCD8r5exKfIP/J+8uTzUMkpMjnIrWXAVQf0
         gNuVNICwsxKJSZXdL7woIaE/wIQgW3CHCi0K338V5uk2PteU/fdCgn+uB0wMKb5ANMKV
         YFBkpfDuNeWRl+LF8j1vDUZ2xjbBQ+RuUxj2sykdtBSFTvs/+6MnG+SvGEatBxa8j7B9
         N90NaU0+dW4RfhWaR8PaYCwQ1ybSBv60gvgMA7MzBdV6Y+kePkrykdtC5ESZkRi6A2Od
         wiK0jZcO3Vd45sMRjn+dn68DaV8jdTd8eczcI9ehMy/zqBfKQwajC6zF9gbFR2tDRDSr
         LcbQ==
X-Forwarded-Encrypted: i=1; AJvYcCX153rZAntKYo1hyPClD5mhPmthYdA8oz+aDSrEDbpcGdJCwiZyf1EGeMS6HOBkCu2gkHp62xIuRf+e@vger.kernel.org
X-Gm-Message-State: AOJu0YzuDnHRppBkhGr0DfLsBsS0bSC5L89E/cIfOtkjeXkNJD9chtHF
	xcm8i/C/wyLxgtNnOQNNIWt+7sRTQOpaHrO6ac2ShHIZtZkyOF895NxG
X-Gm-Gg: ATEYQzz3H0tzS9cbw2pxNV+TIrFIA5YKsP0LFmCI9UYWsIJcish87U2azBlX4GVRTPB
	Lv/EVPweM853sGEtiuT5q0YAVkIZqxwfKey5rFUvlt5xXwILo+C5mYempXRlh1s2Egc0R1FFlPs
	KH6qZQjKHebJHjlDtbAn+TuLKt+VH1zg2eTd5kTJzRB5Y/b1b4XVz6b+srHiLXCIP89N21hl9BM
	18TK07+Gq6M2kcGjrM+6hHod1KRZrs63muGBnBUAnR8vKO6qd1WXHP+3a6YSusZ//7JfAxLzmkP
	saC4kbGbnZJ1j+I9ZOW0R+yiOMmC3ILlYu25k8M7uLJaCawJt7qOC90UI2sYYMBPTP4YVtN+kak
	D54yIjgwB3hktSVjfj0uIkhXDAtaaPtBeEFq2FBJZb7M+Ovkhtv3N2ON5J/jNFO/GTEwjWwy8/d
	fknk7EN2/D5F+Xhhg=
X-Received: by 2002:a05:600c:3542:b0:477:5b01:7d42 with SMTP id 5b1f17b1804b1-483c9bc3f6bmr156313945e9.5.1772549493842;
        Tue, 03 Mar 2026 06:51:33 -0800 (PST)
Received: from skbuf ([2a02:2f04:d00e:3600:2472:8e4a:cf12:bb30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b84023sm356468875e9.12.2026.03.03.06.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 06:51:33 -0800 (PST)
Date: Tue, 3 Mar 2026 16:51:30 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jens Emil Schulz =?utf-8?Q?=C3=98stergaard?= <jensemil.schulzostergaard@microchip.com>
Cc: UNGLinuxDriver@microchip.com, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Woojung Huh <woojung.huh@microchip.com>,
	Russell King <linux@armlinux.org.uk>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 5/8] net: dsa: lan9645x: add bridge support
Message-ID: <20260303145130.rbp3qycr3eh5ifcp@skbuf>
References: <20260303-dsa_lan9645x_switch_driver_base-v1-0-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-5-bff8ca1396f5@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260303-dsa_lan9645x_switch_driver_base-v1-5-bff8ca1396f5@microchip.com>
X-Rspamd-Queue-Id: 69F521F1DED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270572-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 01:22:31PM +0100, Jens Emil Schulz Østergaard wrote:
> Add support for hardware offloading of the bridge. We support a single
> bridge device.
> 
> Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
> Signed-off-by: Jens Emil Schulz Østergaard <jensemil.schulzostergaard@microchip.com>
> ---
>  drivers/net/dsa/microchip/lan9645x/lan9645x_main.c | 196 +++++++++++++++++++++
>  drivers/net/dsa/microchip/lan9645x/lan9645x_main.h |  11 ++
>  drivers/net/dsa/microchip/lan9645x/lan9645x_port.c |   2 +
>  3 files changed, 209 insertions(+)
> 
> diff --git a/drivers/net/dsa/microchip/lan9645x/lan9645x_main.c b/drivers/net/dsa/microchip/lan9645x/lan9645x_main.c
> index 739013f049d0..b6efaf669a3f 100644
> --- a/drivers/net/dsa/microchip/lan9645x/lan9645x_main.c
> +++ b/drivers/net/dsa/microchip/lan9645x/lan9645x_main.c
> @@ -171,6 +171,8 @@ static int lan9645x_setup(struct dsa_switch *ds)
>  		return err;
>  	}
>  
> +	mutex_init(&lan9645x->fwd_domain_lock);
> +
>  	/* Link Aggregation Mode: NETDEV_LAG_HASH_L2 */
>  	lan_wr(ANA_AGGR_CFG_AC_SMAC_ENA |
>  	       ANA_AGGR_CFG_AC_DMAC_ENA,
> @@ -288,6 +290,192 @@ static void lan9645x_port_phylink_get_caps(struct dsa_switch *ds, int port,
>  	lan9645x_phylink_get_caps(ds->priv, port, config);
>  }
>  
> +static int lan9645x_set_ageing_time(struct dsa_switch *ds, unsigned int msecs)
> +{
> +	u32 age_secs = max(1, msecs / 1000 / 2);

s/1000/MSEC_PER_SEC/

> +	struct lan9645x *lan9645x = ds->priv;
> +
> +	/* Entry is must suffer two aging scans before it is removed, so an

"An entry must suffer (...), so it is aged"

> +	 * entry is aged after 2*AGE_PERIOD, and the unit is in seconds.
> +	 * An age period of 0 disables automatic aging.
> +	 */
> +	lan_rmw(ANA_AUTOAGE_AGE_PERIOD_SET(age_secs),
> +		ANA_AUTOAGE_AGE_PERIOD,
> +		lan9645x, ANA_AUTOAGE);
> +	return 0;
> +}
> +
> +static int lan9645x_port_pre_bridge_flags(struct dsa_switch *ds, int port,
> +					  struct switchdev_brport_flags flags,
> +					  struct netlink_ext_ack *extack)
> +{
> +	if (flags.mask &
> +	    ~(BR_LEARNING | BR_FLOOD | BR_MCAST_FLOOD | BR_BCAST_FLOOD))
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static void lan9645x_port_pgid_set(struct lan9645x *lan9645x, u16 pgid,
> +				   int chip_port, bool enabled)
> +{
> +	u32 reg_msk, port_msk;
> +
> +	WARN_ON(chip_port > CPU_PORT);
> +
> +	port_msk = ANA_PGID_PGID_SET(enabled ? BIT(chip_port) : 0);
> +	reg_msk = ANA_PGID_PGID_SET(BIT(chip_port));
> +
> +	lan_rmw(port_msk, reg_msk, lan9645x, ANA_PGID(pgid));
> +}
> +
> +static void lan9645x_port_set_learning(struct lan9645x *lan9645x, int port,
> +				       bool enabled)
> +{
> +	struct lan9645x_port *p;
> +
> +	lan_rmw(ANA_PORT_CFG_LEARN_ENA_SET(enabled), ANA_PORT_CFG_LEARN_ENA,
> +		lan9645x, ANA_PORT_CFG(port));

Actually, the port may be in an STP state where learning shouldn't be
enabled, when this function is called. Enabling the "learning" bridge
port flag shouldn't change that.

> +
> +	p = lan9645x_to_port(lan9645x, port);
> +	p->learn_ena = enabled;
> +}
> +
> +static int lan9645x_port_bridge_flags(struct dsa_switch *ds, int port,
> +				      struct switchdev_brport_flags f,
> +				      struct netlink_ext_ack *extack)
> +{
> +	struct lan9645x *l = ds->priv;

Could we have some consistency in variable naming throughout the driver,
at least for the main private structure? I don't have an issue with it
being called l, it's just that I would prefer it being called the same
everywhere.

> +
> +	if (WARN_ON(port == l->npi))
> +		return -EINVAL;
> +
> +	if (f.mask & BR_LEARNING)
> +		lan9645x_port_set_learning(l, port, !!(f.val & BR_LEARNING));
> +
> +	if (f.mask & BR_FLOOD)
> +		lan9645x_port_pgid_set(l, PGID_UC, port, !!(f.val & BR_FLOOD));
> +
> +	if (f.mask & BR_MCAST_FLOOD) {
> +		bool ena = !!(f.val & BR_MCAST_FLOOD);
> +
> +		lan9645x_port_pgid_set(l, PGID_MC, port, ena);
> +		lan9645x_port_pgid_set(l, PGID_MCIPV4, port, ena);
> +		lan9645x_port_pgid_set(l, PGID_MCIPV6, port, ena);
> +	}
> +
> +	if (f.mask & BR_BCAST_FLOOD)
> +		lan9645x_port_pgid_set(l, PGID_BC, port,
> +				       !!(f.val & BR_BCAST_FLOOD));
> +
> +	return 0;
> +}
> diff --git a/drivers/net/dsa/microchip/lan9645x/lan9645x_port.c b/drivers/net/dsa/microchip/lan9645x/lan9645x_port.c
> index 038868ae0a32..b60c64458957 100644
> --- a/drivers/net/dsa/microchip/lan9645x/lan9645x_port.c
> +++ b/drivers/net/dsa/microchip/lan9645x/lan9645x_port.c
> @@ -15,6 +15,8 @@ int lan9645x_port_init(struct lan9645x *lan9645x, int port)
>  		ANA_PORT_CFG_LEARN_ENA,
>  		lan9645x, ANA_PORT_CFG(p->chip_port));
>  
> +	p->learn_ena = false;
> +

This is already zero-initialized memory.

>  	lan9645x_port_set_maxlen(lan9645x, port, ETH_DATA_LEN);
>  
>  	lan9645x_phylink_port_down(lan9645x, port);
> 
> -- 
> 2.52.0
> 


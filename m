Return-Path: <devicetree+bounces-271087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aM3NFfhIqGnysQAAu9opvQ
	(envelope-from <devicetree+bounces-271087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 16:00:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 025362021DC
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 16:00:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 499123196DCD
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 14:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E513A257F;
	Wed,  4 Mar 2026 14:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RX68Q39j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3CD3A6EF1
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 14:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772635949; cv=none; b=SabMxVuckXKdkQaPsvTU/OQ4epVUIU4OZcX3Q+T4TDyhCdPozHI3qXn4V04XqMFnQBvOAo5V7+9iZmK0pOG/0sGDMbHSGpPKaZqf2Vz+9iZQ5ThNtBr1EZKN76Sjfs7npAGeOrGUUcTU+90HgO/nq/a2JWi6UTzBVZ7vE1v54NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772635949; c=relaxed/simple;
	bh=z6uT7O+CT8FhEGZthzxAia7oQbmDcyMrk6r/+n+jDIA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LijphYt6Sr/tgwPDeE/bg6PjfqNBgnQEEuQTXPB/pf9USyrEgRZsvfInwvwE7bZJzKgEKs0rjp+7GJUA73hpfD5Cx50w6UQw7KEGFBEYggsA3HnuU3RSE/G9CPmrQ/vd8Ta+ZoSa6NfPiZYyh9KBRCQmkB621on+rsL8MWT4DDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RX68Q39j; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439b83ed536so264404f8f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 06:52:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772635945; x=1773240745; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yhKHc0NTgAalEfYn0byG9UfswGgGUZojG8TrMIMwxKI=;
        b=RX68Q39jCrmG0QNGZVhS7jsmSC+3mzGFheii5mRCL81QOfkQjjhO/y006Ehp+fJSX4
         88yebQK55s3+gE2bOOPdr/qR+Vw1lKRpiXeTdsnnshX/QU8xI61MNFVBCN5phlLql4tS
         K+tSnp/e7nM6f//y7/Ngz6H+4+tMsVJoPYb2cXMSv8F//RE1isIyVDdVSrzxxQ9/lorh
         z0IX2xP/xuTIzGqD7RhkB1kLmIiEgXMjp218ydW/6lvOelZumJ9foGbz3wOhOrwgwHan
         i45/k9DVFGmAeBrlNAnD+r/8uI7AxpYGKqcevBXQfB99oio/wDjlQDh9rHK2bicUK9Ee
         ipcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772635945; x=1773240745;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yhKHc0NTgAalEfYn0byG9UfswGgGUZojG8TrMIMwxKI=;
        b=Xu9hvqS+sWM5kUtYlGO+suAqnGzYbVkk+41HzK/bB4FSOMvPpWfAt4pizxoRmptNfM
         2OccQPw8W3Dw4PfTgvqzzQziYi9mk2SP365iaSNphFUgAeq8OSk1/XhY50xYh+LOEbAP
         cRmQkDvINkiIN5aE1Y1X0LvVFrQQlOgVn1O+RTyYNO2IwM4yr07YBJ3oR0r6h9JaH3y+
         fvoBTV9ts7hj7EjyE3+tWNnlfmLQHW9ILPcs9etrRhFeO+/36kJJswnTi+e6mOHSRF/p
         WOToy7/R2NvYqYHg7IGugn1CcfCzm0AcACmRv9GGQXR9mQn55I6WQS3WQdTheL4nJOQh
         ns6A==
X-Forwarded-Encrypted: i=1; AJvYcCUsEWqY3HSa7pArlHYDptzRqkpSUa9mlu+f7jNgp9PkOhuQpF+xi3f7ulvw43O24uIqB7xjlolwQ2Dg@vger.kernel.org
X-Gm-Message-State: AOJu0YzQkK2ItdEnWFSZFBZ6XvBYblQqNI3axZo4PcCRklWeX3na3vSG
	BThjJZh2Ms4bbzdmX6lipirFPpRbtTEBmSDssl04d0i3PzZGWYf1DgqE
X-Gm-Gg: ATEYQzwWU6NgohE4ngipypEeS00q+7s8H4jzZsAWrsWBs4QGXZ8ZGgsEJYv4Aq2swe9
	yiNPhdrrTlAu4zljomdpNcFpS7dIZXIkQomLvIsT1w2AbBg+ukar+chYzWriZgSE4g3q8QDc3aM
	eWwbaZ9lExYgh9oR9yrVtmU6NGhYfFG/lKlbJEdWsB7xM0AKiVXw5Li+7q0qbAToJXwYcjCL6Am
	IL7gotJadnFIrA+ENn+PPmtArIdCfyBEZ7O6wCiPQtQlQzDgilJPb+LbDHiRGs2kWP6zjzorUPA
	qohLq4KfKX8ewfpRa/GAcIdCZSqPxgd166HIodZi3vA/CaQI23ldrKZWQWujiKQZ1OatuVHHzp3
	XOW2U7nrydnRPE0lASrei8npaxgdL7V60OENuNMFnLrlz5Ux+KRM7/n/KZ1tu7BCbsix/wbfk+g
	zKPtc2nZBHS3n9YOs=
X-Received: by 2002:a05:6000:288f:b0:439:b7c9:2efc with SMTP id ffacd0b85a97d-439c7fe0339mr2393701f8f.3.1772635945098;
        Wed, 04 Mar 2026 06:52:25 -0800 (PST)
Received: from skbuf ([2a02:2f04:d00e:3600:3896:e6f1:29a3:961b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b4d06c27sm23295313f8f.17.2026.03.04.06.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 06:52:23 -0800 (PST)
Date: Wed, 4 Mar 2026 16:52:21 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jens Emil Schulz Ostergaard <jensemil.schulzostergaard@microchip.com>
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
Subject: Re: [PATCH net-next 6/8] net: dsa: lan9645x: add vlan support
Message-ID: <20260304145221.ae3bxf5dh2v4itsx@skbuf>
References: <20260303-dsa_lan9645x_switch_driver_base-v1-0-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-0-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-6-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-6-bff8ca1396f5@microchip.com>
 <20260303145955.s4kjiwjv6ahn6zph@skbuf>
 <e30d9e84ac37142c26af35b6e589fdd23157aa35.camel@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e30d9e84ac37142c26af35b6e589fdd23157aa35.camel@microchip.com>
X-Rspamd-Queue-Id: 025362021DC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271087-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bridge_vlan_aware.sh:url,microchip.com:email,bridge_vlan_change_awareness.sh:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,bridge_vlan_unaware.sh:url,bridge_vlan_mcast.sh:url]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 03:40:30PM +0100, Jens Emil Schulz Ostergaard wrote:
> On Tue, 2026-03-03 at 16:59 +0200, Vladimir Oltean wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > 
> > On Tue, Mar 03, 2026 at 01:22:32PM +0100, Jens Emil Schulz Østergaard wrote:
> > > Add support for vlanaware bridge. We reserve vid 4095 for standalone
> > > mode, to implement fdb-isolation. An vlan-unaware bridge uses vid 0.
> > > 
> > > Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
> > > Signed-off-by: Jens Emil Schulz Østergaard <jensemil.schulzostergaard@microchip.com>
> > > ---
> > 
> > Have you run these from tools/testing/selftests/net/forwarding/? It
> > would help to know where to look closer for potential problems.
> > 
> > bridge_vlan_aware.sh
> > bridge_vlan_change_awareness.sh
> > bridge_vlan_mcast.sh
> > bridge_vlan_unaware.sh
> 
> No I have not run the selftests, only our own test setup. I will get these
> up and running.
> 
> Thanks,
> Emil

OK.

There are multiple ways to do that. What I tend to do is transfer the
entire selftests folder, then cd selftests/drivers/net/dsa/ and run the
selftests symlinked there with ./ from the current folder. Doing this
inherits the forwarding.config which makes DSA run well with those tests.


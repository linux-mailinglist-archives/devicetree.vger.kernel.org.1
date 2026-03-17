Return-Path: <devicetree+bounces-276767-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPe3BzqBuWmxHAIAu9opvQ
	(envelope-from <devicetree+bounces-276767-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:28:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A053C2ADF3F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:28:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 09CC3300459E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7FB3126B1;
	Tue, 17 Mar 2026 16:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1oilQ2R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA0B1311C1B
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 16:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773764583; cv=none; b=I8RlZAfmiYIWceh8sG2nv0BBLxIvPiXC3PI1EQ39EXzSCowh1MWt+buedsBKRQ+s4WiSMHOsinUdF6pKBv0Gy1Oy67UnLOpc5bkhEbfxr2ngazCpmAeJIYXdD3R7e2X2Od3G5i/9WZLT8trd2mM/JrFuoc+D9AEVj+Nk6gco4m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773764583; c=relaxed/simple;
	bh=A8Zxzj2VIVs7gCjiuA/V62IbfaThIn3OZXBZScVzyTk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Lp3B3+fVtcLmPJCzN6QPGE7aev5WZkK1Dofv0tIM8tsJALyKuGXCyaetqqg4Gtfo/GUj3hPGDyGagcg3HkwgRYGOXGmx+PRH3RhH02x8X/WnSfn3Ml7reOc6ExmMSCNW9g5tnm6gInAS1Pmr22394hZaWWS0fk06kOTttnER1wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1oilQ2R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87422C2BCC4
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 16:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773764583;
	bh=A8Zxzj2VIVs7gCjiuA/V62IbfaThIn3OZXBZScVzyTk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=n1oilQ2RfVsehzR1BSrE6fgxSTW2dQE0AuT+mhDnN3iMPS7tR7GIDgbhArz+7fqvG
	 quPXg4MNIyX+jzqJMQ/zZ10LQdr3OW/hCkQaQfzNUYR70OY+rAvq6fjPDGjpnID8FR
	 +MXH/8dlIhFagd1PipESy5lYWjQ7+JgOUr2GSqGYHZFow+psiatdybX0vFMfjVDElb
	 Pgy0wr5jqe6ZJS0n6bdg/LXTuVRWnDC5u1qRwNite/yAfUPdRcEvrLK1Y88G8sorn0
	 FedHOExohhq+JDObmMdQKPI2AOtqH4tkdVrUfYTFaNqBm6Ox2Zz9Kp0GZfCykNZe8L
	 FsRc6Yd9UXlpQ==
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-662efd1bdd4so39623eaf.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 09:23:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCViHarUDy4yL2c1WKtP90gc5bTPbrdRQ+3gBM3mnyW2znVuvg7A4ecn0oAdYA+/ruTZqQJ/EuZ5vCk5@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4nRqjlVRKnRG4r6syODBj3J4ItIxQNpv9EFF+1cJ3+V5ML/ab
	FhWCL+jSUTt4nzDSLPke+ldZvpYgglb+otADw0eSTM1nXC+jOBUr/BQhjTBHmlPQhzE7e55ZqXW
	XQR2OvWyzx6/21QMPApGxRbAOUzO+mBE=
X-Received: by 2002:a05:6820:2902:b0:67b:af16:488a with SMTP id
 006d021491bc7-67c0cfd4c10mr142151eaf.13.1773764582291; Tue, 17 Mar 2026
 09:23:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317090112.v2.1.I0a4d03104ecd5103df3d76f66c8d21b1d15a2e38@changeid>
 <CAJZ5v0hwO16=mP_vB=wi7x8CjROAw_Nd_Tq-hEohrDW3C58RbA@mail.gmail.com> <0f92ab73-5996-4977-9ada-e8a26957110c@kernel.org>
In-Reply-To: <0f92ab73-5996-4977-9ada-e8a26957110c@kernel.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 17 Mar 2026 17:22:50 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0iw3aaboh83wdOyYpGK9LkNafbmdU3zhLXtxrbSQU9-_g@mail.gmail.com>
X-Gm-Features: AaiRm50hNFkNvSW2ZboUnTv_v1gMXj6WJgZAzhbsC1wLCWGL90Y_OtahDKKfqu8
Message-ID: <CAJZ5v0iw3aaboh83wdOyYpGK9LkNafbmdU3zhLXtxrbSQU9-_g@mail.gmail.com>
Subject: Re: [PATCH v2] device property: Make modifications of fwnode "flags"
 thread safe
To: Danilo Krummrich <dakr@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Douglas Anderson <dianders@chromium.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Mark Brown <broonie@kernel.org>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Andrew Lunn <andrew@lunn.ch>, 
	Daniel Scally <djrscally@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Jakub Kicinski <kuba@kernel.org>, Len Brown <lenb@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Saravana Kannan <saravanak@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	devicetree@vger.kernel.org, driver-core@lists.linux.dev, imx@lists.linux.dev, 
	linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-spi@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276767-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,chromium.org,linuxfoundation.org,vger.kernel.org,linux.intel.com,sang-engineering.com,lunn.ch,gmail.com,davemloft.net,google.com,nxp.com,redhat.com,pengutronix.de,armlinux.org.uk,lists.linux.dev,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafael@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,chromium.org:email,intel.com:email,mail.gmail.com:mid,sang-engineering.com:email]
X-Rspamd-Queue-Id: A053C2ADF3F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 5:20=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> =
wrote:
>
> On 3/17/2026 5:11 PM, Rafael J. Wysocki wrote:
> > On Tue, Mar 17, 2026 at 5:04=E2=80=AFPM Douglas Anderson <dianders@chro=
mium.org> wrote:
> >>
> >> In various places in the kernel, we modify the fwnode "flags" member
> >> by doing either:
> >>   fwnode->flags |=3D SOME_FLAG;
> >>   fwnode->flags &=3D ~SOME_FLAG;
> >>
> >> This type of modification is not thread-safe. If two threads are both
> >> mucking with the flags at the same time then one can clobber the
> >> other.
> >>
> >> While flags are often modified while under the "fwnode_link_lock",
> >> this is not universally true.
> >>
> >> Create some accessor functions for setting, clearing, and testing the
> >> FWNODE flags and move all users to these accessor functions. New
> >> accessor functions use set_bit() and clear_bit(), which are
> >> thread-safe.
> >>
> >> Cc: stable@vger.kernel.org
> >> Fixes: c2c724c868c4 ("driver core: Add fw_devlink_parse_fwtree()")
> >> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> >> Acked-by: Mark Brown <broonie@kernel.org>
> >> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >
> > Rafael J. Wysocki (Intel) <rafael@kernel.org>
>
> ACK or RB?

RB, sorry.


Return-Path: <devicetree+bounces-270576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHfBKt/4pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:06:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E271F2029
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D096F30E7D31
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A5447F2F9;
	Tue,  3 Mar 2026 14:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LveiTJjN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0005D47F2EE
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772549929; cv=none; b=C+4mMXIUvenSyje7mbPQrBZlBPFNvEf+GTfYagY5771w6hSjld3LwJGqSGQLWgJixZ17bmcOU6gZGAY9+AfsIt6HM7lO2Z1p8iNhqTydyjSAmmjCWCSDYk+QSOvPwdgJfb3wq39RdmhVRk5i7DK4MLiZolbVvKxnpAJikXhSgAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772549929; c=relaxed/simple;
	bh=oGjc1yjeiIqz4fk/uBDQWtGhcY0iItbRMgLP4C00KAw=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=qEDK81W+R7TyUDpfPDMo9sGLh3Bl83fGjX2Cvg/gwBASkV8ueJA5S7+2QN4hTpSs4L9aMMh7jNBwqQGdJFRMWNwPqs8VIObXdwGFaEqvHAZuCQZoBpU83ZnwdUSsobgFsFGVlH1bGizwzK3b5vrESuLizINCCVXWg5xHhGo5zIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LveiTJjN; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-389f2c46d80so84067101fa.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 06:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772549924; x=1773154724; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oGjc1yjeiIqz4fk/uBDQWtGhcY0iItbRMgLP4C00KAw=;
        b=LveiTJjNXx5hPNvBlBSnvouKNtULsS930y+9lYTIz0ur59YAQK7guIOg6a0J4M4toT
         awLTA2i7sR8LN9EhZvoi5ZnVNxcpk4B1ck1z9aOvPluM1ywHwjMLcmN8FC7lQsu6w4zI
         xTu1DidaNqIdXgj8C3RAERdLJLmjDd8PVaZY3pF3KuQR95d60HDUA4NozaDCq/1NgoZc
         V3uiyI8EaJ172xFb8kc9+L1xswUS2mByrvyuIJqfsTKiP1QMsbtVzL6mpAt9yYnsr8+c
         2r1AEd2/cQhW1bg5BdXdgFy4+dobuUmpoHmRy/aVb1M6h5N7e5dNZViz+9tNR6Z35+CY
         LdZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772549924; x=1773154724;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oGjc1yjeiIqz4fk/uBDQWtGhcY0iItbRMgLP4C00KAw=;
        b=t+lVGMyzAq6P+8bt1mmeb8JV4qFh6TAOiTKyrvv/Jz60DqwcHyBedb1dP1xPhMh0VU
         fOS++NLnXX73Khjc15W3dfOYRekecSS6dJuC+geFP2nFZiC8YzDFnWjnhc/MDdGkx0Ks
         JOJGtRfW+VrTHEJk3TmplzrGwoWf4wZ2Ra9kagSFHwm3Ud1HtYnShObrdAIQWQx5is92
         8jgkhN6pElkomUP1BxA4yKNzF04bZwlxv0h66mmMXPNEiROWfvs7OgFylQJfF/+CHLFn
         WyjwjaJkeW5U21NVYBLk3R0IEHhcKzLlIC0sv21J7YYh3eHDjvFRiWYMy47BgVqwEAZV
         I7Zg==
X-Forwarded-Encrypted: i=1; AJvYcCWBB0qAGF9u5Ue+hGOh4yIRNTTTbDP1p2Pg2lnyK0roeu8ZS7iStCdFfkIaAPXCvw5edUfzEM0SVFPI@vger.kernel.org
X-Gm-Message-State: AOJu0YwgjdngkjXcjj/g2bf5pTCQSQlUbLg0EbecciK5utUbzaNTSZlt
	WvFVwHZJE49maApWmp/6njRHWSycR/Kd6/Ql+f17NQdoBcIu5w4++XdU
X-Gm-Gg: ATEYQzxxUDYBSL3yEKtOBP7idytyjUrvEP1LWRlH6SWOKRZiZJJSB698wnsg1AYZC/8
	imjaJXMlFX4snr1wN7700+XV7WBQ6I85UFhxIE+D58SC39hEUK87mIr/mhzxgzl/U8kKPd2pwkF
	drhM6juUNThVpgGwC2JDj6XbC0Qd9M/ufp0mdarPHzSul/fZJUK5mOclTjEJBFmMkeElJymgkmk
	MgHnInfrDOdovffl+5pg/Z9wCnTouvywex80vel4fuc5ndlVZsE7YAfsQbVOVFP/KSyS4TNYjhJ
	j1Kw7ZQkPKfTkNjBRPskqiBJZTlCL+nxDeZobyX4jzhR4PTcRykitL/TZt6drgI+hVzmFVWTsjd
	w/L4ZxJer0Jpb1V/NgYUIc/zDhAAFBxFofZFDLzemrknGhV7XOxlvCnnn0/ycrR+9NBaXDAAZU2
	2Y3wy4VCZRj8jO/VEQMsQ7YIwEU6IEim1Hcy45CVkLIpZh3UmvL+HEaARH+0xSX1l1ZpcAk8l1B
	eZE8WnLd99VYZCDunXCJ+5AArDHXOlUVJA6ZXqjqPlncg0=
X-Received: by 2002:a2e:80cf:0:b0:37b:aaf7:f022 with SMTP id 38308e7fff4ca-389ff3644bemr93473051fa.35.1772549923580;
        Tue, 03 Mar 2026 06:58:43 -0800 (PST)
Received: from smtpclient.apple (2001-14ba-437-c00-1991-9ef0-d3f1-621a.rev.dnainternet.fi. [2001:14ba:437:c00:1991:9ef0:d3f1:621a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a124d7fd31sm359172e87.68.2026.03.03.06.58.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2026 06:58:43 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
Subject: Re: [PATCH v5 03/28] of: dynamic: Fix overlayed devices not probing
 because of fw_devlink
From: Kalle Niemi <kaleposti@gmail.com>
In-Reply-To: <20260227135428.783983-4-herve.codina@bootlin.com>
Date: Tue, 3 Mar 2026 16:58:30 +0200
Cc: Andrew Lunn <andrew@lunn.ch>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>,
 Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Peter Rosin <peda@axentia.se>,
 Arnd Bergmann <arnd@arndb.de>,
 Saravana Kannan <saravanak@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 David Rhodes <david.rhodes@cirrus.com>,
 Linus Walleij <linusw@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Mark Brown <broonie@kernel.org>,
 Len Brown <lenb@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Scally <djrscally@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Davidlohr Bueso <dave@stgolabs.net>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Dave Jiang <dave.jiang@intel.com>,
 Alison Schofield <alison.schofield@intel.com>,
 Vishal Verma <vishal.l.verma@intel.com>,
 Ira Weiny <ira.weiny@intel.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Wolfram Sang <wsa@kernel.org>,
 linux-kernel@vger.kernel.org,
 driver-core@lists.linux.dev,
 imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org,
 linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org,
 linux-sound@vger.kernel.org,
 patches@opensource.cirrus.com,
 linux-gpio@vger.kernel.org,
 linux-pm@vger.kernel.org,
 linux-spi@vger.kernel.org,
 linux-acpi@vger.kernel.org,
 linux-cxl@vger.kernel.org,
 Allan Nielsen <allan.nielsen@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Steen Hegelund <steen.hegelund@microchip.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Saravana Kannan <saravanak@google.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <E7575FC9-7D0D-43E8-A477-4DEE79101C13@gmail.com>
References: <20260227135428.783983-1-herve.codina@bootlin.com>
 <20260227135428.783983-4-herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>
X-Mailer: Apple Mail (2.3864.400.21)
X-Rspamd-Queue-Id: 62E271F2029
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lunn.ch,kernel.org,glider.be,gmail.com,linuxfoundation.org,nxp.com,pengutronix.de,baylibre.com,sang-engineering.com,axentia.se,arndb.de,google.com,opensource.cirrus.com,cirrus.com,linaro.org,linux.intel.com,stgolabs.net,huawei.com,intel.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,microchip.com,bootlin.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270576-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_GT_50(0.00)[63];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kaleposti@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	APPLE_MAILER_COMMON(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bootlin.com:email]
X-Rspamd-Action: no action

On 27. Feb 2026, at 15.54, Herve Codina <herve.codina@bootlin.com> =
wrote:
>=20
> From: Saravana Kannan <saravanak@google.com>
>=20
> When an overlay is applied, if the target device has already probed
> successfully and bound to a device, then some of the fw_devlink logic
> that ran when the device was probed needs to be rerun. This allows =
newly
> created dangling consumers of the overlayed device tree nodes to be
> moved to become consumers of the target device.
>=20
> Fixes: 1a50d9403fb9 ("treewide: Fix probing of devices in DT =
overlays")
> Reported-by: Herve Codina <herve.codina@bootlin.com>
> Closes: =
https://lore.kernel.org/lkml/CAMuHMdXEnSD4rRJ-o90x4OprUacN_rJgyo8x6=3D9F9r=
Z+-KzjOg@mail.gmail.com/
> Closes: =
https://lore.kernel.org/all/20240221095137.616d2aaa@bootlin.com/
> Closes: =
https://lore.kernel.org/lkml/20240312151835.29ef62a0@bootlin.com/
> Signed-off-by: Saravana Kannan <saravanak@google.com>
> Link: =
https://lore.kernel.org/lkml/20240411235623.1260061-3-saravanak@google.com=
/
> [Herve: Rebase on top of recent kernel and use =
get_device_from_fwnode()]
> [Herve: Add the call to driver_deferred_probe_trigger()]
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
>=20

Hello Herv=C3=A9,

Tested this patch series with BeagleBone Black and all tests pass. =
bd718x7 driver probes.

Tested-by: Kalle Niemi <kaleposti@gmail.com>

BR
Kalle=


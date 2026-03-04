Return-Path: <devicetree+bounces-270892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOJGEBnnp2mDlgAAu9opvQ
	(envelope-from <devicetree+bounces-270892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:02:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A025E1FC1C3
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:02:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29249304074C
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:01:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4303C388E6B;
	Wed,  4 Mar 2026 08:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="sEfJKaEN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5A4384258;
	Wed,  4 Mar 2026 08:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772611294; cv=none; b=UKel+P95yHxsREq6o1VNyr/66D7F7HTTzMcSfq2j/+eYUSMuL6vxfoT+yunuj73/GZCFj/27tg2FnG23XOfvGbFc6ggtVa8TuzbuuuyTZy9KxxzOmF5HGNQpn0bOsEGoHvvPZFEknF6IXCJQzTJ53sP21jAUQgCNBcWUFSgjFNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772611294; c=relaxed/simple;
	bh=4fX78MIcE7tbm3F+4FhgdlR2KoXjcbcAT2iiQLrMxQA=;
	h=Content-Type:Date:Message-Id:Cc:From:To:Subject:Mime-Version:
	 References:In-Reply-To; b=WSt1pLMe6ZAqU8cqQ2M6oSeox9ANgGYt/Kryo2mYR8Xo3QnATGOimMMyUUDx2OfKesVpgWDOXXtIUqjI2Fv1l8iy5uCu4DfQP5f7rw7KHN+/CJH/QpLBN+t2n5G2ExSAnw4KiV0nRsedLQrYB4Q+1oZ4hh+ZLQXj09TM2J7pq3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=sEfJKaEN; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id AB282C40FBD;
	Wed,  4 Mar 2026 08:01:46 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 98F0D5FF5C;
	Wed,  4 Mar 2026 08:01:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7B9B810369414;
	Wed,  4 Mar 2026 09:01:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772611287; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=EUWq5kpBIjsc0+kAM5GMY0X+W2LCngNN6LmjmMbSbKA=;
	b=sEfJKaEN0ReR/PcKLCvhIin7UaqONdSGTccrky3vrUuXx1S+uI3hVV8kw1lhdbSmiSvb8n
	7eAZy5FGo8RTXiMTycVYB/O1IZ8HyFZ1fObyINHKAAWCZ75WNY3XpD2zS67JfzKUDbZByd
	oeoX/SbQUvv6tn36HHgjOecMSgQIovWqIQdQlhi0XhBVD6NAfnSOLP/qN123etXDHZjk9g
	wEAquxlveb/dWrboNrT0UrC+g2a1yKDbzDyqyhuG13xuPh3gH8+YSpMJckD8hJMEURWaZ2
	HfVM8VIjyEtyz2QdB5MyPEmPuEzk04gZVU0SFxBd5QqDEgue9bnuJmZB+o8DqA==
Content-Type: text/plain; charset=UTF-8
Date: Wed, 04 Mar 2026 09:01:20 +0100
Message-Id: <DGTU9887GHPO.2FUQ3QITRG7F8@bootlin.com>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>,
 <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <s.hauer@pengutronix.de>, <kernel@pengutronix.de>,
 <festevam@gmail.com>, <shawnguo@kernel.org>,
 <laurent.pinchart+renesas@ideasonboard.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>, "Hugo
 Villeneuve" <hvilleneuve@dimonoff.com>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: "Hugo Villeneuve" <hugo@hugovil.com>, "Frank Li" <Frank.li@nxp.com>
Subject: Re: [PATCH 08/14] ARM: dts: imx6ul-var-som: factor out SD card
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
References: <20260302190953.669325-1-hugo@hugovil.com>
 <20260302190953.669325-9-hugo@hugovil.com>
 <aaX5E7-3xvkaVV-o@lizhi-Precision-Tower-5810>
 <20260302161545.f6b76209400e8fbe35cd51a0@hugovil.com>
In-Reply-To: <20260302161545.f6b76209400e8fbe35cd51a0@hugovil.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: A025E1FC1C3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270892-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,pengutronix.de,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,dimonoff.com];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[antonin.godard@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Action: no action

Hi,

On Mon Mar 2, 2026 at 10:15 PM CET, Hugo Villeneuve wrote:
> Hi Frank,
>
> On Mon, 2 Mar 2026 15:54:43 -0500
> Frank Li <Frank.li@nxp.com> wrote:
>
>> On Mon, Mar 02, 2026 at 02:03:44PM -0500, Hugo Villeneuve wrote:
>> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
>> >
>> > Move SD support to a separate include, since it cannot be used at the
>>=20
>> s/include/dtsi/
>
> Ok. I will also change it in all the other commit messages.
>
> =20
>> > same time as the Wifi/BT module.
>>=20
>> what's relation ship between wifi/bt? you just move sd related part to a
>> dtsi file.
>
> As stated in commit message, the SD card interface cannot be used if
> the Wifi/BT module is in use.
>
> Sd card is not mandatory, for example on our board we do not have it,
> so we need to have it disabled.

My two cents: if SDCard and WiFi/Bt support are the only mutually exclusive
features for this SoM, then how about the following organization:

Three SoM dtsi files:

imx6ul-var-som-common.dtsi

  imx6ul-var-som-wifi-bt.dtsi:
    #include "imx6ul-var-som-common.dtsi"

  imx6ul-var-som-sd.dtsi:
    #include "imx6ul-var-som-common.dtsi"

A common concerto dtsi file:

  imx6ul-var-som-concerto-common.dtsi

Separate concerto dts files:

  imx6ul-var-som-concerto-wifi-bt.dts:
    #include "imx6ul-var-som-wifi-bt.dtsi"
    #include "imx6ul-var-som-concerto-common.dtsi"

  imx6ul-var-som-concerto-sd.dts
    #include "imx6ul-var-som-sd.dtsi"
    #include "imx6ul-var-som-concerto-common.dtsi"

And possibly the following one to avoid breaking compatibility:

  imx6ul-var-som-concerto.dts
    #include "imx6ul-var-som-sd.dtsi"
    #include "imx6ul-var-som-concerto-common.dtsi"

In any case, the imx6ul-var-som-concerto-common.dtsi should be full-feature=
d
(and thus avoid the imx6ull-var-som-concerto-full.dts file from patch 09/14=
), if
that's possible?

But I don't know if this follows common practices, and if this is possible,=
 but
I think it's clearer as a user to know if the DTS I will use will support
WiFi/BT _or_ support SDCard by looking at its name.

Of course this is based on the assumption that those two features are the o=
nly
mutually exclusive ones.

What do you think?

Antonin


Return-Path: <devicetree+bounces-317519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fIzAIlmLQ2rNawoAu9opvQ
	(envelope-from <devicetree+bounces-317519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:24:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 242DF6E21CC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:24:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LK+H7vXj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317519-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317519-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99F51305D5C8
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 453D53612FE;
	Tue, 30 Jun 2026 09:18:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3334E34F474;
	Tue, 30 Jun 2026 09:18:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811118; cv=none; b=Eo68qQmZ0xNdXRYeH/RcqnBdi2pnLNC9mUnfE6MwjYJpGwjO8Dn0lc+fbkmY85Agy+u/aWloqm0FDPBy68soiu22r/YAVA7+TYTVgI3vzns7tlhcDQRPayMV+F8fAMknU3HNAm17GdJDaRLyv5UZUZ6SacqSrpckS5ZxWxBknc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811118; c=relaxed/simple;
	bh=dTHrAM1YEIq43x31gQhH1UdnbSVUyR1Gc6nIP7+jS2Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=f/05b3NvtlPi22UYEPyHYfvzuLrktr+hfrKLjqAP0Yiqj6AaGmyvy5BZSgDA33KL+cMLzhdZT1C49SMnTIIAVL+laU2wZvVkCpoIMky5X6q8sMoLVRyx119i1UeJGM3slDmRWQtFdTv0XkdBMe0evP371JFT2/shSfgbj+t00nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK+H7vXj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61EF91F000E9;
	Tue, 30 Jun 2026 09:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782811116;
	bh=KW1pfKNHEAPg9bjM0z1MQwuwdmRdFhmyw85dKXvLtXo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LK+H7vXjqx8kPtPQsZvFg7rIHK2GerqSgO316aMCFCiBlBpfSQF2VSp4RCXPkKoVP
	 5NFckVm61lPuDDIC8fUld3UOnCXMmnrkqXiIy0G62pIDILUfYVARGS6pmFRXDVwGqU
	 3raKqv1ULsWkeVQlDE7GzaSNjUi8g41whXkULAGSRA6W6hoGmZi1+ZfssPOkWjQAPL
	 I3LTzzJLd5FGOsM7Y0NiraeDMu8iqth+vuvfurSNuPfWkn5QZblOddQV5/hmnLIdwc
	 S4PlG5bTF+cz5VYb/H8pPq8Nb5Alkm92h8oKcvPOEPkUonTJsXOkBvEIDLQ22LuiVF
	 QnztqCxzQebBA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 07/19] i2c: pxa-pci: use
 platform_device_set_of_node()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, Frank.Li@kernel.org, dri-devel@lists.freedesktop.org, imx@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260629-pdev-fwnode-ref-v2-7-8abe2513f96e@oss.qualcomm.com>
References: <20260629-pdev-fwnode-ref-v2-0-8abe2513f96e@oss.qualcomm.com>
 <20260629-pdev-fwnode-ref-v2-7-8abe2513f96e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 09:18:35 +0000
Message-Id: <20260630091836.61EF91F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317519-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:dri-devel@lists.freedesktop.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 242DF6E21CC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Replacing direct assignment of `pdev->dev.of_node` with `platfor=
m_device_set_of_node()` introduces an OF node reference leak.
--

commit 1020448923f472d3e1acfa19d1b3b2b19a08078e
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

i2c: pxa-pci: use platform_device_set_of_node()

This commit encapsulates the assignment of the OF node for dynamically
allocated platform devices by replacing direct assignment with the
platform_device_set_of_node() helper. This change prepares the driver
for an upcoming rework of the reference counting logic for platform devices.

> diff --git a/drivers/i2c/busses/i2c-pxa-pci.c b/drivers/i2c/busses/i2c-px=
a-pci.c
> index dbd542300f800..92a0647f08c69 100644
> --- a/drivers/i2c/busses/i2c-pxa-pci.c
> +++ b/drivers/i2c/busses/i2c-pxa-pci.c

[ ... ]

> @@ -76,7 +76,8 @@ static struct platform_device *add_i2c_device(struct pc=
i_dev *dev, int bar)
>  		goto out;
>  	}
>  	pdev->dev.parent =3D &dev->dev;
> -	pdev->dev.of_node =3D child;
> +
> +	platform_device_set_of_node(pdev, child);

[Severity: Medium]
Does this cause an OF node reference leak in add_i2c_device()?

The for_each_child_of_node() loop earlier in this function acquires a
reference to the matched child node. Before this patch, the direct assignme=
nt
transferred ownership of that reference to the platform device.

Because platform_device_set_of_node() explicitly acquires its own additional
reference internally, the original reference from the loop iterator appears=
 to
be left unreleased.=20

Is an of_node_put(child) needed after this helper call to balance the
reference count?

> =20
>  	ret =3D platform_device_add_resources(pdev, res, ARRAY_SIZE(res));
>  	if (ret)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-pdev-fwnod=
e-ref-v2-0-8abe2513f96e@oss.qualcomm.com?part=3D7


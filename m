Return-Path: <devicetree+bounces-319808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nL/hMApbR2qEWwAAu9opvQ
	(envelope-from <devicetree+bounces-319808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:47:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DCE6FF31D
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:47:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kYj23yoU;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319808-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319808-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3BA553039A65
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 06:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6A64389DF0;
	Fri,  3 Jul 2026 06:46:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20AB382F03
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 06:46:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783061199; cv=none; b=uGlE9evdM1rm2LU+sjjno1cHM91+QiRHlnQSC8lndna0UG4A4EKYByPj1vySy2MnYKwVwRHL9Bo8sZklfNQk/fHoeXtKmbZc6vbp0hVk75B4M3p2oSDRDqTvCrxUWnCJEHx6m1s27c6oZ1D1A3ACJ/7O5K35z80HRcQsZU9x9Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783061199; c=relaxed/simple;
	bh=zYUKFu34AySjt0VqkrhoPCtfsuMP6/HQY2yTKAKchOg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jVAD3Kik3tZIoCAF74Bzz6ESmGLhQueXIB7GyehsA/bd7Nts0syxsAwk/HnHsiH/HViu6BZG6CmGu/3ciXZfKQGrCkxEw0KiBF8JlPx6Y0pNW0ckS1KMyDEw2EDzCo4r79gLVHu/mIzk+hViUS6wEnW+nswa3Bhejr4dy8oe9B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYj23yoU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D2CD1F000E9;
	Fri,  3 Jul 2026 06:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783061196;
	bh=zYUKFu34AySjt0VqkrhoPCtfsuMP6/HQY2yTKAKchOg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kYj23yoUPDrw4kJlKt/E77zf4el3LAKAzPHlAhPydret8YWSS2QS8q2RSbHRFhGnz
	 c+32s/yCeiIK+tfr5po9R9mIkP+FA1jJ2ZDH5I2glrfb9Z6YrVRz3G1YYrhvo9rFgT
	 aDFQmRft3PSEILXcivPvTGFBGhwv78WTEEXcjLcLtYtiW1btGZ2j2DIKSfXLbFuWF+
	 yfKWzBL8QPmTMwT3ANnyJVDQ4+FHjLTedXXxhOMElL1JTXElQvBTpsV5Tty9/Vvlq/
	 3rY5k53n3cE5QWPegRe9xJteB/FNGcGWR/81xOv0FR2tTKjx5hS9zkSLt3xybPqvcS
	 5p4m0col/PaqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v8 2/9] dt-bindings: net: lan9645x: add
 LAN9645X switch bindings
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260702-dsa_lan9645x_switch_driver_base-v8-2-90228d8bba58@microchip.com>
References: <20260702-dsa_lan9645x_switch_driver_base-v8-0-90228d8bba58@microchip.com>
 <20260702-dsa_lan9645x_switch_driver_base-v8-2-90228d8bba58@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 06:46:35 +0000
Message-Id: <20260703064636.0D2CD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319808-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jensemil.schulzostergaard@microchip.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52DCE6FF31D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing MDIO bus definition for integrated PHYs in LAN9645X swit=
ch binding.
--

(Note: The format of this report is altered due to recitation restrictions.=
 Standard inline diff quoting has been omitted in favor of a free-form summ=
ary of the findings.)

commit ab7b03f9ab6454a9469ee1ad3b3543a10a033f6c
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>

dt-bindings: net: lan9645x: add LAN9645X switch bindings

This commit adds device tree binding schemas for the Microchip LAN9645X
multi-port Gigabit AVB/TSN Ethernet switch. It documents the compatible
strings, Ethernet ports, and provides an example configuration.

[Severity: Medium]
The binding description notes that the switch includes five integrated PHYs,
and the provided example references these PHYs using phy-handle properties
such as phy-handle =3D <&cuphy0>. However, the schema sets
unevaluatedProperties: false at the root level but does not define or inclu=
de
a reference for an mdio child node.

Will this cause device tree schema validation to reject valid configuration=
s?
If a device tree author correctly adds an mdio child node to represent the
internal bus for these integrated PHYs, the strict property evaluation will
reject it since the mdio property is neither defined in this file nor fully
evaluated by the included dsa.yaml schema. Should an mdio property definiti=
on
be added to the root properties list to allow describing the integrated PHY=
s?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-dsa_lan964=
5x_switch_driver_base-v8-0-90228d8bba58@microchip.com?part=3D2


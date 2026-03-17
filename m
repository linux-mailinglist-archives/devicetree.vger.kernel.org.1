Return-Path: <devicetree+bounces-276556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJmKJAwbuWn5qgEAu9opvQ
	(envelope-from <devicetree+bounces-276556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:12:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1352A64AD
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:12:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD2E33021EB6
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 09:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF2C33563C2;
	Tue, 17 Mar 2026 09:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="WeOCzI9H"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DAE355F41;
	Tue, 17 Mar 2026 09:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773738492; cv=none; b=AlOMpB5Hyj7vtELr7gvR7FDlH9ZLZG52wZtvfA7FKMRIhonQIIFqtQpbL3WrlGyEVFO7oGh/4dnNUTXxZbBhWJgPMrf4/WnwJ5UFaFBAb74biti3rBxpRqyiuMwl53H9CIBOUPQQfJk9J68Y5BbrlUnJhVDqcZKHftlCGOKSrRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773738492; c=relaxed/simple;
	bh=GxU7oKtQSyvOrS51TYykMnS21YYrchO3D2jqni2fbnE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=IlrJv536yskreUDjLuWzuXjfC5YrveJewWbYY5v8lHwPDn2WSIJlL4umWoLjiyEh/XGGkcZ1YkOlGslIob6wlytH5bLLnWRmjs1aAfRsS8bB/NG2SUpy888P3CC4KtDOQYLZAnkfP87jnbsSdsOXfDQOu+sS4WN4Qf5tqxG5pWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=WeOCzI9H; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=DkcKCZYotbOsY6gWuui4XL63+crO9p5VFMgkclrb6P8=; b=WeOCzI9HAmajHpVuCHa+Ibh0RM
	4hSCWuIjEGIyuivMpM1kf8J1TTHRCyWVyoQ+JHcoF/1LojBD2xbOqFr4PY2UpFr6PiCO9Vw3jFF9L
	PoTnkNjQWNlzgCmrR/a4DJhW1SVKaUOS2YJZi+/vI+pNK+/6WwlPnIjKXKvJ4k/vyHhj2yGCpdDI7
	DeTJyKv9UxD3xPAf2W6kTisNNVyzXYJQ7GNMn4708dWOuIw+CLWD8VjsJX8+zSU3R3S6J86FlkliZ
	77kDAAtzLopQb4oduXVcc3XiL1mklk4JgF17TZlO6x7xVhVcoZW2FL+2ngV88gObm+bsVKUaQrGfv
	vqzq1g4g==;
Received: from sslproxy04.your-server.de ([78.46.152.42])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2QPG-0009Re-2Z;
	Tue, 17 Mar 2026 10:08:06 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy04.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2QPF-000PiB-38;
	Tue, 17 Mar 2026 10:08:06 +0100
Message-ID: <6e34ecefae8e2f187c5ecfdfd343fb717711c21d.camel@ew.tq-group.com>
Subject: Re: [PATCH v6 0/2] TQ-Systems TQMa62xx SoM and MBa62xx board
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero
 Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, Tony Luck
 <tony.luck@intel.com>,  "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 linux-arm-kernel@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@ew.tq-group.com
Date: Tue, 17 Mar 2026 10:08:05 +0100
In-Reply-To: <cover.1772443991.git.nora.schiffer@ew.tq-group.com>
References: <cover.1772443991.git.nora.schiffer@ew.tq-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27943/Tue Mar 17 07:24:09 2026)
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276556-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:url,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Queue-Id: EE1352A64AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 2026-03-02 at 11:14 +0100, Nora Schiffer wrote:
> This adds Device Trees for our AM62x-based SoM TQMa62xx and its
> reference carrier board MBa62xx.
>=20
> Not yet included are overlays to enable LVDS display output and MIPI-CSI
> camera input.

Hi Nishanth,

do you have any further comments on these patches? Can we get the series in=
to
v7.1?

Best,
Nora




>=20
> Changed in v6:
> - Update author information following name change
> - Rebase onto latest ti-k3-dts-next
> - Disable incomplete panel node
> - Add various comments to explain why nodes are disabled
> - Extend comment explaining disabled 1400MHz OPP
> - Use consistent comment style for pinmux
>=20
> Changes in v5:
> - Rebase onto latest ti-k3-dts-next
>=20
> Changes in v4:
> - Rebase onto latest ti-k3-dts-next
> - Reorder boot phase tags after other standard DT properties
> - Add missing supply regulators in SPI-NOR flash and USB hub
> - Set status =3D "okay" in &cpsw3g, as it is disabled in k3-am62-main.dts=
i
>   now
> - Add disabled 1400MHz OPP entry (will be enabled by bootloader if
>   supported by PMIC configuration)
> - Update copyright years in new files
>=20
> Changes in v3:
> - Rebased onto ti-k3-dt-for-v6.18
> - 3 of the 5 patches in v2 have been applied already and are dropped
> - Include k3-am62-ti-ipc-firmware.dtsi, drop now redundant configuration
> - Change node name for MCU reserved memory to 'memory'
> - Use rgmii-id PHY mode
> - Drop now redundant ti,rx-internal-delay
> - Update simple-audio-card,name to match other TQ SOMs with compatible
>   configuration
> - Reference dss_pins in dss node (actual display support will be added
>   in a follow-up patch series)
> - Consistently use GPIO_ACTIVE_HIGH define
> - Drop unneeded usb0 quirk flags
> - Add boot phase tags
>=20
> Changes in v2:
> - Collected acks and reviews
> - Rebased onto v6.13-rc1
>=20
>=20
> Nora Schiffer (2):
>   dt-bindings: arm: ti: Add compatible for AM625-based TQMa62xx SOM
>     family and carrier board
>   arm64: dts: ti: Add TQ-Systems TQMa62xx SoM and MBa62xx carrier board
>     Device Trees
>=20
>  .../devicetree/bindings/arm/ti/k3.yaml        |    7 +
>  arch/arm64/boot/dts/ti/Makefile               |    1 +
>  .../boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts | 1034 +++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi |  360 ++++++
>  4 files changed, 1402 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi
>=20

--=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
https://www.tq-group.com/


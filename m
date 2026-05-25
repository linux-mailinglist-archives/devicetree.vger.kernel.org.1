Return-Path: <devicetree+bounces-302695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPlnJWlFFGoKLwcAu9opvQ
	(envelope-from <devicetree+bounces-302695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:49:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F215CAACB
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 14:49:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A842D3013A86
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F7837F001;
	Mon, 25 May 2026 12:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrCR7ftp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CEA34DCF3
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 12:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779713360; cv=none; b=pZuVJeJCzpK0zpffjW2SsuF5ORrW2wXSeiC1+7nfqVJ5DUyo9+WFRRNTFft83UtDcvyjs30cB84zcvzXrISAYA5nAVdOLW1KUczX3SoFexc9LzbFu4iKmRmsE7LF2l31PIb6fOSyi42VHhKgU0dESylm8CN2Q3l40WJKp9DqCoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779713360; c=relaxed/simple;
	bh=GMVjpafunQ2WYd9zMJUk8e9NRtVUr0bcpUzgG5mpHyY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sV/idhLf4AY+Xjrvp/A9MXy3v/TyjNW9e6a1vLL06jOqnWSJgAWyRHRQoenJ2pX1TnPLvGZN7jc6i5aCJad7e27whsQACUWf5YhwpLQgy5anthX9cC5qWdzOviRbVgmZnbmQbkIhM10WyMrDt7eIBuQ2sjk4sz+KoPHwnY8jDh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrCR7ftp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42DD21F000E9;
	Mon, 25 May 2026 12:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779713359;
	bh=5viopk5WUAgp51pT5ZMWsn2iKNnmCFJSS79+NQTtyl8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mrCR7ftpFz+3hd/MI1IXvBmxHjk5xjW8HupJoHvbETPEM5ETqBBVdn0BdiwAYq88j
	 orHiu1SbIQE91qeXEjlA3iOAvLAIOOtiVYAIEBpXnZ7yuk5hnKkNY90UzxbFylhNE9
	 J7oPlT/FTSaTm5F9NlC9mEccom8gGEQUDuJTAtls0EKn0OlfrmobTnfZ7qlgLHfOa1
	 oKeyojZxBgzldDBvzb37tRmZpndggKlfewEYWnNnlqENrIIiTubhRUfOqG34IAHf5n
	 2OzlhPgjaAnQPWIJIdDR7y9kMhDxqzE5/iG5+rdPnDdZlEwmHc0VIzD/g/2OQ1VDyt
	 CCRoaHvdauB2g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 8/8] arm64: dts: renesas: r9a09g047e57-smarc: add
 DA7212 audio codec support
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: wsa+renesas@sang-engineering.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260525110603.4018170-9-john.madieu.xa@bp.renesas.com>
References: <20260525110603.4018170-9-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 12:49:18 +0000
Message-Id: <20260525124919.42DD21F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302695-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,renesas.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: E1F215CAACB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Unnecessary and schema-violating `#address-cells` and `#size-cells`=
 properties in the `da7212: codec@1a` node.
--

commit 81d96eea4cdb9cf3abc2275fa638509b017cf64e
Author: John Madieu <john.madieu.xa@bp.renesas.com>

arm64: dts: renesas: r9a09g047e57-smarc: add DA7212 audio codec support

This commit enables audio support on the RZ/G3E SMARC2 EVK boards by
adding device tree nodes for the DA7212 audio codec. The codec is
connected via I2C1 and uses SSI3/SSI4 for sound input and output.

> diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/ar=
m64/boot/dts/renesas/r9a09g047e57-smarc.dts
> index 6372f582a7c41..7defd342294ad 100644
> --- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
> +++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts

[ ... ]

> @@ -99,6 +146,37 @@ &i2c0 {
>  	pinctrl-names =3D "default";
>  };
> =20
> +&i2c1 {
> +	da7212: codec@1a {
> +		compatible =3D "dlg,da7212";
> +		#sound-dai-cells =3D <0>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;

[Severity: Low]
Are these cell size properties necessary here? Since the child port node
does not have a unit address or a reg property, this triggers an
avoid_unnecessary_addr_size dtc warning.

Additionally, does this cause a dtbs_check validation failure? The binding
schema for this device does not define #address-cells or #size-cells and
sets unevaluatedProperties: false.

> +		reg =3D <0x1a>;
> +
> +		clocks =3D <&versa3 1>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525110603.4018=
170-1-john.madieu.xa@bp.renesas.com?part=3D8


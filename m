Return-Path: <devicetree+bounces-286178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Lu7EXOl12lfQwgAu9opvQ
	(envelope-from <devicetree+bounces-286178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 15:11:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D003CAD48
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 15:11:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 786ED3027112
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 13:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD4B63D091A;
	Thu,  9 Apr 2026 13:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="N9Bco2Ei"
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com [95.215.58.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974913BE14A
	for <devicetree@vger.kernel.org>; Thu,  9 Apr 2026 13:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775740216; cv=none; b=o3bufVcTdzBauf03PE3w5+aKEA6JV3T8WvWc4OzNqNNUAvdznV/ofdKGk3oj7l1zk4cVYCNuuCm32sfv8+++JO0S3bF4bpna9ywxSc3HZX/p6vsqTMY/zHIaCRdJfH6ABhbdyNvCORR9YLmil+aXJ1wlq8NTN4QeJ2HfN5bbvAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775740216; c=relaxed/simple;
	bh=aw0O7YfUqLjRhvBW29aB/0bqLqJeLU66RY8DBvIoS98=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=Z7IpPDuJlptn/9dEEex2dheF+9mhLkZyZUu7Lkd/tLY3WsZU30IARFxtM9Qn5AoHYpZWIW9GdnKaDt9/aGXjhbeY1ZJVLl1XPbk5xWHmXllUf/+WPj881opq18X7F6h8BOe4hkzH5oQhtSTcZkc4sTeYD6rd7lmzc7Cyaz9ak/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=N9Bco2Ei; arc=none smtp.client-ip=95.215.58.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1775740202;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iE8w8BKR9j/c/KXxBdy3hHdvFhkW5sMVrg83EMjqrqE=;
	b=N9Bco2Ei3oTM6eVFFmiNqUiCX0NTEkLaqtjBfRsV5q/xJ8gOTt81MFvLwuUNXEYR/pkr53
	XTxf8e5oRSJVghhqEUrMCQ4gUiXjHMqbpBaZwWlmEaLRUZ/v1Fa51J+RSQO4NPqZyeWVOW
	POg0F86nqnX0ZjGNgR95HygdWV3ORZI=
Date: Thu, 09 Apr 2026 13:09:58 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Frank Wunderlich" <frank.wunderlich@linux.dev>
Message-ID: <7ac2cb56696a4d23f5951291101ce5292c9042c2@linux.dev>
TLS-Required: No
Subject: Re: [PATCH] arm64: dts: mediatek: mt7988a-bpi-r4pro: rename mgmt
 port to lan5
To: "Frank Wunderlich" <linux@fw-web.de>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Matthias Brugger" <matthias.bgg@gmail.com>,
 "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, "Daniel Golle" <daniel@makrotopia.org>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, "Andrew
 LaMarche" <andrewjlamarche@gmail.com>,
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20260303202006.37515-1-linux@fw-web.de>
References: <20260303202006.37515-1-linux@fw-web.de>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286178-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[fw-web.de,kernel.org,gmail.com,collabora.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,makrotopia.org,lists.infradead.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frank.wunderlich@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 28D003CAD48
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

just a friendly ping....

Am 3. M=C3=A4rz 2026 um 21:20 schrieb "Frank Wunderlich" <linux@fw-web.de=
 mailto:linux@fw-web.de?to=3D%22Frank%20Wunderlich%22%20%3Clinux%40fw-web=
.de%3E >:
>=20
>=20From: Frank Wunderlich <frank-w@public-files.de>
>=20
>=20It turns out that the label mgmt confuses users and now official case=
 is
> released where the port is labeled with number 5. So just rename it to
> lan5 to follow naming convension (lan1-4 from mxl switch and lan6 for l=
an-
> combo).
>=20
>=20Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
>=20diff --git a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro=
.dtsi b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
> index a48132f09411..1175ee156cb3 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt7988a-bananapi-bpi-r4-pro.dtsi
> @@ -207,7 +207,7 @@ &gsw_phy0_led0 {
>  };
>=20=20
>=20 &gsw_port0 {
> - label =3D "mgmt";
> + label =3D "lan5";
>  };
>=20=20
>=20 /* R4Pro has only port 0 connected, so disable the others */
> --=20
>=202.43.0
>=20

regards=20Frank


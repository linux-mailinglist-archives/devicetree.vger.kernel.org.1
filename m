Return-Path: <devicetree+bounces-324828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JiMLBc9hUmpyPAMAu9opvQ
	(envelope-from <devicetree+bounces-324828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 17:31:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B6D741FDE
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 17:31:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cknow-tech.com header.s=key1 header.b=IWykNoSp;
	dmarc=pass (policy=quarantine) header.from=cknow-tech.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324828-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324828-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5CD53034641
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66AA538D40B;
	Sat, 11 Jul 2026 15:30:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2B63C108D
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 15:30:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783783813; cv=none; b=GGQX1AeDSqfOt6VA5dtENtoAqsI095WREZvelpxmM2cgsCK2sn+OfAW6XHKe9kxsEkXNIlX4VNrI1bZBmh/C8Rm+iVD/38aUk9EoYQNEUdNmZ55rgUWZIQHcRzxGB8m4t50ALZ9/zanl1zN6qMdkXc0/O/xHUJE4P9RxO90E3ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783783813; c=relaxed/simple;
	bh=XfrnwkKA8RLxG11yXMzLXYbbGKJeu8aH/81XRsywFKM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=ArnV5vqPGfPtORUhXVlfDDaloO6EP7wpi+cTdbX1webKLs6KafD7kGxCII814kgT7rSNTFc9GVCme1NCNd4bJBntt7Ez2+xSxPPtX+5ZvOmwbqU9Ub/OwuaE/PMPHNPMafczRXyCxrlSHMiizWPqf7BVkiILJQ7wrhUgomOnYnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=IWykNoSp; arc=none smtp.client-ip=95.215.58.172
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1783783798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GzKdp7Hcvs6+zEuzXa7LVO8auZ6H7XjMLgYVqU0x/Zg=;
	b=IWykNoSpjn7zW6CuDj+8yy6zrE53QZYDQY2TzlqVtj1c/WCfWhVl5oUwsq3Pld2XnFxavJ
	OKeLDcV/KyN5suJ2aH1WQVEyg4gcRMhLCpT1prSSIOYp38kOvKYEXQhEcNHQjx0afWN+VX
	+EdqGbLAfKwg33sq0+4BBveY2JjDcKK5IuF+Ncs8koPzsyU2lRxld5eD18854judDqrTo8
	8cK21M6hgoN4iBwdB2b+1ENYTUpLRy6GVzi3CaoZfcMXqv3Drl7huNW2ppa4bjtVF358fy
	v6OXN6B8Y1h0B6i6I9mpOvyaFxAl0ZRbXRpZs4LlfUeZq6Grs/KqXaowmLqR7w==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 11 Jul 2026 17:29:52 +0200
Message-Id: <DJVUKXFUVH2Z.2O9IM7YHJOKYT@cknow-tech.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Jonas Karlman" <jonas@kwiboo.se>, "Marcin Juszkiewicz"
 <marcin@juszkiewicz.com.pl>, <stable@vger.kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Fix USB hub phy-supply config
 for NanoPC-T6 LTS
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Diederik de Haas" <diederik@cknow-tech.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20260610081400.758687-1-diederik@cknow-tech.com>
 <20260610081400.758687-3-diederik@cknow-tech.com>
In-Reply-To: <20260610081400.758687-3-diederik@cknow-tech.com>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324828-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:jonas@kwiboo.se,m:marcin@juszkiewicz.com.pl,m:stable@vger.kernel.org,m:diederik@cknow-tech.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52B6D741FDE

On Wed Jun 10, 2026 at 10:04 AM CEST, Diederik de Haas wrote:
> The MTT USB 2.0 hub is connected to the SoC's USB20 HOST1, so the phy-sup=
ply
> belongs to u2phy3_host, not u2phy2_host as that is for USB20 HOST0.
>
> Fixes: db1dcbe5f752 ("arm64: dts: rockchip: add NanoPC-T6 LTS")
> Cc: stable@vger.kernel.org
> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts b/arch=
/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
> index 0ee67ee24f3c..0e15a2e1f2ff 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
> @@ -38,6 +38,6 @@ usb20_host_pwren: usb20-host-pwren {
>  	};
>  };
> =20
> -&u2phy2_host {
> +&u2phy3_host {
>  	phy-supply =3D <&vcc5v0_usb20_host>;
>  };

Please drop this patch.
I was hoping to confirm this with an M.2 WiFi+BT card, but let's say the
results were kinda disappointing (to put it mildly).

Diederik


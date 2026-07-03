Return-Path: <devicetree+bounces-320064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B+g2A/KeR2qtcQAAu9opvQ
	(envelope-from <devicetree+bounces-320064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:37:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E74701E99
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:37:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cknow-tech.com header.s=key1 header.b=H3twqUy7;
	dmarc=pass (policy=quarantine) header.from=cknow-tech.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320064-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320064-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3D473049FDD
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 11:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2276E3C4B93;
	Fri,  3 Jul 2026 11:30:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969523C553A
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 11:30:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783078253; cv=none; b=OA5jK6sP6IwJIjNJW9Qj04nuI+GQ3nkEso8qsxEEpyyub4tID+30otg2tsQSMRA7yEBg5bj0SazqQv0fJAdC24HWgaJ0xuysq8qwVqPVqB0WERuCKZdotrimy/6AmOvzDS8aiTovTchkcXnZQgYEYuD9ShdwqvadJK4F/wJQmPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783078253; c=relaxed/simple;
	bh=Lmaz1U8k5Z9OCtGS+0qux9L5sV1R2BwXhX0QHUnEpWM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=AI4ngFGq4o2sj1A9957E5qnz178ENOdp7keR6GcOpDCdP+woonOCiRIaPgITlugP+cIjVg+8iwE42J0jl83K1S/pXAzmkn9ijS7zcgb7L0v2hhs4nhfd/5ge9xsO3u9S4XG697MhmgKPNkf7oXlkREI1DkXB7DVDJf8mKEzxOM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=H3twqUy7; arc=none smtp.client-ip=91.218.175.171
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1783078247;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=B2xPR8IWnso8IjH2nLJy+b/+q8P+tzYbQPS2oGyK6YQ=;
	b=H3twqUy7J3ycAYI72Pj49oybYNsTsjsBOOlLwuvbxFw4FnlcMFxNfpJ5xNtR9DO/92spSb
	XgNHUVMXKZv3rbCVI/kYOIzSoESyyB9Os8BFjTQ/m8ssWR5yU6tnOA1JfnZSq8EEL3atJj
	VMZWmLXgdR9GxeZxGEb+VyqnbP1FurCbBHdLkBodNmkjwrgzUTexzOuT7Vxn5pFHoeJm52
	C2KM2YHexwugJ1CC6dfzF3l4CiDD5SsuTktTUkBDbPerX5xAb5xcv8lJOdDa6RkO/eKP20
	COBOn7XBYkUbmCX6TYF8Thom4CBLVPs1C0pf0gyFCQPUzGJosXPwCECRs5Wwnw==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 03 Jul 2026 13:30:44 +0200
Message-Id: <DJOWHH5K7P76.3JPJVO47K1SZE@cknow-tech.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 00/12] arm64: dts: rockchip: Add NanoPi M6 board
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: <joachim.eastwood@gmail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
In-Reply-To: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320064-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:joachim.eastwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:joachimeastwood@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,sntech.de];
	FORGED_SENDER(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,infradead.org:url,infradead.org:email,friendlyelec.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E2E74701E99

On Fri Jul 3, 2026 at 12:07 AM CEST, Joachim Eastwood via B4 Relay wrote:
> This patch series add support for the NanoPi M6. This board is very
> similar to the NanoPi R6C and R6S boards which are already supported.
>
> Main differences:
> * M.2 M-key slot with PCIe (Also present on R6C)
> * M.2 E-key slot with PCIe and USB (from hub)
> * 1 additional USB 2.0 port from an on-board USB hub
> * RT5616 audio CODEC

This seems to be the M6 (2405 aka 'V1')?
Because there is now also a M6V2 (2603), which uses an ES8389 CODEC:
https://www.friendlyelec.com/index.php?route=3Dproduct/product&path=3D69&pr=
oduct_id=3D319

Is it useful to already take the 2 M6 variants into account with this patch=
 set?

https://wiki.friendlyelec.com/wiki/index.php/NanoPi_M6#Schematic.2C_PCB_CAD=
_File
https://wiki.friendlyelec.com/wiki/index.php/NanoPi_M6V2#Schematic.2C_PCB_C=
AD_File

Cheers,
  Diederik

> Patch 2 and 3 moves a bit code around. Please let me know if those two
> should be squashed together.
> Next few patches adds some missing bits the common nanopi dtsi file.
> While the final patch adds support for NanoPi M6.
>
> All changes have been verified using the schematics for M6, R6C and R6S.
> Only M6 have been boot and runtime tested. Tester for R6x are welcome.
>
> Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> ---
> Joachim Eastwood (12):
>       dt-bindings: arm: rockchip: add FriendlyElec NanoPi M6
>       arm64: dts: rockchip: refactor rk3588s-nanopi* to support M6
>       arm64: dts: rockchip: move NanoPi R6 code into common dtsi
>       arm64: dts: rockchip: rk3588s-nanopi: add missing sdmmc cd pinctrl
>       arm64: dts: rockchip: rk3588s-nanopi: remove pull up on rtc int pin
>       arm64: dts: rockchip: rk3588s-nanopi: add missing pcie rst pinctrl
>       arm64: dts: rockchip: rk3588s-nanopi: pcie2x1l2: add clkreq
>       arm64: dts: rockchip: rk3588s-nanopi: remove always-on from vdd_npu=
_s0 reg
>       arm64: dts: rockchip: rk3588s-nanopi: remove useless vcc_3v3_pcie20
>       arm64: dts: rockchip: rk3588s-nanopi: add gmac1 add phy-supply
>       arm64: dts: rockchip: rk3588s-nanopi: remove bogus vcc5v0_usb regul=
ator
>       arm64: dts: rockchip: add support for NanoPi M6 board
>
>  .../devicetree/bindings/arm/rockchip.yaml          |   3 +-
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts | 200 ++++++
>  .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 792 ---------------=
-----
>  .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts |   1 +
>  .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts |   1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi   | 800 +++++++++++++++=
++++++
>  7 files changed, 1005 insertions(+), 793 deletions(-)
> ---
> base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
> change-id: 20260701-nanopi-m6-ffeef7252fd7
>
> Best regards,
> -- =20
> Joachim Eastwood <joachim.eastwood@gmail.com>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip



Return-Path: <devicetree+bounces-321412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U8GBDxjkS2rHcAEAu9opvQ
	(envelope-from <devicetree+bounces-321412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 19:21:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30508713CDA
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 19:21:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nrRzVFjC;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321412-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321412-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BE18D3007B23
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 17:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 910EA2EEE96;
	Mon,  6 Jul 2026 17:07:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825552EEE77;
	Mon,  6 Jul 2026 17:07:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783357626; cv=none; b=oK43jdgahzJamNCgA2+JQqeyJLmBiop9nbUsTPShPuXB9FYa9O56EcsbQ7ROPhZHrmcyP/eZTyuJZ37kpggie2FHKP57RgOshIvpBHRaWUYgJjHHK4hTUC299k7PWBlqNw7u46G1MKHKUmCvXva8k/8Va0RHlmiCu6IseETYZ+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783357626; c=relaxed/simple;
	bh=AtwaTajby+j6Qrlo4vK1+cJ7ojOwUGZOa1G/mXoo9aA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NUPvLmi+aP+aVLpGvHXFboXU5tlyZw3SxWUs/0lcSLda+F9vFkkh0cZANVgX4FYzXbms6Y0KV3b0fSfu7e1j6Jipc+DXgXzOvqiZ0SP836ocMqatEfNraIKNZPxEU5aB0Pof7x0SRNSVXPIj7yXE9FiqvxbpbpQ14FXLOGSdDOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrRzVFjC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2B3E1F000E9;
	Mon,  6 Jul 2026 17:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783357625;
	bh=dMywXCAJz15ivj4H2yrF+Rr9wh7+wfvKgGEen90TIAo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=nrRzVFjCFJ2aQrk5qM0YNR/8+vCzDUz+4tXHVhST8RziP4UgWJBGo3srxngw9ZNIX
	 rVeeuA4uD/N24HrvD2PkypQ0cslwGau/JrHHJZQsLUtH4Up/vzTf6xuncIppAU0YFH
	 W0K3TOc7XJ/kJqAEQgXVpNvErUIAts2Zrszbi7cD6msPVYzWT50oAuWk3Q1fdKt7RP
	 W81qpnnHmyDjkmbRlu/kmWCaS6z0JS2H49ZqIhk9EfQcD65wXKa0OR/LjcJFfMLfqK
	 hW+yD004h2o4SDB0Lhcrc+XAybjpeld72/gd32LkAWT5sVJw6RELAIXhByDLgEY4xe
	 d44eYiG5uvWGw==
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Maxime Ripard <mripard@kernel.org>, 
 Lukas Schmid <lukas.schmid@netcube.li>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org
In-Reply-To: <20260606205452.2386930-1-lukas.schmid@netcube.li>
References: <20260606205452.2386930-1-lukas.schmid@netcube.li>
Subject: Re: [PATCH v4 0/3] Add support for NetCube Systems OpenNMC
 (dobermann)
Message-Id: <178335762241.4010120.15331558144606875972.b4-ty@kernel.org>
Date: Tue, 07 Jul 2026 01:07:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:mripard@kernel.org,m:lukas.schmid@netcube.li,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,netcube.li];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-321412-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 30508713CDA

On Sat, 06 Jun 2026 22:54:40 +0200, Lukas Schmid wrote:
> This series adds support for the NetCube Systems OpenNMC.
> 
> Sorry for the quick resend. This v4 includes the corrected Makefile
> target name.
> 
> Changes in v4:
>  - fix the ARM Makefile target name for the new board
> 
> [...]

Applied to sunxi/dt-for-7.3 in sunxi, thanks!

[1/3] dt-bindings: arm: sunxi: Add NetCube Systems OpenNMC (dobermann)
      https://git.kernel.org/sunxi/linux/c/9995c8146bb9
[2/3] riscv: dts: allwinner: d1s-t113: Add uart4 pinctrl required by NetCube Systems OpenNMC
      https://git.kernel.org/sunxi/linux/c/5b0fd777eb34
[3/3] ARM: dts: sunxi: add support for NetCube Systems OpenNMC (dobermann)
      https://git.kernel.org/sunxi/linux/c/9dc45b17fb85

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>



Return-Path: <devicetree+bounces-258610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ID7HAmltcmlpkwAAu9opvQ
	(envelope-from <devicetree+bounces-258610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:33:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC336C7B8
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:33:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEE1B3008D32
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA7042FB0B9;
	Thu, 22 Jan 2026 18:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="US9+bYtd"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D752336D4E4
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 18:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769106780; cv=none; b=nk6F+aFCT9SOlV7pRj7N254ZS6yvJzz2lJh2qnTPmEE2chFEh7+zwxiRHCxB2xCQIaIGPkPnEXLQydTpwoxX81p49y/6U2ACou3r7YqMoBK7qbO0fWZ8byHEyTVRIzpgoOmRuAP3ABH+MKhI0jNWC9wlCZBrQTO56+e1ZZIe4Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769106780; c=relaxed/simple;
	bh=0AVJUXuq8I23MR15fOxPPfaPz7lc3I/JWDvU0m0w5xE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XSyjfwtc8PMo7jDod0ed96gVDwKrT5n0gOrVoI3+0A0LuP0Z4hv5vHy3SFOFFZ3lRCXt17Rq5pJUmDFIf7O+2xU5Er0JMTo5FbFqJb9lyPR5xg7WOKYNbzLcHakkn0xeHUgNLDu+RlqBTBaw1PUonM17uCpvtvgMzyMWQh6z08g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=US9+bYtd; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=agslpXLRXlgoIqoXX1b/469dMp/dSJo51gcsUDWxm10=; b=US9+bYtdoESb7Sxo34iTpi/+4d
	jHW0+3yOCh20Q0YUYmGdG2p1EkXJh/705kvbMhICO58eaTB4PPK4ZAuBoN2fK20pVwO4m1CeDEmM4
	7cdQ5LuhhFOsEZGDaXXcwLK/a6kt1HFnnUFgQ9M4WOAVaOj/R49vI5BHCtGCBL8OtxF3zzVmCTKyV
	Uw4+D1c8BputqR33CfqXIdml8wTUqqm4uvocq2U4iXhIHLLSjRLnkPd0rklNBy/T0aw3AGxjZfcEK
	Oxr9I2drNpjGOhMuw8PEI/Af1ArM5TwqP5BnKQotsEVjqBbm831PaM8P0mpHp2wyaQeQBMeHzvssG
	C12Ndzug==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vizU2-003rA9-Fa; Thu, 22 Jan 2026 19:32:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	jagan@edgeble.ai,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	aweinzerl13@yahoo.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/6] Add Anbernic RG-DS
Date: Thu, 22 Jan 2026 19:32:39 +0100
Message-ID: <176910675441.726233.3829281115415341998.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260113195721.151205-1-macroalpha82@gmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258610-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[sntech.de,lists.freedesktop.org,vger.kernel.org,gmail.com,ffwll.ch,suse.de,kernel.org,linux.intel.com,linaro.org,edgeble.ai,yahoo.com,hotmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:email,sntech.de:dkim,sntech.de:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,anbernic.com:url]
X-Rspamd-Queue-Id: 6AC336C7B8
X-Rspamd-Action: no action


On Tue, 13 Jan 2026 13:57:15 -0600, Chris Morgan wrote:
> Add support for the Anbernic RG-DS. The Anbernic RG-DS is a dual-screen
> handheld from Anbernic powered by the Rockchip RK3568 SoC. It has
> dual DSI displays with touchscreens, multiple face buttons, and is in
> a foldable clamshell form-factor.
> 
> https://anbernic.com/products/rgds
> 
> [...]

Applied, thanks!

[4/6] dt-bindings: arm: rockchip: Add Anbernic RG-DS
      commit: 84f42966b80eaec59349c7b474ebd6b0943731e4
[5/6] dt-bindings: input: touchscreen: goodix: Add "panel" property
      commit: 3c8399d31c8eb10aa34bccec1f49b51694e67b00
[6/6] arm64: dts: rockchip: Add Anbernic RG-DS
      commit: 9e3f8ae040009f66367b2ba1081b7e313b39aeff

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


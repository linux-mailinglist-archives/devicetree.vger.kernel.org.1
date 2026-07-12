Return-Path: <devicetree+bounces-325086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IEPJESSyU2o5dwMAu9opvQ
	(envelope-from <devicetree+bounces-325086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 17:26:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C88A7452C3
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 17:26:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=O1AN929U;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325086-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325086-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 56E7E300564D
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 15:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCA5E33F5B8;
	Sun, 12 Jul 2026 15:26:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CC131B833;
	Sun, 12 Jul 2026 15:26:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783869983; cv=none; b=WtD5a/MvuCEMiF6sj28qYbGK0ROFC5MJyfgwoAGbn/wK88hB4AGpK0Kru5wL6xYADzL2TClJFxUZoS0a3Ei8+vyjzE0aEi0wCU4BDG9j1Okg7BJ8bZzoO+aHGuSHYR/iLZ0g19Qlnwal9OBQhRMy6CoDeUPgAwr7/oGE0I5Zgug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783869983; c=relaxed/simple;
	bh=erqhuuhM2CApyYa7LUME/gFhzK+s5W9+ovCiDX7+4ac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t7NG+MRq7UUQmPmoquggvZZc0BJ1dz1f5us5EK7lyu78b7kKAFRQpLACYuxYBvgccFunryplwr20NAtf6rPSXgA4prOQi20ChXf92ndnxlV6o82u4UIu2nwjROPiOTKiVo3tVS5LWfw/EgJz9NpBOpbuClbNaxfQR0jziiWDwhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1AN929U; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E7C81F000E9;
	Sun, 12 Jul 2026 15:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783869982;
	bh=x2V9TkUu02mZtF/pb/M+ixilm2tIOgotOavTOjYTCdQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=O1AN929U+LEOp44PdbRDXDwN/N+AhfZMW1rCySoCXZRYSQwjVrj53cfqq3Eg/qSt3
	 tQBWlfqdjDmAuAf7r5hZMPESFNDp+9xJRkRj171sOG818SuHhDIzveei/liHDJ4olz
	 cVg73H6KAI9eYsPGsq2hmOOYdcOXOu9oQy/k7bA27X+m7cgkm/wIm4nyS/J3TdTf1x
	 bMb5Dq2jkzurzq+rU4tes6/v2Ra9cp4hq06uowAPnx8DN6MRHimv5FxB8ttxxdAPId
	 sNFkJ/nxDdkruowawrz0tm2pwtAoSn/WRifX32TcJM5gSCfDgvnLHkIN5tCWby1SnW
	 gcFjGUZJ3HmwA==
Date: Sun, 12 Jul 2026 17:26:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Guenter Roeck <linux@roeck-us.net>, Jamie Iles <jamie@jamieiles.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH 08/12] dt-bindings: watchdog: snps,dw-wdt: Add RV1106
 compatible
Message-ID: <20260712-reasonable-unselfish-oyster-aea7a5@quoll>
References: <20260706195818.3906949-1-sjg@chromium.org>
 <20260706195818.3906949-9-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260706195818.3906949-9-sjg@chromium.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:sjg@chromium.org,m:heiko@sntech.de,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:festevam@nabladev.com,m:linux-arm-kernel@lists.infradead.org,m:conor+dt@kernel.org,m:linux@roeck-us.net,m:jamie@jamieiles.com,m:krzk+dt@kernel.org,m:robh@kernel.org,m:wim@linux-watchdog.org,m:linux-kernel@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-325086-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C88A7452C3

On Mon, Jul 06, 2026 at 01:58:04PM -0600, Simon Glass wrote:
> Add the compatible for the watchdog of the Rockchip RV1106, which is
> compatible with the Synopsys DesignWare watchdog.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



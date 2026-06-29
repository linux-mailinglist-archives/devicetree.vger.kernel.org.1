Return-Path: <devicetree+bounces-316906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jdDsN9BGQmpv3gkAu9opvQ
	(envelope-from <devicetree+bounces-316906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:20:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 368546D8D2E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:20:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ipl7EHtH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316906-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-316906-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6E0363029D4A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A5553C81B6;
	Mon, 29 Jun 2026 10:09:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225F93FE37A;
	Mon, 29 Jun 2026 10:09:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782727786; cv=none; b=eWr9a9r0W2ITcVAGJsuanjIn9qjcG1H6kfMMA/xFF+VeRjLNocz2QR8rNssrVKVtf3kSaJpLHrQXFfU3uUoIBNLQ0uuffXZlDMwye3GQ6taQAsstD52m+iBTY1rd5NJuw/R8lApgGwyqT8U27ameKRAQ3bWqe+i1yUDnC7bSGhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782727786; c=relaxed/simple;
	bh=UaemtKxNBlj6ZimiZ5qz7iTCrT1DLHiK5/MfXIsjMqA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fEKkVsT26Wce4YiVj7bL7wy5Z7z3GexIz3FfLaSqin0sT/ZmUgYnHWvvhJWWYCkBd4VJv5mNTNInwSsGlydzHEl7fybyg366+uyv4fXgj2hN8IkreVWN+6CS0j4XYo5B9bVpVg+RUXclnCFPNQe7hgkX2ak1ju0iDwebxbN+1xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipl7EHtH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00C781F000E9;
	Mon, 29 Jun 2026 10:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782727783;
	bh=7S46Iwb1NGnrffwBD/ngt0H6s3rPjy6vqhD2kJh/Vng=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ipl7EHtHhkGr6ZP4iMSHY8+bCsuWQWuD7WODHFRShw0GgSxKPgsVRw+YLHlddDzId
	 FbDz+fX6M+UeDL7BWXzJCeJmeHLrK9fD3RNeUM69Ey7sCIw9IUxfi9lhWXvrXcMPpd
	 wZo0PGZnuOuePl9GnVyJreX6lq2WoLm/pCFxs7+yojjNvCipUuJrhYTt5hFIrF7p75
	 yzd+XhnuExvEWF6ql6TWq931Rmsjx9oJ4rssJ+8hOgy8jFXmE4yWsRlMNqtvAhyH2p
	 bDzkHcOGjq52M1LtyJA3FrIAwR7yyBeftfqCfKuL4V/FtwoIFx69Ll6DkJAl0igm9H
	 JepvncrCnbQRg==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, 
 alim.akhtar@samsung.com, kishon@kernel.org, 
 Sanghoon Bae <sh86.bae@samsung.com>
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 sowon.na@samsung.com
In-Reply-To: <20260610050326.2903402-3-sh86.bae@samsung.com>
References: <20260610050326.2903402-3-sh86.bae@samsung.com>
Subject: Re: (subset) [PATCH v3 2/2] arm64: dts: exynosautov920: Add hsi0
 syscon node for PCIe PHY
Message-Id: <178272777972.113362.4544629350524485886.b4-ty@b4>
Date: Mon, 29 Jun 2026 12:09:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:alim.akhtar@samsung.com,m:kishon@kernel.org,m:sh86.bae@samsung.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-samsung-soc@vger.kernel.org,m:sowon.na@samsung.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-316906-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 368546D8D2E


On Wed, 10 Jun 2026 14:03:26 +0900, Sanghoon Bae wrote:
> Add the syscon-hsi0 node to control PCIe PHY power, PLL settings,
> and device direction (RC/EP mode) on ExynosAutov920.

Applied, thanks!

[2/2] arm64: dts: exynosautov920: Add hsi0 syscon node for PCIe PHY
      https://git.kernel.org/krzk/linux/c/2c19e75101ee17059bf10101f4cf0157f61776a2

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>



Return-Path: <devicetree+bounces-315564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gR3PG+TxPGozuwgAu9opvQ
	(envelope-from <devicetree+bounces-315564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:16:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFF36C422B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:16:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ktEcS4VW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315564-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315564-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05C15307A428
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEDB8379EE1;
	Thu, 25 Jun 2026 09:10:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C218235AC00;
	Thu, 25 Jun 2026 09:10:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782378658; cv=none; b=Crf0NpjXsnIdMGa4GQLeH8J8+cPx+QH78Cos40fHeL9nMoQUcBl/udKdC/jZb1hqNTcxMgaD/zMmfBRKrJddT9JFAUZxbgkK8eIHOBDKrHj3TTMCerj7pfqwFfIKtePyd9Bf0PO3eFeLCDBWotgScUiqgk+GZTu38zG+HBvJOdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782378658; c=relaxed/simple;
	bh=EEaqe3TRKfme8RzVn8ZkaFwHH+V/chUQWSAhkIpHVjY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BacEqXWkqJPEzEi4ySEUsJyjxk701BY/ovYDthyM76bdaa2x+M0sSz4aSgsZsoXk8Nh9RkykqdEiWlq5rSmQWd3riQeB6p9tW+xEXG2efvufa7vKjFBJeTgtnL6HdPFE2/gKCmzSXlTvn3ebsISBMBl6b8R9q19FqFzD5w/T43U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktEcS4VW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEC0B1F000E9;
	Thu, 25 Jun 2026 09:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782378657;
	bh=iLx8ln11wcjxDTT91LufbpmNFIPlBMRXuf4RMTzBOps=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=ktEcS4VWzwqsIIe2rbKsWUUpe/NaEKU3/lCiiuzk74P78/O40Ihq/2+HXEqj2k1oF
	 bMdR0Iak231fVf1Zv4IyoGTcnjGfsqp6Emi+JXcraI8H5PapUPjX0Ep7wD37ffyOmK
	 Wa98rnlhdiyx2vNXJvjy43l9SekV3iT3AkfO8+8ZTZi9Z91EtD2KWgZiPGLo7lS6on
	 KB15glZrk0xf/9ZOXiXHuizbwgShDZOgRESD8+ZEjNeY0D+RzDx5I40eyj9w3auFmx
	 FOZ+cm22xk2sEQI6WTCSgmXxbgpw67vYg9ZGq0EIYR1ObiwRjxfC2uy9j0BnW6tSfE
	 ykYI23oQ5Famw==
From: Thierry Reding <thierry.reding@kernel.org>
To: jonathanh@nvidia.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sumit Gupta <sumitg@nvidia.com>
Cc: bbasu@nvidia.com
Subject: Re: [PATCH 0/3] arm64: dts: tegra: CPU and cache node updates
Date: Thu, 25 Jun 2026 11:10:50 +0200
Message-ID: <178237831284.1973065.5359477309361980355.b4-ty@b4>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260121104536.3214101-1-sumitg@nvidia.com>
References: <20260121104536.3214101-1-sumitg@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jonathanh@nvidia.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:sumitg@nvidia.com,m:bbasu@nvidia.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[thierry.reding@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-315564-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,nvidia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCFF36C422B

From: Thierry Reding <treding@nvidia.com>


On Wed, 21 Jan 2026 16:15:33 +0530, Sumit Gupta wrote:
> - Fixes for Tegra234/264 device tree CPU compatible string.
> - Populate CPU and L2 cache nodes for Tegra264.
> 
> Sumit Gupta (3):
>   arm64: dts: tegra234: Fix CPU compatible string to cortex-a78ae
>   arm64: dts: tegra264: Fix CPU1 node unit-address
>   arm64: dts: tegra264: Populate CPU and L2 cache nodes
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: tegra234: Fix CPU compatible string to cortex-a78ae
      commit: 2e1f4664c1be73065070d8b380a3c7440f98f6a4
[2/3] arm64: dts: tegra264: Fix CPU1 node unit-address
      commit: c003ea35f934a9e6672ea02778f07f08cb6f13ad
[3/3] arm64: dts: tegra264: Populate CPU and L2 cache nodes
      commit: 1199de78b2ca6439e83a565fe39eb4fed67d70b8

Best regards,
-- 
Thierry Reding <treding@nvidia.com>


Return-Path: <devicetree+bounces-303070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OK22E2S5FWrKYQcAu9opvQ
	(envelope-from <devicetree+bounces-303070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 17:16:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C045D87EC
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 17:16:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B9AC330B5B08
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 15:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9023141B36D;
	Tue, 26 May 2026 14:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MH60os9o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F276A403EAE;
	Tue, 26 May 2026 14:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779807529; cv=none; b=rHSlC5lhX/17SDh7EwyxFXZjnJTRhB6IeIqPwVtDxhUaMx+JOQTV8F1edL36MvRjICW85enF1L3ybM/RKnD3Al+FNkAxExiCRv316qAArlDH6b94NVYfBDA0Zis8CDIrZgfzX5Bdg+Ep0RF3gA3PxcZCXtsZlc/jtj5I6aCfXR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779807529; c=relaxed/simple;
	bh=F1kaPTUiQJENNGWy+MBrThyODAN0pKYVEIPnlgxJYYo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hiEBctW165IJrtskPvdkjJF0l8mMeN83TPTbCP5lPsPVpxGC0c+SQr0nar+MS8M/6QS3dLbRebaXlXKTIrS0rVJBCD4CnpCHjKdvgD7xLpAY4EZ6uMdOcCzUwQISmbUAjlsPJBNxZ7skyjtXmTRen/+rgWI7lHh9Migfqr3QvX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MH60os9o; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 555801F00A3C;
	Tue, 26 May 2026 14:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779807526;
	bh=bOa8NCwMA1Y9StIDGoiXu8jV1jxUxppHyK6oZlCN+iE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=MH60os9o+nVkBEbrcqfdq3V39SjbtvOtW/inKPoW6PJQ3ozGsujeGeMA9Jr0Vr7fp
	 /R5m8skX7/IGTCP3IRL5+Cny1s25O8uwMzHqGzv6UZqX71G57HTCsetRraIrtQG5y7
	 9cclRh2OxN/8cHW44dMhrxoKI7XIqdysWO6V60ZCDPBDge7nRRYYDFajv2WZkLOTDd
	 j9SkP5fhZD2dYBoppoMBIs7rGw15Je/gTVxZAYeF0ftFjv/OOJ3OhF9Hah9pBFass0
	 M4V13iDDpOrccgmf1cMIq5untmgnmGPxx7ufQG1kyz8dvZr2kUZv9OnQjbNROi15cT
	 jmosHzigE+fKQ==
From: Thierry Reding <thierry.reding@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: Re: (subset) [PATCH 1/2] arm64: tegra: Fix address of Tegra264 main GPIO controller
Date: Tue, 26 May 2026 16:58:39 +0200
Message-ID: <177980750263.1538447.17693095332551719782.b4-ty@b4>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260519084707.773214-1-jonathanh@nvidia.com>
References: <20260519084707.773214-1-jonathanh@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303070-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 47C045D87EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Thierry Reding <treding@nvidia.com>


On Tue, 19 May 2026 09:47:06 +0100, Jon Hunter wrote:
> The 64-bit address of the main GPIO controller on Tegra264 is
> 0x810c300000. The main GPIO controller was incorrectly added under the
> bus@0 node instead of the bus@8100000000 node breaking the boot on
> Tegra264. Fix this by moving to main GPIO controller node under
> bus@8100000000.
> 
> 
> [...]

Applied, thanks!

[2/2] arm64: tegra: Enable PCIe for Jetson AGX Thor
      commit: 36532a9a22589a375556e16b103ae8275a4affc0

Best regards,
-- 
Thierry Reding <treding@nvidia.com>


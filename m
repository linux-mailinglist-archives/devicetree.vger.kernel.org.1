Return-Path: <devicetree+bounces-299752-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MBfLeD+C2qrTAUAu9opvQ
	(envelope-from <devicetree+bounces-299752-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:10:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E77577C44
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:10:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C86D4301B716
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5034737C915;
	Tue, 19 May 2026 06:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn0exEEc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8F237C913
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 06:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779171001; cv=none; b=mDagll/QLSoqym0Vm26eaJx+kDOWImCs0mzgstnFvo5fCs100POkVD0kGczAQLGyX79TFQEUuRKTdbB3FfRG685VadFmtkej0DCAx2DbVpu8deRScRwyr/8+18QA9L124b7O05Lh9hI/rEMwyMHpJX0u1Aw3bVg5VPhb2Vbsgjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779171001; c=relaxed/simple;
	bh=uCn9+Ea9EmyReZNVQnl290VyGe66Yfpuyhu1nfAFBZU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=m0/Mt9kSfhH0We+ZJLAhmf1fcWBCoO3d+j0Uu5JJINMebEOVeqcyhuVChs2DTU01pQkWMoyN843bfZY+yMQ9DE6hfyJqlB4KZ/zihgfarv6RD2oFf0osmcn8xcJgz03qk9KNKh2gByXwFyryt3UW1YolkClJlT7vQukIAWrJhmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn0exEEc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD84FC2BCB3;
	Tue, 19 May 2026 06:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779171000;
	bh=uCn9+Ea9EmyReZNVQnl290VyGe66Yfpuyhu1nfAFBZU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Tn0exEEc1EHAYQJEn/Kq/bQ4jsUZVXmJzfm4AltkzyqNfoc1QCrmIjv6rFfbuP1oy
	 BpCwyKAkklBB6LwT9AbsgQ6qDsBrvvFXtgAjVBQvLJduCyUbS0HBpgQLMb7IpnaQX6
	 FKnQW3oHAXDlIazwwUdjmh8lTKUniCciLTdB4Rgfhz4a0L20BWB/DzSP59uU4r1xZh
	 D8IP+9TwwEY6ZuA99wBdTDTvNgeI1BY4of5jzk+O7Ufv3CIY0uWMhJVX8tRUq0c3ic
	 sNPQX/xgd/ay1gzO5c2uMNOM/hqL1a2b7ZS6V9c+XT8t8xy2rCYm59zvJJTPix+k5O
	 IaMgaFiL/iGZw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: ipq5018: Correct CMN PLL reference
 clock rate
Reply-To: sashiko-reviews@lists.linux.dev
To: "George Moussalem via B4 Relay" <devnull+george.moussalem.outlook.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260519-ipq5018-cmn-pll-rate-fix-v1-1-3c83a173c27f@outlook.com>
References: <20260519-ipq5018-cmn-pll-rate-fix-v1-1-3c83a173c27f@outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 06:09:59 +0000
Message-Id: <20260519060959.CD84FC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299752-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,george.moussalem.outlook.com,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,outlook.com:email,sashiko.dev:url]
X-Rspamd-Queue-Id: 16E77577C44
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The commit message incorrectly refers to 4.8 GHz as the 'CMN PLL re=
ference clock rate'.
--

commit 4cb93e818beccfa0a5e9ea288ba3c76a08ea178c
Author: George Moussalem <george.moussalem@outlook.com>

arm64: dts: qcom: ipq5018: Correct CMN PLL reference clock rate

This commit corrects the CMN PLL clock rate configuration for the IPQ5018
in the device tree to 4.8 GHz, aligning it with the driver's updated clock
divider math.

> arm64: dts: qcom: ipq5018: Correct CMN PLL reference clock rate
>
> The correct CMN PLL reference clock rate for IPQ5018 is 4.8 GHz.
>
> The CMN PLL driver did not account for the ref clock divider which is 2
> for IPQ5018. Therefore, the computed rate was twice the actual output.

This isn't a bug in the device tree changes, but does the commit message
conflate the output rate with the input reference clock rate?

In PLL terminology, the input reference clock for the IPQ5018 CMN PLL is
96 MHz. The 4.8 GHz value being configured via assigned-clock-rates-u64
is the output (or VCO) rate of the CMN PLL, rather than the reference
clock rate.

Could the subject and commit message be updated to clarify that 4.8 GHz
is the output rate?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-ipq5018-cm=
n-pll-rate-fix-v1-1-3c83a173c27f@outlook.com?part=3D1


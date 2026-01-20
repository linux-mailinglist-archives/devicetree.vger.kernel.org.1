Return-Path: <devicetree+bounces-257471-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JcBI+i4b2kOMQAAu9opvQ
	(envelope-from <devicetree+bounces-257471-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:18:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C819486BF
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:18:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E69E49ADB3F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 15:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D16444CAC2;
	Tue, 20 Jan 2026 15:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bE1soNsl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559F2368272;
	Tue, 20 Jan 2026 15:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768921317; cv=none; b=qq1SZ/89TABUF8H7RfpSVAp3apB4K/qcunjZ7AjOmTo0K8R5PsBS7grks2ZMbM5csI4SJ6n2a74h8lg6jFSOGe2sWtwCkyE63CySxvjY0utYTndkRySXd9Ec8yLbAjNF5Ye/Cm6iNXnG58SfUreWlEHBOCxAw16ilAOO6U3+WVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768921317; c=relaxed/simple;
	bh=hGTUlmiLRnAbmX/IerIdVQBrE4kuY4fnoHuaZq1QnTA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NmsZ4t3iPhBFePzAm/jgnA1AJDiEFZMQV+1FAycM4USj13l1bVATBLTIkC6jM08fnPujcCKQ3WRCF0j1MohwgerOPf5AHSmp5yQAhyRm7zaZtTHz+55siL1pzTURBfeGpC9F1KpMLiBqLxxIJapr9sbb1kCwyWeKmuPNZZanNTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bE1soNsl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 768D6C16AAE;
	Tue, 20 Jan 2026 15:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768921316;
	bh=hGTUlmiLRnAbmX/IerIdVQBrE4kuY4fnoHuaZq1QnTA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bE1soNsl6YvccJ2CNmIjbB5//j82Y+x5UmRSnX0dTb9Z4dTIrzraszPURYX7+mcY6
	 rO7wZEaj59ys0aoWe/0uWdVpJ8pvx8OR/az4Eu8gNWkjOWiQF2ZkyHafSMPxZvbxYe
	 QXqna34zB2FN49db5UVwEjWrNUC9EvqDr4TuFn772Fqu4z//JpJCPy0PvtemdeM375
	 FWt9ppg1hGhPrv3Mq4Pn689SR0E7NkQr+EEYxY0MJEnxeKDB9jLbgK9xi9a6m+kInj
	 XRizz5OIRaXBZLJq4ned+KeE9RZ0je69pzFpjIXIqo5ZYLrXarvq63Wl7RIG3AMUNs
	 t7y739DuG3u+A==
Date: Tue, 20 Jan 2026 15:01:51 +0000
From: Lee Jones <lee@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Joseph Chen <chenjh@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/3] Add RK801 PMIC support
Message-ID: <20260120150151.GE1354723@google.com>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
 <176892124246.2259507.3674990175192687595.b4-ty@kernel.org>
 <20260120150119.GD1354723@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260120150119.GD1354723@google.com>
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257471-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,rock-chips.com];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 3C819486BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 20 Jan 2026, Lee Jones wrote:

> On Tue, 20 Jan 2026, Lee Jones wrote:
> 
> > On Mon, 12 Jan 2026 20:43:48 +0800, Joseph Chen wrote:
> > > This patch series adds support for the Rockchip RK801 Power Management
> > > Integrated Circuit (PMIC) to the Linux kernel.
> > > 
> > > The RK801 is a PMIC designed for multimedia and handheld devices. It
> > > includes:
> > > - 4 BUCK regulators (DCDC)
> > > - 2 LDO regulators
> > > - 1 SWITCH regulator
> > > - Interrupt support for power key events
> > > 
> > > [...]
> > 
> > Applied, thanks!
> > 
> > [1/3] dt-bindings: mfd: Add rk801 binding
> >       commit: a8a2add7b1889f00bc5d2b1f25fad34e89ef85fb
> > [2/3] mfd: rk8xx: Add RK801 support
> >       commit: 156442eb6e44d545f09559bd70c5b31fba39eb01
> > [3/3] regulator: rk808: Add RK801 support
> >       commit: 3e10bbd9c8a6d5d016b8e52c5d4ceba93a2304a0
> 
> Note to self: ib-mfd-regulator-6.20

Note to everyone else: Pull-request to follow after build testing.

-- 
Lee Jones [李琼斯]


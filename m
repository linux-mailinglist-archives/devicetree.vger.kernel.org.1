Return-Path: <devicetree+bounces-277974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GL9OO5BvGm7vwIAu9opvQ
	(envelope-from <devicetree+bounces-277974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:35:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F412E2D1134
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:35:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3CC00307E960
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91AC53F87FC;
	Thu, 19 Mar 2026 18:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHlHF4P6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0D03F87EA;
	Thu, 19 Mar 2026 18:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773944821; cv=none; b=cfKFftHho5FtzVn/MCPW5k0sxiBhu7eKE9uPFZmC2wOB0bNGCl1pTRIP4naMd0/2cd4qqPJruJQEtaNSf2bfGPZAVxDRkl0pxZXo9cPcKj+kRV5UHiLWQWMoGSu/q8kuqyM+WpyEAoDg+7wT4Un4ymgvmtEmCNLq3IK1nqZ2A1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773944821; c=relaxed/simple;
	bh=vG//QuEwoXDfjto1FWbCZN+YHI6cii9jrFft26TT93o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Gzb8/iS1AVcc2sHzjX6Wt0lCq9ayJjuZSipPJVeB5xcW1D38F94b8n1NLgoishtU2hDRUXTarAtc/GqxyXE92ZYN+p0kx1fG3PGsx951VVlQYo89H6/gEK7/X0h5BYHQDmw/vqI7qr0k5ChBmFgI5BpzOl1O6jtxkp13YqucfbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHlHF4P6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C196CC19424;
	Thu, 19 Mar 2026 18:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773944821;
	bh=vG//QuEwoXDfjto1FWbCZN+YHI6cii9jrFft26TT93o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kHlHF4P6jw/NKnZSzr7h1CCdlintgGtGjUVKTlJBb7DRvLd4ie89f8U7mNjCr0w9C
	 CR9NGspLGLiV+c6f4VAGrnGm33HImEBZDxbk6niAWJOfKraqOuaGzl0GNhWRiF9L/m
	 9d7t/4EUIBmagk0lEbQ8AWiwCk6YYyCi/flDfoMAVpVE0k73lIU3Lxg7UgOhDt5qls
	 NEjmD7mgldOwFL5IkRN5wooTZMTrINMKgZdP3aygk7PwXtTb5oPkUFZks7BK8MiiXI
	 n0nc3cDSfjrgSQYX3+bbC7fPWol6HnLTCzs4oP2aYpSKuEzHMmeTrnzvdoJ50J8j7H
	 pgqJxwaph5sow==
From: Lee Jones <lee@kernel.org>
To: Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 linux-rtc@vger.kernel.org
In-Reply-To: <20260312085258.11431-5-clamor95@gmail.com>
References: <20260312085258.11431-5-clamor95@gmail.com>
Subject: Re: (subset) [PATCH v4 4/5] dt-bindings: mfd: max77620: document
 optional RTC address for MAX77663
Message-Id: <177394481646.2975021.2090319450225414852.b4-ty@kernel.org>
Date: Thu, 19 Mar 2026 18:26:56 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277974-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,intel.com,arm.com,samsung.com,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F412E2D1134
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026 10:52:57 +0200, Svyatoslav Ryhel wrote:
> Document an optional second I2C address for the MAX77663 PMIC's RTC
> device, to be used if the MAX77663 RTC is located at a non-default I2C
> address.
> 
> 

Applied, thanks!

[4/5] dt-bindings: mfd: max77620: document optional RTC address for MAX77663
      commit: a526075f56fb8f2fd96f791654ff1557e6680bde

--
Lee Jones [李琼斯]



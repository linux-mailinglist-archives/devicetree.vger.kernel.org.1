Return-Path: <devicetree+bounces-258436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIjtJY8zcmkiewAAu9opvQ
	(envelope-from <devicetree+bounces-258436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:26:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DE767E98
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:26:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D96178E7F80
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF23034678C;
	Thu, 22 Jan 2026 14:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hODvGDmj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C732C30BB93;
	Thu, 22 Jan 2026 14:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769091159; cv=none; b=lUdhSgV89f/3VXP+DoPxf37xm6peV+g8/Iu7tIbjoh3IBwlVy7sO4ydf0frvSSbmB8pdmpy1BBbpCbuf6oebh4nn2Ou9KS0isKZhvrjcVyHjsUvTuUd6dsar0Oj1GTkU5FDLZk7PpSP4w7xnIDaigQLOQ7jtICGWIFpoO9JAfo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769091159; c=relaxed/simple;
	bh=ymxs9hipH3MSqO+EtSgebsTWpLkwdhKqEdneib0tRSw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jZnavkunj4P3bbsHzO9h7jfbac9z661x9KyDKqPBZJcpxc1CRWWWlgkXA8d1N6rfFStUJGSRbAjAwV6Yplz5yr5Iif4k+DYS4XXR98xYGxhEFoxo3hApzKftHDG5VGoadT7vOesDZ4cMFiTCmf1kxrud+j8+8GnmGe9w9hypjxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hODvGDmj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8684C116C6;
	Thu, 22 Jan 2026 14:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769091159;
	bh=ymxs9hipH3MSqO+EtSgebsTWpLkwdhKqEdneib0tRSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hODvGDmjEMpnNSE/AOUDtxnF6/OV7V6piVNP+5RR6/2HKcDHe28W+kp/NIv49sT+l
	 tosLBcyWDzhINlcaAedBwHLjIjWvKMCcC0Q6zqDTcFtBD3Nk1BTAKeLBJJXpSUKvQ+
	 ykQ9RFg405pb7DpzxmcP8ghnnvrHQIimvJtQjdhcfzYWeXZ6Wk4AHQjwJAlrXU9Sgf
	 O5EROBbioRHV3gtjEClqORtd+8ZPT/38sBn2oubpmMEfgnyK2m+CbnZVRbqnHMMsQn
	 VUXeNEE7zkq4E60i+HnVAjz6HeHdC5f+NhuXURm11BGSUCX9MJlCkxQXgSKExzJMPw
	 H7NgjxCWRG8lg==
Date: Thu, 22 Jan 2026 14:12:33 +0000
From: Lee Jones <lee@kernel.org>
To: Joseph Chen <chenjh@rock-chips.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Immutable branch between MFD and Regulator due for the
 v6.20 merge window
Message-ID: <20260122141233.GJ3831112@google.com>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260112124351.17707-1-chenjh@rock-chips.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sntech.de,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-258436-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 23DE767E98
X-Rspamd-Action: no action

Enjoy!

The following changes since commit 8f0b4cce4481fb22653697cced8d0d04027cb1e8:

  Linux 6.19-rc1 (2025-12-14 16:05:07 +1200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git ib-mfd-regulator-v6.20

for you to fetch changes up to 3e10bbd9c8a6d5d016b8e52c5d4ceba93a2304a0:

  regulator: rk808: Add RK801 support (2026-01-20 14:58:12 +0000)

----------------------------------------------------------------
Immutable branch between MFD and Regulator due for the v6.20 merge window

----------------------------------------------------------------
Joseph Chen (3):
      dt-bindings: mfd: Add rk801 binding
      mfd: rk8xx: Add RK801 support
      regulator: rk808: Add RK801 support

 .../devicetree/bindings/mfd/rockchip,rk801.yaml    | 197 +++++++++++++++++
 drivers/mfd/Kconfig                                |   6 +-
 drivers/mfd/rk8xx-core.c                           |  81 +++++++
 drivers/mfd/rk8xx-i2c.c                            |  33 ++-
 drivers/regulator/rk808-regulator.c                | 243 +++++++++++++++++++++
 include/linux/mfd/rk808.h                          | 118 ++++++++++
 6 files changed, 674 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml

-- 
Lee Jones [李琼斯]


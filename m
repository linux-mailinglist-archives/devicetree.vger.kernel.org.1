Return-Path: <devicetree+bounces-272571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNF5LH9vrWme2wEAu9opvQ
	(envelope-from <devicetree+bounces-272571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 13:45:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5774B230493
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 13:45:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8685C300463B
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 12:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CED7E2F0C6A;
	Sun,  8 Mar 2026 12:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdBHFTv1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA96E258EF9;
	Sun,  8 Mar 2026 12:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772973948; cv=none; b=ADdyg/Lbg9UfUFznAJU0B7WBnQRecA1zONLVnsRdqIKdseETnZqdcKFatJHy1ZmGBe38xewdVYRcdz7bdPEdEtGDhDZlBIQF4TMHWXDMpLMuhXP0bP2WBuZD7EJLfKK1Y0f5wKH3iW26bFxEBmyzem7xlJcNOdhbDexqTr0sWKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772973948; c=relaxed/simple;
	bh=ZFIV8Ee9/6ASXXuHKe4ooqhpMJfSkTQUrYAxVmmta4A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nnZjNDNt7HGd2++hd5YAqlnIvx9+nSBaK5xV3PxEctGP9OblDqvp8QTcwTDTfHZM8p7+qJyJdUU+ODU1rWii2X3o6dUZf/4+rf/Jac7VfJIslFwU86RPpxBHc08cDPo5UEWkTa87mKgumy5GyTipoPw5XQEAtGO6z0rctQ6N6gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdBHFTv1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93E05C116C6;
	Sun,  8 Mar 2026 12:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772973948;
	bh=ZFIV8Ee9/6ASXXuHKe4ooqhpMJfSkTQUrYAxVmmta4A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gdBHFTv1xkV6UQK8IfOdpwNthbwz7Q/Zu83ZG6Jl1KW2DYyncU3xoE3KQit9Skztr
	 p9jN4QRjm/gdlppqnsELjQBxottcA+TWBuXKx/FwNjAKT2fxaHPeF/qAQxG8k3aVqF
	 v2ebx9KYWWvHVxVyy23Gah2IZzzWnUtS0IZHbcXZqWyvTR8JpMAfWQ/IK/ZAhQYn8H
	 M/9RMHU8v0L/2Mr4L4tqVAYpPV3sQloTxeR/9QoxK38t/1JREKV7kqiOGX5RrWIc44
	 SwKJvTvD497WSVktLNkH93Hy0UWBx4JdmbBbKf91KX3nrzXxYTcEiHwHU+Wt4msvx8
	 F+9D2jqHjHhZg==
From: Sudeep Holla <sudeep.holla@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Debbie Horsfall <debbie.horsfall@arm.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] Add Arm Zena CSS support
Date: Sun,  8 Mar 2026 12:45:41 +0000
Message-ID: <177297386811.1084512.762352333880367472.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260212-zena-css-v2-0-d33ea23cb9c2@arm.com>
References: <20260212-zena-css-v2-0-d33ea23cb9c2@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5774B230493
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272571-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.929];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu, 12 Feb 2026 11:16:50 +0000, Debbie Horsfall wrote:
> This series adds the Arm Zena Compute Subsystem schemas and
> Devicetree. Currently, the only platform variant is the Fixed
> Virtual Platform. More information on Arm Zena CSS can be found
> at https://www.arm.com/products/automotive/compute-subsystems/zena
> 

Applied to sudeep.holla/linux (for-next/juno/updates), thanks!

[1/2] dt-bindings: arm: Add Zena CSS compatibility
      https://git.kernel.org/sudeep.holla/c/96a43d3325e3
[2/2] arm64: dts: zena: Add support for Zena CSS
      https://git.kernel.org/sudeep.holla/c/164148d0a163
--
Regards,
Sudeep



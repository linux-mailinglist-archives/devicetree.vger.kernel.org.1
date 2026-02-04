Return-Path: <devicetree+bounces-262644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MhWHotHg2mMkwMAu9opvQ
	(envelope-from <devicetree+bounces-262644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:20:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BD3E652F
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:20:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E0CD1300B761
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCCF8238C0B;
	Wed,  4 Feb 2026 13:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYkZVKn/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA23122ACEB;
	Wed,  4 Feb 2026 13:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211208; cv=none; b=CZGIkz5d8azJ/xglPGAvdzQK7kKdmS2k7wWikzPiswLByPG3AitOKuIUuzIUj/es50kzlxsl7QawztkDq0l1xZ67Z2wqWOYQZOWMLQ5C8wGrREUIui7jJYOc3B5ls3FnpWGqyGW1i/gs+T0qHokTm0q+Lo3449MNaBIHAqv9u+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211208; c=relaxed/simple;
	bh=EAnieuO+bo6Wjxuqzy2Gc8zG/xroPGHNMODmAz4YXaY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QMhkPY0wpy8nQRbYNw6XbXPx7u586LPwfRMPisIT9/OU4VMLjqvP0sTiONZVS4fKCWUCgPooYyollk5LuDwOKoKhTgOEhi3rotshHk4Xq8yFKEHp3Pi2ZfYy7dYKCJ+Q9bzI0Oz6OzU7u6zp+zUhAnH7Ys4h2tBEt/EZDmRawrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYkZVKn/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1483C4CEF7;
	Wed,  4 Feb 2026 13:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770211208;
	bh=EAnieuO+bo6Wjxuqzy2Gc8zG/xroPGHNMODmAz4YXaY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bYkZVKn/oadeq+OZSehj1UNsd0AvEAyUGGl8T0NYQFfTRAL4HyCg6rUOxB9jKv1Wz
	 5301cN+RYmdA0k61SyVnMIyEUZVJ4+GmGaMD02Ro45hPlvhiCrp94fW3RndvNx4mVA
	 iGqGrLLHQtKOR8kkx/paPHQqyJp6cDzgPK/bQUr3j6z+5J7aj6v8mh+5UMJcoRAeoI
	 kf/1plIPQw881HBCStqBP2e0B13GtLYPX9JFXfj45tpgZqB4+haeNUHMGsNKmkchEI
	 DoibrdBevXTvygMtNLTAqJ/xY8SEcjRfKlJihv7l8SPA0vKUeJvmR5u/HMela1FD8c
	 1Q80wQpQ70w0g==
From: Lee Jones <lee@kernel.org>
To: linux-kernel-mentees@lists.linuxfoundation.org, 
 Soham Metha <sohammetha01@gmail.com>
Cc: shuah@kernel.org, skhan@linuxfoundation.org, 
 linux-kernel@vger.kernel.org, 
 Support Opensource <support.opensource@diasemi.com>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
In-Reply-To: <20260126111309.22097-1-sohammetha01@gmail.com>
References: <20260126111309.22097-1-sohammetha01@gmail.com>
Subject: Re: (subset) [PATCH] docs: bindings: da9055: fix dead link to
 codec binding
Message-Id: <177021120569.1239607.5629414298206360992.b4-ty@kernel.org>
Date: Wed, 04 Feb 2026 13:20:05 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lists.linuxfoundation.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-262644-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E0BD3E652F
X-Rspamd-Action: no action

On Mon, 26 Jan 2026 16:43:09 +0530, Soham Metha wrote:
> The simple audio codec bindings were consolidated into
> trivial-codec.yaml by commit 4acbfcf11cbe ("ASoC: dt-bindings:
> consolidate simple audio codec to trivial-codec.yaml").
> 
> Update the DA9055 binding documentation to reference the new
> trivial-codec.yaml location.
> 
> [...]

Applied, thanks!

[1/1] docs: bindings: da9055: fix dead link to codec binding
      commit: 845776177cf3b75be4e27213425f25dcb630d817

--
Lee Jones [李琼斯]



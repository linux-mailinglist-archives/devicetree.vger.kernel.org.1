Return-Path: <devicetree+bounces-257522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OxoDMjTb2mgMQAAu9opvQ
	(envelope-from <devicetree+bounces-257522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:13:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F7F4A166
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:13:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 21D98A2D8AD
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 17:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9774E352941;
	Tue, 20 Jan 2026 17:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN/OaL86"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2F9352937;
	Tue, 20 Jan 2026 17:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768929232; cv=none; b=gf36/B44mx3bR69dyPE7tIDXUqC0ibceGrFckKoWT5gQdJtGhdLyZNA7s+Vv4i9qAJ3uTOrvjJLI7bQ0ENMLP459WsiT65wSrUyNHD25arG0OtvL68AyRs5yzWflF9/p07mIQNbdIQwTZy3pNvsM3L8NEq+OwHeKDGKfggZLx2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768929232; c=relaxed/simple;
	bh=FCXUTifsoE5ms3846pZc5X2+cn49qG54H5gxPe63MiE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=GOWO2Ek/Ab+HI2rXISrGJ3911CHtzLC47jC7B62ei6H3VUOFki6YcMJb57QCrr/TJm7WS8IvADWd6Fnt+eIoKCi1FJABtypvtiaWJCwrAMXCQfVoy/YhRNUGUe+23R4/ezRq6Vt5tB1tGk1cKIxKO9kPqLSQMSS/7SQFiuz2Fag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN/OaL86; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F143C16AAE;
	Tue, 20 Jan 2026 17:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768929232;
	bh=FCXUTifsoE5ms3846pZc5X2+cn49qG54H5gxPe63MiE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZN/OaL86bOdC6IT7QGy65HSNIb4kEOeBIdUSX4/ywGgfkLO0g/ysRy+uUCedRSk6L
	 /7ldB+MuNTI8ZN6BAobOyyExx/lJYLUv99rokkj0ggeP9X0MOjvEoqNRg3rx37/ww4
	 AkM3YmkKZQJ/1Dlq06eEgKdLuwLvu+2P9rHbQrdfqPD8EPsTrpOcieAgTo+B6z6C+v
	 oyWLQJrVJ1t7QW+Fvmg8cnUr+chDtH49RJer6ZIxDO8gPhzXst88+PFikgTSAsgBss
	 IFwDX/6nyGE+R1dtv2Qz1MpO5QRuygPNb/KnpC2z80oOT4cfGpp1mGhCFPlmXbXzil
	 u8IvFZdYw2gfg==
From: Lee Jones <lee@kernel.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260109-dev-dt-warnings-mfd-v1-1-1aabe37e9a14@codeconstruct.com.au>
References: <20260109-dev-dt-warnings-mfd-v1-1-1aabe37e9a14@codeconstruct.com.au>
Subject: Re: (subset) [PATCH] dt-bindings: mfd: Document smp-memram subnode
 for aspeed,ast2x00-scu
Message-Id: <176892922879.2358656.10600094966614086692.b4-ty@kernel.org>
Date: Tue, 20 Jan 2026 17:13:48 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15-dev-52d38
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-257522-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 88F7F4A166
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 09 Jan 2026 17:05:18 +1030, Andrew Jeffery wrote:
> The platform initialisation code for the AST2600 implements the custom
> SMP bringup protocol, and searches for the relevant compatible. As a
> consequence, define the requisite node and the compatible string, which
> in-turn tidies up the dtb check results.
> 
> 

Applied, thanks!

[1/1] dt-bindings: mfd: Document smp-memram subnode for aspeed,ast2x00-scu
      commit: d9c80c6393900f810cf30fb33f93c7f762c0ff4d

--
Lee Jones [李琼斯]



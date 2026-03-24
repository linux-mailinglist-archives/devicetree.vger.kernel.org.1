Return-Path: <devicetree+bounces-279867-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHHlJjeIwmkAegQAu9opvQ
	(envelope-from <devicetree+bounces-279867-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 13:48:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 527A13089CC
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 13:48:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7408230E7CA0
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 12:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10E93F99C6;
	Tue, 24 Mar 2026 12:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwMta95+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE833F7E61;
	Tue, 24 Mar 2026 12:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774356162; cv=none; b=qDvkBRHY7aW5ZOILWDG4V84XhQGLrUIjqfjB0h55fkWWLsYAz67p/isk2W10Yw8I11s11HDTdP3xbaLMfDHmYGp7PNFrTORNHV5RgF1WMoxzw4lS0bgGPx4tJMxRy3CL+oohO7w/+J5YecBTgE2S5taPoxwOWzmnhIt6kWaLSI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774356162; c=relaxed/simple;
	bh=+KslmHzSBWG9NBhqDlaYhG5fkbGzgf/HGFiLtDupwG4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=t3varwIpRGOqpcjcOqv62kFZ+d3n8+WklKkmyyE7UfItoLCshBb3FdU+5Iti3RpGJfsWphHu6oKIvsEAUm+pbA3/GHT6IvN0JL39bdzDNQ2nZC08VONEKiaRe0iCzbOLcvlZa0qVs0LQjxlEihNFM9SOykj9YkS3kYXE1MZfwXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwMta95+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B51C3C19424;
	Tue, 24 Mar 2026 12:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774356162;
	bh=+KslmHzSBWG9NBhqDlaYhG5fkbGzgf/HGFiLtDupwG4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=OwMta95+gip+cliKqmzke2R0zgzaMDj8ERA+t+vAJ5qvq/9LQCEgaR9jepWf+n2zN
	 jMse/QX2vdmNUzT13oKZAg14N/GX0NluaOPZB4mXFZubnajYvwyYCTJmZYUI1wFFAT
	 la1OwMf9PcoanN4NF81FditcuDz3qOLr4Xe6YGfeSVsEYO7Lv6m4aM/4soZsOCAoMc
	 HPFcmo3xaWKjYxP2Bff3jShp+9t2agKn6ICaGH8OiURrLhRhGlkHm1Dq0BgH6XKItc
	 K9puSEmzWTYHEmVoEDgzJhq4qi/1NYqs+3w2MxEqYtFUWfbpWv5X52tUIMBVeh6q0i
	 nNXdFjThZVvvA==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Alexey Klimov <alexey.klimov@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, linux-samsung-soc@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260320-exynos850-ap2apm-mailbox-v1-1-983eb3f296fc@linaro.org>
References: <20260320-exynos850-ap2apm-mailbox-v1-1-983eb3f296fc@linaro.org>
Subject: Re: (subset) [PATCH 1/5] dt-bindings: clock: exynos850: Add APM_AP
 MAILBOX clock
Message-Id: <177435615843.56076.4901466217115766536.b4-ty@b4>
Date: Tue, 24 Mar 2026 13:42:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.0
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[samsung.com,linaro.org,baylibre.com,kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279867-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 527A13089CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 20 Mar 2026 21:15:13 +0000, Alexey Klimov wrote:
> Add a constant for APM-to-AP mailbox clock. This clock is needed
> to access this mailbox registers.

Applied, thanks!

[1/5] dt-bindings: clock: exynos850: Add APM_AP MAILBOX clock
      https://git.kernel.org/krzk/linux/c/bf9462c82721e42f49e4a62efe96ef7b41a5e42e

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>



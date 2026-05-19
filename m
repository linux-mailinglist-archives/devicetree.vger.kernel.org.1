Return-Path: <devicetree+bounces-300206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNlFGbeLDGr0iwUAu9opvQ
	(envelope-from <devicetree+bounces-300206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 18:11:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC8E5820A1
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 18:11:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D6F931A1A3F
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 15:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7BDB2F8E8B;
	Tue, 19 May 2026 15:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2jPECTM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B8D2F8E87;
	Tue, 19 May 2026 15:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779205259; cv=none; b=Ps8hUr2l+BMs/KQWDT2cr9y/YPzjX4bqhAQPUKZ6PzaUXlpcCKC8JrMdUWbIoglpWxYghmS3UNJEk/ITfvZyn40TZzcUY629cx3K7ijlC5oaxgTwRtKDtGTiuvbcQcSfJA51PT8zUFDXUbDhE4LAxWfSEJyxuPY7QP6HhNUviso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779205259; c=relaxed/simple;
	bh=sTBu62rT416xqqTD41+vfkqLsJmOaQFdjX/i+w/ywR4=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dITMFL2mjIisa3ov1jk01ti3zSBHOeCx98qa1m+CiC0QzPgK5lw+zayQav/FfLyH+gE3exVZji+EVP+1wr3SL6HLLn2lOI1Auf7PMtPG6UdGJ7f/d/gah7Waw1sO9Rgq649y29uQPNlfMieU7ekJW3TidzB5L0jQTk1DzeCCO9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2jPECTM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D667C2BCB3;
	Tue, 19 May 2026 15:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779205259;
	bh=sTBu62rT416xqqTD41+vfkqLsJmOaQFdjX/i+w/ywR4=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=p2jPECTMrHzUITG8o+mC7+j74cx/oBVGNq0t90ohpJU6VcmQ/0iA11vS842nVIMFm
	 lEyFaHKNiCTyIXt8tLZ+QlEAoiHTlkpu1teetW5jPnQjwwDjNSiZOnSOqerNE+TTs/
	 cVlXqdj6+29uKBPwT22B67hRs1QBq55y2w2kGbdY2ePSbKMAt/fOcBmvvEV/f9klA6
	 wimhBclL7fSzPZlu7c/w4Jc5OF2VqrihU6lPUSzdnx7YOhuMxfceGh4xc2cIhdTugY
	 AnMJpPAs1j53Pqd3QgFHIJxFISf1FiPh4fCT4D7C45YkW7mb0qoCox295BSFURblK2
	 co8gaG6OqUDew==
From: Srinivas Kandagatla <srini@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>
In-Reply-To: <20260519152807.29407-1-ansuelsmth@gmail.com>
References: <20260519152807.29407-1-ansuelsmth@gmail.com>
Subject: Re: [PATCH v4 0/2] nvmem: airoha: Add support for SMC eFUSE
Message-Id: <177920525817.48973.8493693680561198556.b4-ty@kernel.org>
Date: Tue, 19 May 2026 16:40:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300206-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: BBC8E5820A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Tue, 19 May 2026 17:28:04 +0200, Christian Marangi wrote:
> Add simple driver to read eFUSES with SMC commands for
> Airoha AN7581.
> 
> Changes v4:
> - Address review from Sashiko Bot
> - Use u32 for bank_index
> Changes v3:
> - Rebase on top of linux-next
> Changes v2:
> - Add review tag from Rob
> - Rebase on top of linux-next
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: nvmem: airoha: add SMC eFuses schema
      commit: ecc54f3a10d07449d6024a43854e5f4bdfb1aa32
[2/2] nvmem: airoha: Add support for SMC eFUSE
      commit: 46057692bcf960f376fb4e7665977163f91f0ebf

Best regards,
-- 
Srinivas Kandagatla <srini@kernel.org>



Return-Path: <devicetree+bounces-269788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BJWHDMGpWn9zAUAu9opvQ
	(envelope-from <devicetree+bounces-269788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:38:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E231D2B80
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:38:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EE5F300F526
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 03:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA7781C4A20;
	Mon,  2 Mar 2026 03:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKB/qdtB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8611E7262F;
	Mon,  2 Mar 2026 03:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772422703; cv=none; b=C8CgZqpE1adBOp9VBrmlP/k9H7utL18Raz+WYWdlgUiqYv/41CMAkHch5lsMXaugzLinRMUkfvG54xsEOWTT+ftS0TJj6nKVIVtWkyAcj71qrMKw3lKweI8wfi7snRLe4c4fEI2Q4UVQ98BCHgY6YuQkizRt5060kMO1PUtrzEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772422703; c=relaxed/simple;
	bh=tkyELmpejTLBUSV5SURHjr2MDlMxpNxT6V7ppU9CESc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=icd0IEUhfWoZXX7dwAqBUnnaGhtFwFiJ/K0d+XyPjb4A8A3E/EwrzKszz7qo4RJxqCjd7scLw/zUhLSXFZZpIuRrKyZUW7K70YTdz6EpQozdrIho/Kb0hHR8Tc91105cabcNJD+v2y1zFD50JT8HrSERr6AQAk4jT1ybZqc1+DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKB/qdtB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74A48C19423;
	Mon,  2 Mar 2026 03:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772422703;
	bh=tkyELmpejTLBUSV5SURHjr2MDlMxpNxT6V7ppU9CESc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pKB/qdtBvj62XtioPQsZZBD5rQlhOvCo4jiur+fhAQAjD6JG7OKhwZ1dixGVw6FUU
	 KnzeD0LjW6+aPCfghs3z+UbWdDT50E8iiK3rb7cvgjYzA/aH1isS8MAd9Xii+eSiES
	 CnIogF9cXav74pJH6vwU/j6sa062P6OjRn4HJPYKzK1ADXt2NcYWHDLCe2awDf0p6X
	 nxCXfSp1N4TqizuVreb/7M9sMsOdJLlKj0F0X9He+j0pC1D6xK1l5QctLIDnkL5kvl
	 qAngG636MvGQ3ZAsjthyYZfywmZTKqPUKO5U6kYPhNSP8KIvqIB7sWz0TEreXpkXpr
	 fPbYFAAsIv7Mw==
From: Yixun Lan <dlan@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>
Cc: Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: spacemit: adapt regulator node name to preferred form
Date: Mon,  2 Mar 2026 03:38:15 +0000
Message-ID: <177242109477.25815.16699220030099258528.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260226-02-k1-regulator-names-v1-1-e87695d50159@kernel.org>
References: <20260226-02-k1-regulator-names-v1-1-e87695d50159@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269788-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C4E231D2B80
X-Rspamd-Action: no action


On Thu, 26 Feb 2026 09:35:00 +0000, Yixun Lan wrote:
> The preferred node name for fixed-regulators has changed to pattern [1]:
>  '^regulator(-[0-9]+v[0-9]+|-[0-9a-z-]+)?$'
> 
> Adjust all SpacemiT DT regulator node names to fix this.
> 
> 

Applied, thanks!

[1/1] riscv: dts: spacemit: adapt regulator node name to preferred form
      https://github.com/spacemit-com/linux/commit/edea11c0aa8ca88537cc48d0d83296c66ab69ab8

Best regards,
-- 
Yixun Lan <dlan@kernel.org>


Return-Path: <devicetree+bounces-275254-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HK0OGUStGlkgwAAu9opvQ
	(envelope-from <devicetree+bounces-275254-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:34:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 746AE283FAD
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:34:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B9D9530C10C2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35D963BAD85;
	Fri, 13 Mar 2026 13:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCTlN7Uu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115A93BA254;
	Fri, 13 Mar 2026 13:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408305; cv=none; b=DpDZYW5qRFSLHzmO8nikRW2O3V9OmLxgfY8VXn5gTXF9UfTUk6NWnaCvCnU8LMvaReJVuOIu0acztl/jBXvqwkXl14zEEBnsF/9YadAcanOuz2Lw3gB06voJB3E0shWmRZjf8RfGagmG1vfYzVhOzLrYsuTcpwO/xOvOS3ImeDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408305; c=relaxed/simple;
	bh=3J0mqTW76J93IzmMcyvbO8vL4M3vcbrZh8lQRJD/PLM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tBiTB2yusAM0WSUgPrUnuQVRVugzN38kd7tMQqs48gsRV6mNaLTXQRP5L5KKN3GgbOPxWUqYKmzpu60/GsHjT2SvkXoNYjtIn+RRYG2+hc7AN1Xo0sRrbCb2itef0ue8iSMZPJJTqT1SepEr09jUQJkevAVcUbrspzBTNJ0SjmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCTlN7Uu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33FBBC2BC86;
	Fri, 13 Mar 2026 13:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773408304;
	bh=3J0mqTW76J93IzmMcyvbO8vL4M3vcbrZh8lQRJD/PLM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aCTlN7Uu4bH7T2w5Z01mzOzcdSxCZAm7zSqAi/yjMfLFDSWzfsa8kw21w9X+QTsQt
	 Gkd5iXW6SyB8+gnP6qa1FD3XmTW1tWA/QA3m5gninoX2Rx0PlkBEaRLbgjrWyGuOmN
	 oNRwQQ8sLJDp5eAbghEIHTBXBsLPvz2qc6P4cUXo3DkJXFjTnxksUg1qdda4mQ18RW
	 /k6CtiYemEiZZtBAZdosRcwUHQMieko3QaLpgQmNUFYfDpZ5Ge+PXeVIP9BFPT4/UC
	 sf3Xvc5iwA436Ry3wQqXbcGBFCUGTQYHPiF0P2MIs9jwQpHILJyWPs3dRe+AdQGN4F
	 kD/O0mlcUFYYA==
From: Yixun Lan <dlan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	devicetree@vger.kernel.org,
	Guodong Xu <guodong@riscstar.com>,
	Yixun Lan <dlan@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH] dt-bindings: serial: 8250: spacemit: fix clock property for K3 SoC
Date: Fri, 13 Mar 2026 13:24:57 +0000
Message-ID: <177340792098.15746.315306676858914144.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304-01-uart-clock-names-v1-1-338483f04a8b@kernel.org>
References: <20260304-01-uart-clock-names-v1-1-338483f04a8b@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275254-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 746AE283FAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 04 Mar 2026 07:19:39 +0000, Yixun Lan wrote:
> The UART of SpacemiT K3 SoC has same clock property as K1 generation which
> request two clock sources, fix the binding otherwise will get DT check
> warnings.
> 
> 

Applied, thanks!

[1/1] dt-bindings: serial: 8250: spacemit: fix clock property for K3 SoC
      https://github.com/spacemit-com/linux/commit/606a6b8bca570aa4f838ddd410345a2937bd98eb

Best regards,
-- 
Yixun Lan <dlan@kernel.org>


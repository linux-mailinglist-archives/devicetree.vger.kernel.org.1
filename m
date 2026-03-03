Return-Path: <devicetree+bounces-270665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MzEB7MXp2m+dgAAu9opvQ
	(envelope-from <devicetree+bounces-270665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:17:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 810F01F47F5
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A10D33017C2C
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 17:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FB5A3E7169;
	Tue,  3 Mar 2026 17:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAZz3Y0F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9B232AADE;
	Tue,  3 Mar 2026 17:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772558201; cv=none; b=dNr1pemyMPhEz13FQPh1M8xPTZPlveyP6V3z9gokdCVOAn+eXmckTGvNuJrqTP1CGOlP/y91ZgH9cFDOPSCl09c6JjjTtlOg0ej4kL2ngdlvnKRkE0/nRLHuRjlGl5HCEvOhtkLksZnrG2EkxiD/WgefOdZqGHfIPvE1h4KOWHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772558201; c=relaxed/simple;
	bh=89uuC9cegDpYKojzKKoYfuDwsIEFdHdSqezxCAPjCPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=COX+OMHnUn0sAFqbtNF0yTMUtHwrFtFXQ9H+9H62a75XASMVO7Wievr++6051if3XEH5knrrpp0dDC++ZuZqyeSHBuQ5oXXsbhQ8XS+VDxPfrYMdKy6KkEY9i5LVovx9z5jf5e/DcgdiNMeimIYtB7KHChJwaTN+QkXR1eTMA/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAZz3Y0F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43C70C116C6;
	Tue,  3 Mar 2026 17:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772558201;
	bh=89uuC9cegDpYKojzKKoYfuDwsIEFdHdSqezxCAPjCPQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WAZz3Y0FsJJyI9i2KwiFyXuIwX12KvERWrKBtCYz+yvB441Fb0Acv0V+gCFECi7yR
	 Fkinl2YqPK3OdJ5mjJWW5M64za1JrZIDcFIH4TrgbW+PFzYpmrXrl1tDhjisUgJKag
	 18xjs815cuYBNONech2KjWT1kcb0W7ZlR0+bgAPni0XAQ5IhT05u8Simx/0kXYxuSa
	 D9YKZVL9eRa49S8fZJHo5jmL8XxWjY7fN+dEjsAF27ZtlWirXFCuwe5KcJkpJkLknB
	 kZtBsaTOVEjYuhFcpVxeXab7I1iYRRXfiTVxOjBZ8PxENLVKmeiliP9JiMtw+FMCSX
	 EFnXZTKpR6p0A==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org,
	Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/3] Add support for Microchip PIC64GX Curiosity Kit
Date: Tue,  3 Mar 2026 17:16:29 +0000
Message-ID: <20260303-judicial-blissful-a6cf6282104f@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251117-paprika-tipping-e7bb3e211d6f@spud>
References: <20251117-paprika-tipping-e7bb3e211d6f@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=797; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=T5Bex/GspdKVSrr1jgN1DmbEltzEuqjdgTmX6pJxDrk=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnLxXPLH+x8Omuy7gs1MzfWDxssTncumW++IM+AV+CY4 sSlW3at6ChlYRDjYpAVU2RJvN3XIrX+j8sO5563MHNYmUCGMHBxCsBENMsZ/ns0sP1rPdU+jzGi ed71LwVHSv5phk88s0HWx/Vt24oVGsmMDEe37Fnz5k3VMZn+RPtFF9jZw57sX72y+692f/0Ls3l H37ICAA==
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 810F01F47F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270665-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Conor Dooley <conor.dooley@microchip.com>

On Mon, 17 Nov 2025 16:53:21 +0000, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> v3 of Pierre-Henry's stuff from over a year ago:
> https://lore.kernel.org/all/20240930095449.1813195-1-pierre-henry.moussay@microchip.com/
> In it he said "This will be fix in a V3 coming in due time", and I guess
> that due time was ~14 months.
> 
> [...]

Applied to riscv-dt-for-next, thanks!

[1/3] dt-bindings: riscv: microchip: document the PIC64GX curiosity kit
      https://git.kernel.org/conor/c/c8cbde5dc18b
[2/3] riscv: dts: microchip: add pic64gx and its curiosity kit
      https://git.kernel.org/conor/c/a3c02b37a631
[3/3] riscv: dts: microchip: remove POLARFIRE mention in Makefile
      https://git.kernel.org/conor/c/4eddc7ed4904

Thanks,
Conor.


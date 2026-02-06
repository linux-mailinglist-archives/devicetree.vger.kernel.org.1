Return-Path: <devicetree+bounces-263510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zMd0NA9PhmlyLwQAu9opvQ
	(envelope-from <devicetree+bounces-263510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:29:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD361031AF
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 545DF300D565
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 20:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E212430C630;
	Fri,  6 Feb 2026 20:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgTW6vSe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6A02E175F;
	Fri,  6 Feb 2026 20:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770409736; cv=none; b=Ga8NSORPIvNGh2BRGOMftf6P07C819W/ZvT/RNW9MOFUg574saCDoDaGGuda0Z0k4NAkKonw08r0OYlcs+e3L0NuU+/avkD9B8/pvJUmdPF1CAZROkgkDaAIvOTFaNoiKW8qGj5B9XUxxA5Xtv5DwhGqgapd+W205Zv1Xq/Odko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770409736; c=relaxed/simple;
	bh=IWMNQ0nvchF9bSXAiZh461lavyZch99AB7QvnoZmVzg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d4q93lbfGalpF3OtLH7CRwNN7gCXJxsDU8GuLwY/B0DtnvcrCwe3A4R3YOw1oRMbA3gKjuZIgUnrPp3XEH7pHsaRDM1EbkB1MY26EcQAyJuHbEHDJxFk4jdLJUND7VyMCThxOE0Xwa0Ni3seqOpcSvsamL6QyPBFqcZEH6hZr38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgTW6vSe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A77B9C116C6;
	Fri,  6 Feb 2026 20:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770409736;
	bh=IWMNQ0nvchF9bSXAiZh461lavyZch99AB7QvnoZmVzg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jgTW6vSeAwtpx8xYVrWFvpJODPjzC0s4jufNPVRGoVAMO6f4VSxK/+UkYy1Atz64g
	 FWiIZIvBJCrITM59J1fDc2FBiidJ5uHi+ehqy7HFtMCqnBvD9vF5NFDvRUQou8/lzJ
	 9HJEytq14PmcKm2cRb0tLwszq+yqYcCe48QuFG8p1jhG2AQYs1Mpr4O5kNFXHhVD0M
	 xhiBlI1JvRd1r2uypLydKdWgCbUDy+0HqMRPOrOvPYhI2GS8xjFKapcrLq1wbEKIh4
	 l+0jNxu+ceyTpRMcBnRYT6+sq1hj89yzMw3QGZw1pDaWK1TbVNTquguFj/ZHVDfsc8
	 ZcsL3EtmMn8dw==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] riscv: dts: microchip: add can resets to mpfs
Date: Fri,  6 Feb 2026 20:28:44 +0000
Message-ID: <20260206-reoccupy-debrief-88ea7343b1f2@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260128-nacho-craziness-45a3e575ba7c@spud>
References: <20260128-nacho-craziness-45a3e575ba7c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=589; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=yJCyab6NNWshX7GEu++YjDOhK33LES0wRUPrdusBBJo=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJltfn+3tap4VdzwvXyA+9N9x5s9c/ay/ZylwWRdmpVZb mXkv0mpo5SFQYyLQVZMkSXxdl+L1Po/Ljuce97CzGFlAhnCwMUpABOJkWX4H+T1KETmh2bOX02N +sMHJKy870TmC/NvWfShZu/2R0+8+BkZHldbvS7z++Ly7nzgScYjz39Oyam79LYkSbdc9O7S+yc u8wEA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263510-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EBD361031AF
X-Rspamd-Action: no action

From: Conor Dooley <conor.dooley@microchip.com>

On Wed, 28 Jan 2026 20:50:33 +0000, Conor Dooley wrote:
> The can IP on PolarFire SoC requires the use of the blocks reset
> during normal operation, and the property is therefore required by the
> binding, causing a warning on the m100pfsevp board where it is default
> enabled:
> mpfs-m100pfsevp.dtb: can@2010c000 (microchip,mpfs-can): 'resets' is a required property
> Add the reset to both can nodes.
> 
> [...]

Applied to riscv-soc-fixes, thanks!

[1/1] riscv: dts: microchip: add can resets to mpfs
      https://git.kernel.org/conor/c/ff4b6bf7eef4

Thanks,
Conor.


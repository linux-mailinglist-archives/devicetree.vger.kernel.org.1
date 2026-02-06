Return-Path: <devicetree+bounces-263511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJtaEh9PhmlpLwQAu9opvQ
	(envelope-from <devicetree+bounces-263511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:29:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C25181031BF
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0DFBC304D1CC
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 20:29:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E1E30EF67;
	Fri,  6 Feb 2026 20:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQrsd5Gt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AE72E175F;
	Fri,  6 Feb 2026 20:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770409739; cv=none; b=ahJ/LF0nXMWIiW6m2v5VgPgdVkgVw9lSq4pJL/MKlFqenXyqEaoz6+QxhSMwJRyqqHL4fPFbIh0OkOFDnHC+EX8pl22TyZBqubW4Aj9bcw0sUFF7zVYl7JsGz1+KTHZewXouq3FvUx5I2TxY98TYt9byKyNz6rSxydbZLts1WYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770409739; c=relaxed/simple;
	bh=qZTbVS/JaPkFufcDnorgSYb/rg9wuh7ic7gwFOqBzH8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fjuUo88nrGV8wUHNg8P6VF1gdEzAguCCiWFTeFAWySq3T/yjqQhWGXjhJp3oPctd//uO8rD1RGyuyWJ9fgIx4T5odb2oShg+lgLh7LZ+C8GevkH7hFm3sghC9Dg/h0MdOyKy8PtXnt69W17VQTEAck/+DAYK5vcLEjHG3BYRjsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQrsd5Gt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1D85C19423;
	Fri,  6 Feb 2026 20:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770409739;
	bh=qZTbVS/JaPkFufcDnorgSYb/rg9wuh7ic7gwFOqBzH8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KQrsd5Gtqw7NOT1QAFVbMpIU9j9Mq2CAhuOEBp21X13IGO6A/RQAY9r0YnJ9ZiQTz
	 GN9Eo4OQ2pGCyRpJE9DLIdo3lFcWLimePiezEvtpxZ4VP65x59iW0ibuMZK493OU4M
	 xZnDnpnFx01/weBGJUX8EkXU8zMw/j1eGSo7Ur/HzHD6/qY6AY83s3tIKS3yLMxCAN
	 or/S83fU8TLpGG772wDDyURGNlAoD5LQku3f8i4Pxp5/MqBHzBeZc8D8cwwZWSEUmt
	 r3x0Xu4Tj+StVTjKRu91G/l4m8eSQGOzKLiqNExjPdI2Uni1qcWKBcxZPs3aKsHl1C
	 GpPDM4xuwihTA==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Felix Gu <ustc.gu@gmail.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] cache: ax45mp: Fix device node reference leak in ax45mp_cache_init()
Date: Fri,  6 Feb 2026 20:28:45 +0000
Message-ID: <20260206-shaping-scorpion-63604d9e4949@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260131-ax45mp-v1-1-a566905c5c8a@gmail.com>
References: <20260131-ax45mp-v1-1-a566905c5c8a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=602; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=Jqmwk48etHBlEGjkMxHj3nrziUNVHXPXWiHSxyYgaOg=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJltfn+9ov8+VNg1a+MHqwWHM8Rzbc5+FTX8MDVpasalL 1nv8mf6dJSyMIhxMciKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAitx0Y/tnrb2ENsb5krbY0 uHMi9615ITJv93Q6q7VPEZjnI1h51YqR4YDFtwh2T7PJ85SWN57g2qs7qWaS8wXpyHnZ1pvmHW7 iYgcA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[lists.infradead.org,kernel.org,huawei.com,bp.renesas.com,rivosinc.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263511-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: C25181031BF
X-Rspamd-Action: no action

From: Conor Dooley <conor.dooley@microchip.com>

On Sat, 31 Jan 2026 01:49:09 +0800, Felix Gu wrote:
> In ax45mp_cache_init(), of_find_matching_node() returns a device node
> with an incremented reference count that must be released with
> of_node_put(). The current code fails to call of_node_put() which
> causes a reference leak.
> 
> Use the __free(device_node) attribute to ensure automatic cleanup when
> the variable goes out of scope.
> 
> [...]

Applied to riscv-soc-fixes, thanks!

[1/1] cache: ax45mp: Fix device node reference leak in ax45mp_cache_init()
      https://git.kernel.org/conor/c/0528a348b04b

Thanks,
Conor.


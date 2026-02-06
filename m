Return-Path: <devicetree+bounces-263512-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KF50LTZPhmlpLwQAu9opvQ
	(envelope-from <devicetree+bounces-263512-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:29:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5131031D5
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:29:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E8813056EA0
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 20:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3117830F526;
	Fri,  6 Feb 2026 20:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHlEaC9T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E81630E0FD;
	Fri,  6 Feb 2026 20:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770409742; cv=none; b=p3V0M42CnihKPjLpz2Jf3x0gfDbwiFx4CqiCXCqMFeHYAPeRP67GRHyVd+0SM6hHxGPyVxUrBfcaZaAf9OaZUWHtWh0nkHVVSzRpHgzK0LPD8MxzOQeLgKDh8LGs4ND36nlOl8OJAOVkD8r4bnjo6ziX71fBwBokR+F0De15qjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770409742; c=relaxed/simple;
	bh=8pY7QweJ/zLHIee24538hoA56yiZWJ4lKCvyynOS0UU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kQ4h2iN51Lx2OCoiK968TnpiBkkNaNY34foV2OQ13kQafmEW3d0vbL7zkwIEnrqztpp7PAKzON4E9jS5fqNw6aTuZpJws/yTAFK0jw6meKPC1qK3fS0L0vqB8Z8CBUbC11/UN0kh9C9c0qiXfu6UxqhTX1kDeXWie6xjkiWDOeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHlEaC9T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C6D3C116C6;
	Fri,  6 Feb 2026 20:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770409741;
	bh=8pY7QweJ/zLHIee24538hoA56yiZWJ4lKCvyynOS0UU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uHlEaC9TDCwBzGBltw2w/LJAVFLQmAdI2NNJmKayaEmJQTDafdW/nMLy7mfUP5OUe
	 9hu+jXRaPC2I8y8ZLLQmp6vgSrja9uxQp2uVJEn2Abg2LcOK9AWeosEPfrbXvgdMvJ
	 wGGGYH0k25uCRw/f9zyUm6YPX8BJxfEwpAYClANIQNzmfi65SqZjX+uP6x1X3A0LEd
	 ERbMUkLHtU7w63krQZS+nPcYjsL+VoH4hnfSS/3cjkmSolMbwDr85h4iFHNMroZ5xM
	 BQRUpe+IDXY6jXcHfZAg+tJEc9YyUQo461BSFSeFZHNYKTJ8XuwQWOUzfPcwBA3wSc
	 4bmsoKe5JbJCw==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Joshua Yeong <joshua.yeong@starfivetech.com>,
	Felix Gu <ustc.gu@gmail.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] cache: starfive: fix device node leak in starlink_cache_init()
Date: Fri,  6 Feb 2026 20:28:46 +0000
Message-ID: <20260206-front-jackpot-6d679f8f5232@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260131-starlink-v1-1-30985722d51f@gmail.com>
References: <20260131-starlink-v1-1-30985722d51f@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=465; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=rOdFAqm0+imBDwjCHhhYXVxtGgIqRZWuWIeb7e4B4JY=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJltfn93vpJ9VXDS3Hz3Rm8eplqBB08cZO9czXzqKySj+ VbtuOHDjlIWBjEuBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEykSIiR4YXoR4HHe5bL6l3T nrInMnXGfLn3dtayva5fCzIfacbreDMyLA6IuumR6Sx68dbm97lcDbaesW//BKz1kX7e1uulbKf BAgA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263512-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lists.infradead.org,kernel.org,huawei.com,starfivetech.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 3B5131031D5
X-Rspamd-Action: no action

From: Conor Dooley <conor.dooley@microchip.com>

On Sat, 31 Jan 2026 01:13:45 +0800, Felix Gu wrote:
> of_find_matching_node() returns a device_node with refcount incremented.
> 
> Use __free(device_node) attribute to automatically call of_node_put()
> when the variable goes out of scope, preventing the refcount leak.
> 
> 

Applied to riscv-soc-fixes, thanks!

[1/1] cache: starfive: fix device node leak in starlink_cache_init()
      https://git.kernel.org/conor/c/3c85234b979a

Thanks,
Conor.


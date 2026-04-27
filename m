Return-Path: <devicetree+bounces-290719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uH4kHX+172mFEAEAu9opvQ
	(envelope-from <devicetree+bounces-290719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 21:14:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 618BD479240
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 21:14:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4F9A33005319
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 19:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF44D3ED117;
	Mon, 27 Apr 2026 19:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifxkMyCU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA903E3159;
	Mon, 27 Apr 2026 19:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777317241; cv=none; b=SJyltE3X3Zot9//ddboisA+FueSgLdRRpYsKnYZJS+ozz34Dtv41zYQD+x+0PvLEoIedrH21lFGE0httx7PUjtMttqKDp56axgvRLGGVyMZy/2OJkAOc/o9yE9cjwkOudQdr28631ZKp+T9bu9krxbkeevR2ABK+j6OWzSRo5Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777317241; c=relaxed/simple;
	bh=FNoY1C0U6boXclOEA8AD1sZ7Ixfc5mVFp0nECyezhGw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=H37vQ4sJKUfcBmq07mFcQG3Uy2GTlcvvWCFvuCUIBDdj5rwhKFQX0UW+3QpM/s3Lu24p1M04JW84hMSJVKBod3/8YXdYgh86Ucek9/c7wB8EcxyQHNwJXXWg2NYdj4ZHbqt+0PHOMj7YqZjqrmYK2w0pBD1tl3I2TOuVEXA2x9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifxkMyCU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58C36C19425;
	Mon, 27 Apr 2026 19:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777317241;
	bh=FNoY1C0U6boXclOEA8AD1sZ7Ixfc5mVFp0nECyezhGw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ifxkMyCUqNLKS7bPGeOXGNZhFevu5edwAj7O1Ig9HeAwR8DnvPJq2EpbkejRmTmok
	 mBMC/No/dpGsWRMx1KUoMD16UY08744MqqNxtL/58ysOrWLzohcy1m8Bs8Q7iuZLtv
	 TdyLu4MPqRs0neyfcVmM/bv5XBjFwYM0W7NCQs+B3sNkfjn1C8iuEMIxODF2LOsUbk
	 g4Dy/3+OnA9QWEMotMjQWjGYZWsjYoUpoFxf/wtY23yJ464yd15do3H/hzVAbG9EoD
	 tQY2MnZsEZwWHuUIQSYz7rb4VeyMkO2FBFeZ2/nQn73Nfiz/ZgTM2gYIr5IJUZY9Lb
	 IwqJh+B7L7K1Q==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] riscv: dts: microchip: fix icicle i2c pinctrl configuration
Date: Mon, 27 Apr 2026 20:13:54 +0100
Message-ID: <20260427-ambulance-mushy-f159dd1abcec@spud>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420-blinking-unselect-955dfecfa26c@spud>
References: <20260420-blinking-unselect-955dfecfa26c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=1070; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=Dg4dywRqTrnpI4j+vS3SL6FZpIx3omqFNmOsxnBKuXQ=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnvtxbyy1f8Tjn6r+zwPZPpd3bLXOExcZji+sg45mrah CJzp49WHaUsDGJcDLJiiiyJt/tapNb/cdnh3PMWZg4rE8gQBi5OAZjIdCNGhlepFXKnVwWtua5q VSxYvMhS/W/T6cKj/afWnJl47VB5Rx/Df+evCXc0i9cz1srFvf08YeN743X60eLf9HI5ly9b5Mf CyQYA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 618BD479240
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TAGGED_FROM(0.00)[bounces-290719-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

From: Conor Dooley <conor.dooley@microchip.com>

On Mon, 20 Apr 2026 12:14:31 +0100, Conor Dooley wrote:
> Unfortunately, an erratum with engineering sample that I was not aware
> of was exposed by adding pinctrl configuration to the icicle kit.
> When routed to MSS IOs, i2c signals are never anything other than tied
> low. Being an FPGA, a Libero workaround for this problem was created,
> that involves routing i2c signals to the FPGA fabric when the MSS IO
> option is selected in the configurator and then back to the intended pin
> using the debug "fabric test" capability. This is invisible to user
> facing information in the tooling and not mentioned in reference designs
> documentation. It manifests solely in the .xml output from the MSS
> configuration that the HSS firmware uses to configure the device, which
> Linux now overwrites using the pinctrl information. As a result, I never
> noticed this.
> 
> [...]

Applied to riscv-dt-fixes, thanks!

[1/1] riscv: dts: microchip: fix icicle i2c pinctrl configuration
      https://git.kernel.org/conor/c/0df8aa2b9aec

Thanks,
Conor.


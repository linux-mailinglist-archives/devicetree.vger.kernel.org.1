Return-Path: <devicetree+bounces-261528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HJagKBnifmnvgAIAu9opvQ
	(envelope-from <devicetree+bounces-261528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 06:18:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C04C4F77
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 06:18:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DB5D3011111
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 05:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 308E626E702;
	Sun,  1 Feb 2026 05:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="vA1QOmD9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84FE3EBF29;
	Sun,  1 Feb 2026 05:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769923093; cv=none; b=S8fbKFNtVqdevuLrebNaCAnP0AR7kkvEnKDbu1grTOaTxOLyeYpMiDENI3ADGeyPLR4CVgmX3b+wpd0NLPUeRgVGDBX8QjHiItcVm8sMAcrzn1yDTgx0rR9P+h6uxi+MzAg+TmeDKZyJdqoEH5g6k0GFUjNB8tyfZ7IRGzMmkho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769923093; c=relaxed/simple;
	bh=C0CYUBRG91ipIlTc3TywEPoRqbFy/T0H4CJ3dcoDfEQ=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=dumkjfXInxmJOjDUtDi7ZgGnNcslopZiCrxALdwxFwxqr+8yUUoT3hanPQLUMBHngtvhWpGr5UleIjF5tz/GYinJ6Zu6eU99XvrosBi8xvmaahw8h/etV73W+x+ct8JJ8V+4fsJxtUWh0XqrIttTHXc7a+m9C7fTSchq3lBRNnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=vA1QOmD9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D8BCC4CEF7;
	Sun,  1 Feb 2026 05:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1769923092;
	bh=C0CYUBRG91ipIlTc3TywEPoRqbFy/T0H4CJ3dcoDfEQ=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date:From;
	b=vA1QOmD96YCHPkdcmJprh255ZcgvOnq/CRbEHi2daIEtGlrRlZbp6hJkTpT0Zk2mq
	 31rE76VmbJqk7KdqxtAW4VPlE77OG36HLPAufomh4dKgWo5uhNA0UmSG1/PXD38ahB
	 2BxPPZIyL4RMjjJZtg4CNsnhUdegTab+73FEH7hE=
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH 0/7] riscv: dts: spacemit: Add PMIC regulators usb pcie
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Han Gao <rabenda.cn@gmail.com>, Han Gao <gaohan@iscas.ac.cn>
In-Reply-To: <cover.1769895215.git.gaohan@iscas.ac.cn>
References: <cover.1769895215.git.gaohan@iscas.ac.cn>
Date: Sun, 01 Feb 2026 00:18:01 -0500
Message-Id: <176992308158.607015.13478428408379130887@lemur>
X-Mailer: b4 0.15-dev-da43f
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261528-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,iscas.ac.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konstantin@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E0C04C4F77
X-Rspamd-Action: no action

On Sun, 01 Feb 2026 05:38:07 +0800, Han Gao <gaohan@iscas.ac.cn> wrote:
> This patch series enables the PMIC, voltage regulators, usb and pcie
> for the OrangePi rv2 board.

Hi:

Thank you for sending this in. I am working on "b4 review" functionality 
and I am using arbitrary series to perform agent-assisted reviews to 
find bugs in the process.

This review was done by Claude Opus 4.5. I do not know enough about the 
subsystem to make any judgment about the quality of these reviews, but 
they look valid enough.

Hopefully, these were useful. If not, I am sorry for wasting your time.

-- 
Konstantin Ryabitsev <konstantin@linuxfoundation.org>


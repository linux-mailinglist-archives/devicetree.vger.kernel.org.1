Return-Path: <devicetree+bounces-308999-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Nxm+EA4AKGrs6wIAu9opvQ
	(envelope-from <devicetree+bounces-308999-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:59:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF5A65FC1A
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:59:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="cD3eMsp/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308999-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308999-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 439333022DFF
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 11:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5249B403EB7;
	Tue,  9 Jun 2026 11:54:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0CA3CF21B;
	Tue,  9 Jun 2026 11:54:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781006090; cv=none; b=d7ozeTMEiedzGI00DZuolml2yQinkUWiGEUskgkrtZzpovewADzBhDDbZZ/d2ZJZkM70Sj78wKl1Wo3CBcXqBFE3BSmYZCcpi2I2wiEuRdIneAF7VJUXN76BwJ/hZINs+MsAae38sHnptOVb+rZgnryARi/DGM6/pcBcAxq7Wzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781006090; c=relaxed/simple;
	bh=JDRLa0zhWX0fBo2wiIs7TnZ8Ao/NqKSx4G1V4grOBAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tzmb+ueOtPrGiSTmP3LFvPjoaqP9nch/W9AX9DPh8Jclcb3cLotNZpJuPM1zLfWVgzy8Iy0TsGnqJ8qoIiKS/uotNB1KNR2VUoWlrbyDZ44yAxBsJh1Ust2kdgiII43PWFdvJ6nfgsOtnxXP4khV57k+gRLLW3CtjOQ1j6g98hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cD3eMsp/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00EE71F00893;
	Tue,  9 Jun 2026 11:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781006089;
	bh=PMbkNq4forlPN2WLVH3jEvvF5QOaHxUbNdvdwiYst6A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cD3eMsp/H1Yx6/Ub6PFAjd1MNIhYbfVILicMCU9oOLoU0tRjVQ6M5gMeZZFkLbXl9
	 JeDEsTygss44gc6ySTDoZqXPr1ZsKC51zpg1SsLlHzUkLDUj2rJv0vNAIPLKLCp+pt
	 1XAzlI4uyke/9xXF50qvJxA6rqS6PR5RKlJ6oCJmJPSA9O/3XE4gX7Ve0bCJRDkiK/
	 BTw1kq5Q/xpv/G3U+GHzULq9+2TMjQgrwc54ECo87lubtr8uPOuaNEBdxm8xIGEoAU
	 MGZo76wQv6whgbmm/sWtK3zgIwzfi7vQtWaA2uKn74Zfrqef/G0FXBLuCxcRzvgK8q
	 r5Al2hAZFuPSQ==
Date: Tue, 9 Jun 2026 13:54:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Drew Fustini <fustini@kernel.org>
Cc: soc@kernel.org, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linusw@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, MoeLeak <i@leak.moe>, 
	Thomas Gerner <thomas.gerner@muenchen-mail.de>
Subject: Re: [GIT PULL] RISC-V T-HEAD devicetree changes for v7.2
Message-ID: <20260609-shaggy-careful-rabbit-e0fc2a@quoll>
References: <ah4lkWh2eD6l7W7n@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ah4lkWh2eD6l7W7n@x1>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308999-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fustini@kernel.org,m:soc@kernel.org,m:alexandre.belloni@bootlin.com,m:arnd@arndb.de,m:linusw@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:i@leak.moe,m:thomas.gerner@muenchen-mail.de,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9BF5A65FC1A

On Mon, Jun 01, 2026 at 05:36:33PM -0700, Drew Fustini wrote:
> The following changes since commit 254f49634ee16a731174d2ae34bc50bd5f45e731:
> 
>   Linux 7.1-rc1 (2026-04-26 14:19:00 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git tags/thead-dt-for-v7.2
> 
> for you to fetch changes up to 3a5791956edbfa84d7256224167941931cbc46e7:
> 
>   riscv: dts: thead: Enable wifi on the BeagleV-Ahead (2026-05-25 01:36:56 -0700)
> 

Thanks, applied

Best regards,
Krzysztof



Return-Path: <devicetree+bounces-298912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBtQM2u+CWqkngQAu9opvQ
	(envelope-from <devicetree+bounces-298912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 15:11:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 77047561207
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 15:11:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5C97B3007532
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 13:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F30391E5C;
	Sun, 17 May 2026 13:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBkTOAOk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93249391837;
	Sun, 17 May 2026 13:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779023462; cv=none; b=SwnDGxjvkwGjVVVWrX7dfTFHTRRh3ltUhLra5FcdcKFK8CIGSTUCdR1W2AYPSm8ZMs/SWNyQmwQz7N62fDQsQ+5qR7k+OBo1PXZwFb34Eomz09vEX6vP03Ef4HK/vFDFk70oKdjRwusEf47lkS0LtmhcvSr2yr9Lsf/gyshKX+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779023462; c=relaxed/simple;
	bh=Pl0ntdz5RoEzLeLIVajFgue9u5KyRkR49SApKaEd1T0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LZsk3TAN6BTIWCFeEEjugMtOvgFziaCL0itKDq2rX1ATQOtKVVikQECeH155pjr5qS1caoowpeVOqkNRdzVoS4voTwka5LIN5ktbL7dbxJJR8YldkZkVdFsl7/ScLRA6/5e4aWy2S6Ss51Md8uZOfyr0SKSkj98Ax4s4Iq8Q+Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBkTOAOk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBB09C2BCB0;
	Sun, 17 May 2026 13:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779023462;
	bh=Pl0ntdz5RoEzLeLIVajFgue9u5KyRkR49SApKaEd1T0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=JBkTOAOkOTae8Y3MeAx9p8Sj8wx+NZnVDSC97DmjVC0m6ekxlqFSV/epgq8NlhmLy
	 BnJQntzmiRJLcf89cafQP12hlhWLrwiK0vNSpkRQckxuegoqab3hXZqntJgLIhNUTH
	 QlNLLkKud3d509Lyok3WyCLc/X2pl9CLfFy7HYkDIaFbIKLqCPdSO5rqm1LXgrmclk
	 yURjs9Ah3F06qzuUwqUW1U+FTz6n57P05DGZtUybRvCgxOn2HB4+gvg/q5+3Eenq8b
	 LUJQDIPS4zuYN0L5T+8F1aRVWqAesjnAaLbbKltWUKQrBuBqPB+te/qlsuao65119v
	 kUS8KsQvc3lIQ==
Date: Sun, 17 May 2026 14:10:54 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] iio: light: veml3328: add devicetree binding for
 new sensor
Message-ID: <20260517141054.3981672c@jic23-huawei>
In-Reply-To: <20260516-veml3328-v1-1-1d4b663e2fe3@gmail.com>
References: <20260516-veml3328-v1-0-1d4b663e2fe3@gmail.com>
	<20260516-veml3328-v1-1-1d4b663e2fe3@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 77047561207
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298912-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sat, 16 May 2026 23:50:53 +0200
Joshua Crofts <joshua.crofts1@gmail.com> wrote:

> Add devicetree binding for the Vishay VEML3328 RGB/IR light sensor
> connected via I2C (SMBus compatible).
> 
> Additionally, add an entry in MAINTAINERS.
> 
> Signed-off-by: Joshua Crofts <joshua.crofts1@gmail.com>

This is very standard looking. Have you considered if any similar
bindings can be easily extended to cover this device?

Note that there is no direct relationship between bindings and
drivers, there are single bindings with multiple associated drivers
and multiple bindings covered by a single driver.
Also dt-bindings get used in multiple projects and some of those
will do different splits in what code covers what parts.

Jonathan



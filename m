Return-Path: <devicetree+bounces-267095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6N9FH2WLmWnbUwMAu9opvQ
	(envelope-from <devicetree+bounces-267095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:39:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB28C16CADA
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:39:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3353B3010BB5
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 10:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DAD332FA1E;
	Sat, 21 Feb 2026 10:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmIo8W4z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A73C194C98;
	Sat, 21 Feb 2026 10:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771670368; cv=none; b=lNkruhBLJcCVnmOP7ehxQ1Hz/SDDKINcPCykfdJgPkkr2Q3OpTJIbppaj2lt52uvSkiYD77M3zpY9prHUhRe114Mk8hlX5R/v+iQ/Y9gl1458F+2WWH008NyBKKruxMIOSa0xEcrdfMCTVYWkdcaBzhvYD2EI8vOTz63NY0rwOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771670368; c=relaxed/simple;
	bh=ElEiXw/kpfF/9dnsh1MXxAHQqrXO74THYDAahurX/x4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f50osZ8LIzp0aXp6iVIFFVh0917yppohdc7fdvWYdhwbyq50JAKCuWjILUvsjUOmdv5CC1B5z/aRkvEydPSIatt5EHQT6F1kivzQZbGkUzz7qt3LjHbffa22UFmZiMC6jearJMDzSxfsT58tW2aNFZmtDxUCvoZ2Tbyjm4NIUmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmIo8W4z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B105C4CEF7;
	Sat, 21 Feb 2026 10:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771670367;
	bh=ElEiXw/kpfF/9dnsh1MXxAHQqrXO74THYDAahurX/x4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OmIo8W4zlGFr+fzvZUDgYBl4jYMTqVQFMez7ZTHpqqHzZ1x4ljf/6TDtAEgVoEd6i
	 RzBldJLQB3wkpPfkMRaHtzwDDQyC5Jqe07iafbOPP3s7rzgDQYrMNU7hsGW25WfiJ6
	 PrYJIofFNjZzESLKloIKYYsZUaTY9mZy7zlWcwg4cvYEWnNoWZlcSPPPRef2jvTRz+
	 Kv8JsqxUNHUcC8EjaDXBqqotckluCD9MJEkWCFf8h882j3QUyi8zvSjCY693fTzv9B
	 KUNBWSinXCDbcYGwko97gl5ieicBQrZYT7XuodULLFFU3eLU4hf8ECR4OJG5VaQojn
	 YJ01XxhU+3W2A==
Date: Sat, 21 Feb 2026 11:39:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno Sa <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, 
	Michal Simek <michal.simek@amd.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, saikrishna12468@gmail.com, git@amd.com
Subject: Re: [PATCH 5/5] dt-bindings: iio: adc: xilinx-xadc: convert to YAML
 format
Message-ID: <20260221-refined-sage-coucal-2bb13a@quoll>
References: <20260220053941.611415-1-sai.krishna.potthuri@amd.com>
 <20260220053941.611415-6-sai.krishna.potthuri@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260220053941.611415-6-sai.krishna.potthuri@amd.com>
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
	TAGGED_FROM(0.00)[bounces-267095-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,vger.kernel.org,lists.infradead.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,amd.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DB28C16CADA
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 11:09:41AM +0530, Sai Krishna Potthuri wrote:
> Convert the xilinx-xadc.txt Devicetree binding to a YAML schema format
> and remove the old text binding.
> 
> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> ---
>  .../bindings/iio/adc/xilinx-xadc.txt          | 141 -------------
>  .../bindings/iio/adc/xilinx-xadc.yaml         | 194 ++++++++++++++++++
>  2 files changed, 194 insertions(+), 141 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/xilinx-xadc.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/xilinx-xadc.yaml
> 

There is a guide telling you what do we expect from patch touching DT.
Please read it. What does it tell about subject?
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Best regards,
Krzysztof



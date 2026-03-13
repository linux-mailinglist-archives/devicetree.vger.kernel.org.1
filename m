Return-Path: <devicetree+bounces-275275-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DHMEmIXtGlkgwAAu9opvQ
	(envelope-from <devicetree+bounces-275275-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:55:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB7128452A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:55:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2AE3A3076BD7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F236829E114;
	Fri, 13 Mar 2026 13:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9ZwP6i6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4E84F5E0;
	Fri, 13 Mar 2026 13:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773409356; cv=none; b=chFSmiZQXjAUfQQdeuCYmI7TixOxlWBQ44m1uNoVfklJuse4rGh8LOP5yEAl3q8Lnw5i52/xdpSKuMo+a+j4z4i0mDaCZDeC5BDycvwwhfYixn7gCtPsRBwgFEP+aXYCE8tNJD1h+QaQ0XWE/ucMRh0uioQKPopJ3NVKHuC4mK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773409356; c=relaxed/simple;
	bh=N404hNd2TZwFuhFt4ZSZsbQMNcJjqVfNAm4y3u8q4ZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZVTftTmEKQ8vSKoBm/UTK5BQPLSzbSQ8zx7BfvvEPcFMR37/PrmKl55Cgb3a1Lbbx877YmKySXP3R8+t87hngE+j4HIxMnHy7f/bx3dc2lrJRDBgL5M3sV5NndqHXByWC2oZRwSZGNv0ojrA+Ar0Cm0pWSXhx3FYTixA8p2RVp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9ZwP6i6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED71FC19421;
	Fri, 13 Mar 2026 13:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773409356;
	bh=N404hNd2TZwFuhFt4ZSZsbQMNcJjqVfNAm4y3u8q4ZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G9ZwP6i6m4lvgrH6TkmdU9FHOc/5nxCrIIjqs0xUVbDpcxqZmvGGnZnS7FFYhcJSD
	 TyXZS1qkxnnXhCL1lf5bx5lfvbu8/185OzyaAMkvdeasxA3+st8DB11XrSbinVtYt0
	 ItYmWKJde/J0GuqaSOQ4W0FjaqPF/V8ZxTPD9fBGB5pkteypSTjFJK7xNImDNaO4BJ
	 1x7ct0ZqJNNe4DSc/uWm4IG7aJLQQiNobpiWcBoE08N2LDrVCTMF9BQgbVE6Hnk6z2
	 eiJnPeaoELBP3as4y6pLdN6iYeUJkfaYUC3kvgvEALF9V9MVCfOmf8S62ny6QpCQuX
	 fScm25gHof3lw==
Date: Fri, 13 Mar 2026 14:42:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yixun Lan <dlan@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Junzhong Pan <junzhong.pan@spacemit.com>, Guodong Xu <guodong@riscstar.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: soc: spacemit: k3: Decouple composite
 reset lines
Message-ID: <20260313-certain-idealistic-urchin-001e96@quoll>
References: <20260312-01-k3-reset-usb-pci-v1-0-022b24b7340f@kernel.org>
 <20260312-01-k3-reset-usb-pci-v1-1-022b24b7340f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260312-01-k3-reset-usb-pci-v1-1-022b24b7340f@kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275275-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EAB7128452A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 10:34:19AM +0000, Yixun Lan wrote:
> Instead of grouping several different reset lines into one composite
> reset, decouple them to individual ones which make it more aligned
> with underlying hardware.
> 
> The DWC3 USB host controller in K3 SoC has three reset lines - AHB, VCC,
> PHY. The PCIe controller also has three reset lines - DBI, Slave, Master.

Either this is ABI break, which would need explanation, or it is not,
which also needs explanation and then fixing current bindings before
they are released.

Best regards,
Krzysztof



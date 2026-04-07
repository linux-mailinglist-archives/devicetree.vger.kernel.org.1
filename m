Return-Path: <devicetree+bounces-285162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGXrHPG11GnvwQcAu9opvQ
	(envelope-from <devicetree+bounces-285162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 09:44:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DC55E3AAEB0
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 09:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 28720300CFF2
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 07:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E78723A254E;
	Tue,  7 Apr 2026 07:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSQNJrh0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B1E350A1B;
	Tue,  7 Apr 2026 07:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775547885; cv=none; b=BLbGxbwbKPHOAeupomlU/r4BxBrhEWtxGfS5fWwldJ6vWduFoeeBD58TD/HMqUfkhZ3G3luEiWpDekoZvlGL48Bdo2sk/kwIWDaMHPGvq8ma665NIMXYKQ/1n4d2JGwXHyaEcyEQdWyOyckVzw6VWfHzSWYnwXFCd6L4i+OVQH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775547885; c=relaxed/simple;
	bh=HjZP30bYnSmFP1+xLQFRJtHi+NfCFRTfqlk4yhxk9NY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VFY2tk5H1JaK38Nv5pTJSrr0LI1Y7S463qOx4M+fcekKoxk9EU2tpos2Yd4JVewqyvVVAK5RBhzwj2sA8Sp/N+hPgQ5cvzPx0SYmO2una0zDMSfXN+GHQE9zmzuXoQ8H2hdLVoULXwqrUZn5pfuihrHhxouj/+1hvsg9DpKy8iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSQNJrh0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C179CC116C6;
	Tue,  7 Apr 2026 07:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775547885;
	bh=HjZP30bYnSmFP1+xLQFRJtHi+NfCFRTfqlk4yhxk9NY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TSQNJrh0F0gZTFwo+TmT4VSoYmwdye0MphJxYNt+pvFRgeFwV+QtE1B9gstV08AxV
	 JeNFOF7U3ErVbHFDzIpGRah44q5FjT2uQikbDaZJFLAmR0ZEOICEQRgTVoPyLJZrgD
	 x0XkWxrhykrxczdvY0iR5oAylxQDc32NFmUNRxPWVVrJz/ZIqIBn7H8JBixkyS/JB/
	 bzorod1Ffbp1615pJjx8BEvCDPpTT0Y6LKvDziVyUS46W1PkovVvwBR+q5HeF50q4l
	 YfeYvDv4x4OG0z95Q3V9+p2qq6Tan5MbtaQeGwDPABwrH1dz5+eN0IMquCt2Uv0Lp3
	 QzVe0PtCv3buw==
Date: Tue, 7 Apr 2026 09:44:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jia Wang <wangjia@ultrarisc.com>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Xincheng Zhang <zhangxincheng@ultrarisc.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/4] MAINTAINERS: Add entry for the UltraRISC DP1000
 PCIe controller driver and its DT binding
Message-ID: <20260407-gentle-warping-tanuki-0edbda@quoll>
References: <20260407-ultrarisc-pcie-v2-0-2aa2a19a7fb3@ultrarisc.com>
 <20260407-ultrarisc-pcie-v2-2-2aa2a19a7fb3@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260407-ultrarisc-pcie-v2-2-2aa2a19a7fb3@ultrarisc.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285162-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,google.com,gmail.com,ultrarisc.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DC55E3AAEB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 10:40:53AM +0800, Jia Wang wrote:
> Add a MAINTAINERS entry for the UltraRISC DP1000 PCIe host driver and its
> DT binding.
> 
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
> ---
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c3fe46d7c4bc..c8159670a14d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20582,6 +20582,14 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/pci/starfive,jh7110-pcie.yaml
>  F:	drivers/pci/controller/plda/pcie-starfive.c
>  
> +PCIE DRIVER FOR ULTRARISC DP1000
> +M:	Xincheng Zhang <zhangxincheng@ultrarisc.com>
> +M:	Jia Wang <wangjia@ultrarisc.com>
> +L:	linux-pci@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml

There is no such file.

This is not supposed to be a separate commit.

> +F:	drivers/pci/controller/dwc/pcie-ultrarisc.c

No such file.

Best regards,
Krzysztof



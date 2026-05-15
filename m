Return-Path: <devicetree+bounces-298046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ1PAqzrBmqCowIAu9opvQ
	(envelope-from <devicetree+bounces-298046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:47:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 582C054CB35
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:47:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62D25311C43D
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919D342DFFA;
	Fri, 15 May 2026 09:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bb1VBWtt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EA53FE67C;
	Fri, 15 May 2026 09:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778835800; cv=none; b=eCbpLbDTgI/imWBGBPCSE1qXsKH34ktDEbDlqDKI0YxUVA7nkq8jJcbGO769w16RbZiTQwTy3W0Td8NdUJv+WuB34g0InGFgwvLphzkB62zjlP+ncu8SgwUZmfGcadE35oPzmO/WeJcH563ajXH+fPnFlmeK7AjHlsI/CkOYYag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778835800; c=relaxed/simple;
	bh=t8e3JgmilMLwgnIbCK7asdY1s3zFWU2mo6ITW+I6Yng=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ioh1ac7qKiql3UHKf6yZ3UIJSTurPvdydr034NPcQNTlQTfy1fLQ/NpmwFS2UF6yVHlufGQkmFZAQIcX6L0FKyEWXVpG+0IhoUVXvf7ARgt0qgNbdOFC5+qpkF6h10OFCZ1poX2+3Y8+EYLVZWGCSKPKhJh+ysZEIpgDXBgQrf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bb1VBWtt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78298C2BCB8;
	Fri, 15 May 2026 09:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778835800;
	bh=t8e3JgmilMLwgnIbCK7asdY1s3zFWU2mo6ITW+I6Yng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bb1VBWttqr3t4g1BdNlC3tLcRmJxE0aVAzU3G/yldRNCoxgyVDKGxaYGVmkL9OF1M
	 d+6g3nGHG5IRuzwz/oxuIbjRM0ZsbDRnTk9DNShl5YdSK5WSJDIjp7YLO2vvav7ozI
	 i3aa6UbDvXI8hfEZ5w0K33CQYOOubIxX40ZLiokuciNMat4Ey/eLSdL2d+Xtaq+w9h
	 VP4Qrj5GgOsxnAjS335W0tJaSPX2GlZe6Fkjg1KOiaKxnHDHDfTZUUfPm6qHUAyEI0
	 N2zcOgEf2FqN7DNlTmeOTc7qmnlqMRZ2HSc2wi/8YbxX4a0beOjzO5i86P9HBJy0ej
	 RawgYZLCKQSJA==
Date: Fri, 15 May 2026 11:03:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Manish Baing <manishbaing2789@gmail.com>
Cc: mdf@kernel.org, yilun.xu@intel.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthew.gerlach@linux.intel.com, 
	trix@redhat.com, linux-fpga@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: fpga: altr,a10-pr-ip: convert to DT schema
Message-ID: <20260515-uptight-sidewinder-of-snow-c28ba7@quoll>
References: <20260512180225.65902-1-manishbaing2789@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260512180225.65902-1-manishbaing2789@gmail.com>
X-Rspamd-Queue-Id: 582C054CB35
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298046-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Tue, May 12, 2026 at 06:02:25PM +0000, Manish Baing wrote:
> Convert the Altera Arria 10 Partial Reconfiguration IP bindings
> from text format to YAML schema.
> 
> Signed-off-by: Manish Baing <manishbaing2789@gmail.com>
> ---
>  .../devicetree/bindings/fpga/altera-pr-ip.txt | 12 -------
>  .../bindings/fpga/altr,a10-pr-ip.yaml         | 34 +++++++++++++++++++
>  2 files changed, 34 insertions(+), 12 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/fpga/altera-pr-ip.txt
>  create mode 100644 Documentation/devicetree/bindings/fpga/altr,a10-pr-ip.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



Return-Path: <devicetree+bounces-274955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHFYG0/As2lQagAAu9opvQ
	(envelope-from <devicetree+bounces-274955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:44:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A88E27EE93
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E08C0301804D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 287CE36AB44;
	Fri, 13 Mar 2026 07:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVN9dK2W"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D8D36D510;
	Fri, 13 Mar 2026 07:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773387843; cv=none; b=ok+LBapPS4tPc0RZoMpS9uWORdjs/46W4AocLrRXByBaBRWsJ04z550DZC9CQVAS0D9kzM3q2ezu7K5f0J1Da/7gtMINol2VHGEzU3MjBiLveSKqibC87xLP84FuCTudaOrrvOq3yKdPDoACwXFiAeCAR/r9HgJIX1m9HYYuV4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773387843; c=relaxed/simple;
	bh=SuuVqegA/33poKUIo+8Piflrjkh8l82BMylhQkbrQMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b9poJm/oO/cBwpsUNKD7Udb9qgQCRVm/g6HhHwSgyHrBJoKCLs9fi9tTUdAGSoGnZij6q/KPksEGdgWZv1yvd7Jm1zK4wslrnR3bOnDcjtSgOkI+jnfOL9IOioOkwCcYL6QGtb4RmO2BGTsHIWnMthXtvq2GQRBp3bRpvmcf/4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVN9dK2W; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E673C19421;
	Fri, 13 Mar 2026 07:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773387843;
	bh=SuuVqegA/33poKUIo+8Piflrjkh8l82BMylhQkbrQMA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mVN9dK2Wt6gzqtAbWFZfFShdlD0JySopPcnvWeXDzIAzdMEiVT8h5r63zkebb0WYS
	 6E3x6FrrevN7U1P5wAu4yxPdH5b9enBMuS6qugsxiKdFUNVOt2agQ/na+m2zEcdF0/
	 G3Lk6LMXD6vTSo20e4f/Bh1w7FnjgbuAKhU4JXTQS57Cvfz+iF34teVz0180bXQ51H
	 S5ABSN4+lfgLQmD3urPD8zu1/8eZQ/BWQGSwKAO/hVTSMQcrmMiqNnDnrcGZvf7Gan
	 q4z0z5b6cDQLY30EpWalU0ThWUt1ZV33KBNyvM6zjjGTn88GARALIwnEqy464zPC+w
	 EGp876XlQTYzQ==
Date: Fri, 13 Mar 2026 08:44:00 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	bhelgaas@google.com, frank.li@nxp.com, l.stach@pengutronix.de, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/5] dt-bindings: PCI: imx6q-pcie: Add i.MX94 and
 i.MX943 PCIe compatible strings
Message-ID: <20260313-real-dangerous-dove-46cdca@quoll>
References: <20260313051718.1931375-1-hongxing.zhu@nxp.com>
 <20260313051718.1931375-3-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260313051718.1931375-3-hongxing.zhu@nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274955-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,google.com,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Queue-Id: 6A88E27EE93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 01:17:15PM +0800, Richard Zhu wrote:
> Add i.MX94 and i.MX943 PCIe compatible strings and fallback to
> i.MX95 PCIe compatible string.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  .../bindings/pci/fsl,imx6q-pcie-ep.yaml       | 24 ++++++++++++----
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 28 ++++++++++++-------
>  2 files changed, 36 insertions(+), 16 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> index 0b3526de1d62..f404b36f8915 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml
> @@ -18,12 +18,20 @@ description: |+
>  
>  properties:
>    compatible:
> -    enum:
> -      - fsl,imx8mm-pcie-ep
> -      - fsl,imx8mq-pcie-ep
> -      - fsl,imx8mp-pcie-ep
> -      - fsl,imx8q-pcie-ep
> -      - fsl,imx95-pcie-ep
> +    oneOf:
> +      - enum:
> +          - fsl,imx8mm-pcie-ep
> +          - fsl,imx8mq-pcie-ep
> +          - fsl,imx8mp-pcie-ep
> +          - fsl,imx8q-pcie-ep
> +          - fsl,imx95-pcie-ep
> +          - fsl,imx94-pcie-ep

Why random order?

Best regards,
Krzysztof



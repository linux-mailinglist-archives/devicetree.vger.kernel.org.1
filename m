Return-Path: <devicetree+bounces-300517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEK+D9STDWoMzwUAu9opvQ
	(envelope-from <devicetree+bounces-300517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:58:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D2458C02F
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:58:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1E1C303EF77
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 10:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C45FB3DA5A2;
	Wed, 20 May 2026 10:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDyFLvHv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E123D9DC5;
	Wed, 20 May 2026 10:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779274636; cv=none; b=cB8F/XOlQ21PrPipO789vy46Oc+QzboXLZG4RN9ijpO5t4wb5Z91TZjdAw8ySJ9i2NoO22O2r2dYI2NR5RzBs3CFbESdrGWCS8BgEseAcckiXugtUi++xJCnKFUAtIEZyZelhhm8/d+4Df2f8H3tWCLekbZTh3bwELH3vlKaMgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779274636; c=relaxed/simple;
	bh=7oJ7sDOeco3HITWvEEwcikKpmJTLfewaFidsCRAY/J8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lsYnNwPc8mC5CoC9RwHdUaW9+/YYAx21H3eJ+yogu5r3NRDPM39hTSj47RJKznp16QqbohR15xXTVqhLUkC2WumZ0AJcFJ6maO9WQtMVgvdE6UEEDB8mIcP3x6L7zKSGW401a/fsuiE+EsB4PbmT1EKPjkUkYThj7HTp92yjfJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDyFLvHv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13DAD1F000E9;
	Wed, 20 May 2026 10:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779274635;
	bh=VhzTwprIasaYOnRmR1T+nFY3LpPl8A73UNuvxAcyD7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TDyFLvHvgPq4LpskalVJd4YQrFmgdL2a7o9+ZsAX+dK0r6jIHk6DIHIRVwTr7Tsvs
	 25CK2cC3T7La2A/rxXtU7aeinTt9ZTVBZCr+aFCr32FVl6RmA6EwSG8rulZGJdi61i
	 Ryg9up98YDSoqmupT3c9nwOKndHqruYHVMmwOuHos8R7pEfP3keOj/WGYjnC6qdgfx
	 Ejm4MEz8EGAFIUWEVL1IxryupUjU1d968tippn3IjLwktRb6Wby6+DGvPkBb4FeoEY
	 EK3K5VIgYvqEM0LYwIjrdCcDqnPBmXIJ9Wz0pXRa1SBtQlzf6EKCrfRPPLiy0I6FRP
	 R6O/jBq0fn/KA==
Date: Wed, 20 May 2026 12:57:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Robin Murphy <Robin.Murphy@arm.com>, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm-smmu: qcom: Constrain clocks for Hawi
 SoC
Message-ID: <20260520-evasive-harrier-of-honeydew-06ba84@quoll>
References: <20260520073447.2138384-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260520073447.2138384-1-mukesh.ojha@oss.qualcomm.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300517-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 15D2458C02F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 20, 2026 at 01:04:47PM +0530, Mukesh Ojha wrote:
> The Hawi SoC has two SMMU instances with different clock requirements.
> The Adreno GPU SMMU uses the qcom,adreno-smmu fallback and requires a
> single HLOS vote clock, matching the pattern already established for
> Glymur and SM8750. The Application Processor SMMU (APSS) uses the
> qcom,smmu-500 fallback and has no controllable clocks.
> 
> Add qcom,hawi-smmu-500 to the single-clock constraint block for the
> Adreno GPU SMMU and to the no-clocks constraint block for the APSS SMMU,
> following the pattern how it is done for other SoCs.

If you decided to make a competitive simultaneous work, you could at
least tell me that.

Best regards,
Krzysztof



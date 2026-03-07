Return-Path: <devicetree+bounces-272408-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MXsG40ErGkxjAEAu9opvQ
	(envelope-from <devicetree+bounces-272408-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:57:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6727E22B39E
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:57:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7BFD53013C50
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 10:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5566346E41;
	Sat,  7 Mar 2026 10:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFO/GhYi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0918327204;
	Sat,  7 Mar 2026 10:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772881029; cv=none; b=MT4kJemsM8BD6+N6YSqd5rC1BHB6p0WHbfP6VBZ2ExSGP6NFf7Fs6RgPqP2bWUo35U1R1o/Zpu/lfcJVea99giL7lp16ma8b3sxWxWI2fYu+W/m7aUeYhVD2Mx6cbuEBwqMx5k4Gf8tXkkT4S8lmw9I9fAj4s/Acyy3gMtezALo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772881029; c=relaxed/simple;
	bh=DovIk0OvW87b8a1GeeXSGXxoenbkGtrgVNP6Cd7cLAE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ms1AxEofEOOgRFUOUYpnCpYWTP1bKiAfl/KvATV6LoQjeyVNqT7kuMimFNmZL2J0iOtFZ3qvdN+oIAx4XP+uAP4jgnkJGrwicfiIbbGhH8TI2d1JqROXdjszvH9NzyHS6To9DXYtqJf8GoMsNZehyUB7rHYRQIqoiCI+jJkT8UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFO/GhYi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C764AC19422;
	Sat,  7 Mar 2026 10:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772881029;
	bh=DovIk0OvW87b8a1GeeXSGXxoenbkGtrgVNP6Cd7cLAE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sFO/GhYiB3zwCdTMYkhDR0OMOKq0X95Kmkch+SCzSXhuP8qQlYvkupLYQgMumW7Ui
	 s2dD7D/Qo+ILK0qaCWmI/9Ur0Mx+Bj7LDRkRmFZY/LMSXyI5ynMXXxrrZWSDPAOZ1e
	 hKQbOk8QMTxYo+kn6p1KPqKrw/CxCdZQasvB9E5rFwPIon8bregOIztgabiPtf9G+o
	 Rgxin8sHstUFmk2YSjc25cX9DPPCPXmpZZdBZlDVy3yPAZeozXNNARwOyysyMICs30
	 S7Jxu8v1+xDbLpL0JxpCJxyZ4EAB5qVzRxtPhbCIUXpicVP8h03gDwcgk1itmmRIn2
	 wn/mmOTMAbHEw==
Date: Sat, 7 Mar 2026 11:57:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Gleixner <tglx@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Shawn Guo <shawnguo@kernel.org>, 
	Lucas Stach <l.stach@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, s32@nxp.com, 
	Christophe Lizzi <clizzi@redhat.com>, Alberto Ruiz <aruizrui@redhat.com>, 
	Enric Balletbo <eballetb@redhat.com>, Eric Chanudet <echanude@redhat.com>, 
	Larisa Grigore <larisa.grigore@nxp.com>
Subject: Re: [PATCH v4 1/8] dt-bindings: interrupt-controller: fsl,irqsteer:
 add S32N79 support
Message-ID: <20260307-stimulating-parakeet-of-science-ef1b78@quoll>
References: <20260306161555.9000-1-ciprianmarian.costea@oss.nxp.com>
 <20260306161555.9000-2-ciprianmarian.costea@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260306161555.9000-2-ciprianmarian.costea@oss.nxp.com>
X-Rspamd-Queue-Id: 6727E22B39E
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-272408-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,nxp.com,pengutronix.de,gmail.com,intel.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,redhat.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 05:15:48PM +0100, Ciprian Costea wrote:
> From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> 
> Add compatible string for the interrupt steering controller used in NXP
> S32N79 SoC.
> 
> The S32N79 SoC differs from the i.MX version by not implementing the
> CHANCTRL register, but otherwise maintains the same programming model and
> register layout.
> 
> Co-developed-by: Larisa Grigore <larisa.grigore@nxp.com>
> Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>

Co-developed for adding one compatible string is a bit stretch, but what
do I know...

> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> ---
>  .../bindings/interrupt-controller/fsl,irqsteer.yaml           | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



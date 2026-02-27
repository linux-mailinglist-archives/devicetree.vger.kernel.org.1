Return-Path: <devicetree+bounces-269152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNEjHytpoWkUsgQAu9opvQ
	(envelope-from <devicetree+bounces-269152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:51:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D593B1B5911
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:51:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65F363024521
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08E02D5926;
	Fri, 27 Feb 2026 09:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uh2J4es+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D650176ADE;
	Fri, 27 Feb 2026 09:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772185611; cv=none; b=P7zGqxH+0O+4KCY9v6FZcTxevNlQxRUsuKnEI457cVpZxPRp5nCjivGdYAxGCO2OwepJ4a9/hkLsc1z12Fg6OSkRegYqicxCI6Bd4TcXesS8Q7DPX+Dj5DSl1ImQmuGBadF15LY66K3BA3AU0wRGh0Gu3WbL1bzqXONSkFrAgbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772185611; c=relaxed/simple;
	bh=MXPjEpEh5UIbHP8Pg4xiJO2M6gANbtTNoBWbrqKGywY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cEzQusdUE8ZfPHINvJsECpvCS0pjIR1oEuhftTiOGIfT1q0V4/10kia0r1h+oodxy8Ewiwq90QAi08CMWtpGQYoutyf7sWEzIMKkUXnEG4qL8DcU3xXdPG/mLDDGNikvMQbcDunp8q3guv4UOeO2PYN7ubNtWle0lNFamKXvu/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uh2J4es+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB6DFC116C6;
	Fri, 27 Feb 2026 09:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772185611;
	bh=MXPjEpEh5UIbHP8Pg4xiJO2M6gANbtTNoBWbrqKGywY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uh2J4es+wFxTo0g/cKTZ8V31uJv2RgkdA4NPxBatp/A3MsitaWlWDS+B6W0FcEhDq
	 ugm1iBzrlPSfcNmLHo8e0tYig3ijePY+Qfw5NN8oyS6Kr57NOik8wuaBGdNNFIhW3g
	 tX8wxkkaUN26KnBI8ZZGSwobG8z/As1nfoUrWbmkf+waj792hrbYuS4gYoQRzt0MNy
	 4u0LT2+eopOeP8lHvOJTmvCPZSld0o3hGkGyDV8X2oVix6v36ozbyFceMFSFh3Jlgi
	 0QQ1cgSXMiCnry0sqmIP3ytOXATCFevjAIMQA7nctMLTabMG1RmJ0hU+MoI8nMxNz3
	 yEsJAa5mJI6hA==
Date: Fri, 27 Feb 2026 10:46:48 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, "A.s. Dong" <aisheng.dong@nxp.com>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: fsl: imx7ulp-smc1: Add #clock-cells
 property
Message-ID: <20260227-incredible-eggplant-lionfish-b3a5bf@quoll>
References: <20260227-imx7ulp-v2-0-1c7fa8862ebc@nxp.com>
 <20260227-imx7ulp-v2-1-1c7fa8862ebc@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260227-imx7ulp-v2-1-1c7fa8862ebc@nxp.com>
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
	TAGGED_FROM(0.00)[bounces-269152-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D593B1B5911
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 02:30:43PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The SMC1 block on i.MX7ULP is already used as a clock provider in
> imx7ulp.dtsi, but the corresponding dt-binding schema does not define
> the required '#clock-cells' property. This results in CHECK_DTBS schema
> validation errors.
> 
> Functionally, SMC1 controls the CPU run mode configuration:
>   - 00b: Normal Run (RUN)
>   - 10b: Very-Low-Power Run (VLPR)
>   - 11b: High-Speed Run (HSRUN)
> 
> These run modes determine the effective CPU operating point, and their
> programming is tied to the OPP table.
> 
> Add the missing `#clock-cells` definition so the dt-binding schema is
> consistent with the DTS and validates correctly.
> 

This looks like a fix, especially that you make the cells required, so
missing Fixes tag.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



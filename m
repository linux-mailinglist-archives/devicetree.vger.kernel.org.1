Return-Path: <devicetree+bounces-280422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIYsHJvMw2lKuAQAu9opvQ
	(envelope-from <devicetree+bounces-280422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:52:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C472632440A
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:52:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4099E300ADA2
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 11:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 297AF3CEBA5;
	Wed, 25 Mar 2026 11:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRpaR5oL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069F53CAE79;
	Wed, 25 Mar 2026 11:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774438577; cv=none; b=DJVTV14Q+h7cSoe1fi8qFeV6ZMIoEJKrrMYDgRag/9znkJo2+KjMgtrOz2n5ME6PGFwvcqSwx7fWzMucuT/4c9u0fvFYlsFJc7fBAxOT8PS/j65sVjItAN5DmYL0vhlitTzwxAWBZiK8R21WPoFnKFlOJEI2w0q8mPH1A6zJjYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774438577; c=relaxed/simple;
	bh=gIfmwM1ItjblP1jQ+Pl5kvXyMwrWzxXmDO7mvHKi8eA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ng3V+qszhSpTVq25AGwYCRBYfXLZHCXPMbnHiKhyeceUD6zHRXxSks4xF7fTtF3Aiuuc/rFbZ4Bq1Q81BNdgZgBtO5JPDEuhZhm1uLdxUF3oEfRisCAkkHlX/4mp7qOalxZFqpVR0MMR7MioB7HRerIy68u6cUPz1ivs5oLq+nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRpaR5oL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 437AAC4CEF7;
	Wed, 25 Mar 2026 11:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774438576;
	bh=gIfmwM1ItjblP1jQ+Pl5kvXyMwrWzxXmDO7mvHKi8eA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CRpaR5oLdwChv0xlMzRaOv09Qgrshs9k0Hwj9biqcbdQEytZ2TSAWMSqBxBXIxF9p
	 qtAzT/9vJr9pFJOFAA00usQ6RAvEGK9KpmEgil+tFF370yW+KN4VQpP+8idNmjxvfA
	 a5LiGX4XEhC8k/S3MqvzxvB4drk2oUcRDRUCWKwcV0RqmZSrRz2cddU5UbkWLeY/lu
	 jvSuJ6QGEXtIcLUf5HsvmRktqxyz8Fy5fGctO/+1Wp1itX76mMnU/RiTj6o4Kmc8QS
	 PW8SQI6Fs4hMaKddGxoSPrPvXbrL0GuFvVgt15B2/ipa3dvIO/Q2GRFT7GLbX8J9tb
	 0MhoCZvC+w/2g==
Date: Wed, 25 Mar 2026 12:36:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: broonie@kernel.org, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ASoC: dt-bindings: rockchip: Convert
 rockchip-max98090.txt to yaml
Message-ID: <20260325-hospitable-fluffy-hedgehog-bba33e@quoll>
References: <20260324135508.839142-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260324135508.839142-1-festevam@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280422-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: C472632440A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 10:55:08AM -0300, Fabio Estevam wrote:
> +
> +properties:
> +  compatible:
> +    const: rockchip,rockchip-audio-max98090

Not the best compatible ever :)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



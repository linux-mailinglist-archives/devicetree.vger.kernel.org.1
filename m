Return-Path: <devicetree+bounces-257797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FKaNEqNcGkEYQAAu9opvQ
	(envelope-from <devicetree+bounces-257797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:24:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 444B95383F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:24:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8176E7C4635
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66F3F47884E;
	Wed, 21 Jan 2026 08:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPpMnUxO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAD1478841;
	Wed, 21 Jan 2026 08:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768983505; cv=none; b=ZlEWrXytB4cMIQiQYAgVIe3k88eXCoGesDFdaMktXk/nm5ehRfjFzY9LWfNRgpEAz0xI3tDMIyzigrUgj2NKXD/bMcU20Ev2uwRz37Ul0tf7o3fKstzbckdiAz650Yx2AMzBsmD9ZaewtxmG03dTMR1YGfPsPaYDiiQzzQ8zjBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768983505; c=relaxed/simple;
	bh=tYssH+Lu5C0vzNnReP26OP8eha9ihkWF4eUdawHeKw4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NvartshxrJEZ6Ezbp/KtU4kWBhy7UoS5N4dScgkasHte+xefrQRBT0CdXcoxxh+kJS1bJ5lKRKwWu6XX/Yei/bsz7/DDrNAA4bHja0VysDN7FAhGYHnQd4tkkAc35+r4rSg6g/TmzzmEOHGHjbwVqeZwLXsr/Vrt/wcgrKb90mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPpMnUxO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88C43C16AAE;
	Wed, 21 Jan 2026 08:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768983505;
	bh=tYssH+Lu5C0vzNnReP26OP8eha9ihkWF4eUdawHeKw4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DPpMnUxOFpv2mPe+P+ryy3aUid6iyGQSyb2AUF/BohYMzs4wy2cmz3VuEnkCn2wkA
	 v2RyDTTLJkNcHcBtvO35aNTUm5SFxvs6WoJ4OddKC8RMLHlSSR/sILnxMDZ7755uA+
	 BkgAUtS2MHI6hVHcct01Ebw9EUvDFbn0Bb7L8F+Ad5sRGks01SoMnz1li0XtUAP7Ji
	 BE0HALe1CjN1n6I/LU7amrken+WAbO4DAqYt4i9qNOWhp/0eYkALcq3e9qcNX5GPLI
	 +kxq1XK9NVm/FkJyieQFeSkgP5moyE4TIwSBUdeTds/gAbqEcK9j4X4Xynv2m542G/
	 oMOgFeRtL7l9Q==
Date: Wed, 21 Jan 2026 09:18:22 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gianluca Boiano <morf3089@gmail.com>
Cc: hansg@kernel.org, dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: input: novatek,nvt-ts: Add
 nt36672a-e7t-ts compatible
Message-ID: <20260121-rugged-azure-asp-44fa1c@quoll>
References: <20260120193600.1089458-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260120193600.1089458-1-morf3089@gmail.com>
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-257797-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 444B95383F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 08:35:59PM +0100, Gianluca Boiano wrote:
> Add compatible string for the Novatek NT36672A e7t touchscreen variant
> found on the Xiaomi Redmi Note 6 Pro (tulip).
> 
> This variant uses different chip parameters compared to the standard
> NT36672A, specifically a different wake_type value.
> 
> Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
> ---
>  .../devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml    | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



Return-Path: <devicetree+bounces-263016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBVIM6yYhGmh3gMAu9opvQ
	(envelope-from <devicetree+bounces-263016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:18:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 71752F326E
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:18:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A4B1E300610E
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B723D6476;
	Thu,  5 Feb 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWVHDUJ+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1EE3A0B0D;
	Thu,  5 Feb 2026 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770297514; cv=none; b=FhHiM3gNz4MV4lfKHVb7DLoMtENEjGtovni4rLnYj2sFvwnymf30VhDopfyPcZoxiykcYBrj508tvrjuSoOXG2YURJrjCBxtNzsF1h4nghJcnaLLl92rdwYxPxSuS+KCwyqZRlyUuHLQrbnSs1eut3mcWKXwlFZjzOZmFNulVJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770297514; c=relaxed/simple;
	bh=IV8zBF+FT0Oe0sZX1eELrvDeo3H7mnexdAbELDcs4KY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iiM0LzSZFaw9KnJ8oWDwdHAuhIHyp8l8PkTEbhYb95GrYxuaVjrPkxHDWFkJSeNh7LH+Ui2luJ/l9jobd0Bd+VsNgWOpj9Xa2lxW4mB9RpEH7ex0s0vGcNFg4Xi70msbo3i4fmJ7KVXhE9mr+/tE4rvrlzwT7SKTo+8hLe/vgqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWVHDUJ+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 363D9C4CEF7;
	Thu,  5 Feb 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770297513;
	bh=IV8zBF+FT0Oe0sZX1eELrvDeo3H7mnexdAbELDcs4KY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CWVHDUJ+vFyh+Bq7TynxDlz3g3sSG5KlmgzTUCwIuDp3jP1pwrSXYICttMnC8S6aQ
	 ymSk6DZcOkYaoanOxABEqkvdRnu+yUm9AjF2BlidzK6RRQuRwll15PN+y+96A/rjIm
	 yWCAN9G8BwZ1DLDHBMHraBA8Jgvyb/selV9wiMhXpHZryD5Tan6b6DUthnQJuDUtxv
	 LxNpKoMr8BzR2V7uy3sfp7NG98gCqQxlgHDjp8D4mAC8xD0ULsPOQ9hjWJF6xUhj+Q
	 Fhr64TdUW8a133hEeJ8ZA2eNkd+UJM2HFQpE2tsQPX2xfEGU1VsR4X14MwJOC4CwQR
	 QANwmXebjjwow==
Date: Thu, 5 Feb 2026 14:18:31 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joey Lu <a0987203069@gmail.com>
Cc: airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ychuang3@nuvoton.com, schung@nuvoton.com, yclu4@nuvoton.com, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: nuvoton: add MA35D1 DCU
 binding
Message-ID: <20260205-psychedelic-brave-toad-db4936@quoll>
References: <20260129040532.382693-1-a0987203069@gmail.com>
 <20260129040532.382693-2-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260129040532.382693-2-a0987203069@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263016-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nuvoton.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 71752F326E
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 12:05:30PM +0800, Joey Lu wrote:
> +
> +  clocks:
> +    items:
> +      - description: DCU Gate clock for register access
> +      - description: DCU Pixel clock for display timing
> +
> +  clock-names:
> +    items:
> +      - const: dcu_gate

That's bus or apb

> +      - const: dcup_div

That's pixel

Use descriptive names of functions here. Not your clock controller. It
is completely irrelevant whether you provide here gate or div or mux or
whatever else. If by any chance in new design you put here mux, not div,
then completely new binding?


Best regards,
Krzysztof



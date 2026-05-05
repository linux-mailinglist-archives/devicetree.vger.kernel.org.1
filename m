Return-Path: <devicetree+bounces-293172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GsiCgET+mlRJAMAu9opvQ
	(envelope-from <devicetree+bounces-293172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 17:55:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D2A4D0B4C
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 17:55:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EFCC2305E890
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 15:47:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B19481AB8;
	Tue,  5 May 2026 15:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0WcJMCF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D55B47DD67;
	Tue,  5 May 2026 15:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777996023; cv=none; b=KfYLSwuXdI2v5QEUvgVP+EvqlOJBXjyDJMgJEqBWzaAAI/n3ZayxdKpLU0TUEG0VCkAesI2IuJs44vPDVSGxwzt4hco+YBEefFu0PW7l1qabCslG9Fz35ggrmWOL4bQGlUpJIAQaYUmE1oSFi9Y+fcfT4H5HdMegbLgwka8g/K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777996023; c=relaxed/simple;
	bh=loSXYggyKfor3zLcUOfD6vEQMzQ6HkN5o6t2z+QPJNc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X4Uub6iA8Jh5Q355Ixw8SwhhLgKK3RD3Ax8z8goli7efDKsC4SWZoFumW1OOedVoi1z3GMl/3RnSQ2FmgmJYJB5PZKg8XMONINFOmKmysFCumSwNILSTXu4EIGmKu2fdLjxM3z6Fi0e9OJPq40LyI4LFWwo30BF9RO09GvA6nlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0WcJMCF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD2D2C4AF63;
	Tue,  5 May 2026 15:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777996022;
	bh=loSXYggyKfor3zLcUOfD6vEQMzQ6HkN5o6t2z+QPJNc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h0WcJMCF6UILtJk2Trr9mpUfzIFex2vuXu8MVIv7a+dBezzR0mTxDvj5zSzU3FOua
	 NKCyOo/hKORk6yFnRVZjUnzEuu/WQW/2f2cHfamuYplYmcslJKOXbU8CbgLluUCYcv
	 hJI0gOLUYRBiifX394KWtkw3ADI2x51JEn/jblV7c9X2kN8Y+Cra25abgEe6aISqMJ
	 DvKFP0qu0hzPTStPnwpE4IYSXX8wkgNmX76HvpDw9l0iPQhYFcG2t4l8hp37Sf8DYB
	 Bj2A/JJ7HedGdR/NS1LSvXyN2LIdEnkWnt3zKOFk6djFSMnm1gy37b/Dj39zOqp9EW
	 RX7zu71h0Rd/w==
Date: Tue, 5 May 2026 10:47:00 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Daniel Golle <daniel@makrotopia.org>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: misc: fsl,qoriq-mc: drop trailing
 whitespace
Message-ID: <177799601839.2983920.8894154052886581968.robh@kernel.org>
References: <cover.1777434096.git.daniel@makrotopia.org>
 <20fb6993052534958ca57b537204de6c5617215a.1777434096.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20fb6993052534958ca57b537204de6c5617215a.1777434096.git.daniel@makrotopia.org>
X-Rspamd-Queue-Id: A8D2A4D0B4C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293172-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,makrotopia.org:email]


On Wed, 29 Apr 2026 04:48:38 +0100, Daniel Golle wrote:
> Drop trailing whitespace from example.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  Documentation/devicetree/bindings/misc/fsl,qoriq-mc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!



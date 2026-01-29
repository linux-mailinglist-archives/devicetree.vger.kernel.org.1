Return-Path: <devicetree+bounces-260991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KtNLUOee2nOGAIAu9opvQ
	(envelope-from <devicetree+bounces-260991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 18:52:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AFEB33D8
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 18:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B12453009E23
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8A203563C4;
	Thu, 29 Jan 2026 17:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q70g6PdY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F3E3559E3;
	Thu, 29 Jan 2026 17:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769709116; cv=none; b=OG68J/HZkNR6VvPyjSS643mF8BpeTszhgCnwwH4Kd1tjpxjlFqARXA+OudqiWO6c8heBhN3XQbTpi80nms/F2/jGFyW1YuOcLbBMyBjxBeu658UYpFpD+S9ydXboaZ68JGeAqElB/1JpZWqKexQkSSe8cDW0Y7Gg5CMBz/163H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769709116; c=relaxed/simple;
	bh=2JtMQNQa+OnOl3AsJAyVXPNjSQbR/yg0GPNKZNSyqBg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iJibh1L8HiqxKV33NGTjiiO3ASMpHS3rBIW5EGextO8O27sRKMfaxeAHZ0nM6bULCj3qihoKncP4eCMBF6ywdX6STGhGh/nrml4LQmiittvmaXJlKo2DfoPDZgIgweDAFTBGiHl89p1vxLc9P5+yiKb2Depo9lD5g3cc/tWHrTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q70g6PdY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF971C4CEF7;
	Thu, 29 Jan 2026 17:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769709116;
	bh=2JtMQNQa+OnOl3AsJAyVXPNjSQbR/yg0GPNKZNSyqBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q70g6PdYHrvphSTH9w0yeqNlsW8vvOFPvBzoE3V4fKDavaR/SrMzQ8QfgW0xFCZkX
	 iHSHz0i1d6UsRPytZqxmXm/QIgD2WM/QrdgUmB19iuSXOy4DJnp6Raw7T1ITup3SRZ
	 J7XYM252epF0BXgN0G4cRJW313mOtVapFHDFJWJ1RwdhdfuVpw1jX8o9RwNoPcxvKI
	 yrcieBe72iJrur0QRMmWcczORdBd+XwOtKWY+9/jDIommNB/ROnuBXgT4ltoqb1HhM
	 r/MdRZLwE6nU1nDEJRHMIVIJI9ePS0KDkPLRQaYWB0X2VSJqW4Xa2Sd4tx0TNbs9l3
	 9jCwwrXbJwOaQ==
Date: Thu, 29 Jan 2026 11:51:55 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, linux-kernel@vger.kernel.org,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org, Mason Yang <masonccyang@mxic.com.tw>,
	Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH v3] dt-bindings: mtd:
 mxic,multi-itfc-v009-nand-controller: convert to DT schema
Message-ID: <176970911448.1337178.5863396733768159664.robh@kernel.org>
References: <20260128-mxic-nand-v3-1-c61764e85f60@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-mxic-nand-v3-1-c61764e85f60@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260991-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E0AFEB33D8
X-Rspamd-Action: no action


On Wed, 28 Jan 2026 15:36:12 +0000, Akhila YS wrote:
> Convert Macronix Raw NAND Controller Device Tree binding to DT Schema.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
> Changes in v3:
> - Fix errors detected by dt check.
> - Link to v2: https://lore.kernel.org/r/20260128-mxic-nand-v2-1-6f0cf94f2fd7@gmail.com
> 
> Changes in v2:
> - Add "Mason Yang" as maintainer.
> - Link to v1: https://lore.kernel.org/r/20260126-mxic-nand-v1-1-557df4a0dfa7@gmail.com
> ---
>  .../mtd/mxic,multi-itfc-v009-nand-controller.yaml  | 78 ++++++++++++++++++++++
>  .../devicetree/bindings/mtd/mxic-nand.txt          | 36 ----------
>  2 files changed, 78 insertions(+), 36 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



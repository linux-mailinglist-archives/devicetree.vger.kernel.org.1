Return-Path: <devicetree+bounces-265534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePMWN1E5kGkuXgEAu9opvQ
	(envelope-from <devicetree+bounces-265534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:58:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F4813B840
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 09:58:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7A9E1300748D
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 08:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A45927A904;
	Sat, 14 Feb 2026 08:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTc8JPmu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162183EBF34;
	Sat, 14 Feb 2026 08:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771059535; cv=none; b=l6OAoN3ofOCTX5CKZvnzzkWY+kqQG7BMGHeFirGZ5x3PwXwV4z6p7WLaKCqZAUaxQbeybwX4WRpLDWZ5C43nu2/APB8VxA3qhyQqVKQtrYUVqmxBlSjUTcxXp+FBRfM133pOzx+qokxnVqhUBBUeBbhpJt25zTBOY+Ur/8WsdnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771059535; c=relaxed/simple;
	bh=Ds4S7fd8XNfAj8PGgvL6EQDe51qiArtjbejqOxsgBnc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uGjuUAl7aUD2IXeQyIq9s7fSUobywfe9nG8oP3IfmZd093OXlnP3YEpQn5f9iPj4ASm6g9x+6du+QB5WUn/EI4nD3cVcJODgDO+FYdM5kWYambbucKhnqCMShWhrA+ORuGEp3ut1RHWIZ9gMyvnGL1L+S/DALV1q8iqeRSYFOQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTc8JPmu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61E5EC19421;
	Sat, 14 Feb 2026 08:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771059534;
	bh=Ds4S7fd8XNfAj8PGgvL6EQDe51qiArtjbejqOxsgBnc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QTc8JPmu/oefqWBmKO3nOF7OOeCunaM6D5Mw6/CnyvYbcN30/T7sWZ2g/jN4QpAOc
	 kmE4pjrg2ouD+AUzJanit5icjTPOhEQI2V67bUlH9KrhxrUKGJVLTIpPMFq/NkQ89t
	 557RG3XSGstnVCKmveAr1IBCL/D/PuI4AA6q1WNBvrNx2BQqU+ufO5JzKolmh6OE2Y
	 cduTPwO/dkHUBB2AeGdpk488besWV+NqgzdE/RWOdHmlpTlCf4BBwnvxNll19i8Isd
	 XESkMu9Prs43yehaBd+/ECOUHtLUJPg/kEZG+S3dNknB+6QvtdHAFqOvQQPlsihuKa
	 nKWgrN5BLzAHg==
Date: Sat, 14 Feb 2026 09:58:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/1] dt-bindings: soc: imx: Add fsl,aipi-bus and
 fsl,emi-bus
Message-ID: <20260214-liberal-ibis-of-spirit-b4b766@quoll>
References: <20260213171715.3465064-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260213171715.3465064-1-Frank.Li@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265534-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 72F4813B840
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 12:17:11PM -0500, Frank Li wrote:
> Add the fsl,aipi-bus and fsl,emi-bus compatible strings for i.MX1 and
> i.MX2 variants.
> 
> These compatibles are only intended for existing legacy chips (more than 15
> years old) and will not be used for new device trees.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v2:
> - update commit message to show only for legacy chips
> ---
>  Documentation/devicetree/bindings/bus/fsl,spba-bus.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



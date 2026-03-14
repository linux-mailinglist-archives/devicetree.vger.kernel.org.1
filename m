Return-Path: <devicetree+bounces-275644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJnDObwptWlkxAAAu9opvQ
	(envelope-from <devicetree+bounces-275644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:26:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE9B28C5B4
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:26:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 749FA301DCFB
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 09:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83DEA2EDD40;
	Sat, 14 Mar 2026 09:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bimeqrTG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6153354768;
	Sat, 14 Mar 2026 09:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773480376; cv=none; b=Dgg1Ry+sXerSregyGQKha7SWdteehDQA2xQUDwQgBlEs33MU65G06dYUJ2AX/qrLp66XUpXKhby/HdaWzw8OxKaETrQmWNYA/AoFc9NnIQ0Tg2bx+9n9Hz1ct7kQzdLGyceUhoiy4jI1uplf24Jiu5WRNL6BKSq7I2MadR2uv3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773480376; c=relaxed/simple;
	bh=I0kYhW0BmPT/Cm2S7SgFFfnCYg7754lS3e+9dMO9GQE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GDKH31SSpeBNDHtVMvRKsyyibFk49C2bMitAz+Sb/iFdyV/gC8xTgPE15nAWelXPfaaP2Hxf8TiXzDDHfIWSRcIOYBZQ0IvDbh5PSlVMB7NS3aQG9x9A/xUAJLX3DBdzGaCgC8qKSzKcO8aCis2OgBtnPjv8dRmjmIRCjPMADOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bimeqrTG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA7DBC116C6;
	Sat, 14 Mar 2026 09:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773480376;
	bh=I0kYhW0BmPT/Cm2S7SgFFfnCYg7754lS3e+9dMO9GQE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bimeqrTG5mTTo2RjPs0SpHZw9q0OtEJ14ixuintnXGYM/Kbf3t8WnJ5/AkqfL0qDH
	 Z3bTbIIynD/HWVmZzBmP4bCFWWcPKmWevm7JDzo0p+K/NMWFzjvRnFRlVb+DTSyQYw
	 Jkmnpzq9YRRuOc9MtWAdUcXMfmd0FlJPC7f2VpSJotESBnja/h7fEc8ekDg3Pu/paH
	 DohamW/UPqhW1Al9sKqXVxEfSIzVGGWQf+zFJ99iSpAijyQrVqUHLCVZNH4kCvYnZJ
	 bdRK8aoapEeq4KrM22vnSGPbH3fD0ErsYtfD8c4jZ4jKqblQJA63tIsrk+hplZh5Aw
	 OWl07m8L87ytg==
Date: Sat, 14 Mar 2026 10:26:11 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	peter.chen@cixtech.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH v4 1/2] dt-bindings: PCI: cix,sky1-pcie-host: Add
 power-domains
Message-ID: <20260314-maize-warthog-of-modernism-f74475@quoll>
References: <20260313114914.1564115-1-gary.yang@cixtech.com>
 <20260313114914.1564115-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260313114914.1564115-2-gary.yang@cixtech.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275644-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cixtech.com:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 8CE9B28C5B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 07:49:13PM +0800, Gary Yang wrote:
> The Sky1 PCIe controller resides in a dedicated power domain managed
> via SCMI. Add the power-domains property to the binding to allow
> describing this dependency.
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> ---
>  Documentation/devicetree/bindings/pci/cix,sky1-pcie-host.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



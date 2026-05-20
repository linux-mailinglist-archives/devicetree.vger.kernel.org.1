Return-Path: <devicetree+bounces-300369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPb3I0tcDWrBwQUAu9opvQ
	(envelope-from <devicetree+bounces-300369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 09:01:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5366E58895E
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 09:01:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 139D8300D63F
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 07:01:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B711C374E62;
	Wed, 20 May 2026 07:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+dR/U/8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8864A35;
	Wed, 20 May 2026 07:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779260486; cv=none; b=hfqdGuBeLwHrnfDABB3l3ml0/qGnEVwpz2yMl6ZhchGDu4kepeVieJXOnprtAgst9q9LQAeZaMLb8yIf8qZV0JzthMZgHnlC/p88yY5rtijv0k7vAgj6aUWA/g0Dq9+YetL4ADvqzUwbcj6I5tc/ZY4eLM67fGU7Cj/UzlnPmk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779260486; c=relaxed/simple;
	bh=9mncF9Shx4CK/YgCTF7h6deYqIGsQgQg8jwcVl3AWdk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W1qTNdcbn2i6iCx5RA7ufztXInZU0Uy+Ipv9Xko+WqYqZMugz76cOfpvq91jB1r0a7tThvcblgpK/aQyPdFI/+WRsQ1mgVrqDCSdniuh6xFfTkPSsRkGaqpOewy0aqz6BbZ7EJvbTJFdOBU+Ad+fLv/OPsBO1j+NaN5REaAGc3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+dR/U/8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id 028221F000E9;
	Wed, 20 May 2026 07:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779260485;
	bh=9mncF9Shx4CK/YgCTF7h6deYqIGsQgQg8jwcVl3AWdk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=c+dR/U/88H4GvIermWZjDj9yZyf5fd8XF2FXjK2tpVGzjMe7gYW/3SDXitKcHFMzl
	 jO7Fk/dxst9gyxp7RfLM91KAXP6Jf3MaQ0gboQDH2XXpsIxocVtC1JsxQ4Gd9VYVtB
	 35boDq+0aKtL9FaGSTQkcVOgYixCF7ufEjP9VgYs1PKO9RKCfIjXFdRGTSfpWr1Dla
	 UBmgCFxp+ssCkiU/DIhtCSKx1gUsXHrF/0clxP3c5zb5yIqZ8BKou9F0gjIXAA8kdL
	 a2RPOoRdd8PtNtm6Rt8OUFjexjiDDiX+PQYjaafTYCW+Bo3te6Rm/KEg+V3YO+eY6M
	 Y2+sxYRj7XMow==
Date: Wed, 20 May 2026 09:01:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Minda Chen <minda.chen@starfivetech.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor@kernel.org>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	devicetree@vger.kernel.org
Subject: Re: [net-next v4 3/5] dt-bindings: net: starfive,jh7110-dwmac: Add
 jhb100 sgmii rx clk
Message-ID: <20260520-acrid-kickass-kittiwake-6d4247@quoll>
References: <20260519101436.111476-1-minda.chen@starfivetech.com>
 <20260519101436.111476-4-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260519101436.111476-4-minda.chen@starfivetech.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300369-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[foss.st.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,canonical.com,vger.kernel.org,st-md-mailman.stormreply.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5366E58895E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 06:14:34PM +0800, Minda Chen wrote:
> jhb100 SGMII interface tx/rx mac clock is split and require to
> set clock rate in 10M/100M/1000M speed. So dts need to add a
> new rx clock in code, dts and dt binding doc.
> So in jhb100 SGMII interface contain 6 clocks, RMII/RGMII
> interface still contail 5 clocks.

If this is for jhb100, why isn't this part of previous patch?

Does this need constraints per variant of the device?

Best regards,
Krzysztof



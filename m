Return-Path: <devicetree+bounces-293476-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kN4ADowh+2lvWwMAu9opvQ
	(envelope-from <devicetree+bounces-293476-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 13:10:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 356EB4D99BF
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 13:10:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3EDE6300D4D8
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 11:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65A07401A02;
	Wed,  6 May 2026 11:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="pDXWI7/I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46D73B8BBF;
	Wed,  6 May 2026 11:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778065776; cv=none; b=re55aBFIxJeGELAFvyGjFMUparYw6fZXEg/R31iVJ3f55HaaIrFwXSBYprfswBDmtLWxf+s/cKlIw1h8DpasBtbeRjO9eLdBO/jLaOmll/OwowVvR8/BsCY3lqwDv2YQ+o5eAkPTZasQz4J9XK1t9eVAFYSptOuMO14G4QyHTGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778065776; c=relaxed/simple;
	bh=4q6WV9KEc4o+Dj+3GeNNbmKzZEx09uKig1tfBAKFyDc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p7yYsqWYZFZ8Dn4AHhp09leweGPDGmU7gyLzqvxoxiJn8+UAhLOY18siB172p6KpRyKmPdbi57YC9InfyUI80d3BEmdAxSEQIb7gjdnYlMeTQKmBly5sB2u5+b+MF/xCD7/BernHva/PGk82GdFrQNtIKoK3xPaX+wn/1Dv07Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=pDXWI7/I; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id D182D1FAD3;
	Wed,  6 May 2026 13:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1778065764;
	bh=o8HflocaQEcJ3vQkB43/3HyBjFJ4JgOOt5cTkBLZlsU=; h=From:To:Subject;
	b=pDXWI7/IAKUB7fkV5ppVl7pS8toPucnrAH/8DSZEo6YNzp0bn57QVxSremd8JcmvT
	 Ni8KPDjDKGeGvqeQcOXkl7waFVraIl+XWuQfjbMfXjYVhLzKmin/hfOmO8UV/xRUEp
	 eNA4oSSP0txOaCys/i8qYKEvCxlRhsfnoH03JeM7W0abwvv7vbcieNyo1WbOf60CKs
	 3nrKjSztNVs2B9kcPaVYYGlhMK0FCnp3Im39G+k+3DYtIIOhtG8WYPJS0gyiZkejCP
	 2166U57+lv2hRtJZOG5/mL8aJwtlIJTfVYcgESGXSrkd0JsmcZCVZ/pF3Mp4RVfwiZ
	 5jNN7i4ytfjZg==
Date: Wed, 6 May 2026 13:09:20 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Judith Mendez <jm@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Andrew Davis <afd@ti.com>
Subject: Re: [PATCH v3 0/2] Add AM62P silicon revision detection via NVMEM
Message-ID: <20260506110920.GA53971@francesco-nb>
References: <20260209172330.53623-1-jm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209172330.53623-1-jm@ti.com>
X-Rspamd-Queue-Id: 356EB4D99BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293476-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,dolcini.it:dkim]

Hello Judith,

On Mon, Feb 09, 2026 at 11:23:28AM -0600, Judith Mendez wrote:

...

> - NVMEM support is fully optional - the driver continues to work without
>   it and falls back to SR1.0 for AM62P devices

Is this correct? Just wanted to be sure, given the issue we had with TI
6.18 kernel on this very specific topic.

Francesco



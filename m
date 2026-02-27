Return-Path: <devicetree+bounces-269447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIWOLWgiomm4zwQAu9opvQ
	(envelope-from <devicetree+bounces-269447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:02:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEF31BEDA1
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A260130325EA
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7B3346AD6;
	Fri, 27 Feb 2026 23:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+JSyRXi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5FE28504D;
	Fri, 27 Feb 2026 23:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772233318; cv=none; b=n0wZ2Bh/52EhXYyKgRAAx9hw+HMJ3Eed61c4iNbeA5Z7oVkQqpvO/hAZrtHsaP+ZfZnNYZJukq8drf47Q/qdi/YiWhr2ourZK+A1eZeTO8z3DMdflLrkMBJX3dUzotW+KcwMefwifjg2Nh9kvCUtIa2BBqq5sHhVOjWVo48Drms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772233318; c=relaxed/simple;
	bh=28Aa1hjG1G4KSehZS4U+2cawa4luZRnfRxEZ8i65f4s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TndjNjCgcX7O0BvkDbIft8rmXjUj+2kns1k7okmrDEyClCOILo8EgF/yzFFl+l0E1dcVS/ZszK5hBqJbrdSVzmyhSJN73QKvq30w2OR0tHFyHoTFw/I+6dSmfI2BWs+A+E6pAnENWZegXswYJxH9Ri647GolipIrrUo4XfMBlmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+JSyRXi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 994A6C116C6;
	Fri, 27 Feb 2026 23:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772233317;
	bh=28Aa1hjG1G4KSehZS4U+2cawa4luZRnfRxEZ8i65f4s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o+JSyRXiPcJ4nUHz5cbZUIWySO57SIl1p9+okGz+lx9b6gOCvcs82sCSPOytGJfYp
	 i2aKaHR4y6UIPftnGIM+Su/xC1KPWSB3DACCWmp58pGknHOENaJ1WT/ACcrCyFE5fs
	 npfn7jxAAg7vBTQXAMx6X8M7gf2buE+1Ra6s0nGfw1hxZP1EshoskvX6fhYFDD8OAf
	 L0Wx3hWBNFGKetfYs9UOJFMm6dT2Bxpzke+aPilUtJDx0K93m33wcpP0aHwjWukDvs
	 eVIcQqgmKgAucRfPJPXdR+NNckETy5EPm5UoNe9VnSZJ4d7lN9hCMXesyjPfbJVtQx
	 85ypmXfD58Z6A==
Date: Fri, 27 Feb 2026 17:01:56 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Akhila YS <akhilayalmati@gmail.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-mtd@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: mtd: st,spear600-smi:
 #address/size-cells is mandatory
Message-ID: <177223331638.922595.7344216125056033708.robh@kernel.org>
References: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
 <20260225-perso-fix-spear600-smi-yaml-v1-2-8ef3d205ab3a@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225-perso-fix-spear600-smi-yaml-v1-2-8ef3d205ab3a@bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[microchip.com,gmail.com,ti.com,bootlin.com,lists.infradead.org,kernel.org,nod.at,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269447-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5CEF31BEDA1
X-Rspamd-Action: no action


On Wed, 25 Feb 2026 17:24:44 +0100, Miquel Raynal wrote:
> These properties must be set because they overwrite the default values,
> especially #size-cells which is 0 for most controllers and is 'const: 1'
> here.
> 
> Fixes: 68cd8ef48452 ("dt-bindings: mtd: st,spear600-smi: convert to DT schema")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



Return-Path: <devicetree+bounces-269448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eG60D3siomm4zwQAu9opvQ
	(envelope-from <devicetree+bounces-269448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:02:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C611BEDA8
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:02:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3BF5530148B4
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 23:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9366C36E47A;
	Fri, 27 Feb 2026 23:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjKuB2Fc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706EF28504D;
	Fri, 27 Feb 2026 23:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772233333; cv=none; b=YRfqtOri9TgHadXVEJ/B+f8kwlwacUymv7Q6G7GTamAw4OELJq5fql0gdrS4ax8BxsQ3/ohE36qmP43qty3NF2xqEvK9NSBcN6xadAdoOBsaUQPG/Js110mPeVYD8brKXIlWLB5oam1NNC2621d/pJvZ7WzvHFVxYWfQIIQYW6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772233333; c=relaxed/simple;
	bh=Iglr5a/uMiSNItPCwlIYFisg2PDATTWy5iPvGNVh5Ic=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jLOfCZCujVKAQkJ+P3jY0zqg7i05GBasExnxnbo8Tc3065msRpF9VL6CRssdvzWx93ABeAD+RjFVKqfMGLXn/qMwm9+9uHT0JQFF62FhIytmYvmzEbZ0uK47QH9W/2iWZqVs1Yh1PFEWl0h791Ojc0JnFQ9FOsch3m4k0EmQSuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjKuB2Fc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0A98C116C6;
	Fri, 27 Feb 2026 23:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772233333;
	bh=Iglr5a/uMiSNItPCwlIYFisg2PDATTWy5iPvGNVh5Ic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WjKuB2FcE68TLhxxy8HRgIlDbxjmfSUCGBE91EcAIpnf7OAby0GY3b2VcsQGY/5bS
	 w0+MUg1NtI5r/LbRU4D5ZxVwe1Upcoj3B5hiyb+t3awrdSkobMB8VOMJc8cFeROsr7
	 L+WflGGwN54py3hgQEo55lI9ppfGyYUCJloySgO2MkZfLfpzCs7fURR47jQbM0GeUN
	 9K0BMckCNw+f2vxtTCnzkImtiMN/7SW1mKB8LkzrI+FYgKXM6YSzeL1cvAhOphUnkc
	 uaiooKkLMD5EVFbBtw3Ujc2U3C+SdhJjEDAXFFKlE4UIxI+rAkLYxKe3fvmTSWAZRh
	 CrM94IKEnv4/Q==
Date: Fri, 27 Feb 2026 17:02:12 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Akhila YS <akhilayalmati@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: mtd: st,spear600-smi: Fix example
Message-ID: <177223333156.922984.12576783607070606721.robh@kernel.org>
References: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
 <20260225-perso-fix-spear600-smi-yaml-v1-3-8ef3d205ab3a@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225-perso-fix-spear600-smi-yaml-v1-3-8ef3d205ab3a@bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[ti.com,bootlin.com,microchip.com,gmail.com,kernel.org,nod.at,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269448-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 67C611BEDA8
X-Rspamd-Action: no action


On Wed, 25 Feb 2026 17:24:45 +0100, Miquel Raynal wrote:
> Example is wrong, the reg property of the flash is always matching the
> node name.
> 
> Fixes: 68cd8ef48452 ("dt-bindings: mtd: st,spear600-smi: convert to DT schema")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



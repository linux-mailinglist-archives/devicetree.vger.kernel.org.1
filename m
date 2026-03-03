Return-Path: <devicetree+bounces-270565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLEVIiXzpmkzawAAu9opvQ
	(envelope-from <devicetree+bounces-270565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:41:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 008D81F1AF2
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:41:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B73AD30B8E14
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3181A43CED5;
	Tue,  3 Mar 2026 14:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="VtgR4WSR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay25-hz2.antispameurope.com (mx-relay25-hz2.antispameurope.com [94.100.136.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540A13C2790
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.225
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772548625; cv=pass; b=OUER3PLsgEhn7DxMY3ipgnNTAh3/WZY292uTamIEQ7jEOdKFWoYZhEALZSD9bVyS/Dz+h38l9mDI3lTj2d+QVHC3ywoPjNkl+1LS5mQzwHdNMgzuy29X1obM3U0AmO2Icv9zlCQrLDGwa9P595gLC1ykIqS2RPbgS4dBTClm1Js=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772548625; c=relaxed/simple;
	bh=4vrFEqoWOx04oGBnq/7m8UoUq4Bu/w4fen0YYZRbS7w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U3MYrWnxp68QY7beifRWsfeQnzg5se4HvB0RHZWtNQUuK48I7yl4ZV2777TegWQ6AMzzWYDnQrd5IDFk5/+uRP1dCExDYQyWAt9TP87tP/+RcaVBxZLEeYr1iYO9pkKyYyBq3d8hY5B+M0gjn4YgDXAjUbFrCZiYANwzczgNvzs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=VtgR4WSR; arc=pass smtp.client-ip=94.100.136.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate25-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=laF7zermc4sdeHf1JkHzj4Z+paPpjGHceYcZO9orxLg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772548558;
 b=HHzTkjqDRJZBIucsE3SM1AAh6KUVb40KJ61g5sr0AaYMUybpmbwagoOf0GHv2nETEjy7MEKC
 7oE4W9wt/HlzQZr5lLmq/oPAlK4JLWdL1MgXTAZ8LC7MtJ5UyReo/vNZtHf1l0aF83/3TYH0KHK
 gMuhnH3AqSvm366RXSZa9zGtBJ3u//t2Kxm0BwJAQWgblm4G2zEAFmIQLmJ+0DefWEQ5wwcNlrf
 eKkCEykQO6E6zFw1le+3LgBOog2dTqsCS6uM5pVxzg0+i9AVNGx9jWvT2sYxHczKYDctTdNzmPH
 noj37nfMH96g8c4/Km1ys30w3Wz0oOur9DqUQbL1sZEcA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772548558;
 b=BwjMJghtPFpYH8Ll7q1kF2o4InCcmRPtPzAbZ5mU1Nub59za9lH6wSb2H+ZILglHnDyCoQi6
 muDzNY8zB8GcoFm//om2FYY5BGHSGitN3NEk75jNdZaKJHMfI2pQarE5eSzbqPdlwryeFe8bBsf
 9ZrmQdhBl456xs0bN1gFjjqQ4I2hB6s+olIXbDwBjclINzBkLPUrHCMFVo0N8jyWIo4MXmMul4n
 RZIwkqkOiEECoEMzTpzvxbFWsQg+6e+xZJa7P0yh3aVWM4QDfZfbvPUI7YQCRW7PCXEICDKu3e7
 Q6rmjxcTokZPt+9wUq4KuxVrsqaddKbmqCO1t8WTScXSw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay25-hz2.antispameurope.com;
 Tue, 03 Mar 2026 15:35:58 +0100
Received: from [10.123.75.134] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id C66D6CC0E07;
	Tue,  3 Mar 2026 15:35:53 +0100 (CET)
Message-ID: <212cb095-43d4-472d-b09f-4ab97e0a33fb@ew.tq-group.com>
Date: Tue, 3 Mar 2026 15:35:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: tqmlx2160a: correct spelling of TQ-Systems
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux@ew.tq-group.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260218132426.32293-1-Max.Merchel@ew.tq-group.com>
Content-Language: en-US
From: Max Merchel <max.merchel@ew.tq-group.com>
In-Reply-To: <20260218132426.32293-1-Max.Merchel@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay25-hz2.antispameurope.com with 4fQJJB2M2dzvgBK
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:4b8766b24472e039a6ad55c712e16e46
X-cloud-security:scantime:1.792
DKIM-Signature: a=rsa-sha256;
 bh=laF7zermc4sdeHf1JkHzj4Z+paPpjGHceYcZO9orxLg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772548558; v=1;
 b=VtgR4WSRkpUpziU71D+ROP/JXpP8lOFhd7Qyx039rKKuOAeANG+Ujsf0oAZTc0UrpboRnTO3
 EqQY6BGikoq8MPet6HyJrFs37f/iGSLKPn6zdO546VdmoO4Z+bTj07PqFtP8Ilrm/JdSShvHRal
 mcEgnxjkSy3BYF/l7v/w89eTFhNbTNiR1updAyP3kXDR8l9mfHGe16NkDn6ooQ4cZ+yyBO5pDiU
 NP4DSGY4v4ALt9dbkq4Mix8EspcOrFmyalVAu9ODWauNCKw4dBAZB6LkE4UjaJ0OJMJRqaWAw4o
 rXyB2F3zUfCU1N09Z37Vps+J/Pt6Gaw7OE0UK6kDuBECA==
X-Rspamd-Queue-Id: 008D81F1AF2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	TAGGED_FROM(0.00)[bounces-270565-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


Am 18.02.26 um 14:24 schrieb Max Merchel:
> TQ-Systems is written with a hyphen. Correct the spelling.
> While at it, remove "GmbH", as the legal form of the company omitted
> in the model name of other TQ-Systems hardware as well.
> 
> Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
> ---
>   .../boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts     | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
> index f6a4f8d54301..48b23f474fbf 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-tqmlx2160a-mblx2160a.dts
> @@ -14,7 +14,7 @@
>   #include "fsl-lx2160a-tqmlx2160a.dtsi"
>   
>   / {
> -	model = "TQ Systems GmbH MBLX2160A Starterkit";
> +	model = "TQ-Systems MBLX2160A Starterkit";
>   	compatible = "tq,lx2160a-tqmlx2160a-mblx2160a", "tq,lx2160a-tqmlx2160a",
>   		     "fsl,lx2160a";
>   

Any feedback to this?

-- 
Best regards,
Max

TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
http://www.tq-group.com/



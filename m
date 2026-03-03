Return-Path: <devicetree+bounces-270563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EG+yCgnzpmkzawAAu9opvQ
	(envelope-from <devicetree+bounces-270563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:41:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 984BA1F1AAF
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:41:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3FC1E305148B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CF954301CC;
	Tue,  3 Mar 2026 14:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Vr42Ak8x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay174-hz1.antispameurope.com (mx-relay174-hz1.antispameurope.com [94.100.132.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D65733F5AA
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772548566; cv=pass; b=VUaleFRemdQqMDz9I6WIsofOiIxdvxyzBD8q83+B2BmZ5HMQTuEryHlG/NDdC9twcOEqCy2rFVaFpV572BzemVLk1g9GCAG7xr6Rr3Q0m+d2GVXGX7K4KkKbkmV3U3Zxpfc+cYGvPYufLbtsGmVo3NHmPeL9wWAeaVTPWjHN1Qc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772548566; c=relaxed/simple;
	bh=egZGhYjwThNRrvZQCfSh2suJgYb37CoeEYN7rjZ4Svc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PbKCnVu4oyjG5jxoV6Z8QEWnNZ/5gpWH5yK+rW9L/UinbGXfJHkB7vj/pY9N/FQAW+lDxmQRXeB5YMKQyK+WFr3FWp2Fjgt5mS7MYcLBSq+pzNtNEIephS7HLjlwzXGX7EpxiZCkJqHzOBWJ5DsOtchMEaghpjawQZ7qQUYoYa4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Vr42Ak8x; arc=pass smtp.client-ip=94.100.132.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate174-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=/zWEK3bUPekqCIormKAKoaFmGzavt/Urm5uH3fAx8Eo=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772548544;
 b=JJrf205FDjvLxLnuyu4nOgbyf2GTL3A6D+dxAUEEXVVleijRdTDJY7mzLV4c1MooabBwhPlF
 CB0a/u9LZwAoQOnYuUFWDlG/IEn9JIUniq80k/TYLd0V9+ReFObdAWnbjdPVty5zVot2yO0qrwk
 3CJAcb5H0EjwId0JWUBfu2hL9VuJzqsjPdvwyPFTBQbiQ2VTsyVq4Hk00w1Sdm7XxCDKjCatYY6
 1nTNl82CtA2vVxY4mbwrVvUb95j8B9LJSqoNWEbsUdMaDNLHKpkIhaNnoFbvd23UrDa8DbD4OfC
 to6yZxkTcQ48XIjN7s6elcSYPrBJj6u2O/XfuMZTNHzxA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772548544;
 b=TNn5mhi8OUOIG/5aqKpbJHY2Kuwe7pCOKmaiztNj/Ted/ReZ/lF39LvDtvhDmLAfVyqormTQ
 u3eJtBA926fV1wdzEx9KxXh90/yidKDqlyq2NycO/oD/xOkNTD3EBAhW2Mc0qGmvpmaDDHi4tE7
 L9H3as6RomKqwGQPu1qZAaJA/2w9dTAJOizMUU4jy26deCgBzW4LkXSqsTX+PLwKaZO8HjboMz/
 TefOYkKTWvC/1MfmttnXOAb1WB8XeK18yLa1eHPFLuQwMN5qItsfXzIwPBJmFvIXpvLKCUsixr1
 h+5EZ4FZav+8E4SWd/395AhIPF59tueAww5PlC2YtdHsg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay174-hz1.antispameurope.com;
 Tue, 03 Mar 2026 15:35:44 +0100
Received: from [10.123.75.134] (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 60B85220490;
	Tue,  3 Mar 2026 15:35:38 +0100 (CET)
Message-ID: <94c02d85-cb49-4bca-9ebe-44ed4fec9f10@ew.tq-group.com>
Date: Tue, 3 Mar 2026 15:35:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: fsl: correct spelling of TQ-Systems and
 TQMLS1012AL
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@ew.tq-group.com
References: <20260218132413.32250-1-Max.Merchel@ew.tq-group.com>
Content-Language: en-US
From: Max Merchel <max.merchel@ew.tq-group.com>
In-Reply-To: <20260218132413.32250-1-Max.Merchel@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay174-hz1.antispameurope.com with 4fQJHt5qR4z44T6W
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:11135722384407ca4cc209f80b928f75
X-cloud-security:scantime:1.972
DKIM-Signature: a=rsa-sha256;
 bh=/zWEK3bUPekqCIormKAKoaFmGzavt/Urm5uH3fAx8Eo=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772548543; v=1;
 b=Vr42Ak8xB2JX1PVhVhGt+MmsLOnB0SAsLkMfIh0GEhTOoBIlbqkiJYGajgzghV0rnfho51Ef
 Uh06/RFlcR9O/LGRSw3WDFIIo92TcKIl148cpxaTWew4qrxe1vhdwgt+M8GKPhADKS96DiF8Vme
 0GbujmUAM/gmwbS4hN0iTqn8JMwM+wsMoNi8IvbMacqtL3LtT+HMnvTYVNxeHYiciLOr1xHrfoZ
 F+qhg0AXDfrfdOa/0/wk6O66fDZbTWzU2rLZUmGThLsUDAhxmkyltd05Wls73UOe5JIgPBGbwT4
 SZv/TmT6gyj91DKMLdIWpWLY5FyGY5rwz/zHQjU9YtW1w==
X-Rspamd-Queue-Id: 984BA1F1AAF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270563-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[max.merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


Am 18.02.26 um 14:24 schrieb Max Merchel:
> TQ-Systems is written with a hyphen. Correct the spelling.
> The correct SoM name is TQMLS1012AL.
> 
> Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
> ---
>   Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 5716d701292c..13e5d40cbb26 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -1626,7 +1626,7 @@ properties:
>                 - fsl,ls1012a-qds
>             - const: fsl,ls1012a
>   
> -      - description: TQ Systems TQMLS12AL SoM on MBLS1012AL board
> +      - description: TQ-Systems TQMLS1012AL SoM on MBLS1012AL board
>           items:
>             - const: tq,ls1012a-tqmls1012al-mbls1012al
>             - const: tq,ls1012a-tqmls1012al

Any feedback to this?

-- 
Best regards,
Max

TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
http://www.tq-group.com/



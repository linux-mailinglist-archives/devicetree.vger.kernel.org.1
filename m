Return-Path: <devicetree+bounces-259561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SD4dB9SPd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:01:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B74508A719
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:01:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E95523004635
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E405F34027E;
	Mon, 26 Jan 2026 15:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQbLdhqD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EAB2773DE;
	Mon, 26 Jan 2026 15:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769442730; cv=none; b=tkMrbwu4mw9JGCAvNZ8W+Sg2+UYrGU0rLjMhgyJlHSADmL7DrkVBVMOO5hI1nnd5fO9POWOdB2sutyMp8sEVgdyifTQK2WxVqRcYne92JoItDm+3+flZJFF5znnh2Inq78Xy1p/+fsimwLA8E9NAWanZGoB50/ejdIUp0e6u518=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769442730; c=relaxed/simple;
	bh=+ADv4pELrdIIcbbNOkUvc+VYYWavY8uNP77ALYYtwqo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=F6pvVHj51oAv6bzvRSqYHekGQulHNJG387NGctG116pZVrAHuohYXsa1I6hfakEoLIopNIEl/7FzXCBDo379Zb1027Xerf0ZH+8i5zaJGk0IwsJ90o2UQI5kBgxSNX9j6KPay+nDVzdznqkIY61k6LMSnDTp952OrKVeP7nOhio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQbLdhqD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AF8CC116C6;
	Mon, 26 Jan 2026 15:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769442730;
	bh=+ADv4pELrdIIcbbNOkUvc+VYYWavY8uNP77ALYYtwqo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=YQbLdhqDEzvnIE38o1MR+mhM1BOL1xnJjw4XhU9J9Uk4Ie2qP1bw99BXPjRhUQAid
	 zha/AWEQrJ/0QgJZQ2CWYMA5aG5BdM60OP3fdI+7vdGaKDq/OF9lFv3fieLygk4/V4
	 ryMdCYbxWInKHNSn+egpVjM9H7Nq5HUIGgmVzByHBG6u9iFYqlmEZ9GPZNlMcnpybI
	 yLLV/kxLKf0CxTP14fhxM5vCjmLTTCBk7a3WwqKFlpo9l2arqd/exN+mcFhC93hNaX
	 uNq7Vhb/mM/gfAfPpD6/Tr9sehWzqrJo0t9OcfhkdsXwdjVoZwuvCA8TEazfNwkUXP
	 R83GLAvc4HmbA==
From: Thomas Gleixner <tglx@kernel.org>
To: Janne Grunau <j@jannau.net>, Sven Peter <sven@kernel.org>, Neal Gompa
 <neal@gompa.dev>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Janne Grunau
 <j@jannau.net>
Subject: Re: [PATCH 2/2] irqchip/apple-aic: Add support for "apple,t8122-aic3"
In-Reply-To: <20260125-irq-apple-aic3-v1-2-a2afe66a6ab9@jannau.net>
References: <20260125-irq-apple-aic3-v1-0-a2afe66a6ab9@jannau.net>
 <20260125-irq-apple-aic3-v1-2-a2afe66a6ab9@jannau.net>
Date: Mon, 26 Jan 2026 16:52:06 +0100
Message-ID: <87fr7scqxl.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259561-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B74508A719
X-Rspamd-Action: no action

On Sun, Jan 25 2026 at 12:08, Janne Grunau wrote:
> +/*
> + * AIC v3 registers (MMIO)
> + */
> + 

Pointless newline and please make this a /* Oneline comment */

> +#define AIC3_IRQ_CFG		0x10000
> +
>  	}
> +	case 3:
>  	case 2: {

1 3 2 is a weird count order...

Thanks,

        tglx


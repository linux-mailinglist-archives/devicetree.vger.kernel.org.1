Return-Path: <devicetree+bounces-280943-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPW+K43fxGnz4gQAu9opvQ
	(envelope-from <devicetree+bounces-280943-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:26:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B83933065C
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC53F300EAA5
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 07:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54DC9344D92;
	Thu, 26 Mar 2026 07:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/EBRYnf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3052133ADA0;
	Thu, 26 Mar 2026 07:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774509696; cv=none; b=oUOXoIxnyKKHkkX253UeFW8pAHbzka6XaWFrsXLxP+24wyp2Pr6JL8VzDyyf+gk2BJ++zUqzuwiEZuj91HCdUU3u8LR7R3A9LUdaDzBcuW5lofOiKsv/zK9Hr6lk/CA7Zw4zjksHdE/KKNOA26Sbb+yPz1PUx6EqZfkhqGoi+WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774509696; c=relaxed/simple;
	bh=eNqabr4nQ+Y2jfhPg2Eq1woGLrHrmRdcxJ/G3RSkOCk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=limsitLXZnvYWr4FPeTVocHzHt7XtObYNlYOShM/ZONRUWgJ13uf1o9Ryp5iMYTfCYmWpxCNB29Lr8lfIoGx6h2CH9/coE+8bztl+MM3ssYIYWAyKkPWdVn8tzNu28Z7BCNnM9Efu+VrJxDxkQeQT20hgtA2pRrTGX7+fhKbvmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/EBRYnf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEDD1C116C6;
	Thu, 26 Mar 2026 07:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774509695;
	bh=eNqabr4nQ+Y2jfhPg2Eq1woGLrHrmRdcxJ/G3RSkOCk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N/EBRYnfoJj3JdfJZK/m64yZrPgZGfcRLQWl1OUFZb6KmDdqTwJ63YWb3AWNFeSqe
	 eZgO1nMxCOi9fLpgPlQljrT54iueHUh659FgKb4Y3ajFGUr0jOu+p2KG9avARqH8IG
	 664saD84Hlq/06YArVp5J+XkP42blp0XnR3Bh6p+w3aXDDyKloflhcdvolTZP5jrhH
	 Qxg9YHhVF5ET5HfhUV7MWeGX4Q9tA4kT77zTnhwCVKuqAqb9RR5D4sy4LInHdJSVp1
	 jKOb2xKlHgcwhAY3x9c51TR5D5g8B3XlpEO9B5jvG3DwAdnNp+YOerjt1mbmrZtKc2
	 f8HG2uZGxZzZQ==
Date: Thu, 26 Mar 2026 08:21:31 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Hongliang Wang <wanghongliang@loongson.cn>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	Binbin Zhou <zhoubinbin@loongson.cn>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, loongarch@lists.linux.dev
Subject: Re: [PATCH v1 1/2] dt-bindings: i2c: ls2x-i2c: Add clock- related
 properties
Message-ID: <acTeJvyLty4K9kFn@zenone.zhora.eu>
References: <20260325011852.19079-1-wanghongliang@loongson.cn>
 <20260325011852.19079-2-wanghongliang@loongson.cn>
 <20260325-outstanding-weasel-of-fruition-89db37@quoll>
 <1b5283d8-294c-86de-c3d8-bf205ac24216@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1b5283d8-294c-86de-c3d8-bf205ac24216@loongson.cn>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280943-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3B83933065C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Hongliang,

> Consider the clock framework relies on the device tree, and can only be used
> on
> Loongson 2K platform with dts parameter mechanism, It cannot be used on
> Loongson
> 3A+7A platform with the acpi parameter mechanism.
> The i2c-ls2x driver is compatible with both Loongson 2K and 3A+7A platform,
> parse
> the same parameters regardless of dts or acpi parameter passing, So
> clock-input
> and clock-div attributes are defined to describe input clock of i2c
> controller and
> divisor of input clock. It can be used on both 2K and 3A+7A platform.

Thanks for the explanation, but please do consider Krzysztof's
review. Without him agreeing on the change I can't take your
patch.

If you have questions, please ask.

Andi


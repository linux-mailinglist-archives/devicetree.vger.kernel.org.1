Return-Path: <devicetree+bounces-282042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJnGH4vsyGlfsQUAu9opvQ
	(envelope-from <devicetree+bounces-282042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 11:10:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D6346351477
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 11:10:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 148CF3006D41
	for <lists+devicetree@lfdr.de>; Sun, 29 Mar 2026 09:10:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5426223A984;
	Sun, 29 Mar 2026 09:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TV9oNuQZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B9224B28;
	Sun, 29 Mar 2026 09:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774775430; cv=none; b=KT/Z7zZnQz1rmYPMhq3E7puoOS3xB3ijx88onoj3J96z+49WIdBd8v7mEyDo75RYVlpzLCplp3qNLVF9JmpGs3RwVkmbhoJANn8G0Nou/tjO0Z6G5UulHLmvcfhLa2KXlqwvLizCyU0oiTGJfhsjInIxFrehXjGFnyGGkQ9TNQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774775430; c=relaxed/simple;
	bh=JtQXnGgaFvSkjKmIjzW1Du2YWxdOh3hsdMiHbus8AvM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nt6r8jr4Ty5PHBhR8SGGcYMoOKA+/7taCc1d3P4//DyF9P3IlZOJyP132Kzb78eJtYuh3xRzLSbqf2WnlkFJH4irnLHN3iEF3HaulqlZxFV0x+I5eDrZoUcqCg3OmD4D9FXbtbUNCmZKlMOBCsrpoF4QUw2MXI/YI/SbgbdY92I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TV9oNuQZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35063C116C6;
	Sun, 29 Mar 2026 09:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774775429;
	bh=JtQXnGgaFvSkjKmIjzW1Du2YWxdOh3hsdMiHbus8AvM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TV9oNuQZ0f4A30VPui+f4OF1oRQzb9qv5P4aFu4fkB4vctOD2A2njW1DvAcKjaNRX
	 1thKWMXA6gxSPi6jaPxa8K8zdUrfpB6tuBDmXuM2eztLzXD0hNkn92TTVqaxg1aJFz
	 F6Mi3F0ihKKrd+rNHT9LUvSLND7HrmMldSBWrzOdvIpgXpirxayi2PFnxHqfHlmrBV
	 q0n+t63jaTImb8hHC87NtrFXaY1g7/UKWNRZ/3jCHmXbyqg+ok2Z9nxgJaLr46wT9z
	 Q9vddk+IvtrDtGnljdP4lErDK5oeWex2DAG6GvHye0ZQAhSVUSGFukRPsryMhL1PCU
	 WRPJtWbc+elWg==
Date: Sun, 29 Mar 2026 11:10:27 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shi Hao <i.shihao.999@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, andi.shyti@kernel.org, 
	conor+dt@kernel.org, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: i2c: intel,ixp4xx-i2c: Convert to DT
 schema
Message-ID: <20260329-overjoyed-bandicoot-of-spirit-efc7a7@quoll>
References: <20260328101157.84191-1-i.shihao.999@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260328101157.84191-1-i.shihao.999@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282042-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D6346351477
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 28, 2026 at 03:41:57PM +0530, Shi Hao wrote:
> Convert the IOP3xx and IXP4xx XScale bindings to DT schema. This
> conversion also adds the <irq.h> header file to the example section, since
> IRQ_TYPE_LEVEL_LOW macro is used. This ensures the examples validate
> correctly.

Drop last two sentences, irrelevant. I asked about changes in the
binding, not in the example. The example is not relevant here and we
never ask to document changes in it.
Did binding have interrupts? No.
Does new binding have interrupts? Yes.
Does your commit msg explains adding them? No.

Best regards,
Krzysztof



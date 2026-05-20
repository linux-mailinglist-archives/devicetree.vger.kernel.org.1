Return-Path: <devicetree+bounces-300577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qO6FGsijDWq10QUAu9opvQ
	(envelope-from <devicetree+bounces-300577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 14:06:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 021C758D44F
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 14:06:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1FADA3061977
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4050B3DB992;
	Wed, 20 May 2026 12:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="GRbOucsc"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F9E3DBD41;
	Wed, 20 May 2026 12:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779278422; cv=none; b=LoPWq5b5ZGehNYpKMpBbivnG5oale+LOmlVt41zaZMWzWp3bpXKZL7I9qV87z+6kMYBv+b9gqK6zb8KDEjU0mMIo0rlqSeMhAzjzsNp8GpieFhjc2QR8B52qR0u7QRuHWxYCqMb5wCV3mtoIfobVb07WRdNxY8iVGsMOOcdu41g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779278422; c=relaxed/simple;
	bh=eJsuDBXfnaLF6D4L64VZ7eXC4sIgQoPF5eqTtmWx8Jk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HT+qcL9Ui9sEbzJEpfghYqS/oaCXoB0FgKwhTW3/fd7vXU9DSof0/Fgga9dv4PkgT8P0U3H1u3HicuVTK5dlGzo7eiFUNDLHhCB8bL6EmPWbvepvJ9MMDUbf+NzkNgt+0G0RW5dey+qAgMmOubEtn55hKtCHpiBz+8jBs55eufg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=GRbOucsc; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779278419;
	bh=eJsuDBXfnaLF6D4L64VZ7eXC4sIgQoPF5eqTtmWx8Jk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GRbOucsc41oNXB0ryPbPdUww1z5RLcy+IyWV8gdDwv/8Yy199DwMA0af/U82OGGh7
	 Xh9zXt4vPXzlGXshDmO8aNp/1nGmg59owY4N4gplKajyYpGy4z/WTciYNewTLIo/Rc
	 svMl3kdArJSDfEZgo5kyYb/yKX5f8iC4ZDyaQB5PK1e6QwEZtM/d48fAazN/6qUY+6
	 iBo1EkyYhtImgtooFfFuG7IspmgB2/tqzlqL09IitdoDlwccSl/iX9mrlKfqDkG/5S
	 SA+h2w+r7mmREq+ZzDkFehk997GqeRDyCahuI2gTWmkNTuv0vKCqUobB21eDKMwqYs
	 jJ1HXK+B/ZXMQ==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 72C2B17E05B5;
	Wed, 20 May 2026 14:00:18 +0200 (CEST)
Message-ID: <e70c509d-121e-40a8-81eb-95649d6d988a@collabora.com>
Date: Wed, 20 May 2026 14:00:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH PARTIAL-RESEND v12 0/5] Add support MT6316/6363/MT6373
 PMICs regulators and MFD
To: Mark Brown <broonie@kernel.org>
Cc: linux-mediatek@lists.infradead.org, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
 lgirdwood@gmail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, wenst@chromium.org
References: <20260511101355.122478-1-angelogioacchino.delregno@collabora.com>
 <agKBkUBVM81Y6MUk@sirena.co.uk>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <agKBkUBVM81Y6MUk@sirena.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300577-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,vger.kernel.org,collabora.com,chromium.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Queue-Id: 021C758D44F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/12/26 03:25, Mark Brown wrote:
> On Mon, May 11, 2026 at 12:13:50PM +0200, AngeloGioacchino Del Regno wrote:
>> Changes in v12:
>>   - This is a partial resend. MT6373 regulators and MFD patches were not picked.
>>   - Rebased over next-20260508
> 
> Is there a reason why this is a single patch series, are there any
> interdependencies here?

Just showing the full picture. Nothing else.

Btw, seen your feedback on the other patches, will fix as soon as I can - thanks!

Cheers,
Angelo


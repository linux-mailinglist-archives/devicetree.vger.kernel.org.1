Return-Path: <devicetree+bounces-305627-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4EKYMjjMHmoKVQAAu9opvQ
	(envelope-from <devicetree+bounces-305627-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:27:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C96B62E076
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:27:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=F4ukxueR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305627-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305627-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 797F4313623B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 12:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 424AA3D669D;
	Tue,  2 Jun 2026 12:18:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAFC13C81A9
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 12:18:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780402733; cv=none; b=CkDRuaPOqN3XrePPULMtf9fHOr3kk8TlCMTpDPFncPkSxomdCGa9dhTMam1fyYjNY+u3p+8E6rmFOXwHuZm5GzWj8uedC1ugIrim19b/if/kIIVwZ+W6ZpdiPkE5GMDbhk/rFMiXu/2XmXmMjx86m0XRYZq+BQ4vfKt8e4D3rPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780402733; c=relaxed/simple;
	bh=kGsKCEXO0ZUzl+8w3uTBJNuhgkcJWQGWwJRl+g4zDAA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=VB7YyAxdjs8JC+B5QCNRxj1+dGqatVW/k3ZFNpy2/ADY79EfJcWxtJlLDFYFeNiUJoS9t+pAU9ZV//5h0DnQQVW24fz513WhSPSyJ1g77ghUBVmNzetgga1kF8z9UfY4tnKTdR2LB1USnfwxdppQqHxN/Cxk7p8kGwdWdjxcScA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=F4ukxueR; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id B2273C6220B;
	Tue,  2 Jun 2026 12:18:52 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 41356603BC;
	Tue,  2 Jun 2026 12:18:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B693110888429;
	Tue,  2 Jun 2026 14:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780402729; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=LDb4o52DTUweCNoaveunh0r8+3SLZ3VLRjrgEU8ebf0=;
	b=F4ukxueRbcpmWVLMtCyjP8pu5HOz/aIu4z/6QeJu7cdoxhQ7cJDhxIu1oMOrZM1UAFwyob
	aTrZLusfl8KLnYxou0aIsz+BGN9PSb3Pqg3A3ygNJA0a3jXyyT2lXVAFsT9Tv4uNat8J0H
	b8Gc8eB+y6OiTIU8WL1Wk65mX2Bjv02CyJWSbw34U0xrtBn1PDJwVFjiReZfeRbdTeJwMC
	mgtmwgZj422X0cAIdfUxSuvPhljWjKxGy5pzSANENbAISkYtAonhN+xiodHUC0pT7OkQWx
	2ZYqxq58hl545Fg1Jx/v6CsgOfHznY3XwrdzKKvZZ1m6YJ8N6RdCO/99a04X3g==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <takahiro.kuwano@infineon.com>,  <linux-spi@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-mtd@lists.infradead.org>,  <praneeth@ti.com>,  <u-kumar1@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [PATCH v3 11/13] mtd: spinand: run PHY tuning after init and
 update dirmap frequencies
In-Reply-To: <2f509130-491c-4a66-9156-39b01b40e65f@ti.com> (Santhosh Kumar
	K.'s message of "Mon, 1 Jun 2026 14:46:44 +0530")
References: <20260527175527.2247679-1-s-k6@ti.com>
	<20260527175527.2247679-12-s-k6@ti.com> <87mrxjg9zi.fsf@bootlin.com>
	<2f509130-491c-4a66-9156-39b01b40e65f@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Tue, 02 Jun 2026 14:18:37 +0200
Message-ID: <87y0gx16g2.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305627-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C96B62E076

Hello Santhosh,

>>> +	/*
>>> +	 * Dirmaps were set up in spinand_init() before tuning ran; update
>>> +	 * their op templates to use the validated frequency.
>>> +	 */
>>> +	if (!ret) {
>>> +		struct nand_device *nand =3D spinand_to_nand(spinand);
>>> +		int i;
>>> +
>>> +		for (i =3D 0; i < nand->memorg.planes_per_lun; i++) {
>>> +			if (spinand->dirmaps[i].rdesc) {
>>> +				spinand->dirmaps[i].rdesc->info.primary_op_tmpl.max_freq =3D
>>> +					spinand->max_read_op.max_freq;
>>> +				spinand->dirmaps[i].rdesc->info.secondary_op_tmpl.max_freq =3D
>>> +					spinand->max_read_op.max_freq;
>>> +			}
>>> +			if (spinand->dirmaps[i].wdesc)
>>> +				spinand->dirmaps[i].wdesc->info.primary_op_tmpl.max_freq =3D
>>> +					spinand->max_write_op.max_freq;
>>> +		}
>>> +	}
>> Unfortunately, hot fixing the dirmaps is invalid. When we take the
>> best
>> variant, we select a maximum speed that may be lower than the tuned PHY
>> speed. We cannot just overwrite that value without consequence, because
>> depending on the boundaries we cross, extra dummy cycles may be
>> required.
>> I believe spinand_select_op_variant() shall be aware of the different
>> possible speeds. It should look for the max_speed_hz capability and not
>> for the base_speed_hz, and fallback to base_speed_hz in case of
>> issue.
>> Or otherwise, maybe we could go through the whole I/O variant
>> selection again after tuning, with the actual maximum speed set.
>
> Good catch. Updating the dirmap templates after they have already been
> created is indeed not correct, as the operation selection may depend on
> the final frequency and associated parameters such as dummy cycles.
>
> Instead of patching the dirmaps after tuning, I'll move the
> _execute_tuning() call before dirmap creation. This way, the validated
> frequency can be written back into the selected read/write variant, and
> the dirmaps will then be created using the final ops.
>
> I'll rework the flow accordingly and let you know the results once I've
> tested it.

If this is doable, it is clearly the best approach, but on the other
side you might need to know what is the read variant before running the
tuning algorithm, so I am not sure it is feasible. I'll let you dig the
topic and propose the best approach you find!

Thanks,
Miqu=C3=A8l


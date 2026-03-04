Return-Path: <devicetree+bounces-270904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEEdJLPqp2kvlwAAu9opvQ
	(envelope-from <devicetree+bounces-270904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:17:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 422D51FC66A
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5CD14310E174
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09B47389117;
	Wed,  4 Mar 2026 08:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NpuPmtk6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB08B38C400
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.178
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772611854; cv=pass; b=BuM2N716xPdtqxwlLAYJt7qocgsVsM6MR14qsf/vvTR83xbfTo2tSYlAO46ITQUBiQorPZQXYIxCtBJmWsT0MD1Nycfw9Jx/xp9fWpmJWKjK4HhjCMjwWtUKBmSWggoDL0dofmP/HFIOBP95hhHcuKPPzICOiot56lj1UH4vIPM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772611854; c=relaxed/simple;
	bh=pZPELEAX/XvgCd+EHGG39RWeEAKi/FXGHUEcYZlbyg4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MBzMaWb59ShS/85Tx0iW0oLW+oRbjzr42mU+95QjwaQVY+VM5TACIu+Px3U6ULm1DGIu9BxYSTOmH0SyG6r9jKYO54hIJcxK4pOjVaP2VRChxd3S+EegIoV1kX8qOj0Lcg6Klzd3stAS6aGZr8a/cj/vQcU6HMbVdOP42awM9i8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NpuPmtk6; arc=pass smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-79800183233so90599157b3.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:10:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772611851; cv=none;
        d=google.com; s=arc-20240605;
        b=O7TYvdfaEe1mfd8429zLgTn0KIqaVrnD0ks/cGg187xgqZXrS0RPGH/6BF8OtGi02G
         2IHtauZS0dh4wyDyqQu3XGpAeReHs4djq/HgP6ii8rJRmrS0luqpfqivtu5JO0H3mleW
         BeVC0RY81yv+NYkJsm/OIDU07jaBjrx4UBjvYiT+sYORB3cf158x9LvjHXkNiEpOohwS
         15G5iPBKO7L3yJ67fIKF/4Nn7b8wyLaH1DRJOw0RWvClg/dhbtAqrImsIFP7XRgqn69P
         NN9hFdLvnQ/cd2Yg4G1WUwvJyIkKlyHijNWUvbf1hWgI+QvVBb1gxQzkt65Zm9xJWXiU
         cHlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xGLcah51hQA85jyOrvUCy/8RViW2Ks3it80HDo6IDSc=;
        fh=vg0QZUgldK6EwqQ9hSzpLFKyoJX/ASSAYnCC8nvGaMo=;
        b=QRQfdje03/ymf7/vZwQJ4g0hbTOMlCyGq/EJIY9mg9vZeuo6ZmOETHvUwOEu52LES3
         tCJGbSLbrhvW7ox9H2voZrRPd1A3xkw9jjIzDiGkT0Hu0vFfuNqTgra+N2Om/SC2/rBm
         iIAL157NzCTQddaTB2WF4UuZqnCfjxRVUk2Fw9Da/9qnN4obmyU/AyFtS4W4x7tYoTbJ
         I4KfbWr/Vynb0+b7awQCeuT95afx55/2VHiOSkoDteAwPNgUdKt7vRpccVm8monb20os
         SW+/wuadqIdKUWlEGxqi2prk+K1HkpdUnTAcbJPgwmAKoT6sECAaqPIEn9Xb3gSm0HU8
         Jb6Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772611851; x=1773216651; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xGLcah51hQA85jyOrvUCy/8RViW2Ks3it80HDo6IDSc=;
        b=NpuPmtk6wEdmvluOha/MzcnzH4IL+AygfFIRyYpfl2UlFst4GqCsxnve70c9j33qBP
         IJdEYt0IJqsQFhXqqTxHa/dQp6MuLWjxYz1wEJfx1tCvKxo9ZEQamZjLCJ5WOz/Bsvb8
         mG38euPngSbfnX8bERTqVSEly8VaQuIiu/8Y4dSX2G14EiHBs99T9UGzWPbViT2qwB/x
         kH2OySJBD0dMgG0oTTZKcn0WAriknXmt/RtLbi/VFKIaCSFoo2jNN8gdJtdtbazZ+fMZ
         jvS5ky7pFJNo8fpwZE0Njq3J76/Rihm2xpCwVif4W2RFoDTUUEfcD294zM0W+ce0a9Ps
         Vr7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772611851; x=1773216651;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xGLcah51hQA85jyOrvUCy/8RViW2Ks3it80HDo6IDSc=;
        b=ucL09lVkmCB6ae9dEoeQwn9UN2RnkNhmzpCopwLwMOxxv/Rca9/edVOyFtCOz/C5Zz
         ScOm5k0bpzdTIMBX7mRDhX4uGMH26ldZKEEYO2Gmv943W5Nb0DkS+ieXLjNHz+8f+Vga
         bAexk3NON0xj8E0HqXc6I2hjMfzqU+fI+mcdqIWeu1hw02E70oE74yU7322KMQrc5XtL
         VR8Bay0qQllR0PkdmMAJba5uooaL/in2IdADgAIE7VqGCkABDbMWVPaZCyc7z9Dcbgux
         sgzYS9LmC94g0ANrkJ5dzXl+IJ3IGMCW4dpJ7H7HMoJPpI1sieBy2zIU2gYyUcSSvd2j
         ToTw==
X-Forwarded-Encrypted: i=1; AJvYcCU9yiFQs6peR2TGPr0glBU0nvL1bBm/3bMyvRjxUgMSxz+5qFkfrpB8Iq9GP1YjuXRrOKIIsbb6Iw8y@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4Gf6NO3WN6DRxwQ1Ts8+I47RG3S5Xvk7vLkwA0FFJxtHOTbHZ
	h/wA+Ljr4AHGDfgXvmlULYPiIxPR14XX6LzQSLGBhwKxAqB1/Gqco4Q+RHW4gh1olQQS3Ldbq47
	QztXkW6Amqc/uLaXVAZjkC7WrLQs96IA=
X-Gm-Gg: ATEYQzwOwod0RRNy4qr6RqvroBWaAiqLLS+RMib/UllxW9pybpeX729eYpdhwxr/mRn
	bVnbzrbsfAh2OQSRZlDWNjU+7b9e4ZY4UmQUk5xqTF4ebFmJ5qHx9YDk1Dl0k4R0VKveWXF5mXr
	wOHp03BilaAjh43nosqCeAarJ6/z26zHFbPoCPc21YzS5IMuX9BcEw2eACUj8ZLxlKk7WlF47ex
	UAadd2Gho3zKGpJ7w47KEVWiH0ZSw4bkzernRcnMTBWXcqSvK8XdaULArQ4SJVlu31E7ii1mL20
	C5O9J4vx
X-Received: by 2002:a05:690c:9a90:b0:794:c283:5fb8 with SMTP id
 00721157ae682-798bb44f72cmr33135687b3.25.1772611850798; Wed, 04 Mar 2026
 00:10:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
 <20260302-orangepi-sd-card-uhs-v1-1-89c219973c0c@gmail.com>
 <20260302-crewman-faster-9fd00b62e30c@spud> <20260302223803-GKB289813@kernel.org>
 <CABdCQ=Nd9ZW6OBnAiuki=2+DhVraW19bh_m8=LLQGUKN8TkEdQ@mail.gmail.com> <20260303222800-GKC289813@kernel.org>
In-Reply-To: <20260303222800-GKC289813@kernel.org>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Wed, 4 Mar 2026 09:10:39 +0100
X-Gm-Features: AaiRm53WZ82ezbm0-nMVrOL-p2i2zBrqno2q7oSRqZHnhzqczyjmu4JOpaAlYaQ
Message-ID: <CABdCQ=OxA4RM+3Kqjim9QPUQD3xBkAjUTD+ObC5Cmux1Mx1UpQ@mail.gmail.com>
Subject: Re: [PATCH 01/10] dt-bindings: mmc: spacemit,sdhci: add AIB voltage
 switching registers
To: Yixun Lan <dlan@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yixun Lan <dlan@gentoo.org>, Adrian Hunter <adrian.hunter@intel.com>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 422D51FC66A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270904-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

El mar, 3 mar 2026 a las 23:28, Yixun Lan (<dlan@kernel.org>) escribi=C3=B3=
:
>
> Hi Iker,
>
> On 14:51 Tue 03 Mar     , Iker Pedrosa wrote:
> > El lun, 2 mar 2026 a las 23:38, Yixun Lan (<dlan@kernel.org>) escribi=
=C3=B3:
> >
> > Thanks for the pointer! I missed that these had already landed in
> > mainline. I'll rebase the series, drop the redundant properties and
> > patch [5/10], and send a v2 shortly.
> >
> Please wait a little bit longer before sending next version, give me or
> other people more time for reviewing, as a quick test, this series will
> break emmc driver as tested on bananapi-f3 board, I suspect it's probably
> duo to clock related issue, but want to confirm later..

Thanks for the heads-up. I'll wait for your further review and the
results of your clock tests on the bananapi-f3.

>
> Btw, I was also preparing sd part driver, mainly target K3 SoC, but since
> they are mostly same IP, the driver can be shared..

I'm also interested in the K3 SoC integration. Since it's the same IP,
it makes sense to have a unified driver. Please let me know your
thoughts on the best way to coordinate our efforts.

>
> --
> Yixun Lan (dlan)


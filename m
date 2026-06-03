Return-Path: <devicetree+bounces-306052-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BvloBm/cH2pCrQAAu9opvQ
	(envelope-from <devicetree+bounces-306052-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 09:49:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 870B06355F7
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 09:49:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=brainfault-org.20251104.gappssmtp.com header.s=20251104 header.b=n9ymtAFh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306052-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306052-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BF1F3301A9BD
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 07:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0BB9407CCD;
	Wed,  3 Jun 2026 07:48:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5622C3FF8BD
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 07:48:18 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780472905; cv=pass; b=XYcUOS8wVuDcSyetVZi/sQa7h9F5VhaJNa/coF6L7fQzrEFMnhftfo6SeRPtAyGIVBEn7RlXdo96J+v90kAevL6ItXt7vZDTCDmtF1eyVFADm8AOL4ww4SHR9XCLEjCP6eYTkmBm+YnIDRNqQzrVxgONCD3I4rBksU6sHYlYy44=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780472905; c=relaxed/simple;
	bh=9/x+LALrmS82fzf1OwSIFBEN27XXDfXSwrmJ/ZBqUzs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p78vPJOWlJvVOJhVX4PQdKmaSBRIN5EDAhL9rtT6IaW6H+A0n7SFhM3PQhuRN+DttyRrwnMPO0poi3XygrXMz3R42CDS/j9QmaAKZRcXyTvZB3Upg1jJ0WLDWJYTK8bGl8E2WsUd6wcumC+rksbVS0HvuQoqSRmXQ8sWXPyBspE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20251104.gappssmtp.com header.i=@brainfault-org.20251104.gappssmtp.com header.b=n9ymtAFh; arc=pass smtp.client-ip=209.85.161.49
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-69de9bc590aso4483662eaf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 00:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780472897; cv=none;
        d=google.com; s=arc-20240605;
        b=VKROKePRy1/UstVJiXjpmdqpfmoVovnRLTtchUUKgstE75Y1W3IyVjHdQVbje8qBBu
         /n0yin6prssANDEmF69J0ObmV1gmi+pWSt1Mg0QA3hqGkYKGOAwa0/+dMy29WJQrQ9wT
         I53earTRnZN1/NHqaKvpQdBB0jLajY7aBLtbtSlslag880IcL2E3OduJZO5Ii9A1gLak
         OdNGyr44EHygfSM/G5M6inJWLfCp3iGMwUdnNQYJ5nxBCdvd4Ul34kJMkj2RfqKlovKq
         YjVjG1D6EOavMQSspRCLdVjCXWZg81Tj+ncB6uBTs2BfBRosJvWq2fZsFH1KOIl6IkA3
         2A6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NJFXAkOWOXSdkGAgngKdKLlUHqJCaJJBjScmKJfD3JU=;
        fh=x7f178Tlgmj2ehZ3X3uBxSVqNfBvJOPrJqHrxeEk0lI=;
        b=Hyz0wmwISdI/Bw+/UVP9e1tJhJhwx6W0PckAv/S6cD3W/uzu7zFvgosH5FtNqcw+y4
         2W6oMiYIldQ1Ml+QzUv/iQ025FkZyAoRHyflMKXK6rFoATFBNKyCP3mXQdF+AKehCb0m
         jSoWUKVT5hgKQUYpx2m7LVcpZKwk7NKWpvdWKh7CrqamSX3x/i5Uu6bHWQNsxeP6fQRy
         k4p+c5vFLVLbfk9xPUQE71gqIRQrQnpTXcCcarg8Y5Vnvki9pqfyc30etIVQuWNc0wiO
         avjlNnL/ZrSF2Gau98zbyCakUSGsFV1UXJ+zCwLZFlwX/gACTb2t1oNg3XAz12o4+QHk
         II2A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20251104.gappssmtp.com; s=20251104; t=1780472897; x=1781077697; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NJFXAkOWOXSdkGAgngKdKLlUHqJCaJJBjScmKJfD3JU=;
        b=n9ymtAFhY3nyNTjUnwMZQ4wpJ4NfLellyzxXFovLnxZ1QPZJI2nq4fDjPzcG7PZoae
         iNQnMEsi6x5+JS1Rg2GyqbopEKI493fjt0vSZgYZtHC4wkkGFAXGsRwyi+/picrVciUZ
         9JevSTI88DHCN1Z2GbUOGJ5Eus3blp+B1p6YH9jkN2gqTcysipkNumSbSKVaT97XsNY8
         MoWpHu8pFBB4hgARq+z21BGuXONcH36ASJjIby9swb5A8MjaoKqWI8jtTAKD3M0TJb/c
         kjMpBz4JMhrlyiZ9fHVEthVmbg566GFvANGwQNf7M9jIrwsD2pGUXvnjHW+caInqcnbL
         mV1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780472897; x=1781077697;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NJFXAkOWOXSdkGAgngKdKLlUHqJCaJJBjScmKJfD3JU=;
        b=iyiilgnviqpWbU8gEHIhHTdiMZKlcO65mRVbWzYkU3oQCurLhfvPFxlzzkbWCn9K9z
         bYdnRrGbRANBnAC+j3rngscjnHXCFfGdsDDuJ4DmkhZtEBTQGMIXhU6bKqFw5pwiPBZm
         sc0m4rOSpOHND9XPcXaqBI5HNy1jkxjlnmrsvg7vHgVfl4qDvHgDd9CXZZkmtzjBNjLC
         BrC5FIZi0ijq3uLkE5mHHXNNxmhchXCtu7fDjLE5aSH4iHNnYXIh/W+qaQT2T6hT9jUv
         NXXC0kB3T1zSR1fvAIl6F7C+YI1V/lRt7wlt/dA8KaRSa06EGcLQW2VoN0h9ewENowNX
         KMFg==
X-Forwarded-Encrypted: i=1; AFNElJ9Y9nqAJOYQUveyh+n4hC+mvJQSNpfDPr3ORcJMjf9Zit/nkbifH7MUUmjUsL4tCWrNIibep2W9daF5@vger.kernel.org
X-Gm-Message-State: AOJu0YxCcZLEhKpYPxIRXrRV8oDD8pZaKAFqBkzCP32HqnX9mSU4T4Ur
	GcTamTjg659CnPuOXEk9gFROlcoyfcqi0n44ig0+hFbJbjsvmmaB6g01oBYVKP9mm1q99Doi4qJ
	lGmDFK1Z0dRqL3/iq77aWHPofLmdJuAdDMwl0gxm52A==
X-Gm-Gg: Acq92OGcQYTA2rsDNgKmwpSogPgQrEQejmO9YmQxEdz3G2DtjdOtoFHq0Z78G8Lw814
	j123lQFi7Qqp2H4LDXelp7cBpWPt4XC27ISrE9Uh2QRmVjjqLJIlBTTGt9Ds7r68vwNPqemvRps
	JRR7+JiFvviVglXTqGn4haCnOtRvGqAql9NFtGyf9+a87GCJMGzjQe86E70XUpCgA6p2WYvkB/f
	+cP9foBCMnLhapAo9ox33H+ubfcf7zN07Pc+dtl3NUgDXtWn6OluA7a6xmMGGAKWt6WtCX35ZJb
	IrkiyaJxWv6K0w7+K2e3o+QzpLTUUSeM1+mnH9/7k24wPPsaSj9Ks+ysXoTtmeQVfTR2BpHpnto
	71gl8pwOfChOX+4UoRGavM2n4SQR+DU2lWh3Qbg==
X-Received: by 2002:a05:6820:874f:b0:69d:fc2b:d880 with SMTP id
 006d021491bc7-69e47f75a11mr1145317eaf.33.1780472897025; Wed, 03 Jun 2026
 00:48:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260603074222.593243-1-joel@jms.id.au> <20260603074222.593243-3-joel@jms.id.au>
In-Reply-To: <20260603074222.593243-3-joel@jms.id.au>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 3 Jun 2026 13:18:05 +0530
X-Gm-Features: AVHnY4L8FHlDWqUp2msMqOWbDKvayPpgV8kg2YS6-MlLCax8HYFjs-HXdFWrYPU
Message-ID: <CAAhSdy2emR_vKfWXeLfx6RLTgaNTASroNxhDPzkortHkhASP1Q@mail.gmail.com>
Subject: Re: [PATCH 2/7] dt-bindings: imsics: Add Tenstorrent Atlantis compatible
To: Joel Stanley <joel@jms.id.au>
Cc: Paul Walmsley <pjw@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Nicholas Piggin <npiggin@gmail.com>, Michael Ellerman <mpe@kernel.org>, 
	Drew Fustini <fustini@kernel.org>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[brainfault-org.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anup@brainfault.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-306052-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	DMARC_NA(0.00)[brainfault.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[brainfault-org.20251104.gappssmtp.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anup@brainfault.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mail.gmail.com:mid,brainfault.org:from_mime,brainfault.org:email,jms.id.au:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,brainfault-org.20251104.gappssmtp.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 870B06355F7

On Wed, Jun 3, 2026 at 1:13=E2=80=AFPM Joel Stanley <joel@jms.id.au> wrote:
>
> Add compatible for IMSICS in Tenstorrent Atlantis SoC.
>
> Signed-off-by: Drew Fustini <fustini@kernel.org>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  .../devicetree/bindings/interrupt-controller/riscv,imsics.yaml   | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv=
,imsics.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv=
,imsics.yaml
> index feec122bddde..442b8870f9c5 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics=
.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsics=
.yaml
> @@ -49,6 +49,7 @@ properties:
>        - enum:
>            - qemu,imsics
>            - spacemit,k3-imsics
> +          - tenstorrent,atlantis-imsics
>        - const: riscv,imsics
>
>    reg:
> --
> 2.47.3
>


Return-Path: <devicetree+bounces-67201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DBD8C6FBF
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 02:58:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81ACD1F246C8
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 00:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B1110F1;
	Thu, 16 May 2024 00:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b="fRfd419z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1D29EDE
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 00:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715821124; cv=none; b=CewFyoLpl1OibFf5ypS+A9K7UUcnw/A7/8cqC/nTckAgib+j4Pz0oWiMvN4AdZXLc9A3qKSDNGYIlnxJEFlw7CJpTHkrG5H72cpaVPgeKugjt9WEqiVlZULWagDgdB3oEKT6tFe8LBYSCa4m51xorOYTsmjqnFf7Ee18fymzJwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715821124; c=relaxed/simple;
	bh=SW/q7stGvy6OMoCA218cQyZGjRLhnAtQ3Ys6NaaQOAE=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=lz2YPuGbWYTKnFE+/X6RynOn2HH9IPk/smSOvxgHBeyDXsABS3/5DtWsnRPiwwH25eej46/KFNaliJeBpvjQVzURK3W+2IiL2J2dGCJxNbDGxocj00HYHqD7pn+jehOr7UryF0v63g9Tvbce1/8I2GpS+HGwGte/G0LAvYMFCQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com; spf=pass smtp.mailfrom=jrtc27.com; dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b=fRfd419z; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jrtc27.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-41fd5dc0508so51170465e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 May 2024 17:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1715821121; x=1716425921; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SW/q7stGvy6OMoCA218cQyZGjRLhnAtQ3Ys6NaaQOAE=;
        b=fRfd419z0bzTM54X2iBLP1bLXlj30vlD9S269IfYyZrkaHDMu2SVLI94s3L02HD3AL
         ZrwhHDTwbt2m0IY9In0utVuHWpiRqfX1F9Ot/KdFxrreCJghrysEl1qG0/SDmUcm4n3Q
         bpCCAiAAmnalKB5QY37vA5sDvpO19IFScqIawAhQcJj4Az+RurBGuqrvBbgI6xg5SGIW
         v3ppHqQ+FVG4JPGTVKE/pCdLjlXaJ1ZZDESMNr1OGkv38riRDJo7jFElgFufbEr80jRb
         wOiE83CJTi/O8TeQhf4gqVI3azMoYs32HFe1/mLHNC2KkQHmYzIgwdbHCobW2bW7qbtY
         JMdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715821121; x=1716425921;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SW/q7stGvy6OMoCA218cQyZGjRLhnAtQ3Ys6NaaQOAE=;
        b=qEnyqdxxQyCRyia68f5Y+sVKEfQRuPYMCPykvs38oJlfWKSIyb9G/bzSOlpSd1Ap6J
         HhabfVnZQg+uqgub9ePWu/y59eqe+h13TpybXPmOPZNc4yLFwmb02w9tt0bzp8HICIkW
         pcdbSG00II4L19fD9cU+5d5YVHC5fual+hn8szedP47PiYPTgnxmbhdKuVyjUIyzcKIv
         zkV8dVcFnnpue1qrm/ZrmByFI+cIRIZY8/LT6rYuwGI/qSp/17N7e/QZbMNrVqMHnukh
         1FHoGNzWrgkenEgWNDR6HAyzQbNFA801mlE8QHHgJqAUtkCZZaP6PtJ8UJkwgaBKng5S
         swwQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0e506UJIDwpBLrtbUaEkpg6HkKA9Iu40g3eNE3cps7jDqG9YvcmxvDPa8YpnAnsX/RR2hkJbHYqqGJCx8NKoI6n4epVwBV8fbbg==
X-Gm-Message-State: AOJu0YyggAYSr6reztNhdhbS4IjHjxWvzx/roV2/5ykIkIBFNhqT8PX9
	ymJ/XpBR+pSjENSrMQa+UbHmgTC4kmB6xWEkuP+T5E3CY6dz1QXhMwgolyWqHK0=
X-Google-Smtp-Source: AGHT+IG8/7wKols6oq37R5OJvGqZTKvcrgWEhHIDZA0YIaNJ+IfZHMO7lXNZePnotDSmTCdPiS6z1w==
X-Received: by 2002:a05:600c:35d6:b0:41a:a4b1:c098 with SMTP id 5b1f17b1804b1-4200fcb9e94mr90424695e9.19.1715821120656;
        Wed, 15 May 2024 17:58:40 -0700 (PDT)
Received: from smtpclient.apple ([131.111.5.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccbe8fc6sm248541215e9.4.2024.05.15.17.58.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 May 2024 17:58:40 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Re: [PATCH 0/2] riscv: Allow vlenb to be probed from DT
From: Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <ZkVAYeNnvj99YHXt@ghost>
Date: Thu, 16 May 2024 01:58:29 +0100
Cc: Conor Dooley <conor@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Conor Dooley <conor.dooley@microchip.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <6DDF33DF-07D6-4230-8674-F91A91660686@jrtc27.com>
References: <20240515-add_vlenb_to_dt-v1-0-4ebd7cba0aa1@rivosinc.com>
 <A9EDD470-B8EC-4644-82A0-7444729EF885@jrtc27.com> <ZkVAYeNnvj99YHXt@ghost>
To: Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: Apple Mail (2.3774.500.171.1.1)

On 16 May 2024, at 00:08, Charlie Jenkins <charlie@rivosinc.com> wrote:
>=20
> On Wed, May 15, 2024 at 11:25:16PM +0100, Jessica Clarke wrote:
>> On 15 May 2024, at 22:50, Charlie Jenkins <charlie@rivosinc.com> =
wrote:
>>>=20
>>> The kernel currently requires all harts to have the same value in =
the
>>> vlenb csr that is present when a hart supports vector. In order to =
read
>>> this csr, the kernel needs to boot the hart. Adding vlenb to the DT =
will
>>> allow the kernel to detect the inconsistency early and not waste =
time
>>> trying to boot harts that it doesn't support.
>>=20
>> That doesn=E2=80=99t seem sufficient justification to me. If it can =
be read
>> from the hardware, why should we have to put it in the FDT? The whole
>> point of the FDT is to communicate the hardware configuration that
>> isn=E2=80=99t otherwise discoverable.
>=20
> Yes you are correct in that vlenb is discoverable on any conforming
> chip. However, the motivation here is for making decisions about how =
to
> boot a hart before it is booted. By placing it in the device tree, we
> are able to disable vector before the chip is booted instead of trying
> to boot the chip with vector enabled only to disable it later. In both
> cases when there is different vlenb on different harts, all harts =
still
> boot and the outcome is that vector is disabled. The difference is =
that
> with the DT entry, no vector setup code needs to be ran on a booting
> hart when the outcome will be that vector is not enabled.

Why does vlen get this special treatment? You could make exactly the
same argument for the number of asid bits. The precedent in the kernel,
whether RISC-V or other architectures, is to not do this. You can
detect it, so you should, especially since optimising for an
exceptional, unexpected error case is not worthwhile.

>> As for T-HEAD stuff, if they need it they can have a custom property.
>> Though naively I=E2=80=99d assume there=E2=80=99s a way to avoid it =
still...
>=20
> T-Head does not expose vlenb on all of their chips so I do not know of
> any other way of getting the vlenb without having it be provided in a
> DT. That was the motivation for this patch in the first place, but
> making this available to all vendors allows optimizations to happen
> during boot.

How does userspace read it then? But if T-HEAD need it, that means it
should be a thead,vlen, not a riscv,vlen.

Jess



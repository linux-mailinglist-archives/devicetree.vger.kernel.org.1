Return-Path: <devicetree+bounces-67681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A07C8C94D3
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 15:52:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 300581F2108B
	for <lists+devicetree@lfdr.de>; Sun, 19 May 2024 13:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0856B45038;
	Sun, 19 May 2024 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HFv+AowZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6147922EE3;
	Sun, 19 May 2024 13:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716126772; cv=none; b=apqRpXlnrkxsZHOYsjO9V11degLuaG6SaxRnKhaR/8O1qEy0kd43uz0W26NauRbdgq1t6BvV7DKEo15QUnNzsIGE7V0dKifiMYHbXMbelTqxOvHweh/+165ZSTJ/J8KVF97tU79fuJ3vlhtjW3lb7vJsfZe++i6/McrPuFXqIOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716126772; c=relaxed/simple;
	bh=JQAf/nzhvbBBNOd0wmA2uRIDRz9NLJhfJf7uNRvPSL4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N0KMlG9zydm7IE6rXiNWCUsb9titFc6zVBY947EvFFhVGuzRZm7EgZQoq7UoT8EIps49l7gzAe/fsjAihZxjfxawQPpJcQhw3+enUsIQxMJXv+YCH9Eqx0ThUzeX9pRwjUh4h9klaLo5OwqaN4fXh+dwVPxRouqpgei7EtBL29g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HFv+AowZ; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e564cad1f1so29644781fa.0;
        Sun, 19 May 2024 06:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716126769; x=1716731569; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wTHLHdB84m6TckAH+4Wb+GMxJLS4kpYIZkcGpjSwhu4=;
        b=HFv+AowZmbrKhqpXukD4SUd2/WXUAKwf76b8G0JOpWYyNauMFJKASEq2vtavBad8At
         HiWw9uKgHeUeny/KBUPeLjAIYoU8mLjTMDmUt57QhYyHqiiiFzziegg9Vz19cpD9NMSM
         WXpXPlDKabvJsz8PbCpLObc1BAhMHl7mkpLy0/Lr/A1z+nY6CcpO7QjD4eekBX4oyUAI
         fFJWwjl4c8Vs3YAA6Z7ubzPbCFQlxtvghj0oDDtAdA4LJKdOSNAotFZqZukjIEBywp5g
         AuPbkIvNApm9JgCA+h14vcMbuj3Gq5mr/kME/6TZY19iD09QFeeWyvRcMuvKIVbTWjOi
         0xTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716126769; x=1716731569;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wTHLHdB84m6TckAH+4Wb+GMxJLS4kpYIZkcGpjSwhu4=;
        b=r7d/DSqrh7hAhxzQqbor1aVvQNnztaWOvwUzAeelK7PFXZmyq9oOYue0c7zCaB3QRP
         jNr4W1d+rU/utKEOfaj6fLCdQ6nxmeE2+pWPsdUrQZ5AL2PqYdBUbHLoPvO6no50rGc7
         1tBeLsEtziqoVx21BrXhlJoyP3a3DlOsLe4xyjDk0xczt+E0GeHjwRxmVIktUJjq2r6k
         dUKcLMRhO3iloJMWMGnPcAhpSYYrU5R7bf5zQesHF1t2RFqU+9+JA7bYcV3IfM7SqT7c
         hk9S7z6rpgYO1jZY5P+UweKuL8CugyXx31fF5Kynye7nDrIBu/7hmbITRZ0dz8+kHc+5
         zakQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQ3CKtlUIP35Eg+DX1j3aPCl9qShevmNYfYHe2YEZ2to2Y1yAuZwLsRxiFGGZeg+WiDhr6ObmWPy0RI9T36ieOwzxv8pqga7gPgbykJYXTLgOMBHInOT90VN5k/xTYa8akrGWAABcnAQ==
X-Gm-Message-State: AOJu0YxgX5IbMm/lcNhVUvRQPELNKr51VLwhcd/dKtD40kVQGrhigR4S
	kEJ78GThESWVx/PJX9emCseN/Zj99KU+XT1r+8aTQU6AIt+5FrR4Wm/jsEfDAs6P4pJl0T2Nvnc
	+RruwOMI2CoqjtgWPU1pG4pdiX64=
X-Google-Smtp-Source: AGHT+IGL7l5ZSGrbrBo0LCKpFF739I1zTYOiFnffB7Fy6M9hFZItdRrnHVcbRwkZVd7RUP3GCVeS5gl80V2L1+eZQiU=
X-Received: by 2002:a2e:9ed9:0:b0:2e5:2eaf:b0a4 with SMTP id
 38308e7fff4ca-2e52eafb1e4mr159165301fa.41.1716126769340; Sun, 19 May 2024
 06:52:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240518061925.43549-1-kanakshilledar111@protonmail.com> <20240519-ideology-nervous-eb30a92e1e42@spud>
In-Reply-To: <20240519-ideology-nervous-eb30a92e1e42@spud>
From: Kanak Shilledar <kanakshilledar@gmail.com>
Date: Sun, 19 May 2024 19:22:38 +0530
Message-ID: <CAGLn_=ugjbdszvN1PQ2eN-pLFQmz-EUmhj=2kOUKWWEsbFMKNg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: riscv,cpu-intc:
 convert to dtschema
To: Conor Dooley <conor@kernel.org>
Cc: Kanak Shilledar <kanakshilledar111@protonmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, May 19, 2024 at 5:28=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Sat, May 18, 2024 at 11:49:21AM +0530, Kanak Shilledar wrote:
> > +allOf:
> > +  - $ref: /schemas/riscv/cpus.yaml#/properties/interrupt-controller
> > +
> > +properties:
> > +  compatible:
> > +    $ref: /schemas/riscv/cpus.yaml#/properties/interrupt-controller/pr=
operties/compatible
>
>
> Unfortunately, this is still not what I was asking you to do :/
> I said to make the copy in cpus.yaml a reference to this binding.

Sorry for misinterpreting the comments. I will fix it right away.
> Cheers,
> Conor.

Thanks and Regards,
Kanak Shilledar


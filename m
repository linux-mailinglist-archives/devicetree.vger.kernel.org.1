Return-Path: <devicetree+bounces-95564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B599959F7B
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 16:16:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A88C528565C
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 14:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C51A91B1D4C;
	Wed, 21 Aug 2024 14:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Tsz5XWcb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09204199FC0
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 14:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724249799; cv=none; b=EuqppVm2c4G/3K9m68MHrygKzHKljZl+4qGa01zi/fThsS2ijkAt3d5iBlA5klKIOz7LIgcYRG1uHL1XZ0OX6H5Pc5TvrYCUvH0CGmtrXdlcoPpjrDwUsd92f8hCCjoiZuA/hv+NE/c/z85IhsMgzBrj8x0ubtVrs2dfPh8DucY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724249799; c=relaxed/simple;
	bh=m7X/1nlXFnx6K0tldZgYVRy28K5m8NEXV6Gf8fcZUY8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tKvpefGCAmQLypjYTUP6pIzaD9cjckYyoZocOYFzGnYHQgTZP3YlV7o1Sm77L09cruExq6UML90y7J9DlDofPDUGyFW54aMi17YSWy4zJvS9pkj11kN/jUrKlBERLa2mB+BZu3MbTk+TX3+FV8Z87hjxy5YdL6R3xNtv//XzgXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Tsz5XWcb; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a868831216cso4209566b.3
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 07:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1724249796; x=1724854596; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1HTAcUTpqyzByMJpquHWMYu3B5Ynm1G8WC9iJphytM0=;
        b=Tsz5XWcb8kgJD1Ws3tSxzX6hvOqRgnl0Luq6pCR1RPHYgN69yatPpGv8p9etiTsvMA
         GiNsdmm6cS1NBaK0dSgbfZLGAyvnuoBaY/RNWHfspXBByG0z5cFJHEafk0SopjUh6BYk
         icyt/geF9FtpJuqjUvkiS93lUwb4WuS7MTvDZgGVERaUDApLy9Qk4kLAEGj/u3vjN+7E
         HP/mEUf50F/kmkpW5EAbxsqZTCS/w+lhhoEb0HPOBk94nWk6BDg0Nn9YHSOJFmZ0XLzF
         unPBY6Mm8gMzsAbxZ6MsVaWw3inLyCC0ZFVmEabQBPRYrgpuMWQl4xrZHEKbiy2bTsMo
         7fKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724249796; x=1724854596;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1HTAcUTpqyzByMJpquHWMYu3B5Ynm1G8WC9iJphytM0=;
        b=amw3YUZe3JHGJZ8Dp+OhWi+hFs6do0EdRaW1mERMPTKVvoCjub4zwV7sXn4nBB17mE
         RFRizeLZ0W3UuenkH86HkWndw28MsJZ2JbP7JA2/z5ZxuXeE+VCnQdVV4C/IbPa6M0G2
         zAfyrTxwVMbZORp3bcnvkDSBc+qqEqffmu9XrqvsktoYj2U1ZRfvKiu2BFbB8bS3AWmk
         ifMjISat6HKTU8M99xMnRw5XFAbOz7nsi3yyjLC29pkN+PsgE/b00X8hQLslUBe+qVSM
         7HoFpIfhIcwRibJ+gJm2anp3dDaceDBr4whifJs5ecR3J5bFXuZ6P4dRQW2sJwQOX2Wi
         qTKw==
X-Forwarded-Encrypted: i=1; AJvYcCUOB7s4gvByOOa+2SQ4/otphICNWS0eDyH9ZVEryP5ba4fM2xRPoRCeftC8P6utsxVgjNwwAsZKYB+r@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8o29T5QFTfYrS88FqY9o8E/r89YWQBeTZwe02Iee+N7Ll3zA6
	Cm2J+4LsJuhco+U4JvDuoug/gvL/vkiDmOWOp92IEjC2/JxaBjjwgjFYJxIAId8=
X-Google-Smtp-Source: AGHT+IE8bwm0dEjF7VBywYff/AafpoSdjerliMDujGbpLZiuwqH+igjndWkqozC0Ufc6S5g43YyWNA==
X-Received: by 2002:a17:907:9803:b0:a80:f79a:eb6f with SMTP id a640c23a62f3a-a866f11b8ecmr177010066b.8.1724249795649;
        Wed, 21 Aug 2024 07:16:35 -0700 (PDT)
Received: from localhost (cst2-173-13.cust.vodafone.cz. [31.30.173.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a86680ed15fsm136535866b.224.2024.08.21.07.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 07:16:35 -0700 (PDT)
Date: Wed, 21 Aug 2024 16:16:34 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Alexandre Ghiti <alexghiti@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Andrea Parri <parri.andrea@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Leonardo Bras <leobras@redhat.com>, Guo Ren <guoren@kernel.org>, linux-doc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arch@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v5 04/13] dt-bindings: riscv: Add Zabha ISA extension
 description
Message-ID: <20240821-5c19951bb4f35f7ed90fc10a@orel>
References: <20240818063538.6651-1-alexghiti@rivosinc.com>
 <20240818063538.6651-5-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240818063538.6651-5-alexghiti@rivosinc.com>

On Sun, Aug 18, 2024 at 08:35:29AM GMT, Alexandre Ghiti wrote:
> Add description for the Zabha ISA extension which was ratified in April
> 2024.
> 
> Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
> Reviewed-by: Guo Ren <guoren@kernel.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index a06dbc6b4928..a63578b95c4a 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -171,6 +171,12 @@ properties:
>              memory types as ratified in the 20191213 version of the privileged
>              ISA specification.
>  
> +        - const: zabha
> +          description: |
> +            The Zabha extension for Byte and Halfword Atomic Memory Operations
> +            as ratified at commit 49f49c842ff9 ("Update to Rafified state") of

The typo is verbatim from the commit, so

"Reviewfified-by:", err...

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

> +            riscv-zabha.
> +
>          - const: zacas
>            description: |
>              The Zacas extension for Atomic Compare-and-Swap (CAS) instructions
> -- 
> 2.39.2
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


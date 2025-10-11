Return-Path: <devicetree+bounces-225588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 696E8BCF3DE
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 12:52:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2A003B00C1
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 10:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B8C25B312;
	Sat, 11 Oct 2025 10:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LNbkR+2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C147D2517B9
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 10:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760179968; cv=none; b=UUY/yTF/h4kKDxt4jyVLYzu9oD3WxIHwMZZzkC1b4sp4B7XSIiITswcTLd1vzk+6wI2KzU02+dE3vXTg+1yJcHEiF0O1amDAnAwyOhRlJ9Pac5Keey2OGC25WoC4M+NTV3W3v6GMsttePAyaT0VMfUbbSWHds0BlV8JqKxt9erQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760179968; c=relaxed/simple;
	bh=8OWEI2Ve7zxoRahlmtY7dTeIvWnJ28oqpstjc7JIgvI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tQGyd9vgLk7oLl7cl76ekstCa8lHdV7v3LREPGRWWt81542VHk8S4iQ59CO/W073u0MtZWry15+PIt6VkzxVArkspDUFWDCagdxL8D3ml7aVYK5oJyOJD8fZSHlR4qz7jvIwoAKClGOLY3f8JPUhC2DDnSOmtOevi8LKWjTgU3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LNbkR+2+; arc=none smtp.client-ip=209.85.208.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f68.google.com with SMTP id 4fb4d7f45d1cf-639fe77bb29so4255371a12.1
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 03:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760179961; x=1760784761; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8OWEI2Ve7zxoRahlmtY7dTeIvWnJ28oqpstjc7JIgvI=;
        b=LNbkR+2+EOwh+dWGVtLKonqwwWU35Q1VNDtkY8THOFaW2Cb8OiSrqaaVhXQmIAgNoo
         GlWyk5qwq2VM7tjWJwWNuotmIAkFUfwN4YKIbVJTiQQUgtHIVIXXIQWpuur4n+LSymjg
         LZ+bg3fZxKUyIt9EcvByg9d1PlKLYQ2+X54woo5idX6zxGO8MnHC108n2rRbaomzVcBr
         IyLhHM7zutKcAmlZYldGah6Vj6UojasFV8/ji+myUIyyENQ+z501lfsh5FS474usuEbD
         Fh+bSwMtvmNlkcR9R/VtvJPYHKUHh0iR8Xu3H0j9l586rZ/zIJ4TJn/mlXySHbdJhTKX
         1GZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760179961; x=1760784761;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8OWEI2Ve7zxoRahlmtY7dTeIvWnJ28oqpstjc7JIgvI=;
        b=G5aeSTUqJdW70DdVNKllQAoTi7EJQXXMd1dHF0WFvkwMmYWD+B+77B2zdqvRA4rqZy
         l5XMo6wHi8suYV2a04oGhLIOtRzTkGxnHXjKpuOY/GZPs+GPP/utFepcloBKwUDdDUed
         hbI7Rq638UHrcTj5TA3j1qI36Opk+dW39BsQfTh8DNPdHdFvRWN2pUl0w+4D0Gv+iNPL
         JOVOpCjTtLK84oTGiAhoc5+8aW6PEpjMM9dQZDXbd1ZQ59htfonqkWAi9gh+bsHxorFy
         sSucf723r2lueAx0Wma3itnQ9kcjQqKVB+l7gCPNUKPmXQyPFZY2i2aOT0o/zsD6B/Au
         1udg==
X-Forwarded-Encrypted: i=1; AJvYcCX9d6NGXHBIWsow64fJoDjZSbFR/0jSrX+bP/dlqHu/zkGie2qGJTY9JBNZzZgYiTsRBTV1rXnDOfcA@vger.kernel.org
X-Gm-Message-State: AOJu0YxtE/cjsqulDccSJ1PO1hhTRv5YBAN6qnETm8x34BuWgR5zn5H5
	cRvpPql3S3cxGsIAxagm31Vm3BSrncZxmk7+mNOF97Fq/Hc7FsQSO1dUSEEFlJYSl8CqTbruvuy
	xsPAXwmtdqeyd7A8emmJa2nZogJ7HZWY=
X-Gm-Gg: ASbGnctOgPZ/XF/bzqrSrUD6zST7bMjxtVdnHTHVqtBXpEhHNSTaY27fi30PWHVhdUf
	RhlA33T3B1crpYbRUxHb5etPe1jAdfxLYCpyeUzntK8y4HEaV6puImHUCjcuXXyTbCn8z6XqM5a
	+hei5PkKSJXp/GsT/i2vCVxPbyP6uKusM9IuafezzC/r9W3u4nUqvfMQSr0/m6OMZcYGqSNlvtZ
	wCoF6tyiSwEzGoPIpPnRueZguj6AkQa16NsvJi88MqhejY=
X-Google-Smtp-Source: AGHT+IF6QH0ZvGGeu7syJtGwnYam98YA7aQ4YBC4SL91FthZsg1FL7JABmIcldVJaVFWBD3dXjjVorqgK2JB9+CSoXA=
X-Received: by 2002:a17:906:6a1f:b0:b41:660:13b8 with SMTP id
 a640c23a62f3a-b50aba9ebf7mr1660189466b.31.1760179960946; Sat, 11 Oct 2025
 03:52:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251008031737.7321-1-raskar.shree97@gmail.com>
 <20251008031737.7321-2-raskar.shree97@gmail.com> <9970e8f6-8b8c-4d9d-97ce-f89b948d6c97@kernel.org>
In-Reply-To: <9970e8f6-8b8c-4d9d-97ce-f89b948d6c97@kernel.org>
From: Shrikant <raskar.shree97@gmail.com>
Date: Sat, 11 Oct 2025 16:22:29 +0530
X-Gm-Features: AS18NWCeqmbWUT9hRBS5hR7tp38w-hhCaezVQ74ixvOjKVU1p9A72eXYN3wOTVU
Message-ID: <CAHc1_P7PDOMqrBxvXx-fO3GkncapOsqkxVs9HyZdwReCQFn9jw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: max30100: Add pulse-width property
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, matt@ranostay.sg, 
	skhan@linuxfoundation.org, david.hunter.linux@gmail.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

> > Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
> >
> > Changes since v1:
> > Add unit suffix.
> > Drop redundant description.
> >
> > Link to v1:
> > https://lore.kernel.org/all/20251004015623.7019-2-raskar.shree97@gmail.com/
>
> This does not belong to commit msg but to changelog under ---.
>
> See submitting patches.
>
> You need to also start testing your patches BEFORE you send them.
>
Hello Krzysztof ,
Thanks for reviewing the patch and sharing your feedback.
I have removed the changelog from the commit message and added under ---.
I will test and will share the updated version of the patch shortly.

Thanks for your guidance.
Regards,
Shrikant


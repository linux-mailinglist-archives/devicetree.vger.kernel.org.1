Return-Path: <devicetree+bounces-227523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F0736BE24A2
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EC3919C0433
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B08B30EF70;
	Thu, 16 Oct 2025 09:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WHmZwVQz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCE83081CF
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760605631; cv=none; b=kIRe7eaD2LpX2KnKZKrs9caQHjnBjmoMt9Txjiim8qPncGWF1mxJ9vfuozeVxfuJ+E1I8QOCuRLExfcwCh8yEH3HN1VFdh1LOxUq2+AbUb+NfO/8rU47iO+dJZEBgUhsSRVaL37fRiC3+CaR1nElG3gUPMMWYfoT2Saf//fRIK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760605631; c=relaxed/simple;
	bh=guwRIMi0wiANNJuAD6tIEMgIhoRZw5vVBX6qb9J5PBk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xkh0B0SnMgXqH/OgnpJxVqWC3DHkyTZW3b1zfbRiqJQmY/M3QkbFZcrGo9AcU6Zzu5UC9tgcf7q9JaUlJxK+HWFgWjgvkx1i15athftBlWLkzQFyW6HQ7huUd6QJmhYl+qiuT2RoZ8eXWa4gsmHKMIhP6pZ859V0uQy9JUCLvwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WHmZwVQz; arc=none smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-63d97bcb898so651864d50.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760605628; x=1761210428; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=guwRIMi0wiANNJuAD6tIEMgIhoRZw5vVBX6qb9J5PBk=;
        b=WHmZwVQz6RljL7QN74Hm7itsTO+MvpEcatSH5KAdIvbjXhb08suymboZEQkDBOlBmm
         8xV/jY66p5h9S5AgUgg1/DDUwIixBvrMLRadvOLX427Pu9ce0nVMyvl0W07+rVcgqjxv
         GYBQBwoEGYxK5XdKhD4G1X8ocAv7n9GyfpGiZKDeQfXHln7plmO/+A1FbXSVtrVpUMzk
         +O5nhWPSHJBEafEiQiHRXB7h6B0J11Jg3T/BL7V2KbaHYdgdbfFG8LTnsPVQlM9hJVa/
         m6asT+qpNtJvtp7LpG7d0NCf6S8BfKMWhREqhWW5inZ5V5s8G8UoRc9sMxlMBVgwHSEh
         ggYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760605628; x=1761210428;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=guwRIMi0wiANNJuAD6tIEMgIhoRZw5vVBX6qb9J5PBk=;
        b=eYjKH9qLRL6a0yamV9hJ6wVotx/11yKonNSzePKkGs/RfmIyZsbjFb+gOZToKErkhm
         x2FbZ7dGL4x4BwMjlHEosO+Bq1eHYwL/5OhwxNhFdxpbpFroQJEDaUJvFs8amb/A6zRw
         QAwwTAWHlWwF6oK1rjE6VT4qwWbAvfkCO6LNYpgg+jwT1lp7OSXUudkN6FVyYYo8mnK1
         ZU1tY+X689gf1gHLdyrrGi6u7i6oQQar8uap9W5KYmbhwOg1+HAxKrunRKCzoxKhDisZ
         6Jj1PwIeWmH6WVDvD3F7Ypz6T5+O9n0w5NtKLRtUG9zU2ulByErHvRcreILDpphr4o6E
         B0Jg==
X-Forwarded-Encrypted: i=1; AJvYcCUyykKK7EY930gLxTS+vYZf3HKC9PSKelMJ+qO4PxTyDmx7cBHNhnJocVceNuviZhXTR5xtnKBXFqG1@vger.kernel.org
X-Gm-Message-State: AOJu0YwbOp0ORWL1auE0LasMuhhWSTpUcoXpmb+QEgQFaH5mRa7XFJxe
	0/zrFNz7fTdvDfSHV0fTgCKS6bbDRlJHjOvWnvfYfv9DgZaHhZJgXM7UvvM2NPkH/kBIQCjXxqa
	0OKEegvyKc9YR+DxYVFNztnyDzgWb7CsOSg==
X-Gm-Gg: ASbGncu3YDi9GPnEhAiA+hdmzcWix+CWErm0joDiwPha7JYq1MWiHTgNZLtqhHVvcTZ
	4pM8ierhB66wbPTf8YHULRJbHYZVdJDKoTc4tEiOi+M9zVLZH/7TmBwNZ0JdyjAnqHI6d2ZU9Sc
	eCr2L7VslkXZP878Tikarh7Fihk0Yd10ZhLIzY7BXTkjL9D1o/nvCJisHSnfERfs453S4c0xsYS
	jDxhJFNDvwfDmTpv0SgCfxgrUYE/T2KtnkO8uzvl2Q2U19n0KfcT8ZwJ2Topw==
X-Google-Smtp-Source: AGHT+IHVbO3++jsGwWmg/F2c4ksP+FLckoJYfOSeFWsAVaD7OsNLADoUPFrIAhLYYE/gNFYYmMmLiTqCkuWEcxtPEn0=
X-Received: by 2002:a05:690e:4012:b0:62f:ce58:62ed with SMTP id
 956f58d0204a3-63e08fd5985mr2306140d50.18.1760605627783; Thu, 16 Oct 2025
 02:07:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925200625.573902-1-tmaimon77@gmail.com> <175890301752.880349.2331946518360447485.robh@kernel.org>
 <CAP6Zq1jmmhqYu3C7KHFK2tz9zjW352Bbw4cXeOYSjNSTELrp5Q@mail.gmail.com> <045c7bcd3a852e626f11e5b78c07939feac0e298.camel@codeconstruct.com.au>
In-Reply-To: <045c7bcd3a852e626f11e5b78c07939feac0e298.camel@codeconstruct.com.au>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Thu, 16 Oct 2025 12:06:56 +0300
X-Gm-Features: AS18NWD2PDfZcVJRgxIyX7bEOze1mHnCXeX6pVqo7IZ1SuA6mem-A5kplcE6yyY
Message-ID: <CAP6Zq1h6u0t8D4sDifGjVw6M_cTKxurxiPiO8yxFW5HtJBRvPA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] arm64: dts: nuvoton: add NPCM845 SoC and EVB support
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, venture@google.com, yuenn@google.com, 
	openbmc@lists.ozlabs.org, benjaminfair@google.com, joel@jms.id.au, 
	krzk+dt@kernel.org, tali.perry1@gmail.com, conor+dt@kernel.org, 
	avifishman70@gmail.com
Content-Type: text/plain; charset="UTF-8"

Sure, thanks Andrew

On Wed, 1 Oct 2025 at 05:35, Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
>
> On Mon, 2025-09-29 at 12:15 +0300, Tomer Maimon wrote:
> > Hi Rob,
> >
> > Thanks for your comments
> >
> > Most of the warnings occur because the compatible strings are located
> > in .txt device tree binding rather than in the .yaml file.
> >
> > The only change that needs to be done is in ti,tmp100 that
> >
> > Could you approve the patches, avoiding NPCM845 compatible warnings?
> > Meanwhile, I will work on converting the txt to yaml
>
> I think it's best we get the conversion done, and then subsequently
> apply the apply this series. See:
>
> https://docs.kernel.org/process/maintainer-soc.html#validating-devicetree-files
>
> and
>
> https://docs.kernel.org/process/maintainer-soc-clean-dts.html#strict-dts-dt-schema-and-dtc-compliance
>
> Andrew


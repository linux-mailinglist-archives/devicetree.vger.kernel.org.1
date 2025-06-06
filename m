Return-Path: <devicetree+bounces-183429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C1EAD077B
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 19:28:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 153C5188811B
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 17:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C09B28A3FC;
	Fri,  6 Jun 2025 17:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="cqRrcxKR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D2E28A1F5
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 17:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749230892; cv=none; b=KZHm70WyQiuHeZGrlm5IcCVPEG5t+sgjYq8dhRi5bRVyfsLyV2K8TPaC4gOyOnVoAMs8OOGtRN0zTMPz4jD9eCFP0vYsSWFolb3CWyRkdET7h32X/ALh+YyVviVCKzVZP0rv+IX57kfOXZ10ezOjuhwd6wUo8TXRsK2FJHhxuKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749230892; c=relaxed/simple;
	bh=xrcru449cei1Et0aCLQa6/Kqc5VQETIjkfkAR+RpjMY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AQvmxxPXhCUILlR1TBpGZW68EOnINIQRWh7arN7f5t+0HM4zM3VVm2hHtjXzdRtSzEJQb5b67ou3C1PjHNaPeP/Y9g4UHpbnFsoKBBFjUReSWOvOoQ2ucZz2Iwo7bEvUCJhag/hTUCtVYJiK8FFfso96tfql6OJR0HyzfHHBVsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=cqRrcxKR; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-742c46611b6so3048137b3a.1
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 10:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1749230890; x=1749835690; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8bxQcB6I31Y/6ivyEzgwxs7LfhD5ih9mAPGJOZEq11Q=;
        b=cqRrcxKR8uLqD1uNqh2UCF2EfD1hKwtE4UDaKVZZGda0BaT2pspDjD5WhgdFGf4oaP
         vBTc4RoC+16C7tORgdtxalqpHmNVdInUrz5iBMYS9HNyT6uUSe299lQfKMmsizM6TZTP
         /ZtRXzVoPElYETnSRmsQriqk3q4Cli2OC9qysjyoRUVuTsWKYbkbqIoH3QsYK+TbKA4S
         CsLF7dPo0GWzKdHkD61YHandP/5kt6J604eV7OGMfWYxHRRz6zhxxsi9P6nYUTJ/YR5m
         wNN03n7BJHNiKn9eRe5xtIknpaORwfudf5zCJ5ps7nycwbWnhKfw266XegfGlablhR7a
         JpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749230890; x=1749835690;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8bxQcB6I31Y/6ivyEzgwxs7LfhD5ih9mAPGJOZEq11Q=;
        b=DkypSlDL7ZK4b8ZP+ByxpQ3cORkKnwzptsGAWnyinXAmZpTJjlmbRX+XdR3QS7n5lB
         1Y/keLXeCT8j5uzWMt1wQfT67+G37ekFFsDV3qKuYdU6J+Uv2ZBzSa1vRnij5n4xdhzf
         qnfFRNAv8DJDfVcL+am5/t0tdCVMvTRJr26DgJ31enmJNq4LceCzFX3xEgkA5o+xaybI
         D0mWaXwQuvTOGF5AqZYVZPvL4qVVbjOQUnxzXQl976rITAwtPvTGsaleyXWT95sqmwpr
         8XkJv8DDxYNXhapQtKZcL0QbSUqgRr1QqBsVamTzVVoZseXxpfpPPsMHsALJTJF/u7c9
         jOSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcFyg8UYdsCHcHJDqlw/C83ocHsFD0NyVZHIjYQFfCX/vqEVzfueQ5S5sifrlYraa36cuSP7x9szSa@vger.kernel.org
X-Gm-Message-State: AOJu0YxxUoQy7pgGK9SqmXq8kXVTzHE+facb2xvidzsa09VULxAgA8vr
	qjcx/mK1aOYD4HeEXWKJT1+0aDld/bUq3wtvIzlC5Dgo1PyMkgYsOOEUEjD4uMmcz00=
X-Gm-Gg: ASbGnctWTHMFrCKr7aQWanMr/Ctv+k5U7CnldYWoTs1WdfJi5wt18MIL1Fjp7OyGZqK
	ZRf98nQCtf1hoUdX37PaRI9lcdQqQ7UcUSOP3gU+MN4ykJ7HPtbBcr4JhhSXRa98J68OT9tE+TZ
	03ICtOBB7dFXBEtLZnFI7xvZ8oaAFUaj+AH620g+zqidUhS+2j7Ue7nULFb0CM93Dl6PUGNSgIJ
	5U27MHewPbqw/6N0F11X8D6NqMitoUjnZ0f5p1YfdVxGGmvRg3HWsDYOER8wua/ibQwvWkUrVTH
	B5PlBAaU400TK5pW75tvD06bqOptH1f0
X-Google-Smtp-Source: AGHT+IEbUQQvWXU//4u2yreY3b/suldCjm0c7NQZ8DRuolXQmMbStt3cnUiQB2khj9JcdjCEds7eUw==
X-Received: by 2002:a05:6a20:729f:b0:215:d611:5d9b with SMTP id adf61e73a8af0-21ee68a05d8mr5562457637.12.1749230890038;
        Fri, 06 Jun 2025 10:28:10 -0700 (PDT)
Received: from x1 ([97.120.245.255])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482b0842d3sm1576428b3a.98.2025.06.06.10.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 10:28:09 -0700 (PDT)
Date: Fri, 6 Jun 2025 10:28:08 -0700
From: Drew Fustini <drew@pdp7.com>
To: Oliver O'Halloran <oohall@gmail.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, nvdimm@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pmem: Convert binding to YAML
Message-ID: <aEMlKN9/PKTLciLF@x1>
References: <20250520021440.24324-1-drew@pdp7.com>
 <aCvnXW12cC97amX3@x1>
 <20250520-refract-fling-d064e11ddbdf@spud>
 <aCzvaPQ0Z3uunjHz@x1>
 <CAOSf1CGLoN7u18OOPZ_FGiYvxUninoCAvR8CJiOLGJrORCghdw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOSf1CGLoN7u18OOPZ_FGiYvxUninoCAvR8CJiOLGJrORCghdw@mail.gmail.com>

On Fri, Jun 06, 2025 at 12:20:48PM +1000, Oliver O'Halloran wrote:
> On Wed, May 21, 2025 at 7:08 AM Drew Fustini <drew@pdp7.com> wrote:
> >
> > On Tue, May 20, 2025 at 04:51:42PM +0100, Conor Dooley wrote:
> > > On Mon, May 19, 2025 at 07:22:21PM -0700, Drew Fustini wrote:
> > > > On Mon, May 19, 2025 at 07:14:40PM -0700, Drew Fustini wrote:
> > > > > Convert the PMEM device tree binding from text to YAML. This will allow
> > > > > device trees with pmem-region nodes to pass dtbs_check.
> > > > >
> > > > > Signed-off-by: Drew Fustini <drew@pdp7.com>
> > > > > ---
> > > > > v2: remove the txt file to make the conversion complete
> > > >
> > > > Krzysztof/Rob: my apologies, I forgot to add v2 to the Subject. Please
> > > > let me know if I should resend.
> > >
> > > I see how it is Drew...
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> >
> > Thanks for the Ack and sorry about that :)
> >
> > Is it now just a matter of Rb from Oliver O'Halloran and this patch
> > going through the nvdimm tree?
> 
> It looks fine to me, but I've never worked with YAML DTs so I won't
> pretend to review it.
> 
> Acked-By: Oliver O'Halloran <oohall@gmail.com>

Thanks for the Ack.

Drew


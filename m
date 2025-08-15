Return-Path: <devicetree+bounces-205109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C83C3B27EEF
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 13:15:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FE1D7B7FF2
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 11:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D8C27E1A1;
	Fri, 15 Aug 2025 11:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b="PIiTt0Eq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C05276026
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 11:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755256549; cv=none; b=JQmnKikOqYMi2dZlZ3hd3VsrrEhmJ95bJZjKtiJ/DjinuWKjUOGaWs+jT0jUk8oBUhy2KT/WOZUzUe4IxC0vIirPQ10arVYWyDBCllQjV5o9ac6yrUVH+zqYQSwxGSFA/3NXQpHhx2xkTAT9i82ksVCWqSTxkRMEtW23k7CnMu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755256549; c=relaxed/simple;
	bh=T/aoVi6AF3aVJ/uqRpoLaF29+CuY9MSd7NGZ1/77wPA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S4jgVp+/KaJjofw5CoUwODMVbs+08I2IAJB2nOLZ6THsB7kQ4bjky7hj6KJuCY8Pjb6tqPWOdnm7ygqqZ0LTgemZr/3O0Z9/PgQ2fBbSOsveJCROwPmzihwUzYLTeP1eUcgGxYwic9GdTitatkNWf9QKjzm6GfU1kZXef6VLW7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org; spf=pass smtp.mailfrom=fooishbar.org; dkim=pass (2048-bit key) header.d=fooishbar.org header.i=@fooishbar.org header.b=PIiTt0Eq; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fooishbar.org
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7e87061d120so190975285a.2
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 04:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1755256547; x=1755861347; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T/aoVi6AF3aVJ/uqRpoLaF29+CuY9MSd7NGZ1/77wPA=;
        b=PIiTt0EqygxNkFvhm4MeLUq0V9koS18X0/cyH+rgN2euVQm+YuwZzkMzS2wZf+c+Xt
         OmENiOLIvbxy13W2VdhWEj1+xzfdMr0gx0ytlvYeIr5QF3kAP9HOImDisosMRLoxDEhM
         nSsowXzad4ESduQ0ibKIJpo6OhhXv3jarkPIYhOhyVt0yaBwRBGFBdaHOqSdIT9ISVLz
         fhD8ghoRZ2Q6LGQnASfWOBUQY82pV6KPVdAGPu7Br+UKsZuaDjdl+fMGpfpyxwhccuxj
         HS6zvuDFzdSM9oIlsIsz55OqySQGGF2ZNokGW5F95GVc7UjkeiLH+olt5kfMsxGuo0mS
         7dVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755256547; x=1755861347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T/aoVi6AF3aVJ/uqRpoLaF29+CuY9MSd7NGZ1/77wPA=;
        b=HxU5bvSxk7YelX4x32UCsKJIvg1zvQS+3/sCWJ3UTEcwpLRxoMsZS7l7A/VOKHkodr
         rQotKh0oanXa6q4ZQ6Ng0erIdaCUjt3IhYc0lic8LsjDNIpaFnao+4FtsjiTQZrBlnQg
         WkBCd0zUS1c7pAJjCbZRjC9Xpc5BU/Sg5Ph2S7b3xYmgxNSlFd8Kk88s+90SrfjRLc+o
         49FRXeMEqB0doqE5dId0SnNvpA8N12q8xPPrcYiEbLUGqC3h3Tw2cL1xaO3pf4XCPqRh
         QSVd9sQ12I/Yt/WKPyNMae+h/ptBgNM6KsjFadKBdnB3qgeHc7BlG1l8HD3l4FBGk7mV
         neqA==
X-Forwarded-Encrypted: i=1; AJvYcCU1unKyPBL2ujX5+/QVzM5g4tEbM+tznhnHUUIrQdJNFWvCORbDZC21EbytbtsmQYpDjwG2/6GFWH4V@vger.kernel.org
X-Gm-Message-State: AOJu0YzKQz2+lGUNRauc0nBtQC9dB/Z/iALTcXKm4+WH7EXwL6CjX6ye
	l5+arzx9Ra8d5j8DwhiFoc2h27s4moUJE0ZzeNqase2IrNciEjCcBe+X7MrZnUr4LE7xXvKn9jn
	+79ERXKeRwBJvy9tRc6eop9EMLpNFTJuzEJUPYf2whQ==
X-Gm-Gg: ASbGncvdwdsY3TMsRomDInoqRRUvFDh6b2x/cTvCE7v+QG6UWTx6si3/+gOaUpOEffd
	BRUfWl+VHS7af8ybzujR2RAQxGPCt+yPficQfstj8veZLNCFoMO4zbZ3HP1C6H4ePJd9uik1EnN
	UfMlg8iJJ9/BpYLWVIJuvj4xVGk4Gmpak10hB+wzSwsS9vxdfskLnxgN8ZMI8FV1531AM7JJupM
	JNxRbs=
X-Google-Smtp-Source: AGHT+IEEYrgrzZzFQH7gJARNv39C5+Wwbco9I1459+Dntaj16EsMUXS27AwHprK/yA0fuMnmrf2M26jY7o7J1U606dI=
X-Received: by 2002:a05:620a:7006:b0:7e6:391c:41ae with SMTP id
 af79cd13be357-7e87e0c7484mr195050185a.58.1755256547086; Fri, 15 Aug 2025
 04:15:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250811-ethos-v2-0-a219fc52a95b@kernel.org> <20250811-ethos-v2-2-a219fc52a95b@kernel.org>
 <CAPj87rNG8gT-Wk+rQnFMsbCBqX6pL=qZY--_5=Z4XchLNsM5Ng@mail.gmail.com>
 <CAPj87rNDPQqTqj1LAdFYmd4Y12UHXWi5+65i0RepkcOX3wvEyA@mail.gmail.com> <20250814161718.GA3117411-robh@kernel.org>
In-Reply-To: <20250814161718.GA3117411-robh@kernel.org>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 15 Aug 2025 12:15:35 +0100
X-Gm-Features: Ac12FXyQS213pP_GudOiU8lJOx9k9Gscd8v3FBcgxsevLgT7o4PDTPSWp9SpRP4
Message-ID: <CAPj87rN=Hod6GyA72x07yTvxL5X2q4UyUmPg-hyjjFA5KJvYGQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] accel: Add Arm Ethos-U NPU driver
To: Rob Herring <robh@kernel.org>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Thu, 14 Aug 2025 at 17:17, Rob Herring <robh@kernel.org> wrote:
> On Thu, Aug 14, 2025 at 11:51:44AM +0100, Daniel Stone wrote:
> > This is the main security issue, since it would allow writes a
> > cmdstream BO which has been created but is not _the_ cmdstream BO for
> > this job. Fixing that is pretty straightforward, but given that
> > someone will almost certainly try to add dmabuf support to this
> > driver, it's also probably worth a comment in the driver flags telling
> > anyone who tries to add DRIVER_PRIME that they need to disallow export
> > of cmdbuf BOs.
>
> What would be the usecase for exporting BOs here?
>
> I suppose if one wants to feed in camera data and we need to do the
> allocation in the ethos driver since it likely has more constraints
> (i.e. must be contiguous). (Whatever happened on the universal allocator
> or constraint solver? I haven't been paying attention for a while...)

Yeah, I guess it's just reasonably natural to allow export if you're
allowing import as well.

> Here's the reworked (but not yet tested) code which I think should solve
> all of the above issues. There was also an issue with the cleanup path
> that we wouldn't do a put on the last BO if there was a size error. We
> just need to set ejob->region_bo[ejob->region_cnt] and increment
> region_cnt before any checks.

Nice, thanks! That all looks good to me.

Using unchecked add/mul when calculating the sizes also made me raise
an eyebrow - it might be provably safe but perhaps it's better to use
all the helpers just to make sure undetected overflow can't occur.

Cheers,
Daniel


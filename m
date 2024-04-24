Return-Path: <devicetree+bounces-62498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E048B153A
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 23:38:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D8171F246AC
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 21:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D073156F51;
	Wed, 24 Apr 2024 21:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="eGzdI0Bq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB36156999
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 21:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713994708; cv=none; b=Ln+rOgaUWzEqt1+BnB7561wMiKpXhu6aZqiLbvfczC+u9HrmMPtdzBfp0xzPhp9v8a474QSjH2Du2+/IRGvUCN7n9XpcO66/HD8AB+Fni4WB2GKz70rzF6d06raaV9eGoNCDfJWarjaSAx03Q7Y6OH14rdK4DT0J0gsZTCqPvKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713994708; c=relaxed/simple;
	bh=7c5t4kP0JlufT7hNb2boqOwbDbZoAEUVhrSORP9aXFc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l1io8hlJRX4Rnw4z38/fpAwi9E8MRRLSX5tDsAWnpiEwjqJXPvo0Q0oyjqhFmIRqfe3en7fvjiMxOSu3+Y8892EJvEM3i2ZydrpN68o28pZYtsjnEr7Anj7SulZ9pMUEcWntm83CSZPWUzc8Shf15uwlyO4d7EFWL2om3hlYMbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=eGzdI0Bq; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-6eb55942409so200412a34.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 14:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713994706; x=1714599506; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mCSAAudt8oKZ7AoxbtS66uOuESn00+WtuUOSOogqNgQ=;
        b=eGzdI0BqsoY8y8i1HMStYdMdbayEPVPPKoFS9j9mrTxKiXDYpUz2piBR+dY2VPYOTV
         QbXa/XhzVHQ9811WzSG+s6o7on7LC6Bh74R9mIIfcmokdc8rYZxVZqV7/VLgC1gCZN34
         WRyqZFOISvjRDJoQEYOmUdmHT7SD+Q8m58DkTapmwZBAjOZdwR1NE1QXmtsNnvbRq9qB
         FS4I1e3VIOPWGYEDNMYz3z6LQlsGGbndiyTiWDtAINuXZmc9Igp2QM314UgF7+5bEIps
         VkHLTqM/FAiKLJerufwpKc8N+lZODUkfkUal6ahZgoedwKB3b1HlIkDL9gffdfCvk3Dh
         ExQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713994706; x=1714599506;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mCSAAudt8oKZ7AoxbtS66uOuESn00+WtuUOSOogqNgQ=;
        b=H8c9PxLxhavfc5dOX5jhGe8HIVLuwdEBbTvmohRhaUCDYg71A2EaKLqYZn+4lJf3tT
         YDmn4t4b/7Nnsmt7pwZrHvRMD6nEm0jXS84kPHxvrQcTceUU50fRP9QwO31VWeXZFYdb
         Q9DyShpdR8jnUgJhM0YcsFTkNcijw6kX90H1ihFrk/n3hy7kOmNDoHFcI3XhQNp6f03W
         70JdzTw4ussBNklvbukxPScft2kwUATzT7yKWOvL66hGxGnsGzI1EndpsDvghItXUj/5
         0mu2sqxetolYc9VLD0YxSigGynApIk6I6UmOdwbs+Yw0L4wG6iM7LWFDfg4PnxaKIWhM
         /eHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmoVB2XQyFgNksJRWmKc5Jp171x4DRVewVj1Ur7BR4juGs1Ub4QdGqKboopQTOVd5Is9x+sNtDeTG4b0r9wR9T1zXTOPsW+wD0cQ==
X-Gm-Message-State: AOJu0YzNtUAtOaf9CJrrjk6+oktiE78aOSe/rgx9Z9jsf/hEA1K5hxDm
	MWGoqW4QjAII7L0TPS6bFtNUS1tW3xB/7h/LYfx1nT6WU3xJ1QytGt/Khv3AibM=
X-Google-Smtp-Source: AGHT+IHZ/YT25pef4JHoXBaJ+6FQRYLNP+/n2pVh1usBYPwTHcqVXj7WcdcTLvAD0fmz1HD+0VXiqg==
X-Received: by 2002:a05:6830:148a:b0:6eb:8d07:606f with SMTP id s10-20020a056830148a00b006eb8d07606fmr4812912otq.8.1713994706315;
        Wed, 24 Apr 2024 14:38:26 -0700 (PDT)
Received: from vedvyas-XPS-13-9310 ([72.177.88.222])
        by smtp.gmail.com with ESMTPSA id g1-20020a9d6201000000b006ea20712e66sm2499204otj.17.2024.04.24.14.38.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Apr 2024 14:38:26 -0700 (PDT)
Date: Wed, 24 Apr 2024 16:38:23 -0500
From: Ved Shanbhogue <ved@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
	Atish Patra <atishp@atishpatra.org>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org
Subject: Re: [RFC PATCH 2/7] dt-bindings: riscv: add Ssdbltrp ISA extension
 description
Message-ID: <20240424213823.GA1889117@vedvyas-XPS-13-9310>
References: <20240418142701.1493091-1-cleger@rivosinc.com>
 <20240418142701.1493091-3-cleger@rivosinc.com>
 <20240423-poser-splashed-56ab5340af48@spud>
 <e39f2fea-868a-4a79-b7a5-bef8f15de688@rivosinc.com>
 <20240424-rehydrate-sloppy-62132c72fe18@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20240424-rehydrate-sloppy-62132c72fe18@spud>

Conor Dooley wrote:
>Usually I'd just not ack the RFC patches, but I do at least check how
>far they might be from frozen before I move on, The jira for this one
>says "Actual ARC Freeze Approval:	18/Apr/24", which made me think
>a freeze was gonna happen soon.

Yes, should happen soon - expected by 5/4. 

regards
ved


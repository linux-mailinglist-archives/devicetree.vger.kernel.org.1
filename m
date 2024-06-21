Return-Path: <devicetree+bounces-78417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0147791237F
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:27:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0C262866B7
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4571174ED2;
	Fri, 21 Jun 2024 11:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S33RmvKm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733A6173323
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 11:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718969083; cv=none; b=k45+zdlRWCPxgoIXRn/+reereYJ5tDcE7MFSZBB1TAQQn3ckjo40GzDwVoxRBzHvpzLdJwV8rW77wn9dtB1h0/a5qyjyhkEbIdjpaaYB4ybYYVYJTYpdEiJ2/q/iYoumU/R6PYaI8oR7GmM+1OIShrJjfiXq2HEPMMls3X9Becg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718969083; c=relaxed/simple;
	bh=VAUZGs0ok6mYmR9lT0/eJU1jAhzDcyUz932YrEs7ptI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YFcg1e94He6t/KeGPvk0hlAETTCvqh5sy089ud202EZZm9JhbufYaHUqBIiYLAVA/4IsTci3zR6U7x3kONvquwUnaMOnoFPg/xKuM4yd7iYy+6WbT7I/q8jbd4tYTa1QWmeLrMyHEsbBoSUkjg/9dMgg3hf0I3iMBziG+tumQ18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S33RmvKm; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-62a2424ecb8so21849407b3.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 04:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718969081; x=1719573881; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t+Ed7V/lBbLt1LXAX1sffkPhKR+UYQ+Nb3cW8PobEvQ=;
        b=S33RmvKmunKyiLbmCMpxe6asiira5WF2E0f+v/Q4sNm2UcaX3dln+dzujAhRUDdyML
         G3/JrUZalTDB3sY/Iexl+fRVTxmx6Oe1mR47dCD60gNwsWmoA8p76GbttZpb0yz9LXXq
         8VGNHscuEkKr5+a8UOaK9VeZ5SYSFJ/pci88xhZT8ctvcDYdckmOdUYhYrrzH8oGZLWy
         nKWlW65aqo1QXUc8KizRAgffaLN9WTd0Px6kv5AszvlXB9c4uC53/bJpELG4H+Vbn1mN
         KyLkmOsC2h4GCLH86qktlNA077Ive7ABpjJkEpgItxbIrivnhI6KfpCG6CJgw3S8iLOg
         4y4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718969081; x=1719573881;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t+Ed7V/lBbLt1LXAX1sffkPhKR+UYQ+Nb3cW8PobEvQ=;
        b=uVXhwd30qWFKbQOHFuBHm4/6CzzWOs23F+Rl8+BUPr9sBaG8YHXgRFxrZ4r7pitdHb
         1DKt2k44sDJSJRnEY1CBWaQiNiIFADQ9dXzDNyX9KyjGMp8YMCbMB+kPcDu/ax8/3Hs6
         4t6Xt6qVuKF/mSWD+GmFiOMybLu72oO/FIe0TXBf9KkFbjluGFrIVSfNxrKtYYUnLTrH
         G9A2Bwc4ow7HtBRh7Ep3gSSzhA1gILGLY6DLUXGZkZbxCy8ja4nPaqzBV2P38i2EbaCN
         3vEVjk/fggKTMGnco5omeSJx4zh686c1i0QB1OcVDyQMAbDYY3A08X7ikrvLU8i8dQQI
         8SEw==
X-Forwarded-Encrypted: i=1; AJvYcCXzAG22zJaFUSUnAaDmkf1WJnX6tSjDx+Fc9eUcgpTsfkt3c5X3g+uIOJV0U2l5Og3PM7mZqGxAC7emeFWV+QaYR+Zil0eJldSqeg==
X-Gm-Message-State: AOJu0YyPSixkErmIfsNgPMxLyS5n71aK2ts9K6R3GkrjS5vyJzczi15N
	b8bKUu3sO8f8TUQJBY9WMHUNN0hCSN5RFWHR1fa0dPRZb69LCq1r
X-Google-Smtp-Source: AGHT+IFPX5v9zDoA3xT2LE2QqgZZjDCjE0pbztbIdSk6bf7jvdY6a3dTixVcvymiJuK7B6Ne3yzMxQ==
X-Received: by 2002:a0d:e2cf:0:b0:61a:e2e4:454d with SMTP id 00721157ae682-63a8fed2d11mr85647597b3.45.1718969081331;
        Fri, 21 Jun 2024 04:24:41 -0700 (PDT)
Received: from andrea (host-82-50-195-19.retail.telecomitalia.it. [82.50.195.19])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-63f10d9ef1csm2823757b3.19.2024.06.21.04.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 04:24:41 -0700 (PDT)
Date: Fri, 21 Jun 2024 13:24:18 +0200
From: Andrea Parri <parri.andrea@gmail.com>
To: Xu Lu <luxu.kernel@bytedance.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
	David.Laight@aculab.com, ajones@ventanamicro.com
Subject: Re: [RFC v2 0/2] riscv: Idle thread using Zawrs extension
Message-ID: <ZnVi4sGz/xDDigl/@andrea>
References: <20240621093223.37893-1-luxu.kernel@bytedance.com>
 <ZnVhIi0Jre77i3RN@andrea>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZnVhIi0Jre77i3RN@andrea>

On Fri, Jun 21, 2024 at 01:16:50PM +0200, Andrea Parri wrote:
> > This is the second version of idle thread based on Zawrs extension. We
> > rebased our code on Andrew's patch series[1] which provides basic
> > support for Zawrs as well as optimization for spinlock.
> 
> There's some feedback on Andrew's v2 [1] which seems to equally apply
> to the later, mentioned series/submission, and hence to the series in
> question (although only indirectly admittedly).
> 
> As an additional comment, please do add  linux-kernel@vger.kernel.org 
> (the LKML) to your Cc:  list on patch submission (again, this applies
> to both Andrew's and the present submissions).

Ah, yes, and possibly people mentioned in the changelog!  :-)  + Andrew

  Andrea


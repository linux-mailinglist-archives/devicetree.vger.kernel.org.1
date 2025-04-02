Return-Path: <devicetree+bounces-162703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8EEA79863
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 00:40:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 321E43B4E96
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 22:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66D011F582A;
	Wed,  2 Apr 2025 22:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="A3M8PtdR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E371F1909
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 22:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743633592; cv=none; b=WJzPlCC2XdEU1pgws6xrRI1swupdoN63dU/vmcHaVa2jhzjv9wH2rl/pcUUtcJDRWLgFuICs3oU368SSWWbAnjDgy0eAf7GqeFLJC5f9BZRQOU3HIQX/w3iSajDGajuUufbIUWMrhcgVvfkNYcOe6G1oxntbki6yCV1TS6TwtSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743633592; c=relaxed/simple;
	bh=xc8WF1r2PaAcb8sbNqj7gu3aFa+IW8ItfCQ2FmH/4X8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QKeIDle8zzTUwFr3fl8yCvoiME+hATnPWwB+XhXt6vlRT7uHRV0ct+GX6erHcGjZSBtmraY+Acl8F+nik173kqRRadpzl9efHYJe+knkWXVPm+j05+I82vt+Y2SGJ/X2tb3nRvvyC+tVskKRNNdiyjqguTnjD6CCVlftr0QAqj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=A3M8PtdR; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2241053582dso4587515ad.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 15:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743633590; x=1744238390; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RCUdSZJKo+DfCb7L1u9uIyzdzgr+hzjdGkAPqeN8dwI=;
        b=A3M8PtdRIA/fEFqlfooGWTdDn/Q85hJVVjT8g94tWbRC1B3GVqZlIa7GJCFXX67M3e
         GLgv/a3JfeurBbNvfatECeMj8WLq6UQjWPE6ctYETQ6HWRrN4XRc/MggWuW33mJIniOf
         hE98pwY5Eh1Rqmis3AlVVsowG9jJoHZ53kpUrwQN/q8e8kNxQtmv/9XFTbC1hlal+yuq
         yErad4hsGOLajAjV9UGsIftDc0Vz/7OXnIpukQKxtcWzxtEpniXVADeOzGlwaOBy2st+
         IuHl0VWI3OO6l7atSGpB7SCznNZv32XByBeUHCIPlX0H1ogfNtWt3fe6cN1D8Vnp5i67
         ZHiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743633590; x=1744238390;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RCUdSZJKo+DfCb7L1u9uIyzdzgr+hzjdGkAPqeN8dwI=;
        b=bpBoKO0NqlFB0rZ+PhqeiLt7tHvI7gIrb+Qq0rmvLLRYWYZak63cLbcjVJs9GHNj/Q
         bF1nbXGLmsSGE3Hv2HnooE3AXg7yj/37GFwWRSY4UOuejygnbV9kBdLw6Unc2QnAkScK
         9PcovGhQKoXSlKt+VHh/eS78OSWtTB5rHmgVRjMg/080DFLV5oDaUyocc9gBbly5uxnI
         O44ADKCcuxLDMlxujGGzRXPWqw3DhWUXSz3ydFslr2Vt5eFGTZzPbOlkyjIMc8DjIZDr
         pha2Mvq9+z8C/emVW4lOJNHBlsXQAT+qyozMy/oL8mv4CTc/fP7KFbX+VsaRVANNnwuf
         jfVA==
X-Forwarded-Encrypted: i=1; AJvYcCU+Yq/D3L7qnf7Mz2AQGu39VP5c8GflyU286OFVdX4N30Z4+wW+gKsNLeQc1gKQJWvDae9f5CBGqd0Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxsbgOMMMbVScvd54IYcy6/18+DppEcqFCsb69WBhtFbrz9Fh5G
	siownCFi9MZIounkJzi6GSaPUGXZ36jYa7qKHqJMKmuWolae/wPCx8QmRkVybQ==
X-Gm-Gg: ASbGncsjOIZSQJQsrRuI9aDC7BgVLKu/0Swa+AKOOghRxoqQFjuZXAgA+dcL2Sf6yKH
	rhsF2Q0jkXdDisAMIkgE/n4c1PlnERLsxsukwHURvZ5cAaUgVjbN3B6vY+uiX/KtKigvhqZ3LX3
	ks7fkD+eCEn50aQdPh1R5Y8e2hFPutc3xPK2TgzGu6XdZykBV9jQvEWA14WZiRnj/TxhqZWLko1
	RGN36YtcMXcDiR1R3R59JM+wZggTTOvhHhsk4yP30VH8ZqYUIfIIn0a+e+6B8Jhj/H5nZCqJii4
	nv7DMiV1+dRTAzpg7VAinriVtnI+ImJqMWRI/aHhECM1BL7MhBeZxRchSUbr8MtmXpMIQKkeUGB
	FWQnkAoQcNrpZ0Zs=
X-Google-Smtp-Source: AGHT+IF4gwMOCkgD1NLc9h9zDKSDNadcDgyOK8y59bXpjfWPpkP3E5OcoZpIKL40ijcRHOF0nPIbcQ==
X-Received: by 2002:a17:902:b683:b0:224:1609:a74a with SMTP id d9443c01a7336-22977deaf3cmr4975415ad.34.1743633589886;
        Wed, 02 Apr 2025 15:39:49 -0700 (PDT)
Received: from google.com (198.103.247.35.bc.googleusercontent.com. [35.247.103.198])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2297866efb5sm921995ad.201.2025.04.02.15.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 15:39:49 -0700 (PDT)
Date: Wed, 2 Apr 2025 15:39:45 -0700
From: William McVicker <willmcvicker@google.com>
To: Youngmin Nam <youngmin.nam@samsung.com>
Cc: John Stultz <jstultz@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Saravana Kannan <saravanak@google.com>,
	Krzysztof Kozlowski <krzk@kernel.org>, kernel-team@android.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
	tigersoundkim@gmail.com
Subject: Re: [PATCH v1 3/6] clocksource/drivers/exynos_mct: Set local timer
 interrupts as percpu
Message-ID: <Z-28sR02GhsNMnlg@google.com>
References: <20250331230034.806124-1-willmcvicker@google.com>
 <20250331230034.806124-4-willmcvicker@google.com>
 <CANDhNCqNqXfGgvo8vNof1qi3E3jejk5KBD=oedZp2_p8RKZdjw@mail.gmail.com>
 <CGME20250401163914epcas2p1a16e2b7a6ecac9f010ef6eb4c8efc6fb@epcas2p1.samsung.com>
 <Z-wWA-46L08V89qK@google.com>
 <Z+yh2UUwxUz/vRbK@perf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z+yh2UUwxUz/vRbK@perf>

On 04/02/2025, Youngmin Nam wrote:
> On Tue, Apr 01, 2025 at 09:36:19AM -0700, William McVicker wrote:
> > On 03/31/2025, John Stultz wrote:
> > > On Mon, Mar 31, 2025 at 4:00 PM 'Will McVicker' via kernel-team
> > > <kernel-team@android.com> wrote:
> > > >
> > > > From: Hosung Kim <hosung0.kim@samsung.com>
> > > >
> > > > The MCT local timers can be used as a per-cpu event timer. To prevent
> > > 
> > > Can be used, or are used?  If it's an option, is this change important
> > > in both cases?
> > > 
> > > > the timer interrupts from migrating to other CPUs, set the flag
> > > > IRQF_PERCPU.
> > > 
> > > Might be work expanding this a bit to clarify why the interrupts
> > > migrating to other cpus is undesired.
> > 
> > Let me dig into this further to figure out if the IP has a limitation where the
> > interrupts need to be handled by the CPU the timer was triggered on or if this
> > is just an optimization.
> > 
> > Any chance you know this @Youngmin?
> > 
> > Thanks,
> > Will
> > 
> 
> Hi Will.
> 
> Yes. In downstream, we’ve been using MCT as the clock event timer instead of the ARM timer.
> Setting this flag allows each CPU to handle its own clock events, such as scheduling interrupts.

Thanks for the explanation! I'll integrate this into the commit text.

Regards,
Will

> 
> > > 
> > > > Signed-off-by: Hosung Kim <hosung0.kim@samsung.com>
> > > > [Original commit from https://android.googlesource.com/kernel/gs/+/03267fad19f093bac979ca78309483e9eb3a8d16]
> > > > Signed-off-by: Will McVicker <willmcvicker@google.com>
> > > 
> > > thanks!
> > > -john
> > 
> > 




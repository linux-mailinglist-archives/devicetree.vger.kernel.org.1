Return-Path: <devicetree+bounces-48937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7F487464F
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 03:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80C2F1F24230
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 02:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF5F210A34;
	Thu,  7 Mar 2024 02:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="fxptnRNJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BFA63C8
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709779697; cv=none; b=RrEtpayMWV+C7Z7IzJVfUfa014HOsHZ2f/3oiKnzQJv1bbqnColar732MKEu7GMcOntooIXNffKp4CPxnZr4ztlYMmOSTp54T85oMENWyEE1Xhw/+0WTh8rO9RsoecWowqYik18ASIL7e1jLWzw8KMEMV6ZD0y8oTTAzepj8NS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709779697; c=relaxed/simple;
	bh=hhQPcz/fQtlI1CdDKR3YuUxD9RPVR+xBl8a8TvjoJj0=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=dzQKFOnPM4lnoJ+zHlDO3Ury6vbwRbxuFPmB+NSZX0Pb3LaDfH9Hc9HjSnRzUPqTrulSOd6kgrPXBR7BoubS04BINilAe3VNrwkNZeHCtU6Dp1VWGGogKl3wzGpGJ/jr6gsiLNHf9GszZGlQba4HU84L9cQsdDYRaaf1wdTr/fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=fxptnRNJ; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-365bd66bea9so1042105ab.3
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 18:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1709779695; x=1710384495; darn=vger.kernel.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=3Z5d/26bHgqiMApGVsGr3aD7SjWMpb6gdnyVYgaIBs8=;
        b=fxptnRNJ/TKEdg4JWbYKq2MRsqi/zofaHHlM/Gd+iX5X+7N1MjvW5NbfgUfABalYSP
         wknfsgXhks8YDmEzml+otWEUEn8Gf64owBHfyXZm8ULdiv7Ibm7GlgYoPw1l/eUN+FWF
         fnmKZQ2WpLDFbp26vgp6muJzBv/RReF4UhwfjHZe5fIXrTfSbNZDxdzc/8Pua727dus8
         q0YoOxGMZHzJb/ta4SmoSIfVccKWC9KI/LjIkf743aljyU7myu3rixL+lA5DKYhJak3z
         weFhDgo634z/+nbu90cmLbWIX4OJRnghQjOe2+ug+VK6A6em0lBerLtzerLNPODL9SeT
         EN5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709779695; x=1710384495;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Z5d/26bHgqiMApGVsGr3aD7SjWMpb6gdnyVYgaIBs8=;
        b=CSiK2nYVwGE++7zi1ksnatwNmDm/2mtyP1qYL3jJ3cPC4A7F23iSTotBZf1GQAeprW
         C/1t6wi8tuyh73296Wze78mJHXUa3M0I6rWPONjHchFxQ/HdBpRKays+QnshZcq2yFnY
         +0BjC6TsSpU8Y840JRLtbzwToa+hA15jcilX3qyUWvN1O4wVWXFor1T72OK7nIF40icF
         AOmc1nvXkuu5dTLOCwYDa1Aps619bc7/EtZjfa/N8l5zYHez8aYUtzzcACVLz208dclV
         pUkZshNOzp9Qk8NB2Rpi4iwMdwSlucON+wRpq8NSpMttoadDgUSZc+e+Ba7z6BixMZ9R
         ez7g==
X-Forwarded-Encrypted: i=1; AJvYcCVvsqiRF8EA3H6ZfYOM5q1EvyyNUInoVzLUh7qJt1kHSGh+66t/hyfARVmymuQD/816xT9MtLLYBRP5HuDeRJKdsKZPfLoWzMIFZw==
X-Gm-Message-State: AOJu0YzOhyXwgAT5ef4lfcF22NhI04T4RmoWXECPwyI6PuEp6alb/nCA
	NwB8J5u+DpClSk1xx51e8GhNzqlgS7Qn01vg5q8axD+0fjZsUGlDA+szAig1nFE=
X-Google-Smtp-Source: AGHT+IEyF0UCk5AncTHMUs17I2OeHhjTtTpuQHRLuE8Gkg6yydzKB2koqNVCqN1HEtdGNtMpZAviXQ==
X-Received: by 2002:a05:6e02:1a6a:b0:364:21b4:f59a with SMTP id w10-20020a056e021a6a00b0036421b4f59amr21762216ilv.14.1709779695359;
        Wed, 06 Mar 2024 18:48:15 -0800 (PST)
Received: from localhost (c-98-32-39-159.hsd1.nm.comcast.net. [98.32.39.159])
        by smtp.gmail.com with ESMTPSA id z13-20020a029f0d000000b00474fc6638eesm1392353jal.76.2024.03.06.18.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Mar 2024 18:48:14 -0800 (PST)
Date: Wed, 6 Mar 2024 18:48:13 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: Conor Dooley <conor@kernel.org>
cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
    linux-riscv@lists.infradead.org, 
    Samuel Holland <samuel.holland@sifive.com>, devicetree@vger.kernel.org, 
    linux-serial@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [RFC] Inconsistent sifive,fu540-c000-uart binding.
In-Reply-To: <20240304-whomever-gladly-d43da7ad2fe6@spud>
Message-ID: <229b34c1-5419-93ae-0a6f-a21cf4e4a276@sifive.com>
References: <20240304105947.SJcVAdr1@linutronix.de> <20240304-whomever-gladly-d43da7ad2fe6@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 4 Mar 2024, Conor Dooley wrote:

> On Mon, Mar 04, 2024 at 11:59:47AM +0100, Sebastian Andrzej Siewior wrote:
> > | $ git grep fu540-c000-uart
> > | Documentation/devicetree/bindings/serial/sifive-serial.yaml:          - sifive,fu540-c000-uart
> > | Documentation/devicetree/bindings/serial/sifive-serial.yaml:        compatible = "sifive,fu540-c000-uart", "sifive,uart0";
> > | Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versioning.txt:"sifive,fu540-c000-uart".  This way, if SoC-specific
> > | Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versioning.txt:    compatible = "sifive,fu540-c000-uart", "sifive,uart0";
> > | arch/riscv/boot/dts/sifive/fu540-c000.dtsi:                     compatible = "sifive,fu540-c000-uart", "sifive,uart0";
> > | arch/riscv/boot/dts/sifive/fu540-c000.dtsi:                     compatible = "sifive,fu540-c000-uart", "sifive,uart0";
> > | drivers/tty/serial/sifive.c:OF_EARLYCON_DECLARE(sifive, "sifive,fu540-c000-uart0",
> > | drivers/tty/serial/sifive.c:    { .compatible = "sifive,fu540-c000-uart0" },
> > 
> > note that the driver has a trailing 0 in the binding while the yaml
> > description and the DT part does not.
> > The 'sifive,uart' has a trailing 0 where the 0 denotes the version UART
> > IP.
> > 
> > Was this also intended for the fu540-c000-uart binding? Should the 0 be
> > added everywhere or removed from the driver?
> 
> I suspect that the driver is what's incorrect, given there's little
> value in putting the IP version in the SoC-specific compatible as it's
> a fixed implementation. I'd change the driver to match the bindings.

Agreed


- Paul



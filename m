Return-Path: <devicetree+bounces-67940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 381AB8CA324
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 22:11:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BCD821F2183C
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 20:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666251384A8;
	Mon, 20 May 2024 20:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Xf3/A3yu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B916926AC1
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 20:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716235905; cv=none; b=DPvZEkz3bb2BM/jNf450plbBMpW4tEn5WyEHuxkHYqb2H/dNrl6mExG8M/zplGcn+NSaDKuTCh9yw7nIeNJJu2PzlNTaKnTXloYYARs/SDTD84Q5MJTlMcGv1nJSmCOCLKGtppTq8mzQiGE87lsWxZwEg959F1vwbcmCnM7Ybkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716235905; c=relaxed/simple;
	bh=3mK/XupUfbYiEhVWmSK+krmIhOz4u5ZP0yn/RTc9hLU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o//mNXdTNHOiO2Gil2d00QyPrLxgd/60hInh5sNEU/soubCeAPMGS4cRR/+NlMRR1H3Ejucsb9o46slQA0uFQw0Eg5+UbTjFudSNYa9rireuAcxBMu/BkFNIkmnwtjpWZQHE107jsGyJr27iPNzMKW3YOLkb9YvCrVsF6jNp+fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Xf3/A3yu; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1e651a9f3ffso83200595ad.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 13:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1716235903; x=1716840703; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9PM2o5jNXfuRUuP6TxEIEBudbQR4NtCgVAI1O+sTf7U=;
        b=Xf3/A3yuqqkAKOCO9daG3tXGDreCYNT054DCLigkb7sSdPafCb4tqmTSUABdoiayP7
         2IS5/1PNjM+/gW0TjiWwO1qHJtEhb6X2wTSFzMwb9KMVQUYPhy5h35tOANl67t3DHqo8
         KM4fZTTzj23+UryKu1tyCIxXErixdm2v9RTDRoNNOVzq1eHw54R8fbq4tDX6DyQqMN6q
         qvRCzs83iDdXrPX6qljisZPmjlFC9HmMaP/BViMIb2c/08uzH9wgt4uf5juvcutkE11L
         Y95kLIdJ7tVn0y5UGQk3S8rmSWooyWjRjCgF5rDb4TjHQDX8YCf4TiDarGpU8o0X73T0
         PoMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716235903; x=1716840703;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9PM2o5jNXfuRUuP6TxEIEBudbQR4NtCgVAI1O+sTf7U=;
        b=tEOlfQEr34flTQC/CAH7/minAVsDyMdHdVX2bro2t9yyeUJFV0NMAoIcVz3w+i5XS3
         MZqs0IOvokzh2uyPE41cN6NAgOFQPrh7sNrrZ/z2SX2Jeg4Cq7e+Y0aU0ehy3NweS+hX
         dnO/McSgiM8MAAatSyOq6ga+5CnenkSHYXeyn72YJOwZT7IvjquftpCyrWt9oC037/iY
         /crH63PiBagK/w9DjgKWY/6eFjP1N45RaqESZBMCg0dmYp1APBrmo8Z3FAZkQ5QO/lvH
         JIdKiAKzi37jLEgoiItAKiUQbFJ8N2oeD+Mbt3FaSN8CMQybEuCaAWFJ9NUk32P+O9By
         5kbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpupaLDZIUM98th1dVpgQUgFfLgSCFpPjm7h/dCzEsZ3jghf+jHrYkENYKfMyzWWbPrj1EPcROdlTJebyOJuNAjVuDcXbNg4QCJw==
X-Gm-Message-State: AOJu0Ywloa1EuN9rLjN0yAIYqRUsf0gOh7nvrrhiU3xRtH+IYqOnLLqB
	qObxLqyh96QJwYwnfQKDR8B0kmi6MAS9vCq0/5PJ/GsEqFQS7fLv9IxJuBHZeLY=
X-Google-Smtp-Source: AGHT+IFRZhmOYJwGAcLbXRL2uDIeayGTe8D9hUj1uP1w+nEBbftf22Y46efOclD6gUxBji0DKSfZog==
X-Received: by 2002:a05:6a20:3c90:b0:1ad:9394:2d30 with SMTP id adf61e73a8af0-1afde139a99mr33701775637.37.1716235902866;
        Mon, 20 May 2024 13:11:42 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a9d94csm20112830b3a.95.2024.05.20.13.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 May 2024 13:11:42 -0700 (PDT)
Date: Mon, 20 May 2024 13:11:39 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Jessica Clarke <jrtc27@jrtc27.com>
Cc: Conor Dooley <conor@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Palmer Dabbelt <palmer@sifive.com>,
	linux-riscv <linux-riscv@lists.infradead.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH 0/2] riscv: Allow vlenb to be probed from DT
Message-ID: <Zkuueyrdv3z5QfsR@ghost>
References: <20240515-add_vlenb_to_dt-v1-0-4ebd7cba0aa1@rivosinc.com>
 <A9EDD470-B8EC-4644-82A0-7444729EF885@jrtc27.com>
 <ZkVAYeNnvj99YHXt@ghost>
 <6DDF33DF-07D6-4230-8674-F91A91660686@jrtc27.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6DDF33DF-07D6-4230-8674-F91A91660686@jrtc27.com>

On Thu, May 16, 2024 at 01:58:29AM +0100, Jessica Clarke wrote:
> On 16 May 2024, at 00:08, Charlie Jenkins <charlie@rivosinc.com> wrote:
> > 
> > On Wed, May 15, 2024 at 11:25:16PM +0100, Jessica Clarke wrote:
> >> On 15 May 2024, at 22:50, Charlie Jenkins <charlie@rivosinc.com> wrote:
> >>> 
> >>> The kernel currently requires all harts to have the same value in the
> >>> vlenb csr that is present when a hart supports vector. In order to read
> >>> this csr, the kernel needs to boot the hart. Adding vlenb to the DT will
> >>> allow the kernel to detect the inconsistency early and not waste time
> >>> trying to boot harts that it doesn't support.
> >> 
> >> That doesn’t seem sufficient justification to me. If it can be read
> >> from the hardware, why should we have to put it in the FDT? The whole
> >> point of the FDT is to communicate the hardware configuration that
> >> isn’t otherwise discoverable.
> > 
> > Yes you are correct in that vlenb is discoverable on any conforming
> > chip. However, the motivation here is for making decisions about how to
> > boot a hart before it is booted. By placing it in the device tree, we
> > are able to disable vector before the chip is booted instead of trying
> > to boot the chip with vector enabled only to disable it later. In both
> > cases when there is different vlenb on different harts, all harts still
> > boot and the outcome is that vector is disabled. The difference is that
> > with the DT entry, no vector setup code needs to be ran on a booting
> > hart when the outcome will be that vector is not enabled.
> 
> Why does vlen get this special treatment? You could make exactly the
> same argument for the number of asid bits. The precedent in the kernel,
> whether RISC-V or other architectures, is to not do this. You can
> detect it, so you should, especially since optimising for an
> exceptional, unexpected error case is not worthwhile.
> 
> >> As for T-HEAD stuff, if they need it they can have a custom property.
> >> Though naively I’d assume there’s a way to avoid it still...
> > 
> > T-Head does not expose vlenb on all of their chips so I do not know of
> > any other way of getting the vlenb without having it be provided in a
> > DT. That was the motivation for this patch in the first place, but
> > making this available to all vendors allows optimizations to happen
> > during boot.
> 
> How does userspace read it then? But if T-HEAD need it, that means it
> should be a thead,vlen, not a riscv,vlen.
> 
> Jess
> 

I'll let Palmer decide if it is reasonable to have vlenb allowed to be
placed in the device tree to support cores like ones made by thead which
don't support vlenb. Otherwise I will replace it with a thead-specific
binding. 

- Charlie



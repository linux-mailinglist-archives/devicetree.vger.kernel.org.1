Return-Path: <devicetree+bounces-159423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B77BA6ABD7
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 18:18:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 806D43B8A4D
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 17:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6239B22424F;
	Thu, 20 Mar 2025 17:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="YHgsKRfP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f73.google.com (mail-pj1-f73.google.com [209.85.216.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121902A1A4
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742491099; cv=none; b=CoeBIy90OHng8m4lCDRzUQcVFlJpBTi2fA6uCNz9xgrP5lnS5y6fqWD71el2t5PiRtY2I9uT9/z+mAiNJbjdAEPLkd/7NLbeKBuaUlYYIdqkSpQJobf1T0psGpULLTOcOKYfH6oJmeUWfXSynuzMLe9PWM3ruspmK0OrlNkWtGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742491099; c=relaxed/simple;
	bh=88p1w7uEcFSCHYKOCDuBHPZGg/x3AAPkfIOOrr6qmRE=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=f4ZJc21TH1rtQHGN4ZzjDawbA2VXlxHZyPlLaLn83Ru/V3To0E++G7YoK0jiE8qkUcEprGSclNxkoAgxP/k8TpRgjNNsDrJEbgJT/8wgnhUMNS7nAq57Elltc4gNRr+WtUAI5zFXX8UyCoUS4uUBLaVAN/GrkUgKCHS4M4BO2Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=YHgsKRfP; arc=none smtp.client-ip=209.85.216.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pj1-f73.google.com with SMTP id 98e67ed59e1d1-2ff799be8f5so1727985a91.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742491096; x=1743095896; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=88p1w7uEcFSCHYKOCDuBHPZGg/x3AAPkfIOOrr6qmRE=;
        b=YHgsKRfPf2/nBiD260ANuo5qn3IAPdiMNnoxnuLCprv9Owqxk5Kkyo2SoDWa0RKRol
         iYMIEdX4+eG2ZvmRhzvtBhrl1gmZYGhSpNf/vEAUhBK0Tw7zHng1MqpbWWQ0gFfi6pxi
         /6OJkbLTti8JDeCXHBxE836tbZjU8J1WurYsSEKnCUV0dGmm1dVrsuvEAQw/0gsT1rHz
         xrqNSOY/MDRaul1Gi2uPBL8SH+zeyMa1J8KqHa1PZTKTN8WJTaIwUXHk4Wlz++7DyqQD
         1YSBxXLUNKdZdpp4Vm319W5pi7CadEuoygSUsLKjeq2reBB4BwSGpKokHYshcLLJ2fzE
         jeXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742491096; x=1743095896;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=88p1w7uEcFSCHYKOCDuBHPZGg/x3AAPkfIOOrr6qmRE=;
        b=Hrq/Ns8MnhbLCE47rC2OknMC6wWgkmlghaeSUc7bpD7ec5amBjzFBwJ8MbZlg3wlqG
         g+PS/T1gAslme1mVKgizXq55/co1xLRb06HilCjIsyL0fX1JDrgkEd2D3Ak7yiiUp8YB
         ybJI7+lHBK4gqZq9hqxmiy8FnzPu1ACrlXGAA7pHRwT2ImozHV8kFcYcQWidZWMBc5mv
         lEmmQlxq+tjbaHvSvnYRr4LQQ7kZNDRubmWctBYtopJcFNTXEg9O/R92PshT/YyLkdNP
         aHhQbGz0Fawr0FoZ2uzgZMfwj7YErBR+idUOO14thmBl5ccHxFaGRfNHkzZqNi1M4KWc
         rGyg==
X-Forwarded-Encrypted: i=1; AJvYcCWbiGLTBUlLcQXaF3DCbSwrGjZ8ryVAkbjSHmXDoBnntUxSVVEP2hqq0gFJhON0E1Rg4KdbWXzGOpTq@vger.kernel.org
X-Gm-Message-State: AOJu0YxaASdatjwpEK1IuKvh1gxGtexCzYKz2vrGln/OhGS5/WWjrOmz
	p7w9XkNkBHOtYeRyFr2+ghs725FE1l0UzYpU8EoOunqJ03DPboktGeJ303nUHiMCg41bdt4fuZc
	HYOVtfEpI1/gJJ1AR5Q==
X-Google-Smtp-Source: AGHT+IGpaoCewgRhvYW5fa+HpkkDxI6GYIKVShvL+72MGW8IdbGecEsEYFRFVCnEraF7VtF/dPJ/f4MPXZFrOdbn
X-Received: from pjbpq9.prod.google.com ([2002:a17:90b:3d89:b0:2fa:a101:755])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:2707:b0:2ff:6488:e01c with SMTP id 98e67ed59e1d1-3030fefe3e4mr5163a91.29.1742491096376;
 Thu, 20 Mar 2025 10:18:16 -0700 (PDT)
Date: Thu, 20 Mar 2025 10:18:02 -0700
In-Reply-To: <d5f7379c-c66b-47f5-bc97-eab90ab34346@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <d5f7379c-c66b-47f5-bc97-eab90ab34346@kernel.org>
X-Mailer: git-send-email 2.49.0.395.g12beb8f557-goog
Message-ID: <20250320171802.2325561-1-changyuanl@google.com>
Subject: Re: [PATCH v5 11/16] kexec: add config option for KHO
From: Changyuan Lyu <changyuanl@google.com>
To: krzk@kernel.org
Cc: akpm@linux-foundation.org, anthony.yznaga@oracle.com, arnd@arndb.de, 
	ashish.kalra@amd.com, benh@kernel.crashing.org, bp@alien8.de, 
	catalin.marinas@arm.com, changyuanl@google.com, corbet@lwn.net, 
	dave.hansen@linux.intel.com, devicetree@vger.kernel.org, dwmw2@infradead.org, 
	ebiederm@xmission.com, graf@amazon.com, hpa@zytor.com, jgowans@amazon.com, 
	kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
	luto@kernel.org, mark.rutland@arm.com, mingo@redhat.com, 
	pasha.tatashin@soleen.com, pbonzini@redhat.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh+dt@kernel.org, robh@kernel.org, rostedt@goodmis.org, 
	rppt@kernel.org, saravanak@google.com, skinsburskii@linux.microsoft.com, 
	tglx@linutronix.de, thomas.lendacky@amd.com, will@kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Thu, Mar 20, 2025 at 08:10:37 +0100, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On 20/03/2025 02:55, Changyuan Lyu wrote:
> > From: Alexander Graf <graf@amazon.com>
> >
> > We have all generic code in place now to support Kexec with KHO. This
> > patch adds a config option that depends on architecture support to
> > enable KHO support.
> >
> > Signed-off-by: Alexander Graf <graf@amazon.com>
> > Co-developed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
> > Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
> > Co-developed-by: Changyuan Lyu <changyuanl@google.com>
> > Signed-off-by: Changyuan Lyu <changyuanl@google.com>
> What did you exactly co-develop here? Few changes does not mean you are
> a co-developer.

I proposed and implemented the hashtable-based state tree API in the
previous patch "kexec: add Kexec HandOver (KHO) generation helpers" [1]
and then added `select XXHASH` here. If one line of change is not
qualified for "Co-developed-by", I will remove it from the commit message
in the next version.

[1] https://lore.kernel.org/all/20250320015551.2157511-8-changyuanl@google.com/

Best,
Changyuan


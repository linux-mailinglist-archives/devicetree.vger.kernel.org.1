Return-Path: <devicetree+bounces-159422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCC9A6ABC7
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 18:16:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5581E3AB766
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 17:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08EE91953A1;
	Thu, 20 Mar 2025 17:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="jifhEwLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885D236AF5
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 17:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742490959; cv=none; b=Y0+MyfiOYBY3sxHU1wqxd7bKnai86VVDMNUqwBVM+kPRMELyG7fc+yJBgDU/Sajz8IZm5MehOj59ypBKK9qdWY6c5P4cfwoFkg+6cbOJgE66/YPA8WvIKZZ9cklkP9RHtRp019lNLlVfdgbj0vcEe+QAHiHWzNI0O/QVmakXZFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742490959; c=relaxed/simple;
	bh=5vcA7VYkAbR6dJ4uPGsop0RCD9nTLsdEHjU7/It/kNw=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=NZDdhrCIR1PeLiJ0ayLrNGKfwHVaEqrvrtYwYfgT6mz/w3T+V2EJbnsOenHpLJHZhibV2Qs8GolNpHTB6UJgAzw7vKE1uMLp769IXNBkZcySzpf3jaLCbUxFlWmFvCQT+BRB02lsL8aPj+GZ135/omPjEZ0N9yeg5EW3FIWtZoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=jifhEwLO; arc=none smtp.client-ip=209.85.214.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-2265a09dbfcso26126745ad.0
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742490958; x=1743095758; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=5vcA7VYkAbR6dJ4uPGsop0RCD9nTLsdEHjU7/It/kNw=;
        b=jifhEwLOsTmmg5SUxzZWE5IxMAgs2cJJVvZbiOjzWcRSVWZJpiS1cfWoE628redgEY
         B5IV5a4SaTq3FhFbEzMyl5SOsQaAUXvA9xOgF/L9UodHJqLuVOSnfvraIdmt2kD7BgiC
         ehZNktjwN/w5rUZAbCMmnmPxIopUz5upyawMHaSp/rxxm47ktCL4FeC7xmaborOPImLY
         JDdPo+wo6fCoMIpRbMKh1TjbJ3pHrOt0R+t1BZlYK7dCikcidmYetkANKEIhne5Q+mGk
         Vs6Fbb+5G2sxpsZrox5rSOR+Y4VhAxN4v0yhexTML2kpb3k/C+RB0E/Q4Hbh72J9P2sx
         /vdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742490958; x=1743095758;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5vcA7VYkAbR6dJ4uPGsop0RCD9nTLsdEHjU7/It/kNw=;
        b=q9ybWlbmZqcCyLp+2VzXmSmvHoWm0tUhRJD8jkPpfvZZGk0Tv+B6W6DLJ3sTVljCVG
         Oh06zlFku4tBqI+9SyKlx89oSMYwK3Cp1XQ6Y24xqOYdLTOxu7jTANf1NIL809Iv1XwE
         haZ5FuIyThjcLlVNa2FN5bYmSOzqku8fTrHtjcmH9eqVS4QdtHfyOoLrtuVcePjgP7Oh
         /1WucdkqV6ynLlENghpUVky05jThmNuDOdNFIjdBYG6VN9a9xXAy173nTcH4lMMc9nNy
         ZrqoIunfSt3aI5f9H6RozQSeOIQENQ/enA5iPjNadZtnFcNN1pqCTDSE/rfpiXBBl7Sr
         aihw==
X-Forwarded-Encrypted: i=1; AJvYcCUOPk+tOUfbMjDIhE7M1qA5SO3qQ6KkHy1t2+MAwlf7gylz9L0Pmm/7BO3qwPdov7fEwmP0Yl4pGi2b@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm5H81pliQ0i0QOXouuojlfRCah4hHTqcO9JPRue9wApl+nFF1
	ed6Uc0IL92QiNSASleybwVOjYpI2HzPa1mYhSxLjLzE8NTstB23A1sQAimrRrkutemiXK4fVtyr
	KgIJa7wjpRBIcuytApg==
X-Google-Smtp-Source: AGHT+IFSTOZJPhF0A6p4zYu8XqyFCbfj+1u7L3mgdhQb13y/kwPpTEfBMQ3apw/ZGc9/6LxAV+vBXTVj5vs9bXs4
X-Received: from pfbkq8.prod.google.com ([2002:a05:6a00:4b08:b0:732:6425:de9a])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:b55:b0:737:678d:fb66 with SMTP id d2e1a72fcca58-73905955db0mr383661b3a.5.1742490957851;
 Thu, 20 Mar 2025 10:15:57 -0700 (PDT)
Date: Thu, 20 Mar 2025 10:15:45 -0700
In-Reply-To: <16b14662-d69b-478a-9e2f-a05c56f2c4ce@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <16b14662-d69b-478a-9e2f-a05c56f2c4ce@kernel.org>
X-Mailer: git-send-email 2.49.0.395.g12beb8f557-goog
Message-ID: <20250320171545.2324955-1-changyuanl@google.com>
Subject: Re: [PATCH v5 02/16] mm/mm_init: rename init_reserved_page to init_deferred_page
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

On Thu, Mar 20, 2025 at 08:10:48 +0100, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On 20/03/2025 02:55, Changyuan Lyu wrote:
> > From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
> >
> > When CONFIG_DEFERRED_STRUCT_PAGE_INIT is enabled, init_reserved_page()
> > function performs initialization of a struct page that would have been
> > deferred normally.
> >
> > Rename it to init_deferred_page() to better reflect what the function does.
> >
> > Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

Signed-off-by: Changyuan Lyu <changyuanl@google.com>

>
> Incorrect DCO chain.
>

Thanks for the reminder! I missed "Signed-off-by" in a few patches from
Mike and Alex where I did not make any changes. I will fix them in the
next version.

Best,
Changyuan


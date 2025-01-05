Return-Path: <devicetree+bounces-135680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D05A01AF7
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:31:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 959DA3A2E15
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 17:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C35CE1B3955;
	Sun,  5 Jan 2025 17:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IE9PJi0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C0E1607B4
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 17:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736098305; cv=none; b=B8nQuPW9BC2nG4hvAxEi1X97aAIJd4wdzekPLO7bGhQwHiUJL0uoG3j58KeyYJkA4/KDpiipooo9PGNM50Antt/ntSHF7SGONW5CrGHeqL0py0bEKPhzayTixoM8v37ZpW4ZRkb+AC5+PpZVNrVuwHkr3vp15jTep2tf5Y68fCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736098305; c=relaxed/simple;
	bh=YNinCBvhUmlp9xIHTUWJRrOehKs8hIgd/w14wFLskxk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mTWmX2V1pSTsaqpgoJg5vVT44oLZlmR5oBFWpQVYXAohOeRIqNUqt72r9Egwfe2v1nidtU+2no5aSDvDdHn49UUrTo9Nfze88FsjJtxji0LTWBPsvWWRgLo6pACf6Qm24IhkZjSK33W4dul/QQEEPTOqz0F+wHs0jrhqmsAbUrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IE9PJi0u; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-3022484d4e4so168479981fa.1
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 09:31:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736098302; x=1736703102; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YNinCBvhUmlp9xIHTUWJRrOehKs8hIgd/w14wFLskxk=;
        b=IE9PJi0uKr6EDcnQ8JlLeUrmrUGxakYJ1PyjmKiX/T5nGptmxpWnPW3Jf14yEY5vyt
         5gbfhs47ojPnm926McmKYgiJCk7gZjXUduEDivEKSqTIkmaRlaDSh+LYoH0f/e2IwDbM
         pyO6zONmTwyW2/EBmAUhzz7r0YDkLYHuRG8MM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736098302; x=1736703102;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YNinCBvhUmlp9xIHTUWJRrOehKs8hIgd/w14wFLskxk=;
        b=qbUr7sb/elJ5ae2xkI88RvmaoOrr4unsqWj+ObNTY0tpUS9ZVE2M9j0+RH7EWHUPgB
         w8KvDrSljRGkW9jQ3q+Tde10eixLjSVMDsgglWN1XZm+9ui9gq0xZRP5uAYMxxCMOcsm
         ob+JZbrcsbmKANMI6i1V731x4gvCHaE7CpJkIib2h/ajysj1GvIj/U1EhxJtA1QxztmJ
         lA0W+Oy7rqPpwX7yDHUeaXALQZDX0DcNvUdg7ctXOxl0X1sRDvbHmhjkfCOmbqG9RpYu
         YSFlk0svCzOx4OAbE7+6V2D39YtVsmNdq/TeK2/HtOuevo0aLdXNEX397Tsu3oEOOTIQ
         h+6w==
X-Forwarded-Encrypted: i=1; AJvYcCVQRVSTDV/Rd8Mkh+oQ+MqD09GKVKEXr9k+rD3F7q0urARE9GCNYfdaR+4gEdAORhncDO7Fmn5i1R8v@vger.kernel.org
X-Gm-Message-State: AOJu0YzAgLZGUv9QC4eOH4XrE+qkjqYES1+2WJvDDhovPZdrZFSKw3Yz
	h14Pu6C/ukbdqAC0WqTLWPzURtbOZZVtVRYZpL+Wj/PM9ht1z71xHEX7QiCnkQ==
X-Gm-Gg: ASbGnctAreFI8FYRWglRo6kVKzy+C2+4k2QwMTH8skEHUA1sC0Ud8qPrrhPWWzbkz0D
	n/gnwORula9LoOAIynEvdsU2op46Nk4UmqTkWh4kwFXKrfKgAjiViGQ7amnj0QMlAMGwcwaCre1
	iJgnu9W8YpbI5DFbOmM7n+Q9PB8OAwnjOGb6TxwiCSbXMu5yn41SZaBAN0bE0q7c+FR9OwFrZnP
	sSIQZPYEXqaAC2rplDCjGOJ1q7rZloRtbMuieXA7vnWW9nfoyNCJT7YEMG3
X-Google-Smtp-Source: AGHT+IHNk2lt3oRc6CXLXoL/mH4KoxoA24brJmbIX3sJ2LgJMB4NxdfOCxnIhU/jjlTj6yqG5IAFBA==
X-Received: by 2002:a2e:be25:0:b0:300:3a15:8f0d with SMTP id 38308e7fff4ca-3046861cc90mr211101481fa.34.1736098302121;
        Sun, 05 Jan 2025 09:31:42 -0800 (PST)
Received: from google.com ([2a02:a31b:20c3:6680:b949:2c7c:cf97:8f28])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b06a474sm52913761fa.70.2025.01.05.09.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 09:31:41 -0800 (PST)
Date: Sun, 5 Jan 2025 18:31:38 +0100
From: Dmytro Maluka <dmaluka@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Saravana Kannan <saravanak@google.com>,
	Saurabh Sengar <ssengar@linux.microsoft.com>,
	Usama Arif <usamaarif642@gmail.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	"open list:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <linux-kernel@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>,
	=?utf-8?Q?Pierre-Cl=C3=A9ment?= Tosi <ptosi@google.com>,
	Shikha Panwar <shikhapanwar@google.com>,
	Will Deacon <will@kernel.org>, Keir Fraser <keirf@google.com>,
	Michal Mazurek <mazurekm@google.com>,
	=?utf-8?Q?Bart=C5=82omiej?= Grzesik <bgrzesik@google.com>,
	Tomasz Nowicki <tnowicki@google.com>,
	Grzegorz Jaszczyk <jaszczyk@google.com>
Subject: Re: [PATCH 0/2] of, x86: Restore possibility to use both ACPI and
 FDT from bootloader
Message-ID: <Z3rB-t5ZqVu0F3OE@google.com>
References: <20250105171643.3473702-1-dmaluka@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250105171643.3473702-1-dmaluka@chromium.org>

Apologies, forgot to add v2 to the subjects. Just resent as [1] so
please disregard this one.

v1 is in [2].

[1] https://lore.kernel.org/all/20250105172741.3476758-1-dmaluka@chromium.org/
[2] https://lore.kernel.org/all/20241223181813.224446-1-dmaluka@chromium.org/


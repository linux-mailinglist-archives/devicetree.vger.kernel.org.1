Return-Path: <devicetree+bounces-79195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C608914544
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:48:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EA921C2091E
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 08:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4378D5A4D5;
	Mon, 24 Jun 2024 08:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WQ0MRE0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97F93C488
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 08:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719218906; cv=none; b=MO2RqrTriRGcj8zQIC56MlDmzgoAFTSFep1vAmlSGWJ0SpcbvYpeK0bEFy0hRncKIAgAhdmAPegNacvmPJAdRrjI6s3xaB3SIG2aCaKYbCVjCp3lTL4yLKWij9oxWHPAqRFxkG9sFLYPKNrupnw2dIBk/rjGmu27JukUYJGFHsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719218906; c=relaxed/simple;
	bh=5tg8FQPxEAdgsMy5r6wK3+Fb55nIGfOe5i0pltcrAY8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Rn8lE4GlW3mFyFsb+gyPPJ0B1UEcSe7+oHR0pGlEi2Z7qSLDIbFtb+6/Gy5K4JrMCaWkHQdZERBfcBGPPBfqUqCtsFgclv8h9mBKtPfSb0iZ4cwQvSYpaG/NA7yCcK+d4FOahrQc+OuOoxQAXFnNZzKkWjfU53koJtL2CTUJRME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WQ0MRE0o; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-443586c2091so1058721cf.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 01:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719218903; x=1719823703; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5tg8FQPxEAdgsMy5r6wK3+Fb55nIGfOe5i0pltcrAY8=;
        b=WQ0MRE0obldBaORG+RtzENoyWKeST8NuZ1iehLSag6JZLBprn+f/P+ZiGg6xrX9d+3
         oEXLaSlS4L/SL5WTgmWsPy13XCksSUVcSP4Lx9QudOaqyPBGlvdNNJq1EkxDpgtWBpLG
         ialLJgwjFqpbL0Ok7Z+u+SWhW2tTyvr+olGEhY95PHy+VXF8ZaT7LyqXEp2Jxe6V2+sv
         k+QGcKp1mWRxh9N80WJifILSLox/ivwJevND4k3OyC79iT3p76cbHrqp4kC/74yaP0OU
         Gxfsk7zIsa2PxUC9stkqaqU/ehjJ0UD8BVFbilIXbFXm7egtZqRuVfkQVWZEa7zBUBxL
         21UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719218903; x=1719823703;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5tg8FQPxEAdgsMy5r6wK3+Fb55nIGfOe5i0pltcrAY8=;
        b=QAKWzf72SdhYwxGgDaUiQgO1+CqakLS7CAqeeIjwV3Bgo68tFceXJOVxDBb+J1V4cy
         GC7m3DpWxow8MpgvaTE2+75KjdPt+ch4hdSDOUL7sqch23BhM2yXl2QdkBDdov9bN0gr
         TelASEmEbZrVW5c3YrcjkzKLBFEXNNwneuiYY+b0B1jdBFXaZnN0JzokrNXB7fdW9lVw
         e073xAFQJIv6eLv7Qt8jDEeSaz+5swdpaRLru7ADruOOrdW01Ud7tFe9yH0CTHnq63Rl
         MxqLwMkpm6h/Xc6g/04apjf6+zGWFKMMi+gEEUXO0icCUa1zL3gB5pII3D+WzDZE1qXS
         ugMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWR/IOcjEnMOqht97ncJSd+8BuzKxbR2L7O7UJQATWSONbKkacfAeR9A7SV7G0h4gkV59A3+i8v8Ui6ll8WSlNaw2QUGMl/GD5yaQ==
X-Gm-Message-State: AOJu0YzJmRhntNMSEd21FXYfV3UvPc3DnBgmgQb58XP3wX6D3WPUSLkR
	J2IeAuUBav0fm5iXD7+JN3800ejizKP5IHMCoCkF6DXjOwYIatp6b5lxUXol3SYfo1BATSggH84
	QLO0fxfp/sVLFhaatZereFBtvUx9ad0u7MQ/l
X-Google-Smtp-Source: AGHT+IHHH3rbfM8HbKt7NrhzLinrp/ljSBxeHNTlEVCPczmxbmT44rj90HeYiqkVOVpeugBhZL+gWJp1KQDIv56AB7A=
X-Received: by 2002:a05:622a:189f:b0:441:5aff:a5db with SMTP id
 d75a77b69052e-444ce38f060mr3807121cf.25.1719218903398; Mon, 24 Jun 2024
 01:48:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240611171600.1105124-1-aniketmaurya@google.com>
 <20240624052851.1030799-1-aniketmaurya@google.com> <3c053c47-50ed-4487-a18f-4439d3f2e7f6@linaro.org>
In-Reply-To: <3c053c47-50ed-4487-a18f-4439d3f2e7f6@linaro.org>
From: "Aniket ." <aniketmaurya@google.com>
Date: Mon, 24 Jun 2024 14:18:12 +0530
Message-ID: <CAMmmMt03L7ymosG8CYaRPvKZWdXrnMxHNRQJxHMycs95c5ob0Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] i3c: dw: Add apb clk
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> Where is the changelog?
Sorry, I missed the changelog.

Changes from v1 to v2
- extra example removed from yaml file, minor renaming.
- 3rd patch added to migrate to *_enabled clk_get APIs.

Thanks,
Aniket.


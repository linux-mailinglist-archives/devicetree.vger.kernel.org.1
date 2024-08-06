Return-Path: <devicetree+bounces-91248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D20029489CC
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 09:11:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 010301C21FD6
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 07:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79CF1165F1A;
	Tue,  6 Aug 2024 07:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UFXjdAQl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9710015D5C7
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 07:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722928286; cv=none; b=opmti6hMBmSolo05IL95lgcRrMFLLw8Su6lK3Zuq4DtFpdcGyZ8g8k0vprQRhhPkcuqDS0UMnpup18b3tElkkqQ3j7iTB4aTdrAw26Bube3kdILTNLVN1tljWns0mNufgrPENwVHUJ2k6q9VsT5KxgzPwguAUfanOHbbNogAK54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722928286; c=relaxed/simple;
	bh=tI4GU1v0QP1BZY9ysqmo/Gml1BncwN7bO6CnKE4Kx0Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EsqKkiPSFXy5shjJ5Rl5p80pfGjTH/kYQ2NwkluBMrIbtYwTzhuOcLI557b4UBijIMxItHhANSDD5RrG5AphHStvUZJNtBqgLcTQEW2V47SNojALMnMupYmIWwOC518xN18R76ZKHV2MxbBMGAAjJTsApPYxusMMK0OMWwriXUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UFXjdAQl; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7093abb12edso132379a34.3
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 00:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722928283; x=1723533083; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+RIwAsXuYk0edOHoe4kpP9MzqspTUeWNsrK1ZVKFbGY=;
        b=UFXjdAQl86GvXoSttkdPmwY9I5/L3706ZsaTb/AOMIvQi7W+cESzs013vkI9duONzl
         JBPJTQKeUzMfctRxK9v36xx9K/JRx+VuVUG7XnoPiU2AVUd6Fef7JQr5ulkOfoJJvM1t
         jjS+FgAdsCBY6tf4pbWBxxCQyj2fN2ZscVL/dnwUk7lwg31vjuMPKDfoBcf/SXc5+nA+
         ghnZ4v+xv1WwgfQfyh3rZnOPrAriCd7OFvXJXwiBLXH7c60Fsjyd3Nms/dCnEq6DaQEP
         YMRP80Syk38MCxKMBpSEctSwTqi0flnAgCLkMuf5EDFBbELImB2GzuTRbz7KY6Pz7d15
         lyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722928283; x=1723533083;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+RIwAsXuYk0edOHoe4kpP9MzqspTUeWNsrK1ZVKFbGY=;
        b=qIa0wmOZGaJ8y06aSzIg30zqV2EbFYPIEXrn6gRksXqGowJI8AY55+Q6Eex8IIWUK+
         I3kMZeRad7ZXumSAmCDPPD/tI/6B9f9JXUWat0t5hLV7JENi97GwIAYew0GkEEYYjnOu
         cdNMYYhfJEgg4LFZoxrAH4KcpxN/Tg2xvQHMJy/JOh4N09yLTz8YFePqI+QTQ6qV/Ofv
         g8XLUd44JbVq5Ud7EMiyzI+gejZLbn9YwmxrJG0HxUbTJj94CJBeZAPh6ftRieB9VgTE
         oe8Gm9Y4jYZoGWHXRqp1NBfLDWE3w6rXXv12meJMyXtCCMqROOOp9/ZgTB0AFgaEMdWh
         /iag==
X-Forwarded-Encrypted: i=1; AJvYcCXFrWyF4rYxe6KIoZMctpIue2V09Mhg7lY++ivWNRdXf0CPvZxFh3H+mt+OYq02n2c1C2hx7B+hlVJs@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo8upZwbYZqrhxkf5VPK0765pG1wQmsKSj5uP6bYtNrSDX1850
	FQSf8ft3CNV/TxW27bLAwOp+bBeOTAqv5maaU4g/gFc7RxPUtaDTCiubb9dUQWQ=
X-Google-Smtp-Source: AGHT+IHSQuAwc0wlZNEeglWdrw7pWA5jRN0N68RGv0ULUvD3zjb0b3ayQd1IJeatJgykr4Yyu7MK5Q==
X-Received: by 2002:a05:6830:6e19:b0:704:8660:2672 with SMTP id 46e09a7af769-709b996e591mr24753888a34.25.1722928283617;
        Tue, 06 Aug 2024 00:11:23 -0700 (PDT)
Received: from blmsp ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4c8d6a3ce83sm2098387173.123.2024.08.06.00.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 00:11:23 -0700 (PDT)
Date: Tue, 6 Aug 2024 09:11:19 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Vibhore Vardhan <vibhore@ti.com>, 
	Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: ti, sci: Add property for
 partial-io-wakeup-sources
Message-ID: <ti4ffymrixcpptlrn3o5bytoyc4w5oovdrzgu442ychai2fjet@wtdhrmwrozee>
References: <20240729080101.3859701-1-msp@baylibre.com>
 <20240729080101.3859701-2-msp@baylibre.com>
 <f0f60af7-8561-433a-a027-811015fc5e16@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f0f60af7-8561-433a-a027-811015fc5e16@kernel.org>

Hi Krzysztof,

On Tue, Aug 06, 2024 at 08:18:01AM GMT, Krzysztof Kozlowski wrote:
> On 29/07/2024 10:00, Markus Schneider-Pargmann wrote:
> > Partial-IO is a very low power mode in which nearly everything is
> > powered off. Only pins of a few hardware units are kept sensitive and
> > are capable to wakeup the SoC. The device nodes are marked as
> > 'wakeup-source' but so are a lot of other device nodes as well that are
> > not able to do a wakeup from Partial-IO. This creates the need to
> > describe the device nodes that are capable of wakeup from Partial-IO.
> > 
> > This patch adds a property with a list of these nodes defining which
> > devices can be used as wakeup sources in Partial-IO.
> > 
> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It seems my or other reviewer's previous comments were not fully
> addressed. Maybe the feedback got lost between the quotes, maybe you
> just forgot to apply it. Please go back to the previous discussion and
> either implement all requested changes or keep discussing them.
> 
> Thank you.
> </form letter>

I tried to address your comment from last version by explaining more
thoroughly what the binding is for as it seemed that my previous
explanation wasn't really good.

You are suggesting to use 'wakeup-source' exclusively. Unfortunately
wakeup-source is a boolean property which covers two states. I have at
least three states I need to describe:

 - wakeup-source for suspend to memory and other low power modes
 - wakeup-source for Partial-IO
 - no wakeup-source

If something is a wakeup-source for Partial-IO it usually is a
wakeup-source for suspend to memory as well but not the other way
around.

This is the reason why I added a property that lists the devicenodes
that are capable of wakeup from Partial-IO.

Best
Markus


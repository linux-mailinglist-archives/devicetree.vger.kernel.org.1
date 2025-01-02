Return-Path: <devicetree+bounces-135109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A05E39FFC43
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:47:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7575416125B
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 634FA17CA17;
	Thu,  2 Jan 2025 16:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+igYgTf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A241547F5;
	Thu,  2 Jan 2025 16:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735836424; cv=none; b=oBW6CDwKnwnTcR3LhYZ0NSkBdqg56AOlcf2tKwfzbSU+L4OjuEu6SoRWQnwc4eR5fA9EVA90DG2FnSqFkNiBXbW14TaokMEYckvFxQ4+xZAjA0oNr6hh0jJB79iSE8f5eHAXU8stu/9heiQOFPNP9cb07Le92/g+Lhweqz3s4a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735836424; c=relaxed/simple;
	bh=d172oorZKHQGiEs+GCMlFSyZb1uCTPvDWbk9rwOHFOg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aJUznmbsEzor5y4WM7gVAoJ6S54sBLN8/ci+j0h3OMaJV8lLez0qV6wYykJ37j4+FzSJkVjpCZfmDDgsBcAW0gvxTncfbo5uUCSc4w0xgSxAlL7x3v2NnWT0r8qbn7VBWA8yLEILdmqf7Q4MAzcjH/jwEIuW8bCRLmXA48M/GeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+igYgTf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 771E2C4CEDE;
	Thu,  2 Jan 2025 16:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735836422;
	bh=d172oorZKHQGiEs+GCMlFSyZb1uCTPvDWbk9rwOHFOg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=o+igYgTfMyNQiSuCZRB9GalOe1iwva4x4Vcfe/ZM4EhllfRvAVd3CILFWYDfgkt+O
	 +xi8CsAZgoQ7DpJuGjQxuI0MUGZTMdxDJ0OudpRIYJsvL4GOsZEHHaLxuS+Jxt8vGa
	 uWSWY7Nyg7VUyhD7UrSGf3+f5teJG1+iICmA66Ape2XmkKA3jAHOXSQyV3LTI680JG
	 FJAOyv/zJmoV0ZGhtQTMZmQ/rlP8VadwVUaTW4A3OIA2qpFnl0E/oE+1BeiBLCXqOU
	 McQea6NS/0Z84lu6a83G7OoeQm6vnkhiaWJbJV8b0Uj7/4iZEzst9Wxy63nRuDasSF
	 4GfKjvQ92V1hg==
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e4419a47887so13757125276.0;
        Thu, 02 Jan 2025 08:47:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVN5rKMT/5q7TbhgE+I4qV7XgL3o0qVKp3DCLWuI70Uohuw0W0kbVLMMxotkhfx7cEQPIM6V1eUVNI1UHVd@vger.kernel.org, AJvYcCXLiJY+aXjxFnBNLx+9X20KG0L16gEEWqvgO81Sn4YyhIBI5D8gTd7e9r6zReHcYytf5SJt39/4L02/@vger.kernel.org
X-Gm-Message-State: AOJu0YyGLmBkHYEuCJZxSQP/WdAoGifNay+u9wnzDHpP2tyF0V8kX5Vy
	nioFdXSn1B2Mb62/ocjDYwBPJoliEWtTDMroXL+I4+OsHWt6M+/tGuJFy5xusndiy2+OlRa5IRJ
	AE0bu9bz3Eguvof3yb2OuvEUL7Q==
X-Google-Smtp-Source: AGHT+IEE1OTpwUAgnIqESTpODb+JR3Jobd/qBBwtUOSG5F//KI0WU2LlpehqyiRqWBZZIpN2arXo7C/3+I2edJEoH3s=
X-Received: by 2002:a05:690c:5301:b0:6f4:8207:c68d with SMTP id
 00721157ae682-6f48207cbe0mr92594077b3.3.1735836421626; Thu, 02 Jan 2025
 08:47:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241230120315.2490-1-gordoste@iinet.net.au>
In-Reply-To: <20241230120315.2490-1-gordoste@iinet.net.au>
From: Rob Herring <robh@kernel.org>
Date: Thu, 2 Jan 2025 10:46:50 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+4XVq6-i1+96ov7ysuBhWBxvt=oLB8n7mdpAh09wvvwA@mail.gmail.com>
Message-ID: <CAL_Jsq+4XVq6-i1+96ov7ysuBhWBxvt=oLB8n7mdpAh09wvvwA@mail.gmail.com>
Subject: Re: [PATCH] of: dynamic: Avoid reversing sibling order
To: Stephen Gordon <gordoste@iinet.net.au>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 30, 2024 at 6:03=E2=80=AFAM Stephen Gordon <gordoste@iinet.net.=
au> wrote:
>
> Current implementation inserts nodes at the head of the list, resulting
> in sibling order being reversed from the .dts file. Some drivers care
> about the order and do not work properly. These changes add nodes at the
> end of the list instead, preversing sibling order.

s/preversing/preserving/

>
> Signed-off-by: Stephen Gordon <gordoste@iinet.net.au>
> ---
>
> I ran across this issue using the ASoC audio_graph_card2 driver. Prior
> to the fix, I needed to reverse sibling order in the .dts to make things
> work. After the fix, it all works as expected.

The order should not be significant. What are the nodes where the order mat=
ters?

If the order matters, we create yet another problem with overlays
because if an overlay adds a child node where does it go WRT existing
child nodes? There is no way for the overlay to express that.

> Also, I noticed that drivers/of/fdt.c line 325-330 fix the same problem
> for flattened device trees.

Obviously some platforms cared at some point. Who knows if those still
exist or not. I'd rather not create more unknown cases. Though it's
probably not possible to enumerate the exceptions here. (I'm trying to
reduce the number of unconditional work-arounds for bad DTs in the DT
code and make them explicit so that we don't see new cases and can
remove work-arounds if platforms are removed.)

Rob


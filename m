Return-Path: <devicetree+bounces-88265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF52493CFCD
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 10:46:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97B7E1F21F1C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 08:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6B3F177990;
	Fri, 26 Jul 2024 08:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="bO4k0fkB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E181F2E64B
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 08:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721983549; cv=none; b=uV7aEFnP3QmyeWg1kSmj1U5iM4lgXUd7T36/NhK/clIs/j6j7UdfocUwyRbp19T/tkf6pANko0y9lejKAYwqefpY8PNPQckWJZW3dD113DpwvVMzyuu6OcHVd7MbP99VyKfh8oTsWv2BVhAmkeF/HT0hlvZAc4rpLjHPbOTWRnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721983549; c=relaxed/simple;
	bh=cpFuacOOU9PyOYqB0WWoaM9Cjcgmb9kMiCLGqJP8J2A=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pKNIzZhd8Wq9wKpi6R19G3IZiLAt4QXcJhhWSGt5FwAjS1V8XUfhrT534d543CPS0ITj29w2gxb9PzBYADh9xU5QhIIx7zUdOcEihoWeKVc2VgsN9r/Ohy3RtQqEBLdN2ItDF2D6v5MZ5sCSgd1jyRswl0o0Gov9FNZfOVv54/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=bO4k0fkB; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D7DF83F4EA
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 08:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1721983538;
	bh=cpFuacOOU9PyOYqB0WWoaM9Cjcgmb9kMiCLGqJP8J2A=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=bO4k0fkBQRe173m3CGMT0PkuDlWQf0DRFORGVfmvJ6cLdIAMdDmlabedI2uoD7LIn
	 3FVUGPNjv7tIAjP7GLndUsNIxNiAyit4TuL37W3iUNKONaWtNmVqE4JXayJeCj2dXj
	 l6vutWhxz8LuSVhqnwiEyxMeC0bRScka3j9jZJn4t24hY1FQX9xq0/LkDZqednmL3g
	 WBu8On4K3XeSgnhf4grrQ1/GAYsHR93E3s4mQKpB4TybMPA/DQeI19CDhRi4BxclGk
	 t1LCF1d1yOVrHJgIX3kZ5lsy6tfVWL/GES9z5OQW6lfUFb4Yo5U9UdVS0OYHK58niO
	 wozh72TVF2T8A==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44ff289fea2so6678251cf.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 01:45:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721983537; x=1722588337;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cpFuacOOU9PyOYqB0WWoaM9Cjcgmb9kMiCLGqJP8J2A=;
        b=gHueXSjPM1bIzqXo1kpX3h0wvNunGqZiVVMH7edftr8YoBHfMFLOdchSq1ueoDj8ac
         yEFPHd+E3zrs9N3E9DXudExNmwVVQ91OtX1jMSJUetdouiju2WMrUpJB9dH1jWjeqhFA
         pPQLze4mkha8jq8ihSJ4oH9m4O6H1LJLkIwesErd1j7/snkMEDMts4ThL2m1G1q2JDFt
         4bpZHlgKi4jEEyFmUy+9EFs1bqBs1dWNhhgiWWB+VsTbevZXjG3XdmobJkgOMBAA1/WO
         rb4fQGlvZWtHhpzvruK3pS2wM4Az8oELQFUtRgvAawMjyJjZZtkcAM/mHqQ0Zk8XJtHj
         4kDg==
X-Forwarded-Encrypted: i=1; AJvYcCVrD61tyWELDeyGfwZdv5j/tRW7TpSfe5pLNQsNq3JLPdTaNsOnN7TYpeTcKP/INL+HYJiNlTnDwEQt/0hIUodVlwoxu+hmdKzvYA==
X-Gm-Message-State: AOJu0Yw39sYQXYzWB6Yy110rM+OtkepOMfxLMjh3hj5Fyg1LTy3HbV4G
	p6YXWA2uQ14mxCuaqKTs45aqWjKApvi4ANuY/UeMD3O42STQUKzIlmEl+KnWwcZ+4MRxzhu6jc1
	sDLZ+JRV0oLPOvxOz+4cU6pPoH9U7sJuADtwRDuPMOueROWuKktSBpEzmdpqwOVxvckB9OZkxmp
	8Ayjt2DfBDZl7BDvgNYkru4t/s8Q6928RsNIYMVbqGJ1LBcJiEyQ==
X-Received: by 2002:a05:622a:11c9:b0:446:5bbd:4802 with SMTP id d75a77b69052e-44fe92731famr52404331cf.56.1721983537666;
        Fri, 26 Jul 2024 01:45:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfWGnnFaUTMrdZkP7xOyuSJUp3K4zWzDQyC1gqU+SG7p0SaPT/1zgZF/fTQCd4H5ucjGPzcBLx8KLTXn+dlRM=
X-Received: by 2002:a05:622a:11c9:b0:446:5bbd:4802 with SMTP id
 d75a77b69052e-44fe92731famr52404111cf.56.1721983537186; Fri, 26 Jul 2024
 01:45:37 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 26 Jul 2024 03:45:36 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <57ef2eef45f2de15e6607da266b37b2a.sboyd@kernel.org>
References: <20240623-th1520-clk-v2-0-ad8d6432d9fb@tenstorrent.com>
 <20240623-th1520-clk-v2-1-ad8d6432d9fb@tenstorrent.com> <57ef2eef45f2de15e6607da266b37b2a.sboyd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 26 Jul 2024 03:45:36 -0500
Message-ID: <CAJM55Z8iF8yV5JK5v6ZtQqS5AaWwCZ7uwhSYb7hdxh0juDFdqg@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: clock: Document T-Head TH1520
 AP_SUBSYS controller
To: Stephen Boyd <sboyd@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor+dt@kernel.org>, Drew Fustini <dfustini@tenstorrent.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Fu Wei <wefu@redhat.com>, 
	Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh@kernel.org>, Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
	Yangtao Li <frank.li@vivo.com>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

Stephen Boyd wrote:
> Quoting Drew Fustini (2024-06-23 19:12:31)
> > Document bindings for the T-Head TH1520 AP sub-system clock controller.
> >
> > Link: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf
> > Co-developed-by: Yangtao Li <frank.li@vivo.com>
> > Signed-off-by: Yangtao Li <frank.li@vivo.com>
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
> > ---
>
> Applied to clk-next

Thanks, but this driver seems a bit incomplete. With this applied the Lichee Pi
4A no longer boots without the clk_ignore_unused kernel parameter.

/Emil


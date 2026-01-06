Return-Path: <devicetree+bounces-251863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D92CF7BE5
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 11:18:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E696C3011ABE
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99389322C80;
	Tue,  6 Jan 2026 10:18:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F9B315D21
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 10:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767694695; cv=none; b=Cw0hUZ0K0FHKuuCj8gec8bz4ztXtYv9SrlEqhDfFJ5tm6OThOtzEA32j4Iv/aLMDD7hu4ZcixxvTHvMwmB0DX/puiTGDiT/4p6/ZoQF14EXCKBIQndF2QU3q+JUk1uWLJMxpe4S8PFUE6n7jYkjH7VFiOhoW3AqzgpIkp3pLGrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767694695; c=relaxed/simple;
	bh=0Ztuh7rnBiKd72hyuNM3eRD+wBpJ29KQ1CLiziiADm0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iBWsYew0VBfjBwLpCTg+XMltCFW5C4znnGi4H/59fE8bW0Ax02oDCMcgiKA7KX4wPPzB3V8KIwOsM7GcGH+ZU7/9rpU8nSbvlI/30NqBP5yXJkdId+gn4slZQF15IlAEZjaE49QDFZ7NQ1InoSE8QqCw8za/EwOpTvaRf4/wJro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-55b104727c8so278222e0c.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 02:18:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767694693; x=1768299493;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iaNnR+PjYtdzuiF4fm8ih7gsuLQAM4qtZPBAO6P24MQ=;
        b=jXPQzRpKPwgwHgQs1Rmildd/9zS9ZCA28MSpTu6XMQTt1MMuBfJV/qAFnI5Te73mJC
         in4gUcy8zQjfeeETT3BuLNmeth11ypx3wlVVrYha2tyLrqtRRAFLyhxPidwPvWl6vtWT
         jOILUJ0TgGr8R8u7WUWh2pPyEAL4AQXHXIjfrAt91793TS3EScBFTnuw3u+D7s4Jdmc5
         QJO2oSUGLjVMiZYQgXQJpzXvImBOwsFQ9oVqQxQ5R74kEFDWi/WEZ5BY6mHnb3xPZR38
         Vh2PtZnuNV9GIvbbqLZp51cpCBacErxniSZgVvyg5FIxTy5LDAnOVXFu+cFbBdGhBTOy
         20Dg==
X-Forwarded-Encrypted: i=1; AJvYcCWEErGI4z7crXMhAkIZj6256uF1dV24BCA5NKheuroZ3SGxzQAwcPXzfASj4/u2v60nrKO8XFmZbioK@vger.kernel.org
X-Gm-Message-State: AOJu0YzbuTWLs30Ztvg+7Qm3QOh2qgSOsFg+7D52LBcrvOoY2fBrxJAj
	4HYQPJ9dLGSNKq7qxCFY0XlCPLcWrugm1zns9NgCRyXVcI/Mx82Gx/dI3W0ZrWIT
X-Gm-Gg: AY/fxX5rtWWbf3aPsfmVI1DEQ7cznPUic6dzANlja1gsYUxHwvmN6jsAUI4oEQhgG1C
	1C3wMGl9zEZtsZpA/5Ni2eEzU2OLqnu7Fv9O1HEyajj+vHhhGt9/AfSn6v0CYNpELm3T4IusJoZ
	c1MY+xumQ4LyDlMC8oWi4w35bEUSGv7lqe45v1ZWKJXF4RsyyBpBrqSOJfdn6PJedJ5/2Vh6Z6u
	Q7Ojs7arDVSoM+mMrAkGPeyy60/9HO6j1YNteihxUvWRW4FuaAboyb5lAqNNl5B5mvvg6/+wYao
	F1pYAvXvbqLMmum5fAIAe+o1rt7JR7B/9Jwwi8HRifgey/Aeldp5JN5HGLzTBlE51Wpf0RBHSKa
	VoioFYttwyyapO8pYb4PQ2gj9yfV7e8lwntZsM4uV3XTeK5BISi2U6KYueMLBE5JyU3u6+dCGQe
	sGOVwvgPR6jawzw3qq+IfIrsEaD44O3ZOO+9+XYSt0cOY5JV08v94XA5gmrGHYHBk=
X-Google-Smtp-Source: AGHT+IELevIzttB/CmICPM2FaQ9maoYOscywZ6OjH8vimHc+CN7ITpQTiXgQ9FeAhcreNsKObKoFSw==
X-Received: by 2002:a05:6122:903:b0:54a:a048:45a4 with SMTP id 71dfb90a1353d-563395db965mr712727e0c.16.1767694693020;
        Tue, 06 Jan 2026 02:18:13 -0800 (PST)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com. [209.85.221.172])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a1ea753sm541769e0c.4.2026.01.06.02.18.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 02:18:12 -0800 (PST)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-55b104727c8so278218e0c.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 02:18:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCViboMauJ/+0YMhi4ngvJpsKxBcYyLM1ms0SXcRj8OVd8g9uMbTI21wBse7P5wMhWqs54SVTYmyfWRr@vger.kernel.org
X-Received: by 2002:a05:6122:903:b0:54a:a048:45a4 with SMTP id
 71dfb90a1353d-563395db965mr712718e0c.16.1767694692317; Tue, 06 Jan 2026
 02:18:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217080843.70621-1-shorne@gmail.com> <20251217080843.70621-3-shorne@gmail.com>
 <CAMuHMdVCY=5UypK65Ver6UZM_m6DZuw9mhfANMx4+Y6PgNAdmA@mail.gmail.com>
 <aVi0W6syzK6buL_v@antec> <CAMuHMdUP3z4Os=3XC6Nuzx8QAap=LTcuJrGZsy71GO=NFTOjZg@mail.gmail.com>
 <aVzb6pStdagr3IUX@antec>
In-Reply-To: <aVzb6pStdagr3IUX@antec>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 6 Jan 2026 11:18:01 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXr7H_M-QO-3ty4mpycMfDHsxrDWejjw7u3RPcUqioapw@mail.gmail.com>
X-Gm-Features: AQt7F2prYcJ7L1GJNnSBejlil5cH1_t_no9UN8DCBmtBcG7ug7lF61xNlYnmN9o
Message-ID: <CAMuHMdXr7H_M-QO-3ty4mpycMfDHsxrDWejjw7u3RPcUqioapw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] openrisc: dts: Add de0 nano config and devicetree
To: Stafford Horne <shorne@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux OpenRISC <linux-openrisc@vger.kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonas Bonn <jonas@southpole.se>, 
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Stafford,

On Tue, 6 Jan 2026 at 10:54, Stafford Horne <shorne@gmail.com> wrote:
> Just curious, Do you have a quick way to enable out of tree debug patches i.e.
> to dts and defconfigs?

Keep them in your local working branch, and rebase that when upgrading?
/me has +1200 local patches :-(

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


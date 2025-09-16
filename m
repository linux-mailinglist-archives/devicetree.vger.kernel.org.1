Return-Path: <devicetree+bounces-217779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A6BB5933D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:18:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29C6E7A1821
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:17:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A80F52FF669;
	Tue, 16 Sep 2025 10:18:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23816298CA5
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017920; cv=none; b=K9XJrfIT5m78Zdf+oz2E1/KVwkQAnktPnZsmj58xPoWoWkcBlE6TujKsjvsdn+loAADyR980X+Dv+OjHwkMKXrTokVhBFK7hSZLhY8AceaPGinjiGI8Q503CmtC8d5EGXTeFIAL0tWn2j1ZKqrslpuvROXGyHFuy5RE6efp75PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017920; c=relaxed/simple;
	bh=2HZc75dZXq+Z0RKpYly9QbI31fy1NZoUzdLLkl+FAos=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ovIpvagb09lNCp2/nJTsnPT5MgcR3RMuoG7mZOqx9ItM7d5/xfY1CWmpoC25Ipse7uL6uW6fgevmxvG5dK0TCyyl3s4s4ZK2DCHizUpa/XuyrMI4vZHE0iGcmnjkazYeRc49VA3Hg20q/EapC0MaSZ4+/J9SVZPrnl9L9mSS50A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-538e108f6cfso2931297137.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:18:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758017918; x=1758622718;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hzQC5o3G/5QL6Qh+OxxIc+msYH/uvK2UseyCJUUA/QI=;
        b=TyDLvLNkFKDb+9W/ly9XiNQVxMGC7RWj67jQtYlqN/LtGayzaSouMSX7FO/KDeIrsy
         ibnrDT8aX5GEFkqA7pF4emKShxixWYDbUztb/LjwbPP39GXJNixfQGHXmG4DWZmpdmSy
         TaXp7etkS1l1sjI+rJxqqrGZVTtMDMpZ63/JdqcV/dyClvZOJhre2KkfPMeAxLv5at7S
         NX8yDk+5yQlsZ+Sp54idCELgGJgMcqekIJpRZxqpBGoTIaORUjItRhVi3PwOFgyVrz4b
         OeOkQsRrN56j75gl7LOlMYZUodF3pEdfkadYqS7ffUL6NA6VkiWFnKxNK6RnE5xG/0Hk
         xtJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVeLAjXgTWr18ctQFPu1DZIA9NWSuGoFLf+696389gpvM6klQBjNldhKrVCQLhEtHRw3mYZ94Wdf90@vger.kernel.org
X-Gm-Message-State: AOJu0YxG3Gju1RJtFrHgNqjRmt+jqhP+BaVs/Sq1cfRyD72qEaY1CvhI
	EhfA1YDOQWhXpIxyZSb0a2xzFYjYcH/OqIycyvj4qigrsjMjTxZrYalYVW5DinRO
X-Gm-Gg: ASbGncvUMD+wGlGzvtgGZc+qDEvSHcXpodloFKcgNSDfSte9k8yn0UIBraH6VjvUirI
	VaRLWpHEkW0lyFBE0f9Hrt14JJa0pfozPO2ZT1i3sVpcj/ca462LrActf9Z9g4TNE3QoXgJyMuL
	nMFPyqcWLttKNh5XRJBCfvBpofY6vL9PaX+SV4AY/UIJa5hVk9vPzkauu7y50AUaTtBt5Ks1ZuT
	cFd8QrQCoWvR7UseA73Gv8z+ShmprP46fdx1veUmoN7TI9SBbVE/PsqUt8ejNhtqwpdYVpm7lAA
	iUdqm+MAhUZJepDrJkwic8sfy2gC7XhPAUC7MLwqunaaCbf6iG6YytCyMxEG8dwwfMpZqBtisIG
	pfSCPfj7TOFrOdV/DgySICiofdB1Eo4356shJG9N+rYiGrJOPEzpN7GYh9rf+7eay
X-Google-Smtp-Source: AGHT+IE+uUWpUvMdeBxzO2oPD3OTSa+Q+JjDHBiRtWVJEEC7dnMiDd+WeEJCldUU4piTBXYYWFWd5Q==
X-Received: by 2002:a05:6102:d86:b0:51a:4916:c5f0 with SMTP id ada2fe7eead31-55610cc5eb5mr5831774137.32.1758017917775;
        Tue, 16 Sep 2025 03:18:37 -0700 (PDT)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8d7f2e71309sm1625259241.18.2025.09.16.03.18.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 03:18:36 -0700 (PDT)
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-544aa9b536eso3453397e0c.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:18:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWjv/ArKnLm629JLbl3Z0CW2VrMviUkPzJcRzY3PvdSyn6IfjkoLoNDR1DllcO6o0Uvm+EJTY7UsGzA@vger.kernel.org
X-Received: by 2002:a05:6122:c81:b0:544:7057:a812 with SMTP id
 71dfb90a1353d-54a16b7e208mr5192058e0c.3.1758017916045; Tue, 16 Sep 2025
 03:18:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87tt13i0lh.wl-kuninori.morimoto.gx@renesas.com> <87segni0kg.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87segni0kg.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Sep 2025 12:18:25 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXRNUDNnF7QVwUxbxyOCsTEdJjCuWw3-bqA0tA2uoxiFQ@mail.gmail.com>
X-Gm-Features: AS18NWA9ABGiKPyMIlR3UAj5Udf9cOnnhSw8y3TAUBDcJz0NhqQSnwO50GNAW48
Message-ID: <CAMuHMdXRNUDNnF7QVwUxbxyOCsTEdJjCuWw3-bqA0tA2uoxiFQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: soc: renesas: Document R-Car X5H Ironhide
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: "Liang, Kan" <kan.liang@linux.intel.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Conor Dooley <conor+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>, 
	Ian Rogers <irogers@google.com>, Ingo Molnar <mingo@redhat.com>, 
	James Clark <james.clark@linaro.org>, Jiri Olsa <jolsa@kernel.org>, 
	John Garry <john.g.garry@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Leo Yan <leo.yan@linux.dev>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>, 
	Namhyung Kim <namhyung@kernel.org>, Oliver Upton <oliver.upton@linux.dev>, 
	Peter Zijlstra <peterz@infradead.org>, Rob Herring <robh@kernel.org>, 
	Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>, Will Deacon <will@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Sept 2025 at 04:38, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> Document the compatible values for the Renesas R-Car X5H (R8A78000) SoC,
> as used on the Renesas Ironhide board.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Already commit 1ed2786e9ef8f162 ("dt-bindings: soc: renesas: Document
R-Car X5H Ironhide") in soc/for-next.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


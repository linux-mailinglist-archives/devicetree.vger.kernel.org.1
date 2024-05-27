Return-Path: <devicetree+bounces-69661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B22D98D0ECF
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 22:57:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6693B1F210BF
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 20:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE20446453;
	Mon, 27 May 2024 20:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xk/9zLJs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628F1381C7
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 20:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716843440; cv=none; b=GJX2rv9UITJN+5c95WiVGhz0VI7iJmbkFNh58Av/ZWbILxjuM7t+FcXxzW2nzilH78CMWN2v0UzdcM18fN1vhbYdbhI3Isza6b3iw9LnbRMNaJs7FYjJFpSrC6/MZgrFkLr32nW9xDIWjZ7hzuX0ZqzHhXVcuJJFow+nsdGf+p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716843440; c=relaxed/simple;
	bh=dAU5llq+VJ28lxxQTUliN3NMu/FYRlPYmr6Zg5lTeRw=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=qPWD6Bv0Cpvr840lb8NA55NvPmW3XxE0oYhO2WxquHnODtpatX6JXMTZfRztdQPmER4AWrimIHkkso4ZCRYfoTqacMhsUszvCCoIDw5iVVUMASAe/0eBy0bhuOX6GpgBszjh9c1enJKkNvu4f2kOuqIPM+IlB5+NFuU+If/Jwqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xk/9zLJs; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-794c3aed567so11075785a.2
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 13:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716843437; x=1717448237; darn=vger.kernel.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=e8bs9EbhcdQK3rxulMupHjqyar0ItbldeLVgIYJXmjo=;
        b=xk/9zLJsYTdy5GboBJBk1PckN7qbHsJ28bSv94nGlbu4vNHE1KgSbbI/zHJSEO2PM2
         HR59YbS+iiNv5SDz8EnHmqjsJyuDjHrNc8agtfcGqQYRkd80j5D+XIPWn9j4nNNaWcUi
         un4xBingd9aE2h9SQwviCLc0/eHbCWq+TfkQPbResU27InRA9/4t/3KJg0O8PAN6FwZl
         6J/w3dQxyR4PS1rY7dQjGqv6Ei/QIvhaHeaChQVUQuG9w5hkJ9Vv7NRvzVkhmGJTv9uQ
         xJAUlQU/0c5txpRVm18n2lpuZ+VWhIBM5oU/nHLcPxNlZHyX+dKkUVSZXzSpiAvCXPUM
         cQ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716843437; x=1717448237;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e8bs9EbhcdQK3rxulMupHjqyar0ItbldeLVgIYJXmjo=;
        b=c2cTcpqkiCKBZZFyeelgzO5XEzLv+FXSkCEusPqYFqrNFqyDBsLn9+YXWsTTpanheE
         KoJ9fhPLsWjskTC13Wyb7pjYBK9I5hJPkkm875B9Q4qEFF1B1FxQmxyifEe8Nc07rFcD
         Glp8ipajEeGApeFCBhSpe/j+0rNrH5kpgMVZQHEY18TBewbaS1KpXMV0fZwCDawbp0MF
         vTsZjAdZHuKEZmEgdWy8PJ8uCo+jxAm2S5749kvjBnJz0Jeof8oIA/Ms1Lq+Z/x8PMaS
         gBFkpNMJChwmalmCNzpvMHknvwvRiljmbrao/ZeD5HY5Tm/HJb+PWkfqOL3fhShNPsas
         VNTg==
X-Forwarded-Encrypted: i=1; AJvYcCX1oQSd3wv5iMp38Y9N3uMlalQ3BHzgc9/bz02QoTZSGVkaHP4PnX4+QDk03jD4+onYEBEiiIN8TtltMkLdPgxCSOa3t/2OFAZR5w==
X-Gm-Message-State: AOJu0YwRIQpaHnOjqCVS0BxZ83x5c1brW2Eqs6R1uV3ana5dTnV9Swm1
	+WxdCHbCJVfXYk2Lv96kPC3DA2oBQ6fl9DgEZvtsQk/0/FJM45IkDK8Zu7p2e7s=
X-Google-Smtp-Source: AGHT+IEFA5Xl71Sl0vHc2fZVv9T+NoQ5HUfuJTzWManJsQ0IRn5ypl+K46w3nAeESk2lSwtK276CTA==
X-Received: by 2002:a05:620a:4548:b0:792:e0b0:7219 with SMTP id af79cd13be357-794ab1130a1mr1438768185a.77.1716843437229;
        Mon, 27 May 2024 13:57:17 -0700 (PDT)
Received: from xanadu (modemcable018.15-162-184.mc.videotron.ca. [184.162.15.18])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-794abd4406esm325258085a.128.2024.05.27.13.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 13:57:16 -0700 (PDT)
Date: Mon, 27 May 2024 16:57:15 -0400 (EDT)
From: Nicolas Pitre <npitre@baylibre.com>
To: Conor Dooley <conor@kernel.org>
cc: Julien Panis <jpanis@baylibre.com>, Rob Herring <robh@kernel.org>, 
    Krzysztof Kozlowski <krzk+dt@kernel.org>, 
    Conor Dooley <conor+dt@kernel.org>, 
    Matthias Brugger <matthias.bgg@gmail.com>, 
    AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
    Daniel Lezcano <daniel.lezcano@linaro.org>, 
    "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
    Lukasz Luba <lukasz.luba@arm.com>, devicetree@vger.kernel.org, 
    linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 1/6] dt-bindings: thermal: mediatek: Rename thermal
 zone definitions for MT8186 and MT8188
In-Reply-To: <20240527-wife-dress-3ecaf1509506@spud>
Message-ID: <r9q3n5n4-4pqn-53so-4n65-33p432530793@onlyvoer.pbz>
References: <20240524-mtk-thermal-mt818x-dtsi-v5-0-56f8579820e7@baylibre.com> <20240524-mtk-thermal-mt818x-dtsi-v5-1-56f8579820e7@baylibre.com> <20240524-concerned-fritter-262f5e16293e@spud> <20240524-clatter-antivirus-b1939900ee58@spud>
 <61a1be10-7df3-4ba7-b7b4-ccc7f0379656@baylibre.com> <20240527-wife-dress-3ecaf1509506@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 27 May 2024, Conor Dooley wrote:

> On Mon, May 27, 2024 at 05:25:35PM +0200, Julien Panis wrote:
> > On 5/24/24 20:27, Conor Dooley wrote:
> > > On Fri, May 24, 2024 at 07:24:47PM +0100, Conor Dooley wrote:
> > > > On Fri, May 24, 2024 at 11:04:34AM +0200, Julien Panis wrote:
> > > > > Use thermal zone names that make more sense.
> > > > > 
> > > > > Signed-off-by: Julien Panis <jpanis@baylibre.com>
> > > > Removing the defines is an ABI break. If these are all the same devices,
> > > > but with more accurate naming, then keep the old defines and add new
> > > > ones. However, the GPU1 define changes in the course of this patch which
> > > > is more problematic.
> > > > > [RFC] When PATCH 1/6 and 2/6 are squashed, checkpatch raises this WARNING:
> > > > > "DT binding docs and includes should be a separate patch." That's why I
> > > > > split them in this v5. The problem is that the driver can't be compiled
> > > > > any more at PATCH 1/6. It needs PATCH 2/6 to be compiled. Should the
> > > > > checkpatch warning be ignored here ? Should I finally squash PATCH 1/6
> > > > > and PATCH 2/6 ?
> > > Heh, and there's just one of the issues caused by your ABI break...
> > 
> > Conor,
> > 
> > Would Russell's suggestion be acceptable for you ?
> > I mean, this one:
> > https://lore.kernel.org/all/ZlDMNkdE2jmFgD8B@shell.armlinux.org.uk/
> > 
> > I could implement it, but before submitting it I would like to make
> > sure that it suits everyone.
> 
> How's that going to work? MT8188_AP_GPU1 currently means 1, after your
> series it means 2.
> You're gonna need to pick a different naming for the new defines to
> avoid that. Additionally, why even delete the old ones? Just define
> new names with the same numbering and you don't need to worry about
> any compatibility issues.

Isn't this making a mountain out of a molehill here?

Seriously... none of this was present in a released kernel. The naming 
can be adjusted "atomically" so compilation doesn't break, and 
it is within maintainers' discretion to bypass the checkpatch warning in 
such particular case.


Nicolas


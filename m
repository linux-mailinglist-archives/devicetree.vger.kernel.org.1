Return-Path: <devicetree+bounces-56277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F59898492
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:03:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52B171F255F4
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 10:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C071757F8;
	Thu,  4 Apr 2024 10:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LvLnljlt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE6C74C17
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 10:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712224979; cv=none; b=huQWBG7gesOEndYpds0WSRq6+CFMaHHHVc/VUx0zQTgMloMOLQuN+E5UXV0n1wl4fiw7/VxRoo6dNAzERoo8IqN0N881Y5scG+duOfWd9+5Iruf6Tg96VV5GqMu5gecSsmv42RzIwmcsd28EdFzotZGfnq/0ITHtkvK9M92QHD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712224979; c=relaxed/simple;
	bh=GjQ6i597e+Tg5kZEZuOxHNpqIK+6JUo1PoPMIlQjjss=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Mk4ONpAvgF2rdE19Njpmr2OSPiEPzRkSLhcWntjDGBlav1lWpKY9rECYX1hMMSCSTQmsMDfuhGkCfw+nFO8yG6eqwm/nWuiTNXlKH7g7wIpk//bVqUi9SBTbudqBvDs3fwsFqKc0I56iqtJbHKcVsLXi7mMEy4hCxVYYHFGFiLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LvLnljlt; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-ddaad2aeab1so764660276.3
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 03:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712224977; x=1712829777; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WSM3SSSDRISKG2xzZd8Db84CV8c+qWu1nf3t0po6PQs=;
        b=LvLnljlt5unQGgxgL7KbB19HHX5HApqdiAJs2lZNm61Fi/nwRSPmV2MU0JaoHarWIt
         KJr3XthYcUoQQjzTlDvqS2lhH+iUK9Gxv86VbUvANtvYy9Zc2yn6/wclct5DJ0814Hdx
         AWJQOOWFlCZvsOoOfmL1Ow35LdtmFcrgRvF+AWGtxDbMOn6KMV6Fw2VNLobAt66kcMeE
         39kiLMQXPWGK35gJjSv3aZo9CQVoC9lBw8xaMHC0Buw1KVgGlFxjvbNDirVy+StLjdZ1
         pUMKbG2onmgBk9sK0njjQAHjF/fvkZcTE0eK83SWNjFpvLfrshL5zTgaCi0SR7hrKrdv
         oQAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712224977; x=1712829777;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WSM3SSSDRISKG2xzZd8Db84CV8c+qWu1nf3t0po6PQs=;
        b=r8wWjgGH7TsmNpYCB4y3qmoK35BDHTeIugOUtH0U551YfCacNyDknxxt9fD0CyyXgv
         brM/yIp223TLUYDSXWd1i0jTF2Tquv2T0tNdVVuMF8QbrhgOu1OmnUzWF37pvZGWuVNA
         DCQ3IwSjo60Tej2BKQ/fYUw5JwjsnrDJb8FJk5NWLAm5PbhWNci534itAYy2ncr9MS9m
         Aj9TxumjoINiEjxT046OMPR4v0du9a1xTjaJCegKhEBrS/HaFXZp1ubl/lDzXS3dvBlD
         2SlMj8AXeqL7Gpa4MctvK6brfCGI2YMW1684k+5Vs5FfnWVkM15iU2rMh/tJsf3gWX/C
         YfzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUAfO/lLty8rOaZUWaBMp58s6oc8s2ywPAkUhc1gOkFkDnFuLAW+eB8HJ7Di1Y85E/6WdGB30e5bXJpmFKZSOSSIHlB3gCU21b8A==
X-Gm-Message-State: AOJu0Ywrd/vZlS+W5wj9wZDnMFwtBcdriSyqy4wnJe4sxjN7QyeeOLVa
	biDIMTKZQ78RRV1VLFXtKN7Gd3wPYuYu3kex7aUrLkoHx1zqwOZuI+mozsFBp/J4jEd/+WcsTE3
	84jV3Xycbn3SIs3r9A5yV4J1/e+D9N6aWpTiZtg==
X-Google-Smtp-Source: AGHT+IFm7zNDK6Xa3wkE7uder3AalB0PkZD0+78hHLf6dJfB6CcQXZnHbo8l7Iyk/qJcWuVWDZVuQ9UpgQfDLkYdDWQ=
X-Received: by 2002:a25:1e54:0:b0:dc6:ff6b:71b2 with SMTP id
 e81-20020a251e54000000b00dc6ff6b71b2mr1790403ybe.4.1712224976606; Thu, 04 Apr
 2024 03:02:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240327055732.28198-1-yu-chang.lee@mediatek.com>
 <20240327055732.28198-3-yu-chang.lee@mediatek.com> <6dd9959e-f741-47af-b10a-1894f72ae78f@linaro.org>
 <c3ca3d90-898e-44b0-ad0f-dd78c09c5fcd@linaro.org> <f3eedfb3495bb9c28b5cbf466387c24822c5b6f6.camel@mediatek.com>
 <7ff9c4c7-3b56-4a5b-95b7-c37cbf8bcd6d@linaro.org> <b957b072d5d88ed315982e914a7f700e0ccafb83.camel@mediatek.com>
 <038ccb20-71cb-40d2-9720-ce1a0d3eac8c@linaro.org> <7f24ca2806a7199e4de6fad17b8dc1f127c82180.camel@mediatek.com>
 <c59f2f33-ad6b-469d-96be-9345920370b4@linaro.org> <CAFGrd9qZhObQXvm2_abqaX83xMLqxjQETB2=wXpobDWU1CnvkA@mail.gmail.com>
 <3b04c5344435cdb941b5d132e8f5fbfdf9188d67.camel@mediatek.com>
In-Reply-To: <3b04c5344435cdb941b5d132e8f5fbfdf9188d67.camel@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 4 Apr 2024 12:02:20 +0200
Message-ID: <CAPDyKFpokXV2gJDgowbixTvOH_5VL3B5H8eyhP+KJ5Fasm2rFg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: power: Add mediatek larb definition
To: =?UTF-8?B?WXUtY2hhbmcgTGVlICjmnY7nprnnkosp?= <Yu-chang.Lee@mediatek.com>
Cc: "amergnat@baylibre.com" <amergnat@baylibre.com>, 
	"krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>, 
	=?UTF-8?B?TWFuZHlKSCBMaXUgKOWKieS6uuWDlik=?= <MandyJH.Liu@mediatek.com>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
	"robh@kernel.org" <robh@kernel.org>, =?UTF-8?B?WGl1ZmVuZyBMaSAo5p2O56eA5bOwKQ==?= <Xiufeng.Li@mediatek.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, =?UTF-8?B?RmFuIENoZW4gKOmZs+WHoSk=?= <fan.chen@mediatek.com>, 
	"angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 28 Mar 2024 at 07:06, Yu-chang Lee (=E6=9D=8E=E7=A6=B9=E7=92=8B)
<Yu-chang.Lee@mediatek.com> wrote:
>
> On Wed, 2024-03-27 at 12:55 +0100, Alexandre Mergnat wrote:
> >
> > External email : Please do not click links or open attachments until
> > you have verified the sender or the content.
> >  Hello Yu-chang Lee,
> >
> > SMI LARB must have a power domain, according to "mediatek,smi-
> > larb.yaml"
> > Now you try to create a link from power domain to larb.
> >
> > Here is my understanding: when you enable/disable power domain, the
> > larb linked to this power domain may have an issue. Then you want to
> > retrieve de LARB linked to the power domain though the dts to manage
> > the LARB.
>
> Yes, this is what I am trying to do.
>
> > IMHO, using the dts to have this information into the power
> > driver isn't necessary and may introduce some bugs if the LARB node
> > and power node in the DTS aren't aligned.
> >
> > It seems not implemented today but during the LARB probe, it should
> > "subscribe" to the linked power domain. Then, when the power domain
> > status is changing, it is able to "notify" (callback) the LARB, then
> > implement the good stuff to handle this power domain status change
> > into LARB driver.
> >
>
> The problem with this method and why "smi clamp" is in power domain
> driver is that our HW designer gave us a programming guide strictly
> states the sequence of what we need to do to power on/off power domain.
> Using callback, this sequence is no longer guaranteed and the side
> effect is unknown...

In most cases, using the runtime PM callbacks in the consumer driver
(LARB driver) is sufficient to deal with resets. For some special
cases drivers are making use of the genpd on/off notifiers
(GENPD_NOTIFY_*), as they really need to know when their devices have
been power collapsed. Have you tried both these options?

[...]

Kind regards
Uffe


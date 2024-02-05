Return-Path: <devicetree+bounces-38627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A96E849C7D
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 15:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B62FC286251
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 14:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5A1121370;
	Mon,  5 Feb 2024 14:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="Cycndj25"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FCB22F11
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 14:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707141655; cv=none; b=QsnBN5TU3v70/fonux4I3Vb4uubS2lK+zqrkH7sokex4mQtRdfJJCwI/Luvn0Mn6ZKsIoXMiRhuAftn0LE687RORWETSGdrXoK1r4WbiGvjctbqo0sGZ9ZP1FvB+Z8wahy8YJyoyufP7IV2aqytniOP7h/XCT1Qw8g4alXFueME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707141655; c=relaxed/simple;
	bh=Nn+zFg3BF72yIkvoigw0uDhO/0F3UMA9iXOV2TIbEIg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W9bx5/HDBNtFOhUCo83AEhZujw/wecPwFlain3qQFWzKxtIFK5ifg9p1jFgKwkNieaIXKGQBnl5q/cgckjLgh739SWGTXGcbhZjKxMRD8sZh7uwNvj0BZjFru3QI/V6NhdCukka4OY260UoViwfspkAfEoEluoeW1R3QBMunHTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=Cycndj25; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6e02d355f36so667501b3a.1
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 06:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1707141653; x=1707746453; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Nn+zFg3BF72yIkvoigw0uDhO/0F3UMA9iXOV2TIbEIg=;
        b=Cycndj25eEI+wMvzGxTFuR6qiGWWuG01ksgcfF7VtVtqNuFkkoO3DHWQPQeDWj8sV3
         bG4+vPZjfNn0Jy/oF64bmsveewaC0ZY86L3+O5r0sA/Y3gso8NQoG06zhDpt5cJ7dFuq
         Tm/ERH0reBbsfp5ljEibpRYYOtmg3eovMijGudPboszNTbxZ97m5MDb/WTXu5aCl0HtL
         96EG8igto8vWb4HPX4Bv9Bpo2pCfvsft8SH/l0r2TRm111COKvmP+J+VIEhIl6awkBYT
         qXA1XJRSw8dPeO3+9N/tsNh8qsLp2d4xSVW09/beId/bAuM1uxRy9xFnc4Q490WSo1YM
         6OBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707141653; x=1707746453;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nn+zFg3BF72yIkvoigw0uDhO/0F3UMA9iXOV2TIbEIg=;
        b=wMgFvAJdTJseEr7bQe+FbjNsXXXnlQeX43hmsnRF0OaIyLonb7kt6nrECrew2Ng0NL
         jG/vxl99iObc3GYZSwyBb8may0QRtqH10wAoRWvrVDFwyIOdDE5g8sBpEf1qxSxiW4IB
         pF9a3+gwE0X+XG8xLThIXtRBT71CcQxHaT9L3xhZYFi2Poe86iORy4wKDOssY6N9mTC1
         OC//HRhuAkzAnaxpWIYLh/KfwRcu5gCi4rT6VpdbnsQZF3J7/2+XJaiDeHEShb+rTvHI
         PmcZ7iBpjSQSQNUQPoagdshPV5MahPZwbRa6InnM0weERy+cKPoNEKkjacveTQkq/WyR
         Szbw==
X-Gm-Message-State: AOJu0YxPbCS7dJ6rU+tu6hzPiI+bGUhtjOb8VNjR3Z5+y4md1iPXZaXw
	WlCsFxKfxlaXhWEjlhjXxLXsORfHx2+fJ2xym8iwFgtTjZpUaR9YJPKnyJRTAYBFsPlzik0MqHL
	GVWUY/gzj7dSC3nOdzoretcaMHbmvLMi9iGX7bQ==
X-Google-Smtp-Source: AGHT+IE8WBqBQvo8jBkPQqUNiYFekrg34j5wGyAPLwnKHJEKphSj7nJADPNOZe2xKFhR+j14cBzCk5fKYH5C+rm9Ges=
X-Received: by 2002:a05:6a00:26f3:b0:6e0:46ac:edf1 with SMTP id
 p51-20020a056a0026f300b006e046acedf1mr1825022pfw.18.1707141653501; Mon, 05
 Feb 2024 06:00:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240205110244.676779-1-naresh.solanki@9elements.com> <8714b420-58b9-4d5b-a489-31670c8d325f@linaro.org>
In-Reply-To: <8714b420-58b9-4d5b-a489-31670c8d325f@linaro.org>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Mon, 5 Feb 2024 19:30:42 +0530
Message-ID: <CABqG17jfHpi5oDt+=E925Fp6DN2OftmDEjpmvb5=3nxMt+d2iw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: Update pattern property case
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Patrick Rudolph <patrick.rudolph@9elements.com>, mazziesaccount@gmail.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,


On Mon, 5 Feb 2024 at 18:38, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 05/02/2024 12:02, Naresh Solanki wrote:
> > Driver expects regulator child node in upper case.
> > Hence align with the same.
>
> Did the driver have DT support before? I think no, so why aligning that
> way? I would argue that driver should be aligned with bindings, the
> moment you add DT for the first time.
Yes the driver has DT support already.
This patch is to align with driver:
https://github.com/torvalds/linux/blob/master/drivers/regulator/max5970-regulator.c#L381

It was aligned but I missed on case sensitivity.
Driver expects it to be SW0/SW1
but DT had it as sw0/sw1.

Regards,
Naresh

>
> Best regards,
> Krzysztof
>


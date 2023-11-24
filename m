Return-Path: <devicetree+bounces-18520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD2F7F6FFE
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:35:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDEB31C209EC
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C2AE5676;
	Fri, 24 Nov 2023 09:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v0zx82z7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88669D46
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:35:07 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5cca8b559b3so16387937b3.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700818507; x=1701423307; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3SHecEy2reWyVq6gokigk87oNgyZXlFO8Jl47Eo+PHk=;
        b=v0zx82z7YJrkPOY4HIQGap6kLX1rd/6+3BHMsh9fmv+TYO6HR5ylybSrKziMknJQ4V
         RLWvCdH7h0IJ78paYFtSLkqz1VcFSvMDqzxP/yOU93WkTYoIPg+ZUKpxrKxXNxbsvvpD
         Z3B4WdWYjS182xJY+BlfsJFLwYZTkRITmkyBRy4+MkrFCG1SrmQ9O74OGvk7/hZlH7p9
         ICqIee1v/3xAwYB/fy+sgJHtffKHqRnGyLIeuZ2HKKKsnRjjKs2EIofHH+IcTPvX8yKF
         iC36dMNL5042RhZS1awQVZIhzwWr6+qGhI+QPXhHhFu93CXCU1/6atlXVcD0BWZNvO37
         PZbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700818507; x=1701423307;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3SHecEy2reWyVq6gokigk87oNgyZXlFO8Jl47Eo+PHk=;
        b=Z4wVcRXLe8/zydUKDLTQ6A3oEDxHR1bxjvI/xmW8Cu5aMz3jolRYHJ/afklXoQSMYi
         AknqHqC1EA4G/9Mb8UZmu5gkBsL3pytNwCY3w5QgRDGpQkiEH1gmIRJ3wTJ2tufM0Lyy
         LVT74BM5Zr3KXozy8kSbWa8iviuDa/lRyllt9IvRQqweWasZM4ZAuSuYmn5t/y8gWI+k
         FjTu2NaPIZggYPbk6LJLKeoyxqneKSGX6FWZYr0DxzWWcI/Gozocgg/AT3syCMyyu5mU
         +SllRXNtU/V4FqIXS7NpakASPTG9pW7LBEpJ+BVm4a/UTGk42EdKo74pZ5wtY96YEOoy
         a4bA==
X-Gm-Message-State: AOJu0Yx1Ui9SttLjqAk3qmylWMmp+/N70UXQhX9HmjX8tqN97kktKsvR
	dBlm4l8jpIBMKKLv2ZdZIUppCcwiMA74AjRslNPtAg==
X-Google-Smtp-Source: AGHT+IHTnq655PO1TC9AIlExkPFnCObiXs+7CC9ZqZj6DdVgSgoNeNgxfsrG5JakHQ6ZBLG9MPDRP/p+13LbIsix33c=
X-Received: by 2002:a81:728a:0:b0:5ca:d5b9:9da3 with SMTP id
 n132-20020a81728a000000b005cad5b99da3mr1868805ywc.41.1700818506693; Fri, 24
 Nov 2023 01:35:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231116001913.16121-1-clin@suse.com>
In-Reply-To: <20231116001913.16121-1-clin@suse.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 Nov 2023 10:34:55 +0100
Message-ID: <CACRpkdb_1GLcusRbC6RtprDMu=Sxci9e-ew3gKUcsQQRxT65Fw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: s32g2: change a maintainer email address
To: Chester Lin <clin@suse.com>
Cc: Ghennadi.Procopciuc@oss.nxp.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Chester Lin <chester62515@gmail.com>, 
	NXP S32 Linux Team <s32@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 16, 2023 at 1:19=E2=80=AFAM Chester Lin <clin@suse.com> wrote:

> I am leaving SUSE so the current email address <clin@suse.com> will be
> disabled soon. <chester62515@gmail.com> will be my new address for handli=
ng
> emails, patches and pull requests from upstream and communities.
>
> Cc: Chester Lin <chester62515@gmail.com>
> Cc: NXP S32 Linux Team <s32@nxp.com>
> Cc: Ghennadi Procopciuc <Ghennadi.Procopciuc@oss.nxp.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Signed-off-by: Chester Lin <clin@suse.com>

Patch applied.

Yours,
Linus Walleij


Return-Path: <devicetree+bounces-12731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 845807DB45C
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 08:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DD5528131C
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 07:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 151B063C1;
	Mon, 30 Oct 2023 07:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="W4z5rNy+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7A28610D
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 07:32:43 +0000 (UTC)
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4988B7
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 00:32:41 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6cd0963c61cso2452842a34.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 00:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698651161; x=1699255961; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OS97Gly969hAZsKV6Q2Qngs0Z2OBQT8NYeJbqEJuAuQ=;
        b=W4z5rNy+uq3focv56tLoWj3G4tDBlQ0BH4exYEJltfoc2Mg61XgSm5MSrfcZMSGPG7
         7KR6kDy7jQnbsvpk1T/RvZLkZTJaAG6uCKbNhj0iQNM8SUcFeqMLLFA6nW9RylyvQElx
         38lxMzUhZ7EavxlvDgPX6hQnwOkCj0Bc3UKcI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698651161; x=1699255961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OS97Gly969hAZsKV6Q2Qngs0Z2OBQT8NYeJbqEJuAuQ=;
        b=PGoGUFVo+Mqf1EI95aRoGg+EN2k4dOnBOyYukkscyL9HrxH7tU9qgEYfq0hfBP+iSK
         fzdOnn2qjUzUGQ7dpy4AP6hj0l3rsM1GNCyzqmL8puJFln6eDd/80q2D8A/JiZAo3mmL
         ao9+FvEA3NSyMHL6wWYssp6UCaQfGtvqto02xcsyatbRkgrbWKUWpeH/fvbVo+dCKLr5
         q283inOgh8SuT47IZy7RoUZuPELzlixwLW/IGkVgcA4s0YW/lT6x/0KSus5SdKjrIAzd
         llCnylXCmm70F5ZVcBHL+hGdcQvg3onGoGABG/2ja2RVqtoLdMJihnHqErayjjfO1dAi
         UuPw==
X-Gm-Message-State: AOJu0YxSAWW8yVlSNowO+FyDkq52Lkc/yXfOdUvg3R2D/fdX+FREGp8u
	CSJ+UoL49iqFneXfd1dGL+SDnEH9LQbKzCeT3/MuEA==
X-Google-Smtp-Source: AGHT+IHL77UHTDV9OUWcsYurFmch++YSkIivuvKwbAT5lRWUVjbYbXkzJwGr33gA4/ptF3SP0jdxYIFIU1nbetPUscM=
X-Received: by 2002:a05:6830:4ac:b0:6ce:25a2:67cf with SMTP id
 l12-20020a05683004ac00b006ce25a267cfmr7644490otd.26.1698651161064; Mon, 30
 Oct 2023 00:32:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231026191343.3345279-1-hsinyi@chromium.org> <7b737537-38f2-4404-b469-c67005cdaf83@linaro.org>
 <CAJMQK-jQUHz8-hEx4DzNU3cOnN59JG1xFBPH5mUndLV-rbk+Jg@mail.gmail.com> <2a29c027-4431-4693-98d4-ba09ad46591b@linaro.org>
In-Reply-To: <2a29c027-4431-4693-98d4-ba09ad46591b@linaro.org>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 30 Oct 2023 00:32:15 -0700
Message-ID: <CAJMQK-jNa2ZTV4mSjMoPasM8TJVetExrWqZ_+6t77rVeAqqSCQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] Add a few mt8183 follower boards.
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	=?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 28, 2023 at 12:58=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 27/10/2023 23:22, Hsin-Yi Wang wrote:
> > On Fri, Oct 27, 2023 at 4:17=E2=80=AFAM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 26/10/2023 21:09, Hsin-Yi Wang wrote:
> >>> Add makomo, pico, and katsu which are mt8183 followers.
> >>>
> >>> v4: based on https://lore.kernel.org/all/20231025093816.44327-1-angel=
ogioacchino.delregno@collabora.com/
> >>>
> >>
> >> Where is the changelog? It's already v4 and still no changelog...
> >>
> >
> > v3:https://patchwork.kernel.org/project/linux-mediatek/cover/2023102521=
5517.1388735-1-hsinyi@chromium.org/
> > v2:https://patchwork.kernel.org/project/linux-mediatek/cover/2023102421=
2618.1079676-1-hsinyi@chromium.org/
> > v1:https://patchwork.kernel.org/project/linux-mediatek/cover/2023102400=
0724.57714-1-hsinyi@chromium.org/
> >
> > changelog with previous version are in each of the patchset. eg:
> > https://patchwork.kernel.org/project/linux-mediatek/patch/2023102521551=
7.1388735-5-hsinyi@chromium.org/
>
> One would think but:
> https://patchwork.kernel.org/project/linux-mediatek/patch/20231025215517.=
1388735-7-hsinyi@chromium.org/
> https://patchwork.kernel.org/project/linux-mediatek/patch/20231025215517.=
1388735-3-hsinyi@chromium.org/
>
> Usually expected is in such case to wrote "v4: No changes".

Got it. Would add this notice next time. Thanks!

>
> Best regards,
> Krzysztof
>


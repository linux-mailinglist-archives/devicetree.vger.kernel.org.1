Return-Path: <devicetree+bounces-4407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D45A7B26D7
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 22:51:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D1639282C14
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 20:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87ABC15BA;
	Thu, 28 Sep 2023 20:51:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77ABF8839
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 20:51:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEA49C433C9;
	Thu, 28 Sep 2023 20:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695934303;
	bh=+cexd9xmPLNbQCGnjBv9HJvEF+QQ1Nd1d5VSzHVzH18=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=A809uqZtFChSXtY0mrvblI9e56lh7EgcS/8DcHrR/960mCdscUPNE2FqO5VuwPnGs
	 PtjDtCDBGTI8NC5q944brmyVDbDxTJwoeR0j2fNQ7ipy2jR9tsXZgnLn7GtaQj0jD0
	 V3Us1JN08pAjwlxjxeUyoEtuD8e52Q/E7fhaODLpj5pf+UNpEnKOCnOXKq5+LDjYVA
	 YGX0ejDXUhE7CEn7sjNz47r1DcYO+r1vYNqCEBjGE1LzzH0Xz19u0irX7sjx9TCTPL
	 VOOuCrQiZ9l+BmdHkRjSS+VgrQv4bKjd3ffzWls/O0ryQilFpISeB2WEvlfyFodOT6
	 nAMBXO3Fx0zOA==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-503065c4b25so21142088e87.1;
        Thu, 28 Sep 2023 13:51:43 -0700 (PDT)
X-Gm-Message-State: AOJu0YzfltNRp1MjCuPtYhsJMqCH3cfAxvQJ8xo7+cXLqu6zdaiQSP4N
	MA4SNldPkqu4SouR1/caU8R0qEmFGYT9BU+D6A==
X-Google-Smtp-Source: AGHT+IHQjuWrzI/HJv/GQJ62u9AtMtab4xl4POez9pkIVKXQVDmkWjOO+IdPZzcbrwWIwZANLwwNhMl4ZrVYdeEIVfk=
X-Received: by 2002:a05:6512:ba7:b0:4fe:db6:cb41 with SMTP id
 b39-20020a0565120ba700b004fe0db6cb41mr2673606lfv.39.1695934302090; Thu, 28
 Sep 2023 13:51:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926164513.101958-1-robh@kernel.org> <ZRXUhSqHPt9R5Zd8@p14s>
In-Reply-To: <ZRXUhSqHPt9R5Zd8@p14s>
From: Rob Herring <robh@kernel.org>
Date: Thu, 28 Sep 2023 15:51:29 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ=rR07tQ8PgdcVRTFkbx=y5Qh1ok0JY+WPeBi7hF7E1Q@mail.gmail.com>
Message-ID: <CAL_JsqJ=rR07tQ8PgdcVRTFkbx=y5Qh1ok0JY+WPeBi7hF7E1Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: remoteproc: mtk,scp: Add missing
 additionalProperties on child node schemas
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Tinghan Shen <tinghan.shen@mediatek.com>, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 28, 2023 at 2:31=E2=80=AFPM Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> Hi Rob,
>
> On Tue, Sep 26, 2023 at 11:45:08AM -0500, Rob Herring wrote:
> > Just as unevaluatedProperties or additionalProperties are required at
> > the top level of schemas, they should (and will) also be required for
> > child node schemas. That ensures only documented properties are
> > present for any node.
> >
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml =
b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> > index 895415772d1d..24422fd56e83 100644
> > --- a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> > +++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> > @@ -91,6 +91,7 @@ allOf:
> >
> >  additionalProperties:
> >    type: object
> > +  additionalProperties: false
>
> Things have changed in the remoteproc tree [1] and this patch doesn't app=
ly.
> Please see if it is still needed.

It is not needed any more.

Thanks,
Rob


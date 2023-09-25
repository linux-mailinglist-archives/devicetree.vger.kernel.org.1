Return-Path: <devicetree+bounces-2978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5127AD0DF
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:59:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 481611C2011E
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 06:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 641D41078B;
	Mon, 25 Sep 2023 06:59:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC3A5686
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:59:25 +0000 (UTC)
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com [IPv6:2607:f8b0:4864:20::a36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70459DF
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 23:59:23 -0700 (PDT)
Received: by mail-vk1-xa36.google.com with SMTP id 71dfb90a1353d-495ea3299b0so1753687e0c.2
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 23:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1695625162; x=1696229962; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8qEI90LoSzHC7OVIZurF0tjd1Yq1runGQ/mYc0XDOc=;
        b=Vqzbn/Q+sAS971Sf0mtq97YG9LJ8YmaSizP0uS6xzRCripmVmtSEmkJa03caIZC65m
         PtnNizla3o9UyzYEKADbYk8WtA/5nhjFIKZHs7bZ+WXfyhiRfw2LreUR0pLqyTNpoAdo
         XjlaBU1tQ7wsIQR5YtkLL1SOwQz1e8W+ykzZX0cuHSJ3ZPRZuaeyKFed5MxfYHjTLFZ+
         /TWETr6LSTyembbEvq+eqP3hgT614ird0hhcooQqi5n6BvipuCGm9tLTiiEC8PFvBXYV
         xDBr+XN3Y3dW0s2EN62R2ym0/gRfWR10MRSsu/g2GBNSqBUlz79LHlAKC440S0ExoVA+
         gXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695625162; x=1696229962;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z8qEI90LoSzHC7OVIZurF0tjd1Yq1runGQ/mYc0XDOc=;
        b=Jnvvhe4+enUQ1UD439eDpJNMreHc3hJ6YwSEHRRS8ZiQS2IZsW9KkzYOZ4gPV1f651
         VSYbvyK8zU5bIs+RNdEVByPXadI8VgHMtJR2lsXgZ+BsDRoDiWOhBxHJkoehYC3fzXmI
         o6hE6BkuieG9LX40bZbPk8C9/JL4GziFrnw4ZZ/SH2lQ/6uno44cbgV0A04DotDvp8JL
         mXiOHV+5RmEgapm+9xAmSTgaYVEa7/oYN4lxWHmUMAASmEdimE4nf1vl1qNfAUHKYp49
         6o2Se4WwmNFo4obKxkZkw1SnUAtcE7Yzgoinn6pNu0I4mc9rXEPz/uRp41mVBdsdBAVa
         DY2g==
X-Gm-Message-State: AOJu0YwW4t+rY84RzkDxBIHOIAbJ2IYfy7VBHHEf0L24vfjwQd/vRIQV
	+702MxOtEA/CuQgSQ+uRLTY1xXTbggDOyk6WRSAu8g==
X-Google-Smtp-Source: AGHT+IF/Zg1NsknbtSQpgBwTNUOHG3qhF9RP3mNCyeEXfaFEh7vh3SlLepbzoDFv12Fu/M9ql+IpvbyggHe6hJYXuQw=
X-Received: by 2002:a1f:d546:0:b0:48d:3b80:fba9 with SMTP id
 m67-20020a1fd546000000b0048d3b80fba9mr1691006vkg.11.1695625162450; Sun, 24
 Sep 2023 23:59:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230913153529.32777-1-bartosz.golaszewski@linaro.org> <c574c47e-9ceb-ef83-cc92-cdc6cd4982e5@linaro.org>
In-Reply-To: <c574c47e-9ceb-ef83-cc92-cdc6cd4982e5@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 25 Sep 2023 08:59:11 +0200
Message-ID: <CAMRc=Md1x1ZVj1pfyGZf+=KULd+eujRnGQ0JM43-jd=cB4mPng@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: crypto: ice: document the sa8775p inline
 crypto engine
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	"David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 13, 2023 at 5:56=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 13/09/2023 17:35, Bartosz Golaszewski wrote:
> > Add the compatible string for QCom ICE on sa8775p SoCs.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Best regards,
> Krzysztof
>

Herbert,

Gentle ping for the binding as Bjorn already picked up the dts part.

Bart


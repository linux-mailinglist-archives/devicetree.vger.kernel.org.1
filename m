Return-Path: <devicetree+bounces-3069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D887AD40B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:02:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id BBB0D1F24769
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FB8013ACA;
	Mon, 25 Sep 2023 09:02:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0E413AC9
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:02:06 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADE01DF
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:02:04 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-59e88a28b98so87366377b3.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695632524; x=1696237324; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nca2UIy3ZqxcmeR7gNBxxvE46kZGdkpl8MwpsWDziX0=;
        b=YBfcGgaiDVK9OVRadpMx4lONJ4JXJCDEkpoWM7dguDGccoOotlR2DmJOAasDOhwADv
         Mqho5jHh8hLsvmCd1/g03OWwUE+n1jrHdEzRJ7D1fnHoDajSwW9lOOdIbzPjWPfVBW/b
         nQRst6fBVZXBneopJdjWyFNof/BQJHUhfws4YAg1f3esbSIvtaPR9OemmcXNeb0QXMA4
         uuYOoR56wnTQgI7HWQv3YGCgua/NZwfIGxPTwtfPXs7+BExD7/pMLD/ghWwgFSv74VCn
         Ha1+gryCof0zAxPzL6he4rmvxoUWoSvJdDDjs09Zs3JazawKL2m0A9qWtaOHtm8HN7CA
         Xx6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695632524; x=1696237324;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nca2UIy3ZqxcmeR7gNBxxvE46kZGdkpl8MwpsWDziX0=;
        b=cmjxt3fGbaIV6ZVrQA2BP45vMPw+dpqSHKcI2aZpWaPhPKk7DkSEy+VhoPmNnQXz/S
         El/ZaZV8pMgmcwi6g2V7IH7Hef6iFVqlltAavYOgWFfABxdqbmzZSlXtACviUyTPYAkE
         q7Uhww+OnExPfHlOuYKisEgEUjiCRoL+lqkteZ0RyJBTE0glCol6TLVPBMvd0QEOyafn
         db764fMzhqYca+VbaHhzY13zCZl/+dLtmhil4YDM0whEF1AxiAbuJ9MW/fakrc+QJ5xY
         uGVlxar5+4sgzLu7TWfwz0UGT4hUC/2StMxCYj3XfNPUfj9TVpsAjx69z6z0XW6LC6PK
         h9CQ==
X-Gm-Message-State: AOJu0Yznoa0bTSGplFjFbO+5XbRCjWsvTGFW76/T3dx3WARxXkQqv8Au
	GRHL861RoNAcRQnVCqSg6lKaLA5/rXxMYdeJTyVPFQ==
X-Google-Smtp-Source: AGHT+IFFvxRF/5haTvTbv2oRUzpo5cTXzVPsRjtWINC1IxIP9wE/Mv5C4j754+UhXKvErjyZ4KgzUXkQ53SLY4AuND4=
X-Received: by 2002:a81:6c50:0:b0:59f:5293:9936 with SMTP id
 h77-20020a816c50000000b0059f52939936mr3351847ywc.16.1695632523932; Mon, 25
 Sep 2023 02:02:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230925-ixp4xx-usr8200-v1-0-cd72a2e1ce91@linaro.org> <20230925-ixp4xx-usr8200-v1-1-cd72a2e1ce91@linaro.org>
In-Reply-To: <20230925-ixp4xx-usr8200-v1-1-cd72a2e1ce91@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 Sep 2023 11:01:51 +0200
Message-ID: <CACRpkdYWXNPnVjNhh7y4R+5MD7vBFvh7SoTu7eYHp1djH5LB4Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: Add vendor prefixes
To: Peter Denison <openwrt@marshadder.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, Krzysztof Halasa <khalasa@piap.pl>
Cc: Imre Kaloz <kaloz@openwrt.org>, Ted Hess <thess@kitschensync.net>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 10:53=E2=80=AFAM Linus Walleij <linus.walleij@linar=
o.org> wrote:

> +  "^adiend,.*":
> +    description: ADI Engineering, Inc.

Should be adieng,..

Respinning.

Yours,
Linus Walleij


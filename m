Return-Path: <devicetree+bounces-9607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5257CD8B3
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:57:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE5251C208E5
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 09:57:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDE811864A;
	Wed, 18 Oct 2023 09:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MgI4PatR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF718182C6
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 09:57:27 +0000 (UTC)
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92A74FA
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 02:57:24 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1e10507a4d6so4614212fac.1
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 02:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697623044; x=1698227844; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7BiiFcmmCiNj3LecX6OCrxhnQVAh1Ic9WQCeBx3SSIM=;
        b=MgI4PatRPBKA+BV6TtjvlZW95jOzTD0xTPpweUnYhlxK9oRpUWqFfk+vWrPF0gt7h0
         Thz3p9t2MpbddeXjttVi70daxziWR3pUV4Wem5A8d/xX/xOptgY0tkjceuCpdjI0bbV2
         cR3gYMgS6EMxeKQaqvLZUzk6sDkomz6bKn3QQykZuBm31GfqgLppXfgiaL/AeJp8wxCm
         HsshWKwcqsS5oP88aiAxOkWAlNaXRc72W9sMGW9NVL2AT1J1Ctr0HdmNuJo0veK6sIuo
         BDFUS4Ynzd2PBBagzZmc18/hbIlxyH3iA22rDReJHW/7D+l6sV1jstEu+SMPjJlWfr2B
         HcHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697623044; x=1698227844;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7BiiFcmmCiNj3LecX6OCrxhnQVAh1Ic9WQCeBx3SSIM=;
        b=l0DpWMQsxZrYh6Vapquuncv2WVJuMnp1JylUGEQPVQHkrolPvdNv/20ENlfxufHsOB
         1HelpK1z0HAVDKTYBPA4QA91vmKGRBT19SvN2shY2+spBNUD9YFA43WSllIlukVARS1n
         IqxG3HbFUCyJaDSc39lxsJxyE3HYyB62nfc/xYFA61x8XVc0WfrN5EmneY4cXtXxNSVE
         DTywiaDW31SikKLCgiyI3m6WUOSM8UIflwEa8pq8hvGjopPE6IP24prDEyr18VcRLR9F
         quRkq3SW/W6XrwUdb0thP7xEemwhK8sRpP8xv4AQQURTgPHDVltI3gnYu2bINs64Kduk
         /GDA==
X-Gm-Message-State: AOJu0Yze106xG19+L7uWxNp6xcPObololYOyZ0AoUCmLehdWOjc8Uxps
	16ebR7CzPfCTt2NN7TbYR7l13wE3cjjA+r7nTif4Vw==
X-Google-Smtp-Source: AGHT+IGgvTbYU5kAQ82x1eFJVsu/1pPvWmCD2rUCbOzwMrNjpSgu4ojXK1qUS7A/ozCqhTWYWn/CkMe98pIFz+h8TFQ=
X-Received: by 2002:a05:6870:179a:b0:1d5:8d8b:dcc with SMTP id
 r26-20020a056870179a00b001d58d8b0dccmr4682983oae.18.1697623043809; Wed, 18
 Oct 2023 02:57:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017190545.157282-1-bero@baylibre.com> <CAGXv+5FwkBU3wfyZWWaiOgzLACfMVs4Bnu2KM4oSCUa28SzXVw@mail.gmail.com>
In-Reply-To: <CAGXv+5FwkBU3wfyZWWaiOgzLACfMVs4Bnu2KM4oSCUa28SzXVw@mail.gmail.com>
From: =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>
Date: Wed, 18 Oct 2023 11:57:12 +0200
Message-ID: <CAP2ifjN-z9R=HS06RYPnTrMYondrtobkoPOJDR6js=r8astKJQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add LVTS support for mt8192
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: daniel.lezcano@linaro.org, angelogioacchino.delregno@collabora.com, 
	rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com, 
	matthias.bgg@gmail.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	dunlap@infradead.org, e.xingchen@zte.com.cn, p.zabel@pengutronix.de, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, ames.lo@mediatek.com, rex-bc.chen@mediatek.com, 
	nfraprado@collabora.com, abailon@baylibre.com, amergnat@baylibre.com, 
	khilman@baylibre.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Wed, 18 Oct 2023 at 02:07, Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> I see two series in my inbox and on the mailing list. Which one is the
> correct one?

They're identical except I accidentally sent them out using my private
email (that happens to be on a mail server hosted on my DSL line, so a
number of MLs drop it because of dialup blacklists) first. I resent it
using my work email when the error messages about that started
flooding my inbox. Sorry about the confusion - but code wise it
doesn't matter, v5 is v5.

ttyl
bero


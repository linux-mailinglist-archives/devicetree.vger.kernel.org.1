Return-Path: <devicetree+bounces-7829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C09A07C5B2F
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 20:22:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C20328235D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8E382231A;
	Wed, 11 Oct 2023 18:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mIc7jjMa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E541B29C
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:22:23 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00F4094
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:22:21 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5a7a7e9357eso1923487b3.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697048541; x=1697653341; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qYC+QdebhMUUKlBKCpFel6bZX2Qz0E1nzo8vsVmi1ko=;
        b=mIc7jjMaG1ZDFmILFtP9V5XI3F90a4YLxTcEotXm9ioLebQL0IxjAW/vbS6wKwv0+G
         0KrIb+pYeEwgwStKElirp7vDwnjP9QJrrUYGjttX1iJoeWPApp5n5v74a3rZxOmiaQ23
         n4S0hliw93Zr02IZMWndZ+00L92g8VPMLC6Ggb2/oknAd2t3aHsJahS2+20NwrJAKmvz
         hsL1MF1eoT+vhAWF9yjIwHlNG+77ooPlE7u2DBDVaRpIEJcfnyw/V44szdtk0E3KrIaR
         oa0xmdQAyNTEBWjl0LNJZbMYqGA17eXumjGSAK4uaFDckvytac1zPB5KLnnpjyiE5tUA
         i33Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697048541; x=1697653341;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qYC+QdebhMUUKlBKCpFel6bZX2Qz0E1nzo8vsVmi1ko=;
        b=D+zQThuMf8CrgFP6FepXd+ynzwOWmafSRWxRcQFcEkznaTzg9E+z/dNMWtecJlY08T
         n2RrtNnAfQa67Kow2YZq2Ojda2Tfb1dyc4hs6FOeCnPtlj7qNYRUg6QBjlHKS8RnG2Hu
         Uqk8O/VcLRGqrkcEbGJnfsozxt8H/d8r9LVPTEJbDgDv3katQhiDP+SCxky/OHbF7L0Y
         czKGOBq5kBKpTRxxtX1vRUGGkNm/0LkqjdQIB2aWhCTcyKQqFAxh7TB+4ZjHfQtGOe/F
         QFaWxM3WbcVYEvkqx8vp6cskf0HIjmr/PKgBlTN0S7oxtid44Yy2GhjkTxHO/9Uy3K9F
         GktA==
X-Gm-Message-State: AOJu0YzU5ioRzNDGirZMwrl45bEyuRGMR6iG2oRe2Mg3xSicwnmltyBD
	OYJmJ0m/1ty4H8eYTLtrJa4IoBmZq8N1i6HFhNf/3A==
X-Google-Smtp-Source: AGHT+IH6OSeUEPHZh+vLzn2xpQ435HVzxD+c+oez0BV+JJN2eTj0asKowmFmSmtRrdXE3fn2Ni2vAYMeJ4yK9Pi1Z/Y=
X-Received: by 2002:a0d:cb49:0:b0:5a7:c97e:39e3 with SMTP id
 n70-20020a0dcb49000000b005a7c97e39e3mr4964575ywd.15.1697048541184; Wed, 11
 Oct 2023 11:22:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011131431.2559029-1-arnd@kernel.org>
In-Reply-To: <20231011131431.2559029-1-arnd@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 21:22:10 +0300
Message-ID: <CAA8EJppHgCV7tcoG2iAC9CaMEsHGqm3cN7ckUqDvadnqqSNm2A@mail.gmail.com>
Subject: Re: [PATCH] of: rexport of_find_next_cache_node()
To: Arnd Bergmann <arnd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Yang Yang <yang.yang29@zte.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Sebastian Reichel <sre@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 11 Oct 2023 at 16:14, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> This function is now called from a cpufreq driver, but that breaks the
> build when the caller is in a loadable module, because of a missing
> export:
>
> ERROR: modpost: "of_find_next_cache_node" [drivers/cpufreq/qcom-cpufreq-nvmem.ko] undefined!
>
> Export this as a GPL-only symbol, like the other related functions in
> this file.
>
> Fixes: 7683a63c08ff5 ("cpufreq: qcom-nvmem: create L2 cache device")
> Fixes: a3e31b4588443 ("of: Move definition of of_find_next_cache_node into common code.")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the patch. I've also sent a similar patch at [1]. Now we
are discussing with Rob if the overall idea of the L2 cache device is
correct or not.

[1] https://lore.kernel.org/linux-arm-msm/CAA8EJppCO-q=swYOH+O2fOdUDbNzd1yz9ZoTEBswV7RmvFJifA@mail.gmail.com/T/#t

-- 
With best wishes
Dmitry


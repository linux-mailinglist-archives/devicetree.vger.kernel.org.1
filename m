Return-Path: <devicetree+bounces-1724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A76B7A7A18
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:09:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FB111C20A6E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAC5D16438;
	Wed, 20 Sep 2023 11:09:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87AF215AE7
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:09:00 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B003CDD
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:08:58 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-59bbdb435bfso67118367b3.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695208138; x=1695812938; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9jo3K5hZEHtRUmMkWajypIc1dzDZhC7YyfBmpkmzcjA=;
        b=XBQDcZDC+bnCYYOFE+xyC+TAQTVTCAnzDGY+uaCoYvczS5vhtyLNnibVmDxq3XYu24
         M9o6omgaeEWb2BiF38R+1iBwhYGYslMzeOTL+UX+3jmcq4KSuQjOQeb0zs6LJXwrjwwN
         jcRwLij3v1wWG5yZCflRWWZWowbvWfRC9INmjSkaprxLTGIqsCZIMzC0fFdcMnsgV1u0
         vWXk2pq23Uzl+shrABZ88Lttc5x1UcY03WRqh9+ECMHmPLPwQITouS6QlQ+wlXHj5vsq
         A73SEthWsek/dI2CQZcsAlx+J5hvNrxwwfybI9cpVkB+79VBNQ94lUziAsjPTbnRgKv/
         S4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695208138; x=1695812938;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9jo3K5hZEHtRUmMkWajypIc1dzDZhC7YyfBmpkmzcjA=;
        b=afuWOA0RpDs2Xm+ByiL9GgcpWVbSBglqegtPE0hqFjc4a/S3nKjzLEMxPcLHGn/rM6
         SJcqFDpxJS73nfsVfWlCoQkJupSCsWi5+LyhYy+nqFJXeAgYBHDh9xZHWpcqewvC3m/6
         uwkEHmSt2+uf3PGa/fZK7/VLitpicUPGGnVLmlUPV920p5YHdrpYm3MNbNm1SlDu3/B4
         OXRkOxLKMWBEjdonRntQO4snpijDiBRo/mjZ8sHtEHJFGwJfNq99Fmxx5rWbuU1KgNV8
         sTs6SIEVJg6EqiAJ2dtF2N6liu1cMFsYKsP06YmvHqO0BkJQAGRjAOn/cQGd3XrjA48w
         VzwA==
X-Gm-Message-State: AOJu0Yy+nb3akrs5SWNgJRzLE4urpE0PocNyLRK9T1FqkVqUjSMh+KG2
	ilkCBZW9SCK8G7TTUbNC4VIwQ55OwpoLBEJVU1rFdQ==
X-Google-Smtp-Source: AGHT+IEiI8ik+VkdOGL8Ne6V9Qo2SCzhnEr1PXNFQ7Bz4n/o9x1S/fTMugXn6kmF3YFQ+9wxYfMTDITWHbdgWvrlvY4=
X-Received: by 2002:a0d:c804:0:b0:59b:d3cd:ffb6 with SMTP id
 k4-20020a0dc804000000b0059bd3cdffb6mr2147130ywd.33.1695208137793; Wed, 20 Sep
 2023 04:08:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919101117.4097-1-tychang@realtek.com>
In-Reply-To: <20230919101117.4097-1-tychang@realtek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Sep 2023 13:08:46 +0200
Message-ID: <CACRpkdYtGhhNuBnP0MvMKiqP=wPsv=5K_ZBaWcgW3sssLrm2aQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Add pinctrl driver support for Realtek DHC SoCs
To: Tzuyi Chang <tychang@realtek.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Tzuyi,


On Tue, Sep 19, 2023 at 12:12=E2=80=AFPM Tzuyi Chang <tychang@realtek.com> =
wrote:

> These patches add the bindings and the pinctrl drivers for Realtek
> DHC(Digital Home Center) RTD SoCs(RTD1619B, RTD1319D and RTD1315E).

All patches look good, bindings are reviewed by Rob, my comments
addressed: patches applied for kernel v6.6!

Excellent work on this patch series! Thank you.

Yours,
Linus Walleij


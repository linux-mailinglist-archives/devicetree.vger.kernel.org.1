Return-Path: <devicetree+bounces-4566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AB17B31FD
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:05:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 279AD28211D
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 12:05:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4446E18639;
	Fri, 29 Sep 2023 12:05:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801381864
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 12:04:59 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DE6119F;
	Fri, 29 Sep 2023 05:04:58 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-69361132a60so193007b3a.1;
        Fri, 29 Sep 2023 05:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695989097; x=1696593897; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7GBhcGQqvqQZxAL13i6omJgdTZrHitfhltOh2mbQUr0=;
        b=hMHOTs1L4CHaclGHg2dp/MlzS1W492xzCtIN78NQw1rlpX3TCTqEt1KXDus+QlL9Jc
         u5nRlYscn5YbFBJEh6ANaVIGFaUWj0cMjZ6se01D+dkDQ2HTE/ejKY7hVk8AehwqU729
         YQQHRErUb4CRoTxBzf/2R9f4Kdc8yKFpYNRJHJ8gE1rpA8FxwPM6tGH1DlAZfEpOa+5k
         KWHAHuDraUaGov0jtebyjJCSimXLSetNLkqSEGWLsdDDvcLAtNPf4Iq9BpQMJKHWzBLX
         xMQ9XCWsb1A24QVCcNKsGVKXPxBAai3CfmYJqP6Ftv9I0LEqQVfUwQ8u+1UfF89Q7hza
         U29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695989097; x=1696593897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7GBhcGQqvqQZxAL13i6omJgdTZrHitfhltOh2mbQUr0=;
        b=UibYNefC7pKWdb5zc1ZdB+v+jbzJFUA3sYG/zg5SMWYSEWs8LX2KILzo4rjD3hrA+9
         i3/AtUFmkKEtGNJ3j3cDVFDVGJxqqyf+Kgd3ZomIoc0o4/xJnQAYAd2YPLpdo9krR/uk
         qOXTfhN1KSL0Hd/1e+c/td+UCzavnu5t0eNy2qZ34edWvWd4xBAYo68hT44Fh7gQf+9i
         0t69GTXomdmR53sdKPUFFw0Qtf154Lb8a5sYyD3gNwaTWlx2e1COTnH1HeJCpRnEJZQL
         Lr52PLb4cVLmOv12g74rWija+t4vuP6ULjZ3GMvgM/idRW5YRJ7hLaql89QVYo7Nz9TW
         AFfw==
X-Gm-Message-State: AOJu0YwQ408vhVHwZOKRsxXDe7R7eX82ukW3EH9WfXGXo9jEutgso8FG
	uaRU1wtaEOyavvzJsqjnofCoB3jyt18d4fSxHvA=
X-Google-Smtp-Source: AGHT+IE7F4kUa6hw4bYKIDfQjIY+btq/zRykJ17s7vk9eAIhlG0NZv8n84ZA/EgQC4MFz6WqZZ+BbC008l/hOV6ZKQQ=
X-Received: by 2002:a05:6a20:3d87:b0:13d:fff1:c672 with SMTP id
 s7-20020a056a203d8700b0013dfff1c672mr4092741pzi.4.1695989097490; Fri, 29 Sep
 2023 05:04:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230928121424.388019-1-festevam@gmail.com> <avoixz5pqixr366cqks672akniv7h7ewix4edoyikg23dv24fd@bquxelr53t7t>
 <20230928155446.GA568091-robh@kernel.org> <orsrzyiaykfoqb5uritwbz5bgovxn4wviijinzlim2cy3qffhp@5zuy5ffp7kmo>
In-Reply-To: <orsrzyiaykfoqb5uritwbz5bgovxn4wviijinzlim2cy3qffhp@5zuy5ffp7kmo>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 29 Sep 2023 09:04:45 -0300
Message-ID: <CAOMZO5C53kGiCwoNSNe9-L0XgB_OsmQ9uwrFZBD+L==jc31-Kg@mail.gmail.com>
Subject: Re: [PATCH v2] media: dt-bindings: hynix,hi846: Document orientation
 and rotation
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Rob Herring <robh@kernel.org>, mchehab@kernel.org, sakari.ailus@linux.intel.com, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, martink@posteo.de, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	Fabio Estevam <festevam@denx.de>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Jacopo,

On Fri, Sep 29, 2023 at 3:30=E2=80=AFAM Jacopo Mondi
<jacopo.mondi@ideasonboard.com> wrote:

> Should I send a patch to or is Fabio interested in doing so as
> part of a new version of this patch ?

Feel free to send it, thanks.


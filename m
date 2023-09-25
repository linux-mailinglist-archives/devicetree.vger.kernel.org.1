Return-Path: <devicetree+bounces-3284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6FD7AE0CD
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 23:32:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9165C28166F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 21:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89D2A241E6;
	Mon, 25 Sep 2023 21:32:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E06E224F0
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 21:32:24 +0000 (UTC)
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3C5A109;
	Mon, 25 Sep 2023 14:32:23 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-277317a0528so797845a91.0;
        Mon, 25 Sep 2023 14:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695677543; x=1696282343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R0cNA3EaSVmsYu9QxDDsHD94yx8yfChNW/aqJ51lYBQ=;
        b=GX6eeEt6lclOrmJ7p6dyeqydCBfCezpSyz2xD9QLZmGF6WIJrYIRl1IkzkS52fk2xW
         H+emv5UfnzYI7QpRol8XCt+B0oQm3jAVYlKyhQNpEtLhldLR1bxgWAGVwhHm7Pjv5a8N
         lSsS0DZeFOGYfeWDNF2ektiGKVv4BupA0LPwrlpltLS/Gy2lu4SUi64MBXKFVJSsm0K2
         0RqFrhuqyheYD8aPWyKc+2rUT2mE8FKSiAcZFPo9eT9liMafBZZi92GAZiAD6IFsH+wP
         qn9ZBJe1zPJGcscpZxceggun2z4E+ipR2jdbQ/c+4rq74JpYic3mnX39NiDoXUrUqCbd
         MdhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695677543; x=1696282343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0cNA3EaSVmsYu9QxDDsHD94yx8yfChNW/aqJ51lYBQ=;
        b=BKckISYuwgrhqbVIcFl5/lEcdIrNGxym8Z99ItzItETZG3NSZtEAQ64/Gw7fZBlNSF
         j9SBaIIMYAEBHWJx6QCJHFGCDGwqO1pOpm1yLqJ6F1eFEUzXCO5hiWwNlS/9m+um8AnG
         HJpkdNThgbPOHnuEMepyOYnwmPf+P71pk6DSM67EcUqMseWdwGT4LUii1Gh5Bl472/FH
         S2R3KvTQ3l21+f58vu9jZeHl5Us9y8usNiYa4WYF90HGqd26NncoxqHigEhz3EqbGXmF
         jTRD9k9O3Imc4iDZ2lW/75Bj1isnI9bhVUKxmVbFd1G2/e/+LGmyUHc/WAbmw3iW35Gs
         2zDg==
X-Gm-Message-State: AOJu0YzXIN1BapEBxwpC1XEMNcJk30XDsRZu58yw+6VtDlfCegctX2XI
	i3PfqLlOdZ7hzVVC7cz71Qemu5DuilovhRVCtYY=
X-Google-Smtp-Source: AGHT+IG2RHEFAgO1KOL4SjQ+HfFV2u07O4bvq0wg67cGF0+Y/i8xnU8rdGcMGusRTU6I4rYF2JgUoCY4cH8cd1HEEis=
X-Received: by 2002:a17:90a:1541:b0:277:653b:3fef with SMTP id
 y1-20020a17090a154100b00277653b3fefmr2533655pja.3.1695677542997; Mon, 25 Sep
 2023 14:32:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230925212639.1975002-1-robh@kernel.org>
In-Reply-To: <20230925212639.1975002-1-robh@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 25 Sep 2023 18:32:11 -0300
Message-ID: <CAOMZO5DcorCnGx5XWA_4J_sE+wifrqRYcmEnUZOyT8QnXAXkZQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: bus: fsl,imx8qxp-pixel-link-msi-bus: Drop
 child 'reg' property
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, Liu Ying <victor.liu@nxp.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

On Mon, Sep 25, 2023 at 6:26=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> A bus schema based on simple-pm-bus shouldn't define how may 'reg' entrie=
s

s/may/many


Return-Path: <devicetree+bounces-5975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B58DF7B98F6
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 01:55:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 663E52814BB
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 23:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BCA7374E1;
	Wed,  4 Oct 2023 23:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YYd4n2yn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7F9328D4
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 23:55:27 +0000 (UTC)
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8DE8FF;
	Wed,  4 Oct 2023 16:55:21 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6c6591642f2so70354a34.1;
        Wed, 04 Oct 2023 16:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696463721; x=1697068521; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jdaw17TPVHGyiD6Tf0no/oLm7Yt30YHHY3DBw59SSIQ=;
        b=YYd4n2ynZn5qBiLgpNmfFY1UGdWB5gWI/eURgD+2VQ7o/a8F9fL75IFzYIdx/q6llX
         94r3xcmB9qQUuJssNwKkcZbFgSfHtFppaUH3MMfyUGLi+X3/vRkEz1nicPhb5Q4/8Xdg
         nH4BP5s1Zu8ChyLu0x/3ADtVoUMu0h8WyvhQ+ev27tXhs5kNEir1SCFXkDC+QT9lcXtK
         r6gMZxq/sBahBWMYWcr/PcWA8+sEX+m5f/GuOUloMwH1RD5ZB6wDFpGGnikT6peLdhvh
         /+EWB7bWY+A6aBQkyLBQDifRqZ0WC4NvAECtUDHC6+9QoRof4dQ37e2sTUWISjL8lAaS
         0AVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696463721; x=1697068521;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jdaw17TPVHGyiD6Tf0no/oLm7Yt30YHHY3DBw59SSIQ=;
        b=n4Zv84plgZgQN5R7rfBjKe9j6wjYaOGNSK7jx1rQSyDUuY4TV6n7er6qWE9HGUXMBq
         E6iMFEvinx3lUKqIYzWy6Zc2BPxyqwcCf011gq1VdHvbKl3Lax4oNCSYvBwkExiNRuY1
         7JxmWG3117d4+uK58clfUaIS556O/28r8PqVhlG4qmJc5eYX/a3FHLTr3kp+oYiE+EDS
         zLJ1OXwTk7t+CrjRRRlTNhAzo9BW/V6ssv5fcTmCjLjD/FXUUN3WjZmSm8rz5mBb2ypT
         TVt4F9BFZB+Qx0/8fopNIOyABmZPhOTK97fjOjjL4thrgorkIidwxWpHqgdjvWmshTUi
         Qf9w==
X-Gm-Message-State: AOJu0YwGBQJjB4cF9XDCuxKOxDr3bb7/RO9UKnRxOgnCr9EvzmXI4e3x
	+KWSureXaTtzTaToWenC4TM6oDxJ4ENcOF1TYVZgYirsq8Q=
X-Google-Smtp-Source: AGHT+IGu+C6bXd32JPd8K3bHik/ZwSwKR6Kd0CF97BR3ckZJlN+4uKlr1OG6TaNIANLEdoYDeQTdNIzlsAe0ZuO4BgE=
X-Received: by 2002:a05:6359:639d:b0:14d:2d2a:97f9 with SMTP id
 sg29-20020a056359639d00b0014d2d2a97f9mr3653612rwb.1.1696463720943; Wed, 04
 Oct 2023 16:55:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231004230159.33527-1-aford173@gmail.com> <20231004230159.33527-2-aford173@gmail.com>
In-Reply-To: <20231004230159.33527-2-aford173@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 4 Oct 2023 20:55:09 -0300
Message-ID: <CAOMZO5BaxoQ9YcFyzVuhoUsLO=wXpMtZDwrGd-XoCaH9-rj3hg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mn: Add sound-dai-cells to micfil node
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 4, 2023 at 8:02=E2=80=AFPM Adam Ford <aford173@gmail.com> wrote=
:
>
> Per the DT bindings, the micfil node should have a sound-dai-cells
> entry.
>
> Fixes: cca69ef6eba5 ("arm64: dts: imx8mn: Add support for micfil")
> Signed-off-by: Adam Ford <aford173@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>


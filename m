Return-Path: <devicetree+bounces-3877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 321B07B0500
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:13:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C9BAD2819AB
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 137522AB4B;
	Wed, 27 Sep 2023 13:13:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FF4CC8E2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:13:04 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBEC9F5
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 06:13:02 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4053c6f1087so102269955e9.0
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 06:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695820381; x=1696425181; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LjEJIhDS4gJpPQVa0J4l2zKN5/ndNnbpVlOxJdWLqKM=;
        b=c8Y3x1WcwRvo4IaarbstEepAo9/jsgo7oNS1O98KGpfc2N7OiyGXxLML1DpsmS+vyw
         RUiYh9GcfTkHW7diVTuAlWI/fSOf44j5AQ6M3kxMRToP4hFFatZHXqISzUZd2N4R6y5f
         IC6nnMigBnsPgwwfEE2UQPyQnaHDCLnO+DcafhBk3EYbhjyslw3/6k55HM8fZk8ohx/n
         a32Q65WnAZDf3k0sLA+1aKrzpakx7c4Gs8zfVc1QXJCR0L+aL5DqZ87Hq0wFVjuWDT/J
         I7NOSRSnUlsqig2cKbkYKt76zWwMKAiS6mfv5h4P6VcslmksraXlrbW70Z37MQUqrMnX
         YJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695820381; x=1696425181;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LjEJIhDS4gJpPQVa0J4l2zKN5/ndNnbpVlOxJdWLqKM=;
        b=rTIKxtUnvJ+lmtMFK1nUnJewG05FxmhxQpCYWmWC4wrYA6CLXFd7VgCX2H1Y9Wa2mj
         4sJSeKoadKfYeGI9ZDRtPOC1YUc1JGpbxrsB7UaW6h59zaRAVhdp+6OFy21KU3422A5z
         mr5LYs4OEWGS/Un8lKAFE/MoBExdxkwQMwalXB01ZGFdKrfWti5EubvUYaCDC/qsDfND
         VyT48DUZjfZTRWi4raXzVUf21Ey2+8WO6u7Pj5chsbBfkqpyprjwtqHTL7AryY6yUFEM
         4tjSf2vgmCwTerlMKtmBNUydbTtQu09mXPaExiYgfXXpik3MuWq54GHGPPVbfyVSkvUC
         wN6Q==
X-Gm-Message-State: AOJu0YwlnMMmQCWkDklR/mWJ8BZA4J9I6+zovfObuzYvwzahdKQHtCMS
	kbur6QOCtuhEx7lT9FbfYAhtwg==
X-Google-Smtp-Source: AGHT+IEwVtUCx/Tt513h6sD4GTqmeMlw1bFudbkMznlk83J31/qYCbn5yBepxFngnTxWI51kMnSPpA==
X-Received: by 2002:a05:600c:2604:b0:3fe:d1e9:e6b8 with SMTP id h4-20020a05600c260400b003fed1e9e6b8mr2086160wma.12.1695820381191;
        Wed, 27 Sep 2023 06:13:01 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id y1-20020a05600c364100b003fefe70ec9csm1865074wmq.10.2023.09.27.06.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 06:13:00 -0700 (PDT)
Date: Wed, 27 Sep 2023 16:12:50 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: wangweidong.a@awinic.com
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	perex@perex.cz, tiwai@suse.com, shumingf@realtek.com,
	rf@opensource.cirrus.com, herve.codina@bootlin.com, arnd@arndb.de,
	13916275206@139.com, ryans.lee@analog.com, linus.walleij@linaro.org,
	ckeepax@opensource.cirrus.com, doug@schmorgal.com,
	fido_max@inbox.ru, harshit.m.mogalapalli@oracle.com,
	liweilei@awinic.com, yang.lee@linux.alibaba.com,
	u.kleine-koenig@pengutronix.de, yijiangtao@awinic.com,
	colin.i.king@gmail.com, trix@redhat.com,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V5 3/8] ASoC: codecs: Modify the code related to the
 property
Message-ID: <c442a175-f04f-44ea-b7ee-a6de81963f4c@kadam.mountain>
References: <20230927121634.94822-1-wangweidong.a@awinic.com>
 <20230927121634.94822-4-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927121634.94822-4-wangweidong.a@awinic.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 27, 2023 at 08:16:29PM +0800, wangweidong.a@awinic.com wrote:
> From: Weidong Wang <wangweidong.a@awinic.com>
> 
> Remove the "fade-enable" property because other properties
> already implement this functionality.
> Rename "sound-channel" to "awinic,audio-channel",
> this is to be consistent with the "awinic,aw88395.yaml" file

This feels like it should be split into two patches.

patch 4/9: remove the "fade-enable property".
Btw, which other properties implement this.  Can you add that to the
commit message?

patch 5/9: Rename "sound-channel" to "awinic,audio-channel".

regards,
dan carpenter



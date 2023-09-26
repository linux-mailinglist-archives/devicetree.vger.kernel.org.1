Return-Path: <devicetree+bounces-3457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F5C7AEE10
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 15:47:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 044421F25B09
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0ECE29422;
	Tue, 26 Sep 2023 13:47:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8182026E34
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:47:01 +0000 (UTC)
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98C2A95;
	Tue, 26 Sep 2023 06:47:00 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-77412b91c41so460570485a.1;
        Tue, 26 Sep 2023 06:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695736019; x=1696340819; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HoEvBtWhyms91Wk0krqHULnviTnuUoiVYm+WuAD7to4=;
        b=nIWl9RvZwRpHyBurEMWJurzHd+Jn0qXBgirQp1nfpKSta++0Lh9p+SGmMin148aoAM
         5TBj/+KPO6rMNfuN05meekxlQS6xam1XgtHGPr5BVou13SLd/8VCC4kP7wjR25ucAr3Q
         iiKsyTSij4GJl+UeII99dYMnB1G5H/mRoSO9YQTtGnY3ys+aglo6l9UUtUzCDjrosOi8
         rkxvxOXV1yKWQbEjPWKQrFPhjV91VsELNnUASnVcqrjiadDI72eKgw/2kvFiNxKcRhLy
         FH7pUJ7cfuZcaQK4BFywvJGaJbEtXln9vLeI/swAh0KM3yp+WaOB9Ovy4uySRswyOHT8
         4ypg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695736019; x=1696340819;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HoEvBtWhyms91Wk0krqHULnviTnuUoiVYm+WuAD7to4=;
        b=nGKx3mt6fjSN6Uq6AFCC49RseRNzr4IQqIFLm2yGBtXf/9noE6Iy10CtmjWYowcdGM
         bpROHcdck9A1l4s/zOFQMwCrZsLlXjXmS+/sWadwZDWsHdBx4jO1UWTR63M/f82ty54I
         5FExd98s1At7Hw9IgyNR+2M2K48CM3jGkVPCHTcUDnSWyhSmbk3CaouIRdgAp/Jz5Euc
         0fMR2Gpj2ggABIajs65wo5FORVmb/vUByaohBICHuBI6uAp38nHxZE/Qz+68L4QFAgK4
         4P21cXNzaV3OloE62GP+5kFKyvPHea6bbvr7xWWNbdBeP6z5MqtqlnN5lEiy6UJMxDSD
         NTpg==
X-Gm-Message-State: AOJu0YwuWwNnDO006jc868O354d21TH2FaWk8U7yDvGnLdZNBdDOpL3s
	rhe4c+mPdKFYnSk6HDTp/qLKnFSy2zptj9foj84=
X-Google-Smtp-Source: AGHT+IGykYB5UPsLfPurQ8CQ1MugnOgrqtxif6zRnr9Gfu3wgFJzWTtijtU76jcjvMCgb/r3a6fl0Vhvn4akvSD98b0=
X-Received: by 2002:a05:622a:1495:b0:419:50c7:f6de with SMTP id
 t21-20020a05622a149500b0041950c7f6demr1629063qtx.39.1695736019585; Tue, 26
 Sep 2023 06:46:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Jonathan Cormier <jjcf89@gmail.com>
Date: Tue, 26 Sep 2023 09:46:48 -0400
Message-ID: <CAEzfL1kA5PMgPRFoce6R3Oi9fr0d2eN17sPqenWwKhqy3KLw_g@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] drm/bridge: tfp410: Add i2c support
To: Jonathan Cormier <jcormier@criticallink.com>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com, 
	andrzej.hajda@intel.com, Bob Duke <bduke@criticallink.com>, daniel@ffwll.ch, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	jernej.skrabec@gmail.com, jonas@kwiboo.se, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, 
	Mike Williamson <michael.williamson@criticallink.com>, neil.armstrong@linaro.org, 
	robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

How do I bump this patch submission?


Return-Path: <devicetree+bounces-9518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 800E97CD469
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:24:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE3611C2098F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 06:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 757F78F6F;
	Wed, 18 Oct 2023 06:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FLck6fm3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1852EBE5D
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 06:24:11 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29783123
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:24:10 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53e70b0a218so6336220a12.2
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 23:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697610248; x=1698215048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h0LSTDW6faOOZtWiReUGEV1kCZbo9a6/NHU8SOiXxrc=;
        b=FLck6fm3Q50JXB/FT7td+1zfeI+Pj4RhU0M8Dt//vNxC6vtJw93rxQc6VSyEGKz1Tp
         FOZan8trl2/3xGDNeX7Y/0qxJqIqCr50BIHBZOGf8iDwK+mZiwRGMYKMxmSJXoqC2XaO
         ZnF/o1KGSZ/gn3Jj6V5YDJyw8vRrvwIGGIAnnTdx1r1w5n3N3cFJ/aNybbfETGPK6RD4
         3uEHOajYE9VeDSwafuEC5eIAdsxqiEMB1KUKT60ZLyGdZf7iXgFf8xdPyJXYfppozTMJ
         1P2o0VGytDp54t5YPwWsBmLKMZZa5mOEg2OTQ7723PQEx/6GKS8Y+GPs4knFTVHMWITH
         xs1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697610248; x=1698215048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h0LSTDW6faOOZtWiReUGEV1kCZbo9a6/NHU8SOiXxrc=;
        b=fVbizYhZwUARvSuLPut6/84CG0A9PQAqig1S8IUplNJ+QaWp+vOG+42ZS9UqCJjUlz
         uREGhWr44MUTd1Uaf4uIxeYYkqNe0zQAlsc1z88MBxG0rYEHs+vpghNo9HaPuYd/ccbk
         6eVQ+p8lMV5SUJ5txM5diYrmmNzTKTus3thx1j6t5XeeAQoY892OLgkzFuacHcVo+4XO
         D0nFbq5trQSKZDthigML0v0Av8LPoH+10eXsWob+0LM870/MstdFfgFBtLTGmJxOVywO
         izKUfTHjlBSIALjvLSJeemm2f+k4WjGFivGUBldcpEA4fsDAivx138U/1XURBlEzSKoy
         Pa1A==
X-Gm-Message-State: AOJu0YwOE85agfrYgRfesk9ZHF5y35SL/vqFxEKKx8j/7KnUvnR0K/A0
	Mwpi3SjLBlfH19Fk4NAb0OsZ5g==
X-Google-Smtp-Source: AGHT+IFkxm1MnB5ryqx/bxdOF9swb/7TUQl4dvCNn74j4MyU/6anDE4hDdxSnnwnnJXSJnG7ob0naA==
X-Received: by 2002:a05:6402:4314:b0:53e:1b:15f5 with SMTP id m20-20020a056402431400b0053e001b15f5mr3286742edc.39.1697610248609;
        Tue, 17 Oct 2023 23:24:08 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.154])
        by smtp.gmail.com with ESMTPSA id h15-20020a0564020e0f00b00530a9488623sm2242277edh.46.2023.10.17.23.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 23:24:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: linux-kernel@vger.kernel.org,
	Raymond Hackley <raymondhackley@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 0/2] ARM: dts: samsung: exynos4412-midas: fix key-ok and use Linux event codes
Date: Wed, 18 Oct 2023 08:24:04 +0200
Message-Id: <169761020952.14892.6591419387867673696.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231017101402.62740-1-raymondhackley@protonmail.com>
References: <20231017101402.62740-1-raymondhackley@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Tue, 17 Oct 2023 10:16:37 +0000, Raymond Hackley wrote:
> Input event code 139 stands for KEY_MENU, instead of KEY_OK as node name
> key-ok inplies. Fix it with correct event code 0x160.
> 
> Use event codes with linux-event-codes.h included for input keys on midas
> in addition.
> 

Applied, thanks!

It is however very late in the cycle, so there is a chance this will miss the
merge window. If this happens, I will keep it for the next cycle (no need for
resending).

[1/2] ARM: dts: samsung: exynos4412-midas: fix key-ok event code
      https://git.kernel.org/krzk/linux/c/25e20eedc1d63dcdf6f781588e8dbc37cd0aad16
[2/2] ARM: dts: samsung: exynos4412-midas: use Linux event codes for input keys
      https://git.kernel.org/krzk/linux/c/4a48fa417abc5b86da393c93ab63a9160076a248

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Return-Path: <devicetree+bounces-2845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1450D7ACB84
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:02:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A582F281A8B
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51081DDD3;
	Sun, 24 Sep 2023 19:02:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12B0DDD5
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:02:20 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58C22FC
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:19 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4053d53a1bfso38739315e9.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695582138; x=1696186938; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yOPMhTAVaQhtNbRhJ+PsIxV5cVPsXuHbP91ZaQJ9gxo=;
        b=OBpY8IajXqjvblAPJgepPkmTMtVOU/C213xwLpDbTcxexyZ8BRYUAYZ8Cn6DEFLp/g
         niUA84jbFejBSB6kTg8re+ePcXC4IVbmU/A8cbiwrLVXYrHVK7qyiBcciNM21NIhDCh7
         A8usDycbJCyOGY0mH2SdMTDUNrOmLTROu2qxmW64jxgMmbkRjD+HrPiLOj+QlK/TyN2a
         ZhfJVuCwASDSDWvuRjyFpNDFPt4gMH7/UXFyr4udHDAKsbElhNCmWOJslrdeMNh0wgjT
         1ftQQKZz2K8S9J9nlshca30YZu0aaXUq754T1g4Q8IQGA8JQXRiRlnROEq9ycxptRBG4
         blTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695582138; x=1696186938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yOPMhTAVaQhtNbRhJ+PsIxV5cVPsXuHbP91ZaQJ9gxo=;
        b=GQNS8FLQpi26CSFqg+8MxWgGxXMyBD2aCZY0oWWqrx024PdEpAWx4JGOVigbIq6yp8
         pqMHm0wcf9f1W96Zx9h7D9M1asa8J4IdGyIniJ02hJ20HGzmzKM/OPgC5x6gWMSVKtCy
         0ixQfwOscUXXV+WWfrDAbo6BPImqoixcBgVFCtvhCF5nPxCwtVTEJ1oEmLAE9oqwTIQ6
         M1J51m4ExQvVncCPihR9fPPqQBdnwFtmndgsgQp6Z8LP640PaxCuGaliczk5Rxan1ucM
         4/n6fLP5ptIsAtt6Imz4b9MO4ZBYMPSLfyW3BD7yAZen3we8V5NueAs3V523PjdOiP5Q
         IOPQ==
X-Gm-Message-State: AOJu0Yx+WumVxsP36oLfZDr2/BOWLntXIBAm6xo1IWwtr13wiQl1IkSH
	GrELnaVKeG90gfrzj6ep1hKLxg==
X-Google-Smtp-Source: AGHT+IEmxC7DNK1cPKwojQo+bnnfYksQDd/asx+g1dwyv2MBdy9FaZoVjFzI/eTmc0DfjWHmagy58A==
X-Received: by 2002:a05:600c:2215:b0:402:e68f:888c with SMTP id z21-20020a05600c221500b00402e68f888cmr3730981wml.7.1695582137890;
        Sun, 24 Sep 2023 12:02:17 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v2-20020a1cf702000000b003feae747ff2sm12980507wmh.35.2023.09.24.12.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:02:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: marvell: minor whitespace cleanup around '='
Date: Sun, 24 Sep 2023 21:02:04 +0200
Message-Id: <169558197846.54884.8305462270796090104.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230702185301.44505-1-krzysztof.kozlowski@linaro.org>
References: <20230702185301.44505-1-krzysztof.kozlowski@linaro.org>
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Sun, 02 Jul 2023 20:53:01 +0200, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before and after '='
> sign.
> 
> 

Patches were waiting long enough on the lists. I assume there are no objections,
at least none were shared, and this just slipped through the cracks. I applied
to my tree for further soc pull request, but if anyone wants to take it
instead, let me know.

Applied, thanks!

[1/1] arm64: dts: marvell: minor whitespace cleanup around '='
      https://git.kernel.org/krzk/linux-dt/c/12ca3ca8cf06d803b3690ef523ccf5ffd0b23a71

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


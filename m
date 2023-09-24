Return-Path: <devicetree+bounces-2841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BC57ACB80
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 21:02:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E7A7E28147C
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 19:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 664E4DDD0;
	Sun, 24 Sep 2023 19:02:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A878D293
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:02:15 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB29CFC
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:14 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40572aeb6d0so15786435e9.1
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695582133; x=1696186933; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HEY3/qK4PljH+5mRr6l/fkufOUPYsS6/LapzeXqBAzQ=;
        b=ne+dmLLRcm3f7WcMw9E41r/pFv3VcFOaTB0aVgX5MJTHDM7hKq/gX9Dl/27cW1rPeS
         it4AmE8ezpIArE3yMYrv1/WhBjoL205mbKPBGgQ42QjATU+y1H74IWgbMEyvvE79V3wF
         i1ZtQ7OcEPm7eUWSkHGLs+NSiwEFegBJ+OHiZtc/N5XUAAXVlEZB6NcFqwQuRMdTRwjz
         ByEULgUuIqt3iuTtxCQfp5hUy1l02RSnRVIohq0WFkhwyfewh45BhGdToFYfS0XFH6qL
         YiIVkpYxzLnmcwFQWl9C4xWFObWhznf1bW9Go5UM/Ti6PynQB/TqQ//6isrgsb3CjdOF
         7Ptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695582133; x=1696186933;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HEY3/qK4PljH+5mRr6l/fkufOUPYsS6/LapzeXqBAzQ=;
        b=eE6MH8fbFfRqI/g1+cYiHBV18CdFUI/QAez0G6dlV+5YU08loNpkjpD1ayDtBvViEv
         kMghdJAcZAtg93fdN8NH2NUQwj3HsuJiRT3onL3zIEEmAuFc0Oa49GK4SncGXjlfz9uy
         Jit+aG7OFl7QX3dzneJ56LO7CkkfJ9beHkpwPm2AGFr8FKgu2EhI0W47KTZUzQJt6dsu
         381KuhQGdT76A2y5n2EcTexeYp8S4Frr+Ls5FKyh49xagHfh2Oa9SZHrFHheEfJUxJ+9
         ginmSvIH/St/DCBbRJAVyfKa5dQJ2LDOazcVqEEpyKOwuhZRIFnacK9M2oWg+/XRhy96
         7Vzg==
X-Gm-Message-State: AOJu0YwTRHqZulVZqMrcJrOU9Tr1H8DcFOd5MJG80JS2yBBFxFdMscf3
	pBJlw9Md1si6XeSre9aAwC0/aQ==
X-Google-Smtp-Source: AGHT+IFTJOYNoKt70FvbEG3fkDLWzOwpTRfij0NznSyG4D41f0zuewMjBkFnGE5V08UMj/ZN+ZJrcQ==
X-Received: by 2002:a05:600c:253:b0:401:eb0:a974 with SMTP id 19-20020a05600c025300b004010eb0a974mr3981380wmj.3.1695582132672;
        Sun, 24 Sep 2023 12:02:12 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v2-20020a1cf702000000b003feae747ff2sm12980507wmh.35.2023.09.24.12.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 12:02:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: mediatek: minor whitespace cleanup around '='
Date: Sun, 24 Sep 2023 21:02:00 +0200
Message-Id: <169558197845.54884.14708791054897582168.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230702185128.44052-1-krzysztof.kozlowski@linaro.org>
References: <20230702185128.44052-1-krzysztof.kozlowski@linaro.org>
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


On Sun, 02 Jul 2023 20:51:27 +0200, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before and after '='
> sign.
> 
> 

Patches were waiting long enough on the lists. I assume there are no objections,
at least none were shared, and this just slipped through the cracks. I applied
to my tree for further soc pull request, but if anyone wants to take it
instead, let me know.

Applied, thanks!

[1/2] arm64: dts: mediatek: minor whitespace cleanup around '='
      https://git.kernel.org/krzk/linux-dt/c/aee69e4538e137313831bdb05512686d4f950378
[2/2] ARM: dts: mediatek: minor whitespace cleanup around '='
      https://git.kernel.org/krzk/linux-dt/c/96ba96612d85766b20d2e3e4445c96875351eb7b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


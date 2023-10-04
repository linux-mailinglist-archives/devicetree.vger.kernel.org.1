Return-Path: <devicetree+bounces-5728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D797B7A4A
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 10:40:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7CA331C203DE
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 08:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220FB101FD;
	Wed,  4 Oct 2023 08:40:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E64A21
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 08:40:12 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF4BDAD
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 01:40:10 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9ae75ece209so334857366b.3
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 01:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696408809; x=1697013609; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YVHhdkhp4eR4frDUkO6xbt9ArHtMALGKAATK2ZDSFtc=;
        b=HKj2aZ7MXAxzWjyKDR842YOhCXbR29ilf3dFH0wxG6/cvcLFgwo4s6aUO8RK9Vq/5J
         UkXhvNBuZbVIsbkZo+znOU8BQLrXsCyY+u7sn/YmGR4CkUXYnGux9eIiGSuCbNn+y+hq
         QOpAwFfU7F9tgQOMDCyI44cl9FBpHv9fCcRIVlXU3GmKIEmON4x/tkPLFB3273xUU/yp
         pCD7PwfQr9TwZtSgcNyU0Jh5ktWkjihBagEw5iqVE/kuvboInoqHYsi9oLZHgcQQIvED
         nXtbTWLEI48Tg9oy7D98knBCATdPYY1baW8ghL+UpaQkPL2XXJKLbh8wr0dhi0808uuA
         vhVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696408809; x=1697013609;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YVHhdkhp4eR4frDUkO6xbt9ArHtMALGKAATK2ZDSFtc=;
        b=Fq5s3V6PBMq8kukEBNfxgpFo7nusQdqvrtkkFOrxMVH7TjbxJf1gD0tI7UnmpI3uqP
         NTAPLGh72oi2OY77UDet3NcKqWI//S58X6qt/vLnIQjMnVnObxzxLhDOmSl4A3ndu+ww
         Eo1XAHYxxmzsdi8BTnlOd1YX2qznLYXi6wpwr12vrgY2ncUjR+V7dVunJGvt8Beijz7n
         NySPZJ0Je6TYrm9p3Vlth6tu1U1VA6FQdVunJnmzUfhl3xJKV/p7Ah7KlfL+e4oxXbKm
         YxFKO2EO6gat56fff3ztfgkm4lkYIKCVptQnz/5cqp4d09o8duIbwUWPyIZlFD2RIZmy
         c2MA==
X-Gm-Message-State: AOJu0YzISwWDlxXYf/VAflm06ERJ6AJqWNjig5A8+w6bD0Bj+eytfKwi
	XXrYfrT4Ps+FZyeQSP4lhrcZlw==
X-Google-Smtp-Source: AGHT+IGxGxUBlwF4Y53MwDjX8nT5oc9ijNUlqTAgeGKz6abn9IpaJEhrWZXPB7ixkM3kL1CsQzJt5A==
X-Received: by 2002:a17:906:31d6:b0:99b:ed44:1a79 with SMTP id f22-20020a17090631d600b0099bed441a79mr1376838ejf.3.1696408809253;
        Wed, 04 Oct 2023 01:40:09 -0700 (PDT)
Received: from hackbox.lan ([86.123.99.172])
        by smtp.gmail.com with ESMTPSA id j24-20020a170906411800b009b65a698c16sm2351094ejk.220.2023.10.04.01.40.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 01:40:08 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
	Adam Ford <aford173@gmail.com>
Cc: marex@denx.de,
	aford@beaconembedded.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: (subset) [PATCH V3 1/3] arm64: dts: imx8mp: Add easrc node
Date: Wed,  4 Oct 2023 11:39:40 +0300
Message-Id: <169640874933.222477.9945058108264507999.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230831044431.250338-1-aford173@gmail.com>
References: <20230831044431.250338-1-aford173@gmail.com>
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
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Wed, 30 Aug 2023 23:44:29 -0500, Adam Ford wrote:
> The i.MX8MP has an asynchronous sample rate converter which seems
> to be the same as what is available on the i.MX8M Nano.
> 
> 

Applied, thanks!

[3/3] clk: imx8mp: Remove non-existent IMX8MP_CLK_AUDIOMIX_PDM_ROOT
      commit: 05eeeff22b216e871be76dcf216a2fdda48880e2

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


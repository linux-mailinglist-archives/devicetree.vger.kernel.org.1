Return-Path: <devicetree+bounces-225784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4F8BD0FEE
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 02:26:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AE6B94E8709
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 00:26:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63A8C1E8836;
	Mon, 13 Oct 2025 00:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IZVgnal4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3211DA62E
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 00:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760315170; cv=none; b=Sp9xHmFp4NpFQh3+ldTVuxQHDQhr/Wtqyebr5Px5M1k0coBePOEq0WLIeHoUge4JQxy12K6LiwmwdZ0k7TnfFnbKEwO5cp1qGzcyXQA2GsLqYy4x6S9XC8FLE8aIHnMiZzo+UaVQGQjZo5cH15GkxrV0QktQKKwI1wAgJhv72cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760315170; c=relaxed/simple;
	bh=qkI2fr9nMZfALOyGjObaRxpnsyOdhK8rFNnreSoGoGE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mA3l9S3UzogU0LSo5HbS6gRjPJXj0Wulh/oHnImecVb92AFlbPSrfyPeo2HEXks/OyuEq8wHrfKmpiEfCiB8PiMojuL2A5+W1QkBJ1lZQGTLHHJ77EevNLKVVIOX/0Y4BNSa/4+B4WEzQ8InSRxd/gPZlaf1ny5qTLzZcEIOjU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IZVgnal4; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-77f68dfe7d9so365144b3a.3
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760315167; x=1760919967; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=52qW7t9qFGfmc8duc2ZnW0Dwh+huBp5wpeF7g/x2FgA=;
        b=IZVgnal4TPPqm+BLGQR3Q68J2N7ADkxVk+y/3rAoQGbpG5cLWE1Cg7Z1OMa6Mw0KoM
         JCdZEsZ6v4bluXZqUIVA3dyClff+i+C698IBEWSIHPzJ3AplGx+mKw8Fr3gonRNKMchL
         B28SSZOe5Lh0c0VAkG4bXnSrni7JlVJb6tmVNAOuMD0tzoKRRjpp+6A8P8g594C5Sgar
         lM0LxTGC2cPP6Jguu/5CSs/96bJaTBcJA2STLul9TWueZlLVD+R4pk/4KvShzvT/IBXc
         b+vThXRS0Br/Ii1tTe5d6+qoIeHw/qJtESfVGCQwJhpIvcNqRw/qcmtIovdQKaozGFOq
         a5uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760315167; x=1760919967;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=52qW7t9qFGfmc8duc2ZnW0Dwh+huBp5wpeF7g/x2FgA=;
        b=LM3SLmWP2s0uPQTJ2KiGURW53D4aIzmPMLnC4lWzkWSEKGd6flNmZMzGnNvZm2sEzl
         bviMR4qYnCVYTuAKCiEHVAKa6oK3/90gxIYV6bdpqKp+aeU5tPVqrBwp1Wh1HIbBNKHP
         g0/rVKFzvArKKymfWhwVCU+0Yq0APe+IN5BS/5m2CzV2gXZuej1c3FkRLEMgO6ZFJZ5H
         bTu50CHgYIXutLIEMvoMnJLSzRLvtnq5g+cnC35/JqXspTn9wMqN7arBJ2JayCBnBqer
         4wlFGOjoPkrl9KMAOekFetrn3yHfMPQlnjY2QP1V6HE/ffF5lfLJPKxfHHbXCr4U8AJN
         Jenw==
X-Gm-Message-State: AOJu0YwkM2bVCqkqg/9pw6LCOGHRmCSxNWdSMlurgZlosH048hdmgpVi
	qleATRklHPeRfy8+mkSNTmR+FAAE78bq/g/o1l8Zla/xXsx0e1dxbfS+Ye19gGYv9y18ynvBwj8
	TFF6wv8U=
X-Gm-Gg: ASbGncvNNPF0F7VzzN7UR2DvUXpSdf/naZMgtRSmZn8tkM1Q5ScObOTK27DOCEaz6rh
	a2sw5K9MN2wtMT9Lr598SqgsQpzZGRd8hsOnJHKgo/5Kb8cNoLCKYSiahlY+oCcDaJG+pA+qMGB
	rpfTha+5vkE7F4NlcQKu7z2NuPlnSDOkBVhlheZ4v8SoouWozhn9Fp8RENNueu5zMU5Om7egyXa
	5fP4OVaGJ4eWK/TgASAOLILOHaXW6IUMkPWbzpHvOvXvdyheTsuvCPsKwbOEE7v/x0HE2MuKLsE
	efsegqyazUSRLTAMi+NFcRtihyToDtkdjD7stcbYhw38rpRF3dlqoGvu7mlOhEhXjyUyKtPFGj0
	bwQpFyPC/ZgtMek8lx8DO0UGrqJd7PFz2thsNtSgUwt92NrkfJ2gny5tQwTMM4nt34NK5SgM=
X-Google-Smtp-Source: AGHT+IGvoh+AZ0SUxDtJK2K9IGdS0Lw3Mw50fcHGc3vf/lr8P7A3VShG6ttG1Wy2MqgJYHaTqL7WRQ==
X-Received: by 2002:a05:6a00:1250:b0:781:1bf7:8c66 with SMTP id d2e1a72fcca58-79387c1ae19mr13001682b3a.7.1760315167533;
        Sun, 12 Oct 2025 17:26:07 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d096740sm9624862b3a.38.2025.10.12.17.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 17:26:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250928-exynos7870-dt-fixes-v1-7-a40e77a73f16@disroot.org>
References: <20250928-exynos7870-dt-fixes-v1-0-a40e77a73f16@disroot.org>
 <20250928-exynos7870-dt-fixes-v1-7-a40e77a73f16@disroot.org>
Subject: Re: (subset) [PATCH 7/7] arm64: dts: exynos7870-on7xelte: add
 bus-width to mmc0 node
Message-Id: <176031516254.11660.11521062491196215930.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 02:26:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Sun, 28 Sep 2025 22:13:58 +0530, Kaustabh Chakraborty wrote:
> Add the bus-width property in &mmc0 node. The Exynos DWMMC driver
> assumes bus width to be 8 if not present in devicetree, so at least with
> respect to the Linux kernel, this doesn't introduce any functional
> changes. But other drivers referring to it may not. Either way, without
> the bus-width property the hardware description remains incomplete.
> 
> 
> [...]

Applied, thanks!

[7/7] arm64: dts: exynos7870-on7xelte: add bus-width to mmc0 node
      https://git.kernel.org/krzk/linux/c/2bb07378bae9504f5122bfbe4a6082bcdcc8bdf6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



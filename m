Return-Path: <devicetree+bounces-10255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 305777D081E
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:07:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62CEE1C20E6A
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 06:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C096B23D8;
	Fri, 20 Oct 2023 06:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OM5USKmY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3070BC13B
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 06:07:22 +0000 (UTC)
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85763D4C
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 23:07:20 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1c87a85332bso3717885ad.2
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 23:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697782040; x=1698386840; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rVyFTHziGTZvXM8QOJKTZz+Wz/IyPiUmtA6+5uxh8So=;
        b=OM5USKmYa3WQ3pXfIhNnOJyQcwuPH29TXnv+hni2Ps6xhdriTnqGFZih0dH8JZ5Tb1
         QUXG7n3h+MDzOqLZkHcKpVIifUtNfQeFe1in0Rfon+wNr/YMrd6oUB2q5srqOtzOebwS
         K8faLngTUNFaeqsOvTmCT4/bCESPna8lZBaMoS9eAnMDVuAd93GvIkOWJWcfhCHIceoQ
         jRYzC+EunDkO6eKJhkrTsl3W6S2qYwSYGfWs0FTz4n7Iy3SJzJqBqrDafipibInbMbUQ
         5hVKr1HfYFanQHeBF+jSRs5DbdX8aggrMhqsjERi2nN17M517rbZHQ5/kUiVkYVCYUrL
         159w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697782040; x=1698386840;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rVyFTHziGTZvXM8QOJKTZz+Wz/IyPiUmtA6+5uxh8So=;
        b=whTKMkmwEM5fu1fD/Dy+frM3RXCD6pVVeXm6+HAlN1XDIeqvcJBS17OaBPeCTR1OBL
         ZbDImi2X/jsP7DjJGZ8DR4cLy7hV7e/3h44AOdMxcn+Kdep6+w45/x863wf2AmaqRyHH
         WVvOnznKnGTNt6BFsOi063REgWCGIZmjmHXvHz5F/ebU7Mu0aSnDFL0Wg8bC/JpAkVv2
         UUvZ4yfxfGUr/eTP5W0h/8NhKwx4gVBSGV/bU9UdAKvhIMjAW0RCYz+TxxydPvOQQB7C
         XDF9rlV73VKudVb3vV3SGaRAIr4TKeTKWaLAfAM6OUVJl9StGp6a61wE14k0Zix3Q8cQ
         bOxg==
X-Gm-Message-State: AOJu0YxzsumdxB1yekGcxPKw4oLa7QAOs6z3MWA0wXSoJjYTpVtFwc6Y
	fOKSYjVFUsIj3kEvA9RXdhZz1A==
X-Google-Smtp-Source: AGHT+IH0RgwQ4wA/3gxyRDCCw9MaaIp073BtAY+qdZEdtqbg8ac2ZJsTfZswsJbCR4mTxOlKwHHlzA==
X-Received: by 2002:a17:902:e5d0:b0:1bd:d911:2a85 with SMTP id u16-20020a170902e5d000b001bdd9112a85mr995121plf.12.1697782039899;
        Thu, 19 Oct 2023 23:07:19 -0700 (PDT)
Received: from localhost ([122.172.80.14])
        by smtp.gmail.com with ESMTPSA id u9-20020a17090282c900b001ca4c8edf21sm698038plz.170.2023.10.19.23.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 23:07:19 -0700 (PDT)
Date: Fri, 20 Oct 2023 11:37:16 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Ilia Lin <ilia.lin@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v7 0/4] cpufreq: qcom-nvmem: add support for ipq806x
Message-ID: <20231020060716.53zzgxdk7lg4evb4@vireshk-i7>
References: <20231019105011.7289-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231019105011.7289-1-ansuelsmth@gmail.com>

On 19-10-23, 12:50, Christian Marangi wrote:
> This series originally added support also for ipq807x.
> This part was split and is now merged.
> 
> This patch was originally dependent of [1] but was later reverted
> due to compilation problem. [1] had some changes that weren't related
> to the compilation problem and were just a fixup.
> 
> This series include these 2 required patches from [1] that are
> just cleanup and won't cause any problem.
> These 2 patch were already checked and accepted by maintainers.
> 
> This small series adds support for ipq806x qcom-cpufreq-nvmem driver.
> Special function are required to make use of the opp-supported-hw
> binding by hardcoding custom bits based on the qcom SoC ID.
> 
> [1] https://lore.kernel.org/linux-pm/20231010063235.rj2ehxugtjr5x2xr@vireshk-i7/T/#t

Applied [1-3]/4. Thanks.

-- 
viresh


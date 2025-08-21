Return-Path: <devicetree+bounces-207498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE94B2FB83
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C3BDAA5A16
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E0E1A9FB7;
	Thu, 21 Aug 2025 13:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UzSjDFX2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FBD22EC57A
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 13:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755784056; cv=none; b=ifMezhb8+Dhz6zNMC6yD1B0n2cdNmfRmjgannZg40Z6bFuRtrl4W/2VHd1skWX/Cd6GZ9MQdyZjMjjlFHRuzmGGz6Nc0TPV1NsLEeQo4wY+aQeDnJr5A0xnV3qRHqxIzi5apT6OJJ8vA/h3RF6wFaXHI/cMxvlwnvy9eWhymQx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755784056; c=relaxed/simple;
	bh=HKdq5zrnBFDA5jHszrIlOFxSN9mtx8yukFEXWRNwoE8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ESVk2wmEst9UJKJA67sEQPLCnwb6KgxlAFP7buhixgHxCPS2LHgHfM+JSDQU7HWa1jCd4WgjLkcMRtl7qeQcL65JeWqc9mObIFstF5G8DUelvwRmUiKoUMu+H8CFuGm+DtW6+7dXykjaeEYQNozFJzh5kNOsF3cexh2/PqSruiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UzSjDFX2; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3b9d41c1149so609191f8f.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755784053; x=1756388853; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1cNqt6F+utCAzBkTSdbP3iFxYXyHm8glU0KYUD049Co=;
        b=UzSjDFX2JC2iVIfkV7SrLRXUGI8MA3tTT/ME/ryo7U6g8qv1Kosb3WlElqeccU1XGq
         r97/ZYwb9yGrNtrXTYUP0XDUxIVhpzViS4T3LS6EQ7OX491epL7mnG/aVohXxQaBTXob
         tgDasAA5sXILXmRuj5oN2F3mxN82V/DiqmwkEHApEK6AwsZSGOa4/g5q9yvH3lmkhWaR
         uAobFMCvDju5bEuu0ypmFiUlkEdomayEi2/BPtOuWPjcWDftBe5b2k1BQV1/3Sbv9gWS
         y2KF+j17YgtoA71kDExi+jTeCZLSG4bV2oh7rI1fxIGueuPDccn5d00cDux6VSJ/yqH0
         2egw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755784053; x=1756388853;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1cNqt6F+utCAzBkTSdbP3iFxYXyHm8glU0KYUD049Co=;
        b=TdfBHVeaGFUvIfV5Nw1rUv5UvUIEhqsOdUbPoSW7/qplt+VibQXrRgMsHZZN1I/3eU
         QzJ7SPG4ExHnSOAGnLEbjhWc7V0KLlDl/BsQk6R8XHMb/VrpY5chQnfrM0lFnmOJM0ia
         fPEYO6HWcahFWk0K2iZNMJ+vED1a9Xp/UGwG9E9y5EFPw9ZBlAQ3ZnUsNCLvLpDljL9K
         IbgVsfJGkCewnLODLeaoc0XXCy8OM0UN0RRwC38eTgzAPgpD1rn6llq5e08jPkcFguLb
         11Zrk0phQWnIOQYkPIz32EfW08thmLuiDiBSUDzzQOuvgM2OZuGtOPajKfiO1/YhaRkq
         0dtw==
X-Forwarded-Encrypted: i=1; AJvYcCWeYTQPb7t2dPjzLzdDlfvFefpYstjpW239gAwd/ywwMhSIHZ/FTrHg2SR2ORxqIvNV7XqxVOt6E96X@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8XU5fQ2IUKEyn+a8HmNERwqcoCzPV5odv0449MbtpRh7o7V8X
	YnqZs4cqL61t4yaL1MxX0FQLRN0bXGaH+rsyn2BO6spsDUA3jbKbQMb9zCLscOI0iCY=
X-Gm-Gg: ASbGnctMbR47WpvMcn/aE5zl4xmEuMonklj/FEKkq8cDE8vzaKnmLW8TCIFo+M30kEq
	kTIWONifoImsCUYJ7nuyNZTIfWOCq8U1TWXNBl56OyGIJ1Gb3twvd7Z6aSAlEzzsar6TcNa8ODH
	WyB8xe2W/WlOq8j+TvI3rz/SHVsXlmhFJImGGdhEc1d7W7DBF2trMP2LThj/f3Ug8s0DiDdJxr9
	fKhAF3xyFUWrzExWiASdp5Sno03Q9jIAQyWFJzdcPPhaJj/AABt6t8Au5e6cpLj1Ockpr9vqRy6
	xJkVQ05J/zSdbZnrXYY+tFS4/HCqgpRhzzmeLyx+MQlaRkEOk9+mTrOgxOpP28P7bSDcf4W89gg
	gRfDqYeiuy9Jr53kNpgrl87//3KfZ4OdYhg==
X-Google-Smtp-Source: AGHT+IGRsCsNTbh+Ry1lq6ZEMT9N9yWhON8/4j1DFbRCkoRW57mS/7ADV8FIQiHZDBWtT7+21FMWQA==
X-Received: by 2002:a05:6000:2282:b0:3b7:9c79:3293 with SMTP id ffacd0b85a97d-3c4978384e3mr2380212f8f.58.1755784052676;
        Thu, 21 Aug 2025 06:47:32 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:6153:383:a3fe:6207])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c0771c166bsm11846370f8f.33.2025.08.21.06.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:47:32 -0700 (PDT)
Date: Thu, 21 Aug 2025 15:47:28 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/14] arm64: dts: qcom: Set up 4-lane DP for sm8[56]50 &
 x1e boards
Message-ID: <aKcjcB9yABjEv1KR@linaro.org>
References: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>

On Thu, Aug 21, 2025 at 03:37:19PM +0200, Neil Armstrong wrote:
> Now the 4lanes support in the QMP Combo PHY has been merged in [1],
> add the required plumbing in DT.
> 
> [1] https://lore.kernel.org/all/20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com/
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> Neil Armstrong (14):
>       arm64: dts: qcom: sm8550: allow mode-switch events to reach the QMP Combo PHY
>       arm64: dts: qcom: sm8650: allow mode-switch events to reach the QMP Combo PHY
>       arm64: dts: qcom: x1e80100: allow mode-switch events to reach the QMP Combo PHYs
>       arm64: dts: qcom: sm8550-hdk: Set up 4-lane DP
>       arm64: dts: qcom: sm8550-qrd: Set up 4-lane DP
>       arm64: dts: qcom: sm8650-hdk: Set up 4-lane DP
>       arm64: dts: qcom: sm8650-qrd: Set up 4-lane DP
>       arm64: dts: qcom: x1e001de-devkit: Set up 4-lane DP
>       arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Set up 4-lane DP
>       arm64: dts: qcom: x1e80100-dell-xps13-9345: Set up 4-lane DP
>       arm64: dts: qcom: x1e80100-hp-omnibook-x14: Set up 4-lane DP
>       arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Set up 4-lane DP
>       arm64: dts: qcom: x1e80100-microsoft-romulus: Set up 4-lane DP
>       arm64: dts: qcom: x1e80100-qcp: Set up 4-lane DP
> 
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 2 +-
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts                     | 2 +-
>  arch/arm64/boot/dts/qcom/sm8550.dtsi                        | 1 +
>  arch/arm64/boot/dts/qcom/sm8650-hdk.dts                     | 2 +-
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts                     | 2 +-
>  arch/arm64/boot/dts/qcom/sm8650.dtsi                        | 1 +
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts                | 6 +++---
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts       | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts       | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 6 +++---
>  arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi    | 4 ++--
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                   | 6 +++---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi                      | 3 +++
>  14 files changed, 26 insertions(+), 21 deletions(-)

Nitpick: Could you send a patch for x1-crd.dtsi and
x1-asus-zenbook-a14.dtsi as well? :')

Thanks,
Stephan


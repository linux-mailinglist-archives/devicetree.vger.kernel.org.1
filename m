Return-Path: <devicetree+bounces-22944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D8F8099A3
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 03:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8016C1C20C86
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 02:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC2322109;
	Fri,  8 Dec 2023 02:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="He282uLP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9A63FFE;
	Fri,  8 Dec 2023 02:53:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1AFCC433C7;
	Fri,  8 Dec 2023 02:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702004008;
	bh=SDWkTg+A9cWrHwwKsWznlTO+KJdRfZK1zHniu+SdssY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=He282uLPRVWVYu+3PoJOKWfIJQpeMUDYqqTT0YgPAo416AZNHukciJM7P9NXlAcI8
	 1HjBwgHiVT8Ht4nPQoyTZNw1ZpBa+IEKvxz4IGAYx9kDrClqz5iP2EL9sVUvotp1NI
	 kUIQwVc5hSFWrHwrwGVyXwj3GM7BZqy7Bo7kuZiD3ncZtlQN5yWPf+ky01loKlLT6L
	 JVS8ky0GgGM+mz0SJUfEK9DoyhTrBLCgKtbdcvbDuaA+RZc0H/w3jfMoZuiAeFitI9
	 uQ4Bo1PBnBoRJ8EHmUSCmwNLw8A0z85pqF62IL+IF/MgG0l0yfti1N6zzh4P4/y9i0
	 pllO0Zb8qObfg==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: (subset) [PATCH 1/2] arm64: dts: qcom: sc8280xp: correct Soundwire node name
Date: Thu,  7 Dec 2023 18:57:32 -0800
Message-ID: <170200426915.2871025.1226788722593683249.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107102111.16465-1-krzysztof.kozlowski@linaro.org>
References: <20231107102111.16465-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 07 Nov 2023 11:21:10 +0100, Krzysztof Kozlowski wrote:
> Soundwire Devicetree bindings expect the Soundwire controller device
> node to be named just "soundwire":
> 
>   sc8280xp-lenovo-thinkpad-x13s.dtb: soundwire-controller@3210000: $nodename:0: 'soundwire-controller@3210000' does not match '^soundwire(@.*)?$'
> 
> 

Applied, thanks!

[1/2] arm64: dts: qcom: sc8280xp: correct Soundwire node name
      commit: 58e8fcf992831ef3642d90115ab119c19bfdd0c5
[2/2] arm64: dts: qcom: sm8250: correct Soundwire node name
      commit: c1f52fb9a128771cfe2cae528c32b302e98398f3

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


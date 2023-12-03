Return-Path: <devicetree+bounces-21035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB918020DD
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 05:52:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2351280FA3
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 04:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4491123D9;
	Sun,  3 Dec 2023 04:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+iRQnqu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CDD4C8C;
	Sun,  3 Dec 2023 04:51:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19658C433C7;
	Sun,  3 Dec 2023 04:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701579117;
	bh=Z0DBXWpSWjalDvBwoh4YHwldMBRWEXr5tco2zGQynJ8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U+iRQnquVyhrO+L6fOXKdo1ph1rAq1ULfvlXsW0LaZ0yxobNhck79QpcVnz8wIonx
	 DJjAllJM4TKxuRqQ0kCh+a5l85NtfOB7SNuE8+Nb40YaHGJBqHw3tCAIra0DrB3owH
	 WIIDTqio5rCV/jXF4hbY+HXxDXUP3U/UJ2ZEwtcq8wRtEz1w17P3a/lEWjgtJQNQ6/
	 tF2a1xUaSzCFo/9A2QCLkPuCMkWmzGuC/5bsX2XhlvBfwg8lMGB/f0aNbEkevwAT1m
	 YsxdCeHEvvTCsCLqeD/YLZEiIfGRYQepQ762/q2MtCjBipAwW2xP/Uf0fVbuWowgG9
	 oxeL2kL7nJiUA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianhua Lu <lujianhua000@gmail.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 1/2] arm64: dts: qcom: sm8250-xiaomi-elish: Fix typos
Date: Sat,  2 Dec 2023 20:54:44 -0800
Message-ID: <170157925820.1717511.16661964218018825273.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231126022849.14273-1-lujianhua000@gmail.com>
References: <20231126022849.14273-1-lujianhua000@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 26 Nov 2023 10:28:48 +0800, Jianhua Lu wrote:
> There are two typos in this dtsi, so fix it.
>   classis -> chassis.
>   80700000 -> 80600000
> 
> 

Applied, thanks!

[1/2] arm64: dts: qcom: sm8250-xiaomi-elish: Fix typos
      commit: 608168b4d6079f2c43944bdfd64fd6c405d9a767
[2/2] arm64: dts: qcom: sm8250-xiaomi-elish: Add pm8150b type-c node and enable usb otg
      commit: 69652787279d64b0b0cc350fdfb34c503e40653c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


Return-Path: <devicetree+bounces-1870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A8E7A8A4D
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:11:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B1CB281AA2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122AB450C6;
	Wed, 20 Sep 2023 17:10:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F343D399
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC95DC433CC;
	Wed, 20 Sep 2023 17:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229826;
	bh=xORNwuaiBdlcQ+oz/AKk1EfwusQCgyC/d/Q/gfTmaU0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RZS/24/QW/PAWHVet8IANErdWPYhYCwLiWDv5voNPdKuENhv+/MB+NMMdDLzPrsYi
	 ZhWCZu1mafHxjdmuxK5Ahzuc1ayAciqkRdMxDEStvpS0v67puSIhhxKI8gSFxAud4u
	 Nu3/9wMoBGzpoRJVwdOheX9r///JXhL4gxleNjPP/69FTP5BduEIDvrFenmZQz2+eh
	 Ygcse9EN2+QZ4qj7CrTs/DywV+kQcriDLTbVNivqwkyH8fHKZfD8G7CAVK74HC6RsL
	 Alz5dplmfwNU7HdOZ0aGwgabFDN8DhmjEEskQLkpKfQodBA6V5eKPcurrMn7SWJBwe
	 LCLFqGEaS0rNw==
From: Bjorn Andersson <andersson@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Stephan Gerhold <stephan@gerhold.net>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Otto=20Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Subject: Re: (subset) [PATCH 0/6] ASoC: codecs: msm8916-wcd-analog: Cleanup DT bindings
Date: Wed, 20 Sep 2023 10:14:12 -0700
Message-ID: <169523004961.2665018.6811007282234942362.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230718-pm8916-mclk-v1-0-4b4a58b4240a@gerhold.net>
References: <20230718-pm8916-mclk-v1-0-4b4a58b4240a@gerhold.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 18 Jul 2023 13:40:12 +0200, Stephan Gerhold wrote:
> Drop the redundant reg-names and mclk from the PM8916 analog codec.
> Having the mclk on the analog codec is incorrect because only the
> digital codec consumes it directly.
> 
> 

Applied, thanks!

[6/6] arm64: dts: qcom: pm8916: Drop codec reg-names and mclk
      commit: c7b34291bb376598ea4279658bf3100c8cb1487b

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


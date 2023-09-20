Return-Path: <devicetree+bounces-1857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 485037A8A10
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:10:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50AB11C20B5A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 884BE3E495;
	Wed, 20 Sep 2023 17:10:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732013D399
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 17:10:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2144BC433C8;
	Wed, 20 Sep 2023 17:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229807;
	bh=4/QpFdXXat5YYWLWJXquh/jNvMlFGIeOXDZXtyrqkL0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FNXtXmMEtJ33lUPlF8cl/BbOYVSD5+rxt7WgqlwIDrVGwixMgEXspGeBc3Mnr33IO
	 u7A1bjSASIYByr+Egg8GcA4fNFpNinYK5nJTPVNqJocdKevxQcJe05xMR7TZsHT/IW
	 xL2SrHt/d6nyNx0LJt60N8yZJnGvhJzWiXJMWJ1OLvHDGPcj4ie3qArha+xSotz+3a
	 0/w74WSiubSuA/LhhVpfEcQzNsaGhEGleoO6hUXc3MznIl5D9sehkBTJF6Ru/J5nWi
	 hjz74eSVWuguXSAHuvtTLYTToQWH+Oj6eHZUO3xJzkEaMNhKWhqYSnocDS5vs+HEay
	 8f4ahemZqTqBQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 1/2] dt-bindings: crypto: ice: document the sa8775p inline crypto engine
Date: Wed, 20 Sep 2023 10:13:55 -0700
Message-ID: <169523004971.2665018.5457570667421710137.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230913153529.32777-1-bartosz.golaszewski@linaro.org>
References: <20230913153529.32777-1-bartosz.golaszewski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 13 Sep 2023 17:35:28 +0200, Bartosz Golaszewski wrote:
> Add the compatible string for QCom ICE on sa8775p SoCs.
> 
> 

Applied, thanks!

[2/2] arm64: dts: qcom: sa8775p: enable the inline crypto engine
      commit: 96272ba7103d4518e2d0f17daf6fe0008fc6e12c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


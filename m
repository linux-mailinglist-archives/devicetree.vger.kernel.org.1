Return-Path: <devicetree+bounces-1524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F40C7A6EEF
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A4C62817C6
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF51836AE2;
	Tue, 19 Sep 2023 23:03:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E2746A1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E845CC4339A;
	Tue, 19 Sep 2023 23:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164619;
	bh=ZlM9v8YkTIu5gldl3i0xrKYWR8j2pPgJLuQ7gGbLUGQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cu1FMNLyu9IZ/4HXEKLQDug2OSpMYKvqR1p+ZlT7vXPQYe3oBK94azEXeD+Yw8iSN
	 znGuy1jXWzEfM9QInckBrRCrOdo3LrfIiEqgHs/uRO8hW71CjDnmfgKyRqRMqAq/vM
	 TYjrw9JDvyP69olobBAHr/vts9CR17MvylbOnspE0nq4YJlpVyYZo2HquiOJFeeWpa
	 2IPmtxgj2BWZxGmhGPR/tKudb45SNKqI4aqEZ7XUcjgye0YJ3AjPd5RLQN0TFs6/4z
	 wUa/ceTU47XhZjRvxyPL+IcceK9pCu67LOiOkRdf6XbVoGR/LbHf9XXAOy/9ns/2iu
	 76yc9+MflfmAg==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8180x: switch UFS QMP PHY to new style of bindings
Date: Tue, 19 Sep 2023 16:07:30 -0700
Message-ID: <169516486002.787935.6971009810772569919.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230731111158.3998107-1-dmitry.baryshkov@linaro.org>
References: <20230731111158.3998107-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 31 Jul 2023 14:11:58 +0300, Dmitry Baryshkov wrote:
> Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
> resource region, no per-PHY subnodes).
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc8180x: switch UFS QMP PHY to new style of bindings
      commit: 916b5916f228a9f83a22ad91ad8c5bf788a456d7

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


Return-Path: <devicetree+bounces-1891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2AC7A8C17
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 20:54:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E70681F20EE1
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 18:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE14911733;
	Wed, 20 Sep 2023 18:54:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1C717D8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 18:54:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5FFEC433C7;
	Wed, 20 Sep 2023 18:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695236055;
	bh=TW1uzU7gapnNXOh5chP4DOPiNuO8LtG4yLM2fxUiLOI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nBN/O890zH+vdIugfyDJO+/6Ccj/1FdkIm92YjGl3Bgb5gK47SS9jzJMlhoO62EWe
	 FtQq9cRVvbmD6+Q6KW7n6+sbdLvMEgX1X8tm1Rb0VFc+ccci7M4MWr9sIry0retp5r
	 5fyLz4pc6rwm5NuIKctAGuUkIlueJx3ZhOouP+k8W6YavJCzg8+ADgehLaJAsSnhdv
	 6lF0r5yoL4KXJgYOKOYtZwEKTnyUGchngBrwrEyf6ULtLEGqGtiHhqEBBccDE9KrcY
	 IoJoUbLmkNCJUcHnaY8EmI7dIW0CJ1Fc6JBagJCczo3hi6KB05X532KkHkMsOiwvT7
	 M0Ecpz92hLTJA==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: msm8939: Fix iommu local address range
Date: Wed, 20 Sep 2023 11:58:21 -0700
Message-ID: <169523629857.3360741.6857369102757303278.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230917140039.25283-1-quic_gkohli@quicinc.com>
References: <20230917140039.25283-1-quic_gkohli@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 17 Sep 2023 19:30:39 +0530, Gaurav Kohli wrote:
> Fix the apps iommu local address space range as per data sheet.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: msm8939: Fix iommu local address range
      commit: d40291e52d5ac4d0ff18ca433e84e6ddccc13427

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


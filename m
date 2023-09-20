Return-Path: <devicetree+bounces-1580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1667A7127
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:54:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05805280E64
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16771FC1;
	Wed, 20 Sep 2023 03:54:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE90F20E0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:54:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 719E7C433C8;
	Wed, 20 Sep 2023 03:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182092;
	bh=3IRCJf0ccugOUjQJbQwxlzPXVo7KyDJmsjRA5c397w0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qUyX08fcJRohROe49y/WU+4Mydk9L+xTjT2nnRhQD63tIhIxzA0aAXqhAdzD2RfwP
	 EuASCqYeRiviRffjqEC7/K0Tbu55k8FeLG/A27kAZ8w5YkV0Zsxd4l6UmodZd4Fh4c
	 E5hhIWywl0871SOJq9t0rocMlzWx/gDE0eCi1/y24f//gL2HzhaJ1nE0HUVYW7bUvY
	 bVJd1/GsdL4+CSsN7seUdIdfH674NGS2lf/nG2jGSs9f3zhF6DtqX46Yu8pW8INFPK
	 I+fDpS3EvShhTPUDuO9c5pYQ5rLVXul3v4ZRc+zSfLnFs0I9C3HxwoB/F7mgZeFIMk
	 Yz6rtuyNZffOw==
From: Bjorn Andersson <andersson@kernel.org>
To: Andrew Halaney <ahalaney@redhat.com>
Cc: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	brgl@bgdev.pl
Subject: Re: [PATCH 0/2] sa8775p-ride: Describe ethernet phy IRQs
Date: Tue, 19 Sep 2023 20:58:43 -0700
Message-ID: <169518233710.1055386.13087673777610760189.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230817213815.638189-1-ahalaney@redhat.com>
References: <20230817213815.638189-1-ahalaney@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 17 Aug 2023 16:37:15 -0500, Andrew Halaney wrote:
> Now that the hardware can detect the IRQs, let's describe them instead
> of polling the phys
> 
> Andrew Halaney (2):
>   arm64: dts: qcom: sa8775p-ride: Describe sgmii_phy0 irq
>   arm64: dts: qcom: sa8775p-ride: Describe sgmii_phy1 irq
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: qcom: sa8775p-ride: Describe sgmii_phy0 irq
      commit: 1ff6569b0ffe7a2e311104cb3cd841983e484ac9
[2/2] arm64: dts: qcom: sa8775p-ride: Describe sgmii_phy1 irq
      commit: 454557d0032d088b4f467f0c541f98edb01fe431

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


Return-Path: <devicetree+bounces-1536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF8C7A6F24
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 01:05:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD124280E61
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70A8F36AF9;
	Tue, 19 Sep 2023 23:03:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0B636AE2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 23:03:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B3FAC433C7;
	Tue, 19 Sep 2023 23:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695164635;
	bh=NbnRpsIQKytYeSIhPybmhd3FgUe89Nwers3tNVmmIMI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fhC5dXsyhH3Yai1+SSBOXcP1tFZ2GegrVdsXeLJf6uYBgnPRLTiDN9zAly0uZaexH
	 sQ88XW3SW1oVUI8JQi/wJLD+puvy4cK8QjWUwmj2dmF3zT18QCjfWB7mmgJDTWm33C
	 328k+3MgOdrf93evIjkxcAZ2KVhWwUt+0Yv9Wn78TItU7TpHZLtWf3GaSpkI9W2iVg
	 Bsd2b+9/tt9PofD/nlJJj9eixytK2ZFvQ5Syf0v6Egcd/qDQeL47sthVmqbpsT9fG7
	 lIF9w1HyhradtwZlCgIbounx0w4TRT5zWT9EyjKCtV4SMOuaSRSEqE0FtYBbnmvfyE
	 sDpBgGOJt+/hw==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@quicinc.com
Subject: Re: [PATCH v1] arm64: dts: qcom: msm8916: Fix iommu local address range
Date: Tue, 19 Sep 2023 16:07:43 -0700
Message-ID: <169516485976.787935.17910324015960246982.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230915143304.477-1-quic_gkohli@quicinc.com>
References: <20230915143304.477-1-quic_gkohli@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 15 Sep 2023 20:03:04 +0530, Gaurav Kohli wrote:
> Fix the apps iommu local address space range as per data sheet.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: msm8916: Fix iommu local address range
      commit: 2de8ee9f58fa51f707c71f8fbcd8470ab0078102

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


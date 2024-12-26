Return-Path: <devicetree+bounces-134197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0955C9FCEB5
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 23:41:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2CDE188364E
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 22:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5911DA2F6;
	Thu, 26 Dec 2024 22:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPD66hky"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3361DA113;
	Thu, 26 Dec 2024 22:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735252753; cv=none; b=ayysMAxqOpLLQ+0N3eEvST20LclzahzbTKo8eYDVt88L3CkdP+yKl/eNxhnrrnoFuYEE76tiAyxU4pr31sYKaa72qL9tXLFA0vlSWjvDC6uMui4btaK8N5yawewdhrN+p8jJ5PR4pRBQwT4my/pp0RxRrKZN6TxGAOanSY/Xnvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735252753; c=relaxed/simple;
	bh=zzHpg02nt2xCzx11z3qrPTPt9BM7ACn4sX/GXztIxTA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oTi/A7gBVDCLZzbrmEqlpWcV6Wm9fw9T310CBKSGdgwOtccLfaSls+rd7nzYm99YZdOLfmuP/DtZY3YK4MyGyn7hnLu1tqT/MajbWqqTL6woDdMUul+6mwfEzskvb0EijIOjkkHpGzLF20zbJHlKy3b8c9O5C425bIY9JnhFmMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPD66hky; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3627C4CEDE;
	Thu, 26 Dec 2024 22:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735252753;
	bh=zzHpg02nt2xCzx11z3qrPTPt9BM7ACn4sX/GXztIxTA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HPD66hkyp6ULiLZXVVRtebU8omymUvvQ5tyb6NNu7Zjb5rPsoV6+LqUPyqKMV9BDY
	 WBb8rplUSniQ5Zt54PRmW6ALOmYx71t45dHQXeaCE5rvRvkMfK7u0G3tnKcnVUN7Id
	 etXoVXDg4Kaf+oyoLL63VV8xaiFmkQ+ZXNNf2hVquXpv6ZkJz2tMVzPaInDYMWzF3T
	 Gc1vluxcP3Pf6PEj0nu3INYMdT6m6vQ3yOqYFbDNgGKMyr+cvmLIaDdu/ahA4Y7pkd
	 VtK5LVAQ10OBgT3d8SixJ0Et575CCX6+iOhxZtzKobdLJAHDMs/Fxg1HuVZk5NGoEp
	 g77FEx4NghSzw==
From: Bjorn Andersson <andersson@kernel.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konradybcio@kernel.org>,
	Richard Acayan <mailingradian@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona.vetter@ffwll.ch>
Subject: Re: (subset) [PATCH v2 0/4] drm/msm/adreno: Add A615 GPU for SDM670 and Pixel 3a
Date: Thu, 26 Dec 2024 16:38:42 -0600
Message-ID: <173525273245.1449028.4895991910861314242.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20240806214452.16406-7-mailingradian@gmail.com>
References: <20240806214452.16406-7-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 Aug 2024 17:44:54 -0400, Richard Acayan wrote:
> This adds support for the speed-binned A615 GPU on SDM670.
> 
> Changes since v1 (20240730013844.41951-6-mailingradian@gmail.com):
> - add Acked-by tag (1/4)
> - add OPPs exclusive to some speed bins (3/4)
> - enable GMU by default (3/4)
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: qcom: sdm670: add gpu
      commit: cd89483a1327c0317a655cca1daf9521c7ec7529
[4/4] arm64: dts: qcom: sdm670-google-sargo: enable gpu
      commit: fbf7cfa3ea986e5bf426748aa8afa386df61456f

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


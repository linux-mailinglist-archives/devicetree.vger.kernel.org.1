Return-Path: <devicetree+bounces-2535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7C17AB30C
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 58F1E28219B
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 13:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D8A3D96A;
	Fri, 22 Sep 2023 13:48:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8220F22F08
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 13:48:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0A4CC433C7;
	Fri, 22 Sep 2023 13:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695390538;
	bh=vRCbkEXIvOVzJ7swhkJO0btDmEHy+5q5YjVm6regUx0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Chs2Lf7os26nn4NItjpwhFYawkL+UhOpp2+HnwwXOYtEGMTyG8+By+eyiD8SUiVKK
	 nUqB6xZABCUqxtKLJvXSCJs4lfwAmPoRwlT806VKHu+wwp7UnPZfL2qyFAX5lWP4zS
	 unUmQtXqltjUjdFZTKmd6DQeIVEwmjhnmld7Fl3nDN/ueGnAx5EdejxSDCCVGg92cl
	 G08f0w6W2FRvGjGDZQ1DRXyaOnONfHVNmWEMxN9XHvh+yaLkH+TdtVgucaJ4/G4DTf
	 F4ZYyYGDUmWMqYFzc/0+4owxGRybwII5oKU75jL1kYacRWBA5LAGYFD/fMLoVobh/k
	 AGOUTnN0jGDqA==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raman <vignesh.raman@collabora.com>
Cc: guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	daniels@collabora.com,
	emma@anholt.net,
	robdclark@gmail.com,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Maxime Ripard <mripard@kernel.org>,
	Helen Koike <helen.koike@collabora.com>,
	David Heidelberg <david.heidelberg@collabora.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: apq8016-sbc: Add overlay for usb host mode
Date: Fri, 22 Sep 2023 06:53:02 -0700
Message-ID: <169539077994.4014786.12440074307606036817.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230911161518.650726-1-vignesh.raman@collabora.com>
References: <20230911161518.650726-1-vignesh.raman@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 11 Sep 2023 21:45:18 +0530, Vignesh Raman wrote:
> Due to the presence of the fastboot micro cable in the CI farm,
> it causes the hardware to remain in gadget mode instead of host mode.
> So it doesn't find the network, which results in failure to mount root
> fs via NFS.
> 
> Add an overlay dtso file that sets the dr_mode to host, allowing the
> USB controllers to work in host mode. With commit 15d16d6dadf6
> ("kbuild: Add generic rule to apply fdtoverlay"), overlay target can
> be used to simplify the build of DTB overlays. It uses fdtoverlay to
> merge base device tree with the overlay dtso. apq8016-sbc-usb-host.dtb
> file can be used by drm-ci, mesa-ci.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: apq8016-sbc: Add overlay for usb host mode
      commit: bdc4d17e1627e3b44f25b8f87509023dc2b438a2

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


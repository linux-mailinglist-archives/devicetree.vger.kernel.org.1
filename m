Return-Path: <devicetree+bounces-1592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C2F7A7152
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:56:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BC891C20A70
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 746453D76;
	Wed, 20 Sep 2023 03:55:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660463D67
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:55:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BFEFC433CC;
	Wed, 20 Sep 2023 03:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182104;
	bh=+K00D89dCb2osmUZsUYArg336srEIfgfomzJ3IfzDto=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ev0lYbQUBBrvLiTLkTkKGc3FuY0qDN+vutFdFhjUmaZjaKInTBtZ5DMO5I1qoiEpV
	 QToIsJgWKj9XWBAyK2WhjPBod9ja5yQ8jul+66Xmjcfqsg9vHzi6NezPqg59UXwxUi
	 1ps0fnbmUoehcBn0fNYtc7cp2J7YdXUkI2MZVF2+8YiNMkEuLa666Kstwtg+nHzxH3
	 YWptUMSB4mMwGyZO/mRdpPAfrh3hTfufNUGzcpNhjQE2GbDFc/zVMz4gx9Wvb0Prt4
	 zku76ycS0qpIWzKAvtiSOluKV7LGP/A8kyEC+T6EINc1pCWxfBpiQg3ZKxank4FnsC
	 Yxr9uNz+5ZG+Q==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	Luca Weiss <luca.weiss@fairphone.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: Use QCOM_SCM_VMID defines for qcom,vmid
Date: Tue, 19 Sep 2023 20:58:55 -0700
Message-ID: <169518233711.1055386.9535886399962025315.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230818-qcom-vmid-defines-v1-1-45b610c96b13@fairphone.com>
References: <20230818-qcom-vmid-defines-v1-1-45b610c96b13@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 18 Aug 2023 10:06:09 +0200, Luca Weiss wrote:
> Since we have those defines available in a header, let's use them
> everywhere where qcom,vmid property is used.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: Use QCOM_SCM_VMID defines for qcom,vmid
      commit: 018c949b32df9f17f52bf0e70f976719811db233

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


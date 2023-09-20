Return-Path: <devicetree+bounces-1849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE5C7A89E2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 18:58:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78100282159
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70223E48F;
	Wed, 20 Sep 2023 16:58:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B274279EE
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 16:58:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8D7EC433AB;
	Wed, 20 Sep 2023 16:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229106;
	bh=8pjONRCMisuRQhJ6dW460Z5GvXj5RYGrdBXEe70ROXE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UyPfLo6yrhwY1QqFdiJDyGHggil0a9vS46jG2tvyZup2wa7vMDQhnqvBKSi1MUiWR
	 P9MfwQH3uf90jNYVxZZEMkvBLL5ngQdBKdqIEVjkIhnrsHiS/F8ORbF/zkyQhd+nKm
	 7+qEZ5goaxE3kwMYJCmaLJleJjkgQzhjnz3gvywYKbXii/qj3D5HJf7+P8mJZhh0cj
	 D8sWYwkpIJVYlqiGOaEB2yvYj8vVDO4rSyxFcT/M3Aq/XkN+gsecRteLACw6DdXitt
	 IUkcn9eqjVdQlBDvfdRw5Xlq/YyQHbzwd58kPleFPKrsCvGNp/jD0gIn/nJYLh8W06
	 1r+zTNOPHXV7Q==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ohad@wizery.com,
	baolin.wang@linux.alibaba.com,
	linux-remoteproc@vger.kernel.org,
	Vignesh Viswanathan <quic_viswanat@quicinc.com>
Cc: quic_kathirav@quicinc.com,
	quic_anusha@quicinc.com,
	quic_sjaganat@quicinc.com,
	quic_srichara@quicinc.com,
	quic_varada@quicinc.com
Subject: Re: (subset) [PATCH v2 0/2] Fix tcsr_mutex register for IPQ6018
Date: Wed, 20 Sep 2023 10:02:29 -0700
Message-ID: <169522934567.2501390.1112201061322984444.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230905095535.1263113-1-quic_viswanat@quicinc.com>
References: <20230905095535.1263113-1-quic_viswanat@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 05 Sep 2023 15:25:33 +0530, Vignesh Viswanathan wrote:
> IPQ6018 has 32 tcsr_mutex hwlock registers of 0x1000 size each.
> The compatible string qcom,ipq6018-tcsr-mutex is mapped to
> of_msm8226_tcsr_mutex which has 32 locks configured with stride of 0x80
> and doesn't match the HW present in IPQ6018.
> 
> This series fixes the following:
>  1. Fix the tcsr_mutex register size to 0x20000 in IPQ6018 DTSI.
>  2. Remove IPQ6018 specific compatible in hwspinlock driver so that it
>     falls back to pick of_tcsr_mutex data.
> 
> [...]

Applied, thanks!

[2/2] hwspinlock: qcom: Remove IPQ6018 SOC specific compatible
      commit: 823313068617bf2414c6067504b4e2ce5768e601

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


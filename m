Return-Path: <devicetree+bounces-69292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 703FC8CF7D0
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 05:05:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B494280A68
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 03:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A0AA13B293;
	Mon, 27 May 2024 03:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNpXI09R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADA113AD3E;
	Mon, 27 May 2024 03:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716778875; cv=none; b=qFI/scH+SswWyYO21eLsx/E4lzmzYuVh6emxXcgj5XrUL8Zij1I4Hjc1Zvym/O6Boc1ReFWNOrCn1W3iF3pNUqNY0Hrg1lJaC+9jxDSqewjeoA/tpADMmwya4O5Vmx8XA9+1DtrPFHKCq5fA7AZS7p/BzCzd3dmQISB1mqP0RjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716778875; c=relaxed/simple;
	bh=cSMjlR4oVkTw4q0nSSZqgjVZ2PPghXwAB1QPdZEyN+M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Tj203NuqUhPD+hKNuGTVF/DKHEnb9M7sFAJhk8/ltSrvkKhABxhByKuyZFx+taomUp5lQV1bfL5rZ1tPsF+Xy0lfntEplduOYiFoXMMLTr90D0UMxGPML4CJHr2EhnF0tVO2IjS6NCd7mi5EF2vvEr+7+h+8b8RsWlON2PwWN4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNpXI09R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D080C4AF09;
	Mon, 27 May 2024 03:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716778874;
	bh=cSMjlR4oVkTw4q0nSSZqgjVZ2PPghXwAB1QPdZEyN+M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qNpXI09Re5iQnpnI+jC17jEVJoHE//yvdCzec+CnZekTN3BmCx0UBIE7v99Z4tBNc
	 UJX7EBB0TfcdhOPsv7fxLNN5KciDZyzPNPw/XGPgJ8NNyhLD9ZaOTnd3qgdockiah6
	 gt/+NYpbAR5eALAHXxg/GhRkLi67wvvo9GV54xb4TFUo1xHXTwOdMomhGU6IO4aHT5
	 Pud/5uHrvVYleZc8EjyJ9Dq7ykoM6j42i9xiR5IUIWxbXqc73e0IjqmXPIHgXlWSiV
	 Zpto6L5t/K082P9fvmiZqI996Z+h1HFaxv2niOrntkxB5bwHA3COjQU0nCQY2fc5xv
	 RshIjg0bZhz6A==
From: Bjorn Andersson <andersson@kernel.org>
To: rafael@kernel.org,
	viresh.kumar@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	konrad.dybcio@linaro.org,
	Tengfei Fan <quic_tengfan@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH 0/3] arm64: qcom: Add cpufreq and clock support
Date: Sun, 26 May 2024 22:00:39 -0500
Message-ID: <171677884202.490947.5425236103241171149.b4-ty@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240424101503.635364-1-quic_tengfan@quicinc.com>
References: <20240424101503.635364-1-quic_tengfan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 24 Apr 2024 18:15:00 +0800, Tengfei Fan wrote:
> Add cpufreq and clock support for SM4450 platform.
> 
> 

Applied, thanks!

[2/3] arm64: dts: qcom: sm4450: Add cpufreq support
      commit: 15476ccd3dc6cea04048d159115c86a3d5042501
[3/3] arm64: dts: qcom: sm4450: Supply clock from cpufreq node to CPUs
      commit: 15476ccd3dc6cea04048d159115c86a3d5042501

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


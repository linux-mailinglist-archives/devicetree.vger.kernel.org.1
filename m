Return-Path: <devicetree+bounces-44026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 456DF85C32C
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 18:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAEB9B25469
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C0AD78B4F;
	Tue, 20 Feb 2024 17:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDhgzwX7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312DC78B49;
	Tue, 20 Feb 2024 17:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708451872; cv=none; b=VyArriSoUY3iz/pjRweulNsKwmnwT/jTC3hWnPa+EGJgOYl85LTCYP/w0tvjF8GbiD0DPq1j2UALbHYShEZFSsQPqL95471oJ4UKZLdjVbUmg02JMqGk1c797fRX99e1ndf2CGh/8SXPFx2ZRdXlJMWujRTzAda+qPN/mMN3/YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708451872; c=relaxed/simple;
	bh=qt3BmaekrYD4KHkwEfXacJHs4rQ3RsbDzajVWlP9ta4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VjLkjG2rpaslbWqXEMzy0c6Vs2V3ITBwhy7pSQxYs9aNIhTDgzCMwPZbPLGal2YZfWbVNjmNLuBjGPJ1yHVLzBaaduMrzzdiVnI3+Li34NsVQIZhzEzUmU6CDQarsDT+K5e9F6KthO68+bCeWLuCR+yAQzS63Ccl80pPxSvF+mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDhgzwX7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33771C43394;
	Tue, 20 Feb 2024 17:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708451872;
	bh=qt3BmaekrYD4KHkwEfXacJHs4rQ3RsbDzajVWlP9ta4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TDhgzwX7tSgQlyOuz7R5CfDVNl7hs7ervfCwFt2ehF17F8RsdiJoRLLIu42rh9ykN
	 zQVHgb5+OcFTGwlaUb1/AWLglBS5Y8o1SHGOiWtb7MKhj97IzJ3rYK8+pHF9nGFVZn
	 DSCj7CPwxY9fEl4byfSnpm/+ulHjxBUpuMYwyovlqhdJYEChYH87/5maG1+Hhb9cW+
	 Vu221pgF0tt3GRMv5F9ha8WiEwEX43XSA4nnDn/yQB+P0yN5PNC6POaXL4P+klNpKI
	 dL800YD4JcznFlBeo5rxU3M5DtdI+hgiGKLFQG3kV+69qbo09rskPnRdodFKeifQCp
	 wHfNGO8o/HAnQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lucas Karpinski <lkarpins@redhat.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sa8540p-ride: disable pcie2a node
Date: Tue, 20 Feb 2024 11:57:41 -0600
Message-ID: <170845186082.159943.3347283700114474659.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <qcoqksikfvdqxk6stezbzc7l2br37ccgqswztzqejmhrkhbrwt@ta4npsm35mqk>
References: <qcoqksikfvdqxk6stezbzc7l2br37ccgqswztzqejmhrkhbrwt@ta4npsm35mqk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 09 Jan 2024 10:20:50 -0500, Lucas Karpinski wrote:
> pcie2a and pcie3a both cause interrupt storms to occur. However, when
> both are enabled simultaneously, the two combined interrupt storms will
> lead to rcu stalls. Red Hat is the only company still using this board
> and since we still need pcie3a, just disable pcie2a.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sa8540p-ride: disable pcie2a node
      commit: 07bbe3fd0704ab47d365756a31f45a86e3b45c0a

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>


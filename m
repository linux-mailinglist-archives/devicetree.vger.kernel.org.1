Return-Path: <devicetree+bounces-138634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DA6A11755
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 03:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4D12168AE0
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 02:35:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00B67143C72;
	Wed, 15 Jan 2025 02:35:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63DE6FB9;
	Wed, 15 Jan 2025 02:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736908535; cv=none; b=eR7HB3Jqw/cMgHsgSxjLILIjLk8S2s+qIA9cvUNVFSU57yD3kzn2bW+A3o3ib+uspbUZ6CtYDFqaxuNjzgmYaoysy1LdpPeUR/Psd/NGhsBrSieWMrpqOy8RuMoVRFobFN/e28ZZ49IKMinCZVoIrtaNkr9Z+BvDzp7+SkMJ9j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736908535; c=relaxed/simple;
	bh=SQljgjS7JJB5EAbHcIorus4sTitlA3zsrsobuT7gR34=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AwOZ9CJKkLB5PhxkcJ5GgKNQKi4z364TztXSwc/4Wngb5ucSylTEYADu1hjHht19rqAPnmEZVvdJd3QF1bvpFSRJ1vlUXPtUk9Xr2mI/BCJRJLQN5EEjx8lRVe0YZzveOcoLZEPA+S3K/l9EliCQKpyxden0PGroXj3/Q6t60Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:1f0::1])
	by smtp.qiye.163.com (Hmail) with ESMTP id 8b615223;
	Wed, 15 Jan 2025 10:30:21 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v7 3/3] arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
Date: Wed, 15 Jan 2025 10:30:18 +0800
Message-Id: <20250115023018.15353-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250114001411.1848529-4-bigfoot@classfun.cn>
References: <20250114001411.1848529-4-bigfoot@classfun.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZS0NPVhlDHx5DTkhJSh5NSVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUodS0FBSllXWRYaDxIVHRRZQVlPS0hVSktJSEJIQl
	VKS0tVSkJLS1kG
X-HM-Tid: 0a9467cc2b3f03a2kunm8b615223
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NiI6Sgw4EjITNU8OTipCOA0p
	TSwKCQlVSlVKTEhNQktDSUlJT0hPVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBSh1LQUFKWVdZCAFZQU1IQjcG

Hi,
> [1] https://github.com/photonicat/rockchip_rk3568_kernel/blob/novotech-5.10/arch/arm64/boot/dts/rockchip/rk3568-photonicat-base.dtsi

I don't think this link has reference value. I was misled
by this several times when I wrote dts before.

> +&pcie3x2 {
> +	max-link-speed = <1>;
> +	num-lanes = <1>;

I'm not sure about this.
This PCIe3.0 x2 is not split.

> +&sdmmc1 {
> ...
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;

pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_clk &sdmmc1_cmd>;

> +	wifi: wifi@1 {
> +		reg = <1>;

No aliases needed.
Other parts LGTM.

-- 
2.25.1



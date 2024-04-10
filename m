Return-Path: <devicetree+bounces-57732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC5F89E991
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 07:16:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDE89287892
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 05:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7763EA69;
	Wed, 10 Apr 2024 05:15:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F1136B08
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712726123; cv=none; b=l6gH+UFf0B3MJM6oYBndzDHhsI34Yb+yD4XuPkLvOAlgTUus4inZgh0Hl1du27qAcBMdMgIdcC9v3sKKaUVOZ4cGwasvL2qsTnKH0zmcch+sf/WpPB8PT8+8cReLS/04M2ccmaKnTnmK0xhKBThbWXI4x5BqzkhUv/n6FsGu8YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712726123; c=relaxed/simple;
	bh=M0YiND2HKIQuhLDy8IgiKiLUmMGVlmv6hn9b6HFsP6c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HnSvmi3npLajGZStkhpL5/BBKa1QkjZ8N/94s7LVxcnBay2FEwy/v17Lgef86ETp3VdWpxnmzg4NqAyUjwz3I8DlUbt+p8LfM8BDP4AqcMbW8kCc+Pq+R8pX3V+KCfuZjeNKma+/olFboPYgPZNn6WlRzOMcnWNIm9CZDTXC4E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIh-0008Ut-EM; Wed, 10 Apr 2024 07:15:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588s: Fix ordering of nodes
Date: Wed, 10 Apr 2024 07:14:59 +0200
Message-Id: <171272604791.1867483.14821084359814414350.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240406172821.34173-1-didi.debian@cknow.org>
References: <20240406172821.34173-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sat, 6 Apr 2024 19:28:04 +0200, Diederik de Haas wrote:
> Fix the ordering of the main nodes by sorting them alphabetically and
> then the ones with a memory address sequentially by that address.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588s: Fix ordering of nodes
      commit: cbb97fe18e299ece1c0074924c630de6a19b320f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>


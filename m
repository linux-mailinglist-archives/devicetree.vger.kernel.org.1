Return-Path: <devicetree+bounces-28018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2311D81C7E6
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 11:11:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 524251C250C2
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 10:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 671C310A0D;
	Fri, 22 Dec 2023 10:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGSZCPmo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BA610A08;
	Fri, 22 Dec 2023 10:11:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CCB0C433C8;
	Fri, 22 Dec 2023 10:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703239887;
	bh=DybWC/CA4ZameBSKRd+0rcXv+5qfoPmh0vOzSTJHZK0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DGSZCPmoiZPqwUl8F0x94v6QcbIUMnhOT/PJfbNPnZAAqIQ/1z4ETaYlb21tLAnHr
	 Wv0XkkkRjSJ6B5/7EFxQQ7w2c/bhC65R5U2PGJtL/IByuNYZMILDv63MRTH7/ETIzT
	 nZlvTh+zwHn2HsOV4azKfB7Yejp0DM0ScB7JMYyYozLl8Z0I+E84iUYyqefLHLHAsY
	 J4IxJr2+8+PDp6M/VdRMJ4+Ww+7pTB7r+JUscyCQF/aWmIlIA6f8NcVYfr+AQox4Pv
	 qzDforNP3ykYV+lfmJZRTZErSDpF8Gs+l0dim2iw7eeFuBKdOBObfO+QU5Y3A4YBt8
	 u8BI+gVIcyMoQ==
Message-ID: <84898c6f-8325-41f7-8186-c01a3cd830e4@kernel.org>
Date: Fri, 22 Dec 2023 12:11:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] dt-bindings: phy: cadence-torrent: Add a separate
 compatible for TI J7200
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: mparab@cadence.com, s-vadapalli@ti.com
References: <20231221162051.2131202-1-sjakhade@cadence.com>
 <20231221162051.2131202-5-sjakhade@cadence.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20231221162051.2131202-5-sjakhade@cadence.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21/12/2023 18:20, Swapnil Jakhade wrote:
> TI J7200 uses Torrent SD0805 version which is a special version derived
> from Torrent SD0801 with some differences in register configurations.
> Add a separate compatible for TI J7200 platforms.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
cheers,
-roger


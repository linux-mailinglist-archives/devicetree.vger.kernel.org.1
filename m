Return-Path: <devicetree+bounces-24546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B0E80F9C2
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 22:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9959F1F211D8
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 21:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B083F64CC1;
	Tue, 12 Dec 2023 21:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="aL6LoBet"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 552BAB0
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 13:52:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702417958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=L4O0xLTuW49hcnRZ6oXP9tZLQjMz8O4O8wL9GnqPeFA=;
	b=aL6LoBetuv5N4jVCYP5te9l4WA27jUJVjQXU2nQ7jO70NyNhsaoauPpCdAQohWKI7IZUU5
	pzGcTN3tNVes4w6cK72ICDQBp3/vwsG4qSdCzfwHvGVducJQbqCmqa8ae3HiJfpL/IJoEX
	sxk46DYP7hjJFNprAuVIVG4Qjny1KY3EM86tRkFIivWgzEFOa6CQD8qY3n0IoNlnLUVBXM
	oXbWNVI7/267z3cAdGhbJrK2i7uUCZHuArF1QUpLJSo7U7im8m5xdYrNHomWTDcLxAaejV
	NCTm/k/WUtHgCFjgpqNNDTnNHI1gP76HBzxBxJW9bAxrpotk3/K+EPSAFdLvOw==
Date: Tue, 12 Dec 2023 22:52:38 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org
Subject: Re: [PATCH 0/4] Remove ethernetX aliases from the SoC dtsi for
 RK3399, RK3368, RK3328 and PX30
In-Reply-To: <170241214697.534713.17361998299651815805.b4-ty@sntech.de>
References: <cover.1702366958.git.dsimic@manjaro.org>
 <170241214697.534713.17361998299651815805.b4-ty@sntech.de>
Message-ID: <953de15233be59ae1b3bf69e0d2e7474@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2023-12-12 21:16, Heiko Stuebner wrote:
> On Tue, 12 Dec 2023 08:53:47 +0100, Dragan Simic wrote:
>> Unlike for the I2C buses, GPIO lines and UARTs, the Rockchip SoC TRMs 
>> and
>> datasheets define no numbering for the built-in GMAC(s) or MAC(s), if 
>> there
>> are more than one found in the particular Rockchip SoC.
>> 
>> Moreover, not all boards or devices based on these SoCs actually use 
>> the
>> built-in GMAC(s) or MAC(s).  Thus, let's remove the ethernetX aliases 
>> from
>> the SoC dtsi files and add them back to the appropriate board and 
>> device
>> dts(i) files.  See also [1] for the initial discussion.
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi 
> for RK3399
>       commit: 8030063ca9b019f9dfb90a654f557d8bb15a97a5
> [2/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi 
> for RK3368
>       commit: 7aab60df473c70f74880267500884b12151b160b
> [3/4] arm64: dts: rockchip: Remove ethernetX aliases from the SoC dtsi
> for RK3328
>       commit: 20a9a7667af6b11b7369073d0186d9c92e52db04
> [4/4] arm64: dts: rockchip: Remove ethernet0 alias from the SoC dtsi 
> for PX30
>       commit: a69907a915e4c15bf7e632cd324ec5c3e38c3afc

Great, thanks!


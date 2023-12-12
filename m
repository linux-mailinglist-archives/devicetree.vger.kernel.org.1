Return-Path: <devicetree+bounces-24547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F8180F9C4
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 22:53:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5441C1C20D2A
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 21:53:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B6864CC4;
	Tue, 12 Dec 2023 21:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="NzY/yOFW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B560B3
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 13:53:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702417991;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FNtX2wpLhIBBWJjUi5CN7W/hdtdfbJUVEA+EGhqew6A=;
	b=NzY/yOFW7L6Cp4SiNILL60Sh5kMmH1v7p2ZxzZMZ4ldZnA0Kn750TFpgPCjOJmSc+9HPwN
	zNoUEj+mvSKhiKMcV8cgLMntV3ZINA3Gaj7W4bgx6q0Gh/mKnzatogAJoUZQQiQR6YS7PS
	kO/b0wsJ2BK/ZnCX6EZIiWOLObDG/d+mVwli+biDF68WfOYLZ8sr3rJjvor80ltWtPnxEW
	euzweonUH+RGQHb0HAF6oSc0GWjBl0Gcjw60AI94ocb3CqYuwhpeUCuCE2KzolPH6/hejB
	eEfEnAt2Zy1UjhbVDvEr0y8AH0zOJfkIH3uGVicvwDQR9Za9j5MxSPz/ZEzhDQ==
Date: Tue, 12 Dec 2023 22:53:10 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add ethernet0 aliases to the
 dts files for RK3566 and RK3588(S) boards
In-Reply-To: <170241214697.534713.13455667285782606746.b4-ty@sntech.de>
References: <cover.1702368023.git.dsimic@manjaro.org>
 <170241214697.534713.13455667285782606746.b4-ty@sntech.de>
Message-ID: <5da1986c4db2e47c73ef8d33cdfd6fff@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2023-12-12 21:16, Heiko Stuebner wrote:
> On Tue, 12 Dec 2023 09:01:38 +0100, Dragan Simic wrote:
>> To complete the process started with the migration of the ethernet0 
>> aliases
>> from the SoC dtsi files to the board/device dts(i) files, started in 
>> [1],
>> let's add ethernet0 aliases to the board dts files that had it 
>> missing.
>> See also [2] for a related discussion.
>> 
>> At the same time, let's remove the ethernet0 alias from one SoM dtsi 
>> file,
>> which doesn't enable the GMAC, and add the same alias back to the 
>> dependent
>> board dts files, which actually enable the GMAC.
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3566 
> boards
>       commit: 8a5f97b061432f72002b8aa158e372f1b10a079e
> [2/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for 
> RK3588(S) boards
>       commit: a40d30460dda56c6ad308cb338e240bc4a625faa

Great, thanks!


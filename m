Return-Path: <devicetree+bounces-11219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EBB7D4C7D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:33:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5DF86B21006
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30DDA2421F;
	Tue, 24 Oct 2023 09:33:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="XS4nY1Ue"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA97241F9
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:33:27 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FC6F1BE7;
	Tue, 24 Oct 2023 02:33:24 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id 5F862403C2;
	Tue, 24 Oct 2023 14:33:22 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1698140002; bh=vvlsPglAafPbW2BKSO9r1EkmmFaEoY05iLxuBLOPVXQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=XS4nY1Uep/9630q6iXI4qyhdoYuIXQ0uf8TehNa5FnUN7+O+mBS4jpRPQxQv+PkM5
	 NvVzRpvl6iio/4OVeQziKjlVLNVnJHiSJS90JJC/t4rSmQH7Dr4fvzsQxNejXogxPZ
	 9UpcnfksAZKQVIgW5tHDsD6FoaiDyBXtxZiScbW4aLLx74eMOBJX+TuHGEw8gMH7uT
	 SfBeSHwvVDjGsnR1XeBs4TjkQRdwzo4iuk1ssaQf6GNyqzx3nw2L05YR+ctfUDl4Jj
	 Qb7JfzLygNu2u9k5urZjR/rtPPlW1bpTIy0HDJ1ugYhfcLkn2HFjiLeu//AUlj/Ieb
	 yFAFteDwgtwgw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Tue, 24 Oct 2023 14:33:21 +0500
From: Nikita Travkin <nikita@trvn.ru>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Lee
 Jones <lee@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: msm8916-longcheer-l8150: Add
 battery and charger
In-Reply-To: <72a9ce0f-1bdf-4d97-a9f6-1aba532b0f18@linaro.org>
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
 <20231023-pm8916-dtsi-bms-lbc-v2-3-343e3dbf423e@trvn.ru>
 <72a9ce0f-1bdf-4d97-a9f6-1aba532b0f18@linaro.org>
Message-ID: <a4adb159c5afb3a16d4b181a3c9afcbc@trvn.ru>
X-Sender: nikita@trvn.ru
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Konrad Dybcio писал(а) 24.10.2023 13:33:
> On 10/23/23 08:20, Nikita Travkin wrote:
>> Longcheer L8150 doesn't have any dedicated fuel-gauge or charger,
>> instead making use of the pmic hardware blocks for those purposes.
>>
>> Add pm8916 bms and charger, as well as the battery cell description
>> that those blocks rely on.
>>
>> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
>> ---
> Doesn't apply on next, please rebase.
> 

Ah, great, I guess I sent the series just a bit too early
and the -next didn't update yet...

I think at this point I might as well just wait for the -rc1,
will probably save everyone a bit of trouble...

Nikita

> Konrad


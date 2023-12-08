Return-Path: <devicetree+bounces-23024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13941809F1C
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 10:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C2471C209D8
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 09:19:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 484EC125B0;
	Fri,  8 Dec 2023 09:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="c5ZzOKjG"
X-Original-To: devicetree@vger.kernel.org
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17A051716;
	Fri,  8 Dec 2023 01:19:15 -0800 (PST)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id 8F7AB42C2B;
	Fri,  8 Dec 2023 14:19:12 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1702027153; bh=t+bjnp+qG/kG37IDVL7TIjl1JfM4ev6dMaDhwWJWoEY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=c5ZzOKjG5Er4dNbgmllmXYOsiIHPwE5TyX4xo+D+YBfHVtUCASUfamcRjT3c8o9nJ
	 xftb5qT+I7W/lZmrK8L5UPuiOqgg6QHdD/5+uUVWF82gmyzlhyuIVJkyqR0Lz8ujSA
	 uE7aY2O8jJnddaRcNxyXhcduMbfcxWZwIENIfiaDJ84LXL84XVv15fRjlyOs8gX/Hy
	 rUo0y2HjToj/1tn268OMGRl51BCdHuJHxj5dPCjQPD2rxf+bVgqYik+l3q5xI/b4Le
	 fc4tKeIlsigqahrjXrTI4TOShSw/Pn7BU2bDeWxyW8TyZNa9uZB10EYowMkdoNLDx6
	 DM7h54nbzUfUg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Fri, 08 Dec 2023 14:19:11 +0500
From: Nikita Travkin <nikita@trvn.ru>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Konrad Dybcio
 <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Stephen Boyd
 <sboyd@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: pm8916: Add BMS and charger
In-Reply-To: <mmxk4dko6ib2pgrzcotxf65q5c7d4eaykd4sfh2ryrmfbdabd7@wnttadck2mda>
References: <20231120-pm8916-dtsi-bms-lbc-v4-0-4f91056c8252@trvn.ru>
 <20231120-pm8916-dtsi-bms-lbc-v4-2-4f91056c8252@trvn.ru>
 <mmxk4dko6ib2pgrzcotxf65q5c7d4eaykd4sfh2ryrmfbdabd7@wnttadck2mda>
Message-ID: <1a6be726b31919a31f369c64e75e0f41@trvn.ru>
X-Sender: nikita@trvn.ru
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Bjorn Andersson писал(а) 08.12.2023 07:48:
> On Mon, Nov 20, 2023 at 07:03:04PM +0500, Nikita Travkin wrote:
>> diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
> [..]
>>
>> +		pm8916_bms: battery@4000 {
> 
> "battery" is not a valid child of the pmic according to
> mfd/qcom,spmi-pmic.yaml, so please update the binding to remove the
> warnings that this introduces.
> 

This should be done in 1/3 which is already accepted to mfd,
so the warning should be gone when the stuff is pulled together.

Sorry for not making sure it's in earlier
Nikita

> Thanks,
> Bjorn


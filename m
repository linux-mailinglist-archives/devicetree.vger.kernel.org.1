Return-Path: <devicetree+bounces-133552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A8A9FAE52
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 13:38:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B198F16472E
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 500341A3A95;
	Mon, 23 Dec 2024 12:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="wwPMXFHV"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A5119DFB4;
	Mon, 23 Dec 2024 12:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734957528; cv=none; b=qC0m8W5VBFFuxv7y5sp8CDaLbVEhZzQ5BmITzWPyFZXjX8gKCwBBvpf3Yc6Xtn93ez1ZAbDXi4G1eTkwHfVRhR9uLq4qytEiB/kJN9t68dYSD9KJt60mun/IgrAb3yAPL0gkCvx2qYlSEzuG741U5Qa6uNH1zEwn2n+JRbKqp7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734957528; c=relaxed/simple;
	bh=UYWEoNClgv2Tvu7a83Q418fJEqD4vbEOFEe5smkP78Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MALZ4CR6v4cvDCjjN8H+BFd2M7OQRQFQuQYM9B7aqAgufAuhcsTuku2KwX3jcSNC6NHL7MF6wclVF9NMKTHnRtD0IyD1XsHK4mXnEBGtNS2OgYrvehVXg36malxobiz5u1zNaU9H8oZIagpfoScOJ9T6SnlmvOm1uJkIxgswKPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=wwPMXFHV; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SGKjXT44ZxRLzSSUoOpZvLtX/l3kIF1j/AjArQpwkAU=; b=wwPMXFHV6pZGalDr4H4ARCpQjp
	JX/74ZMXMJou9/+klqzemjn9t/ujgZh7UYLgaOY/tyvH+Bkk+JzEu5Zn4i5bKwTN8pdDnf+APH9ok
	zSxoZs21/BBd+IyqF8RycethVN4E658aLIPO5W5guswqIOZ0N4t6BOJHZ7f3NtcK1w88CG/MW3fhD
	T3gz1M9H97AJNO+wknh2JZRs4I9O2onE3jg8gKw0XbkswkOnNMBtHEEvSiNjSdNAh1PPtMv2dLPz0
	1j4C0fCgSpDOKzBMUxVAo2gdcyJ5uPRbYmuE8vScNWmZpJMdHXICqtrC3u3yhyZkq/Od6gK9YvmCc
	oT2dahag==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tPhhg-0002QI-VZ; Mon, 23 Dec 2024 13:38:33 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Finley Xiao <finley.xiao@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Liang Chen <cl@rock-chips.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/7] dts: arm64: rockchip: Add rk3576 pcie nodes
Date: Mon, 23 Dec 2024 13:38:31 +0100
Message-ID: <2046140.PIDvDuAF1L@diego>
In-Reply-To: <bfd84b6b-9b19-4d9b-b0a3-cb6ed1f8084c@rock-chips.com>
References:
 <20241220101551.3505917-1-kever.yang@rock-chips.com>
 <i54jjqt7uaxrurdapsyxwmb5iokiwzgm5cvlaamlggycrpyd3v@azhmfwgetrzm>
 <bfd84b6b-9b19-4d9b-b0a3-cb6ed1f8084c@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Montag, 23. Dezember 2024, 11:49:23 CET schrieb Kever Yang:
> Hi Krzysztof,
> 
> On 2024/12/22 14:38, Krzysztof Kozlowski wrote:
> > On Fri, Dec 20, 2024 at 06:15:47PM +0800, Kever Yang wrote:
> >> rk3576 has two pcie controller, both are pcie2x1 used with
> >> naneng-combphy.
> >>
> >> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> >> ---
> > Please use subject prefixes matching the subsystem. You can get them for
> > example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
> > your patch is touching. For bindings, the preferred subjects are
> > explained here:
> > https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters
> >
> Will update with arm64: dts: .
> >> Changes in v2:
> >> - Update clock and reset names and sequence to pass DTB check
> >>
> >>   arch/arm64/boot/dts/rockchip/rk3576.dtsi | 109 +++++++++++++++++++++++
> >>   1 file changed, 109 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> >> index a147879da501..df7dfe702221 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> >> @@ -1016,6 +1016,115 @@ qos_npu_m1ro: qos@27f22100 {
> >>   			reg = <0x0 0x27f22100 0x0 0x20>;
> >>   		};
> >>   
> >> +		pcie0: pcie@2a200000 {
> >> +			compatible = "rockchip,rk3576-pcie", "rockchip,rk3568-pcie";
> >> +			bus-range = <0x0 0xf>;
> > Follow DTS coding style in properties order and everything around here.
> 
> I can do it for most of the properties, but is there any other rules 
> other than sort,
> 
> eg. compatible and reg in the beginning and status in the end?

correct, that is the preferred sorting :-) .


Heiko




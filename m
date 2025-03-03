Return-Path: <devicetree+bounces-153977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FBBA4E682
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 17:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB54E8C5D69
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 16:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3FF1278108;
	Tue,  4 Mar 2025 16:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/sEm5fC"
X-Original-To: devicetree@vger.kernel.org
Received: from beeline1.cc.itu.edu.tr (beeline1.cc.itu.edu.tr [160.75.25.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7D02780FB
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 16:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=160.75.25.115
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741104379; cv=pass; b=GrUyjKT/pKJvXWWO0UhWNc1UL3Xh6IYJ1Ak3RFGbC9rI8RZXinAprT21BpHmq76Er8BtWq2B5VfSrI1tociX+dpn5w1XjxCDHf+rMfno5VmqSmff9TOYDd8ptYtl/EBhtdY83GVPcfPpa0G1qmOaFotTen7yQLOijPh0W6bxU/w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741104379; c=relaxed/simple;
	bh=oSR/KHjI9MSt0N2w8+L2Fx68vorquw7bUIpd7Zjxu6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WnMjL8gO7b6Za/6+emQl4NgaKn1OjIsT2ogLdGd0/8QiG2Sjh0F7EJEY9txbNvgEpDrzvZHg1ljB5LBtiY0S3uVHOUccQF7T5WkMsZQczTIh8lP2MFQTUhAAu5NJks5GIAWPWV6Qu/z7PLqndfaM35ttFQoKXwWd2roufhrbaos=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/sEm5fC; arc=none smtp.client-ip=10.30.226.201; arc=pass smtp.client-ip=160.75.25.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (unknown [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline1.cc.itu.edu.tr (Postfix) with ESMTPS id 7186740D9772
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 19:06:16 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6gVR2cGkzG2Js
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 19:04:31 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id CB6B642753; Tue,  4 Mar 2025 19:04:20 +0300 (+03)
Authentication-Results: lesva1.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/sEm5fC
X-Envelope-From: <linux-kernel+bounces-541753-bozkiru=itu.edu.tr@vger.kernel.org>
Authentication-Results: lesva2.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/sEm5fC
Received: from fgw1.itu.edu.tr (fgw1.itu.edu.tr [160.75.25.103])
	by le2 (Postfix) with ESMTP id AF5FA4234E
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 16:03:50 +0300 (+03)
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by fgw1.itu.edu.tr (Postfix) with SMTP id 85E203063EFC
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 16:03:50 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E553188C583
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EF1720FAB9;
	Mon,  3 Mar 2025 13:03:19 +0000 (UTC)
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB1221147C;
	Mon,  3 Mar 2025 13:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741006996; cv=none; b=K/QaASpNXOTWIRK6Ep+tpSbsuP41HivLzX7RhSTBKzFf8bRfFakDJSxsdMFUWDWPW3kobw4mib5Ifdx732ZgD60Pki892u4HgwL4NQEb277mVzTANF2PQRRnOiERhsfPlXIsH8H1LrjSAUvQhLYFIwcd8ZmmRgJ+belWIyZQ9Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741006996; c=relaxed/simple;
	bh=oSR/KHjI9MSt0N2w8+L2Fx68vorquw7bUIpd7Zjxu6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T8G3B1a7YJS+hSvq9fYsYx4yVN4aIWPyVvekBBvlO9YSfR2nPQ62/dN8lWLI6Egod8v0fffryEIJTmrZQgIV1SjC+ixSS9DrCUEOv3gQYlYeMRDNLVa9AFnS3Og4BpAp9/xgxjXZjh63wSvpTz1QwUDLMugDcCk7DK7dqzPmlnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/sEm5fC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B335BC4CED6;
	Mon,  3 Mar 2025 13:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741006994;
	bh=oSR/KHjI9MSt0N2w8+L2Fx68vorquw7bUIpd7Zjxu6I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z/sEm5fCwsRHugQtLNJsfW5yPPUlDiCwJa4NkvnByLNoMfQhw0BvsRfgKtIHNQGHc
	 tSMD0zD8Tdo3b5qweXFYRAXreJXTW9+Bb1QDiAyJCI+MpFf5cJohYXBIG+SWY3GXTd
	 ENnE8u+b9iRvuUHp0A9+nivyYUvvsLZq5MEpfDBWPxJtn/UnUSW5ZPv/LLJ/Q/4L2f
	 QoTG+DCpcqSm1R4BGUCN+8sYyqIu/xTZPM5oMZrT63m1DylnVlsjxoPDDwVscE3Sff
	 q7Ouknnsio+E4OUH092C60Zd8t8cUPssNpCMvX3ZHMsEMj1ZBvQTgdd63IHRXM7e64
	 sLBUOcBgvb3iw==
Date: Mon, 3 Mar 2025 07:03:13 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, broonie@kernel.org,
	nicoleotsuka@gmail.com, krzk+dt@kernel.org, festevam@gmail.com,
	linux-sound@vger.kernel.org, lgirdwood@gmail.com,
	devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, perex@perex.cz, conor+dt@kernel.org,
	tiwai@suse.com
Subject: Re: [PATCH 1/4] ASoC: dt-bindings: fsl,sai: Document audio graph port
Message-ID: <174100699235.1416596.7740734064527505113.robh@kernel.org>
References: <20250226100508.2352568-1-shengjiu.wang@nxp.com>
 <20250226100508.2352568-2-shengjiu.wang@nxp.com>
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226100508.2352568-2-shengjiu.wang@nxp.com>
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6gVR2cGkzG2Js
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741709101.11574@ShyQcipFLegv+MmyOhPhLA
X-ITU-MailScanner-SpamCheck: not spam


On Wed, 26 Feb 2025 18:05:05 +0800, Shengjiu Wang wrote:
> This device can be used in conjunction with audio-graph-card to provide
> an endpoint for binding with the other side of the audio link.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  .../devicetree/bindings/sound/fsl,sai.yaml    | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>




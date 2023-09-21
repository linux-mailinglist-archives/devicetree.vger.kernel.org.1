Return-Path: <devicetree+bounces-2151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 456877A9C45
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8118AB2231D
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0806143AA2;
	Thu, 21 Sep 2023 18:10:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3B6405C4
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:10:47 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F16AAF976;
	Thu, 21 Sep 2023 11:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=H0wDWGM/2PBIbk/yXbAOjYkvlXpuBN14KtZzTicg7Ms=; b=T9l7Wlkzjg1dnAjRsTuSln5NmA
	Bar1e75HbYp3F8T+58G5qIwVYIKi3U0u+k5HEbjVloOlAzzo8D9Oql8vgUxAt4fnK2ERnDOoPFOTH
	vhNQpssCvxDQ6NlfonCuO0Rk5xyhZi8z/hTluRa0p2CBxn0NJd2N/dhtCasD+FcPB19w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qjMKC-0076Vj-W7; Thu, 21 Sep 2023 18:14:44 +0200
Date: Thu, 21 Sep 2023 18:14:44 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: MD Danish Anwar <danishanwar@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>,
	afd@ti.com, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, Tero Kristo <kristo@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, srk@ti.com,
	r-gunasekaran@ti.com
Subject: Re: [PATCH v2 3/4] arm64: dts: ti: k3-am654-idk: Add ICSSG Ethernet
 ports
Message-ID: <a39316d6-8804-4dc4-b5d8-a2dfd82b972e@lunn.ch>
References: <20230921060913.721336-1-danishanwar@ti.com>
 <20230921060913.721336-4-danishanwar@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921060913.721336-4-danishanwar@ti.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

> +	/* Dual Ethernet application node on PRU-ICSSG0 */
> +	/* Dual Ethernet application node on PRU-ICSSG1 */

Not relevant to this patch, but to the ongoing discussions around
adding switchdev support.

Are these two PRU-ICSSG instances completely separate? It is
physically impossible to combine these four ethernet ports in one
acceleration domain? It will always be two separate switches, and if
frames need to go from one switch to the other it happens in software?

       Andrew


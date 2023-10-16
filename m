Return-Path: <devicetree+bounces-8788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B43C27CA10A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:54:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6D2D1C2090C
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 07:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF17717722;
	Mon, 16 Oct 2023 07:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=helmholz.de header.i=@helmholz.de header.b="RTzkJj3B"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CDD01802D
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 07:54:02 +0000 (UTC)
Received: from mail.helmholz.de (mail.helmholz.de [217.6.86.34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EFEA103
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 00:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=helmholz.de
	; s=dkim1; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=ngQA2UXPqbvVAjT+xhmuNpfsjFjFJDhMWj120VzIiR0=; b=RTzkJj3BM96l6JFb2aDFsGl5DP
	Js9q3EFC5LsPQGcycbtoLcdYVdhuESKlc4YXifHnbHE0MIIXBDCVNhxJK9zIm/801jeLBVaqyBRq2
	mAl3eeHKSKIa6wDsm7mDcwYdTjEiGztYsm4ny5Vd6ytQ58/BtEkN1UeH2j0LNfXyg9wSgK2WstQCG
	X+QrEQYPUGpHVOrTnmVaa4sNqLN5WtMrHxUPBIZgcB/lcOBFBq8sumF1+Vr6BU7L0Hu0cAS247CQX
	UpSh4fJhOYMZoCl/gYc1cJkPU6Q883kActkYiJF4yv6OYg1ikBb9HDUSYfy6v81cSPcQPABBk0/g+
	6668kK5A==;
Received: from [192.168.1.4] (port=11103 helo=SH-EX2013.helmholz.local)
	by mail.helmholz.de with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
	(Exim 4.96)
	(envelope-from <Ante.Knezic@helmholz.de>)
	id 1qsIQF-0006Qb-0B;
	Mon, 16 Oct 2023 09:53:55 +0200
Received: from linuxdev.helmholz.local (192.168.6.7) by
 SH-EX2013.helmholz.local (192.168.1.4) with Microsoft SMTP Server (TLS) id
 15.0.1497.48; Mon, 16 Oct 2023 09:53:54 +0200
From: Ante Knezic <ante.knezic@helmholz.de>
To: <conor@kernel.org>
CC: <andrew@lunn.ch>, <ante.knezic@helmholz.de>, <conor+dt@kernel.org>,
	<davem@davemloft.net>, <devicetree@vger.kernel.org>, <edumazet@google.com>,
	<f.fainelli@gmail.com>, <krzysztof.kozlowski+dt@linaro.org>,
	<kuba@kernel.org>, <linux-kernel@vger.kernel.org>, <marex@denx.de>,
	<netdev@vger.kernel.org>, <olteanv@gmail.com>, <pabeni@redhat.com>,
	<robh+dt@kernel.org>, <woojung.huh@microchip.com>
Subject: [PATCH net-next 2/2] dt-bindings: net: microchip,ksz: document microchip,rmii-clk-internal
Date: Mon, 16 Oct 2023 09:53:49 +0200
Message-ID: <20231016075349.18792-1-ante.knezic@helmholz.de>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20231012-unicorn-rambling-55dc66b78f2f@spud>
References: <20231012-unicorn-rambling-55dc66b78f2f@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.6.7]
X-ClientProxiedBy: SH-EX2013.helmholz.local (192.168.1.4) To
 SH-EX2013.helmholz.local (192.168.1.4)
X-EXCLAIMER-MD-CONFIG: 2ae5875c-d7e5-4d7e-baa3-654d37918933
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, 12 Oct 2023 16:18:09 +0100, Conor Dooley wrote:
> On Thu, Oct 12, 2023 at 12:55:56PM +0200, Ante Knezic wrote:
> > Add documentation for selecting reference rmii clock on KSZ88X3 devices
> > 
> > Signed-off-by: Ante Knezic <ante.knezic@helmholz.de>
> > ---
> >  .../devicetree/bindings/net/dsa/microchip,ksz.yaml    | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
> > index 41014f5c01c4..eaa347b04db1 100644
> > --- a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
> > +++ b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
> > @@ -72,6 +72,25 @@ properties:
> >    interrupts:
> >      maxItems: 1
> >  
> > +  microchip,rmii-clk-internal:
> > +    $ref: /schemas/types.yaml#/definitions/flag
> > +    description:
> > +      Set if the RMII reference clock is provided internally. Otherwise
> > +      reference clock should be provided externally.
> 
> I regret not asking this on the previous iteration - how come you need a
> custom property? In the externally provided case would there not be a
> clocks property pointing to the RMII reference clock, that would be
> absent when provided by the itnernal reference?
> 
> Cheers,
> Conor.

In both cases (external and internal), the KSZ88X3 is actually providing the
RMII reference clock. Difference is only will the clock be routed as external
copper track (pin REFCLKO -> pin REFCLKI), or will it be routed internally.
So, this should not affect the clock relation between the uC and the switch
device? 
This property has no effect if KSZ88X3 is not providing the reference clock.
Maybe I should provide more info in the commit message of both patches as well?


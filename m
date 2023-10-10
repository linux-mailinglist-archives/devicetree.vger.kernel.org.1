Return-Path: <devicetree+bounces-7282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F447BFE1F
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81DB81C20C57
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92541DFE6;
	Tue, 10 Oct 2023 13:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=helmholz.de header.i=@helmholz.de header.b="P6wZVa0C"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DC01DFDA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:44:03 +0000 (UTC)
Received: from mail.helmholz.de (mail.helmholz.de [217.6.86.34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8AC6D5B
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=helmholz.de
	; s=dkim1; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=58ZoqIePQbaXCkZO/D6i1bdEFOArNnMuxoq8m/4TE5s=; b=P6wZVa0CZT+7Ph5clXc6cu77Co
	uxDDCYAksQLa2SBEO+QZAiy/UFPE2TktGoLTDmXMWaElfstV4fcJY9Lk0XB8jF3jnb2LV9sbqvaFh
	ALMQstjPe6ie/57P0nJx89xiGS8jLWDIB79Iwv6EWQ7MtWthZuUGvNyR5daY9Ac+aEILfaRAq+Eh9
	M0u++UEaPkii7if/vgLJ8tJrat0ngNK4nduj1Q8C4Yh94forRIzBJEC04nVLZQooAxtRYwmZH+fTb
	uY2H7dxxvpQbCVFfkWGLZWsqjqCqYXAwCCuLzCliXEAdXLGVKh2EF8oAhS1Vw156z/ynepBgTq8+q
	XR9H24tQ==;
Received: from [192.168.1.4] (port=21629 helo=SH-EX2013.helmholz.local)
	by mail.helmholz.de with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
	(Exim 4.96)
	(envelope-from <Ante.Knezic@helmholz.de>)
	id 1qqCzY-0005L7-0P;
	Tue, 10 Oct 2023 15:41:44 +0200
Received: from linuxdev.helmholz.local (192.168.6.7) by
 SH-EX2013.helmholz.local (192.168.1.4) with Microsoft SMTP Server (TLS) id
 15.0.1497.48; Tue, 10 Oct 2023 15:41:43 +0200
From: Ante Knezic <ante.knezic@helmholz.de>
To: <andrew@lunn.ch>
CC: <UNGLinuxDriver@microchip.com>, <ante.knezic@helmholz.de>,
	<conor+dt@kernel.org>, <davem@davemloft.net>, <devicetree@vger.kernel.org>,
	<edumazet@google.com>, <f.fainelli@gmail.com>,
	<krzysztof.kozlowski+dt@linaro.org>, <kuba@kernel.org>,
	<linux-kernel@vger.kernel.org>, <marex@denx.de>, <netdev@vger.kernel.org>,
	<olteanv@gmail.com>, <pabeni@redhat.com>, <robh+dt@kernel.org>,
	<woojung.huh@microchip.com>
Subject: [PATCH net-next 2/2] dt-bindings: net: microchip,ksz: document microchip,rmii-clk-internal
Date: Tue, 10 Oct 2023 15:41:39 +0200
Message-ID: <20231010134139.17180-1-ante.knezic@helmholz.de>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <6a366c3a-49e7-42a4-83b2-ef98e7df0896@lunn.ch>
References: <6a366c3a-49e7-42a4-83b2-ef98e7df0896@lunn.ch>
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
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 10 Oct 2023 15:25:44 +0200, Andrew Lunn wrote:
>> +  microchip,rmii-clk-internal:
>> +    $ref: /schemas/types.yaml#/definitions/flag
>> +    description:
>> +      Set if the RMII reference clock should be provided internally. Applies only
>> +      to KSZ88X3 devices.
>
>It would be good to define what happens when
>microchip,rmii-clk-internal is not present. Looking at the code, you
>leave it unchanged. Is that what we want, or do we want to force it to
>external?
>
>	Andrew

Default register setting is to use external RMII clock (which is btw only 
available option for other KSZ devices - as far as I am aware) so I guess 
theres no need to force it to external clock?


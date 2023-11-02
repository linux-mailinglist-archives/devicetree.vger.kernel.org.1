Return-Path: <devicetree+bounces-13674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 724C77DFC51
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 23:22:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD25FB2127E
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 22:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D98D622314;
	Thu,  2 Nov 2023 22:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="oI1fvdL8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F96208D2
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 22:21:52 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB99D138;
	Thu,  2 Nov 2023 15:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=W67Q+ocST212snQ+6u1nGmsoUqf/Gk6b3ey7lpHRMWo=; b=oI1fvdL8GCPZikoCy/gdEYKKCD
	gxgCDL7Ul5sYDOEVq8SopsC1DWtDWpLhPHBEAIik2fN9s7Ety0Ude1CnBRIciQlB7DmPhdtB5i7nS
	6T0VJXvSfqkMrDzclvvf1kwGt4DKTnDaLNLXuvbxS/N4SC2kmHuTe0vkg/Sr5MohFR6M=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:43552 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qyg4E-0006a3-Ba; Thu, 02 Nov 2023 18:21:39 -0400
Date: Thu, 2 Nov 2023 18:21:33 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 leoyang.li@nxp.com, robh@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Hugo
 Villeneuve <hvilleneuve@dimonoff.com>
Message-Id: <20231102182133.092e3cedfa80561477b646bb@hugovil.com>
In-Reply-To: <13357eac-7616-4e3f-965b-52ecae01ab92@linaro.org>
References: <20231102193121.1676000-1-hugo@hugovil.com>
	<20231102193121.1676000-3-hugo@hugovil.com>
	<13357eac-7616-4e3f-965b-52ecae01ab92@linaro.org>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: fsl: add RVE gateway board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Thu, 2 Nov 2023 22:14:41 +0100
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 02/11/2023 20:31, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > Add DT compatible string for RVE gateway board based on a Variscite
> > VAR-SOM-NANO with a NXP MX8MN nano CPU.
> > 
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 32b195852a75..4cef18e46312 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -1018,6 +1018,7 @@ properties:
> >                - fsl,imx8mn-ddr4-evk       # i.MX8MN DDR4 EVK Board
> >                - fsl,imx8mn-evk            # i.MX8MN LPDDR4 EVK Board
> >                - gw,imx8mn-gw7902          # i.MX8MM Gateworks Board
> > +              - rve,rve-gateway           # i.MX8MN RVE Gateway Board
> 
> Eh, now it does not match your DTS.
> 
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
> for instructions).

Hi,
for the millionth time, make dtbs_check stopped working for me:

Traceback (most recent call last):
  File "/usr/local/bin/dt-doc-validate", line 64, in <module>
    ret |= check_doc(f)
           ^^^^^^^^^^^^
  File "/usr/local/bin/dt-doc-validate", line 32, in check_doc
    for error in sorted(dtsch.iter_errors(), key=lambda e: e.linecol):
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/dist-packages/dtschema/schema.py",
line 125, in iter_errors self.annotate_error(scherr, meta_schema,
scherr.schema_path) File
"/usr/local/lib/python3.11/dist-packages/dtschema/schema.py", line 104,
in annotate_error schema = schema[p] ~~~~~~^^^

After a few hours of searching and troubleshooting, I am unable to fix
the problem.

But even with this error, I can still see the warnings, which I
discarded as garbage initally because of that Traceback error.

I now see the problem, and I moved "rve,rve-gateway" to the proper
section, in "Variscite VAR-SOM-MX8MN based boards".

After the move, I still have an error, but now I understand that I must
slightly convert the "Variscite VAR-SOM-MX8MN based boards" to support
more than one board like this:

       - description: Variscite VAR-SOM-MX8MN based boards
         items:
-          - const: variscite,var-som-mx8mn-symphony
+          - enum:
+              - rve,rve-gateway # i.MX8MN RVE Gateway Board
+              - variscite,var-som-mx8mn-symphony
           - const: variscite,var-som-mx8mn
           - const: fsl,imx8mn

With these changes, everything looks good now.

I Will send a V4 with these changes.

Thank you,
Hugo.


Return-Path: <devicetree+bounces-3132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 453157AD696
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 5327D1C20442
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99B34179A7;
	Mon, 25 Sep 2023 11:02:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC2B15EA2
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:02:49 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F214D3;
	Mon, 25 Sep 2023 04:02:46 -0700 (PDT)
Received: from pd9e2f713.dip0.t-ipconnect.de ([217.226.247.19] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qkjMB-004AHQ-OP; Mon, 25 Sep 2023 13:02:27 +0200
Date: Mon, 25 Sep 2023 13:02:25 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 <jic23@kernel.org>, <lars@metafoo.de>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
 <bcousson@baylibre.com>, <tony@atomide.com>,
 <jean-baptiste.maneyrol@tdk.com>, <chenhuiz@axis.com>,
 <andy.shevchenko@gmail.com>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-omap@vger.kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: iio: imu: mpu6050: Add level shifter
Message-ID: <20230925130225.55fe6fd4@aktux>
In-Reply-To: <20230925112852.00007d34@Huawei.com>
References: <20230924222559.2038721-1-andreas@kemnade.info>
	<20230924222559.2038721-2-andreas@kemnade.info>
	<6db5b758-2ae6-46fb-a699-d73a2b98b4c2@linaro.org>
	<20230925112852.00007d34@Huawei.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 25 Sep 2023 11:28:52 +0100
Jonathan Cameron <Jonathan.Cameron@Huawei.com> wrote:

> On Mon, 25 Sep 2023 08:54:08 +0200
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
> > On 25/09/2023 00:25, Andreas Kemnade wrote:  
> > > Found in ancient platform data struct:
> > > level_shifter: 0: VLogic, 1: VDD
> > > 
> > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > ---
> > >  .../devicetree/bindings/iio/imu/invensense,mpu6050.yaml         | 2 ++
> > >  1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
> > > index 1db6952ddca5e..6aae2272fa15c 100644
> > > --- a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
> > > +++ b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
> > > @@ -48,6 +48,8 @@ properties:
> > >  
> > >    mount-matrix: true
> > >  
> > > +  invensense,level-shifter: true    
> > 
> > It does not look like you tested the bindings, at least after quick
> > look. Please run `make dt_binding_check` (see
> > Documentation/devicetree/bindings/writing-schema.rst for instructions).
> > Maybe you need to update your dtschema and yamllint.
> > 
> > Best regards,
> > Krzysztof
> > 
> >   
> 
> Also this one isn't obvious - give it a description in the binding doc.
> 
> I'm not sure of the arguement for calling it level shift in general.
> 
I have no more descrption than the old source (see the citation from there)
https://invensense.tdk.com/wp-content/uploads/2015/02/MPU-9150-Register-Map.pdf

does not list it. But that bit is needed to get things to work what also does the
vendor kernel do.

What could be a better descrption?

Regards,
Andreas


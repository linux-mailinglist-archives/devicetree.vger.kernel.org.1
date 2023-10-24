Return-Path: <devicetree+bounces-11259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D21357D4FB7
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:27:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E7981C20A23
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64305748C;
	Tue, 24 Oct 2023 12:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D8D27EC1
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 12:27:10 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26731129;
	Tue, 24 Oct 2023 05:27:09 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.206])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SFB7s0hkbz6K6Gt;
	Tue, 24 Oct 2023 20:24:25 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Tue, 24 Oct
 2023 13:27:06 +0100
Date: Tue, 24 Oct 2023 13:27:05 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: Ramona Gradinariu <ramona.gradinariu@analog.com>, <jic23@kernel.org>,
	<nuno.sa@analog.com>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: adis16460: Add
 'spi-cs-inactive-delay-ns' property
Message-ID: <20231024132705.00003cf4@Huawei.com>
In-Reply-To: <b7011f02-a412-4642-862d-c2df88ae316b@linaro.org>
References: <20231023123542.582392-1-ramona.gradinariu@analog.com>
	<20231023123542.582392-4-ramona.gradinariu@analog.com>
	<b7011f02-a412-4642-862d-c2df88ae316b@linaro.org>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500005.china.huawei.com (7.191.163.240) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected

On Mon, 23 Oct 2023 15:22:30 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 23/10/2023 14:35, Ramona Gradinariu wrote:
> > Add 'spi-cs-inactive-delay-ns' property.  
> 
> This we see from the diff. Commit should explain: Why?
> 
> > 
> > Signed-off-by: Ramona Gradinariu <ramona.gradinariu@analog.com>
> > ---
> >  Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml b/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml
> > index 4e43c80e5119..3691c0be4f9d 100644
> > --- a/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml
> > +++ b/Documentation/devicetree/bindings/iio/imu/adi,adis16460.yaml
> > @@ -25,6 +25,11 @@ properties:
> >  
> >    spi-cpol: true
> >  
> > +  spi-cs-inactive-delay-ns:
> > +    minimum: 16000
> > +    description:
> > +      If not explicitly set in the device tree, the driver will set it to 16us.  
> 
> Why do you even need it here?

Along side that, if you have a default
default: xxxx
rather than in the description.


> 
> Best regards,
> Krzysztof
> 
> 



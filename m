Return-Path: <devicetree+bounces-8622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F7B7C94A8
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 14:55:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 831CBB20B47
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 12:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B92371171C;
	Sat, 14 Oct 2023 12:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqlHHKcZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8755682
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 12:55:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE83CC433C8;
	Sat, 14 Oct 2023 12:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697288149;
	bh=/lc79HEJR074zhVDTlVtO5LTAdeKCDnQSo7gS31fcjI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qqlHHKcZdLhDWJxm1NuBxTdlUHaRSnSFIQ9q9zq2ruckPGylkmaqyiwGCrABL8ZDD
	 wG28TjhOuHnmxpxA/zVViVAUEszi7bowEF7Cv+/uMb/CeX058kWlP/IoAKVey1sPMw
	 f8LCbxOA87yEDB3oG+OCXrFqHX0t/czr8Ped69mOc6KVFwBDyoOkZZMbrFX+3/dsyD
	 5hm70g5fwMKqfu3Oi6MHL2byDyzyBlgced5vuCRWzEawk5zGpn6WpgXKfqiUu0fI0G
	 zcg0rNOw3/jXf+mKheaNjICNCZtVy+65YstJJgQpwxEhwWN5Pabp9KXzCurLqLdg6Y
	 XQThwD9L6oYUw==
Date: Sat, 14 Oct 2023 13:56:03 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Martin Kepplinger <martink@posteo.de>, lorenzo@kernel.org,
 lars@metafoo.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, kernel@puri.sm, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: iio: imu: st,lsm6dsx: add mount-matrix
 property
Message-ID: <20231014135603.4f4a632c@jic23-huawei>
In-Reply-To: <20231013-violin-craziness-f63d75ce0116@spud>
References: <20231012142041.253332-1-martink@posteo.de>
	<20231013-violin-craziness-f63d75ce0116@spud>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 13 Oct 2023 16:19:54 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Thu, Oct 12, 2023 at 02:20:41PM +0000, Martin Kepplinger wrote:
> > Add the mount-matrix optional property to the binding since it's supported
> > and very useful when using the chip on a board.
> > 
> > Signed-off-by: Martin Kepplinger <martink@posteo.de>  
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> Thanks,
> Cnor.
> 
> > ---
> > 
> > revision history
> > ----------------
> > v2: (thanks Jonathan)
> > * remove the addition to the example to avoid unrelated discussions :)
:)

Applied

> > 
> > v1:
> > https://lore.kernel.org/linux-devicetree/20230721103410.575555-1-martink@posteo.de/
> > 
> > 
> >  Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml b/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
> > index ee8724ad33ab..28b667a9cb76 100644
> > --- a/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
> > +++ b/Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.yaml
> > @@ -93,6 +93,9 @@ properties:
> >    wakeup-source:
> >      $ref: /schemas/types.yaml#/definitions/flag
> >  
> > +  mount-matrix:
> > +    description: an optional 3x3 mounting rotation matrix
> > +
> >  required:
> >    - compatible
> >    - reg
> > -- 
> > 2.39.2
> >   



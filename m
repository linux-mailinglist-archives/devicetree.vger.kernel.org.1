Return-Path: <devicetree+bounces-14289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FDE7E3699
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 09:27:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A69681C209CA
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 08:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6BDE101FF;
	Tue,  7 Nov 2023 08:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="qMrebyuc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813162F3D;
	Tue,  7 Nov 2023 08:27:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51023C433C8;
	Tue,  7 Nov 2023 08:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1699345658;
	bh=f5uRiCTOApxfAK7VR7AfAgzcJENju54hdUOwjjDL6gw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qMrebyucQAeTgg/bfZ5ZLCRNTuEbMOark2KmHNLo4bxwGcvBTHNFICjlw8Sogi4Gz
	 D/Zg1JQLuKarsxPRyIRU24GFNxogLRJbxcI4h7OGntoRqx7ocHBmc7SQwft1R5CAu9
	 Njg8K74u4iOlbLpSydNNLbIhKoS8aTCvc4QH84fg=
Date: Tue, 7 Nov 2023 09:27:34 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jack Zhu <jack.zhu@starfivetech.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
	bryan.odonoghue@linaro.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-staging@lists.linux.dev,
	changhuang.liang@starfivetech.com
Subject: Re: [PATCH v11 0/9] Add StarFive Camera Subsystem driver
Message-ID: <2023110756-alto-stream-eb92@gregkh>
References: <20231025031422.3695-1-jack.zhu@starfivetech.com>
 <15ef0a70-734e-280a-f014-41914a55d8cf@starfivetech.com>
 <a3a2c179-2cbe-5a55-a21e-b45abfb6d494@starfivetech.com>
 <2023110745-tableful-trapezoid-4206@gregkh>
 <2023110730-thousand-skyrocket-d6ba@gregkh>
 <a2dbb182-2573-4c86-7e18-319d26a6593c@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a2dbb182-2573-4c86-7e18-319d26a6593c@starfivetech.com>

On Tue, Nov 07, 2023 at 04:05:11PM +0800, Jack Zhu wrote:
> > Also, while you wait, why not just finish off the last 3 items on the
> > TODO list which would make your code not be required to go into the
> > staging portion of the tree at all?  You've had a few weeks now, what is
> > preventing that from happening, and when will that work actually be
> > done?
> > 
> 
> One of my colleagues is doing related development, but he also has other
> projects at the same time, so he cannot devote all his efforts to this
> development. And we expect to use libcamera, which may take some time.

So that means there is no real plan at all to get this out of the
staging directory?  If so, why should we take it at all as obviously
this means that the code is now abandoned?

confused,

greg k-h


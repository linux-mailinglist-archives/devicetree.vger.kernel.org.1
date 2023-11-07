Return-Path: <devicetree+bounces-14267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD767E3523
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 07:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 036F8280EF2
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 06:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5847B65D;
	Tue,  7 Nov 2023 06:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="L/NMHSLs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A376AA0;
	Tue,  7 Nov 2023 06:16:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5F54C433C7;
	Tue,  7 Nov 2023 06:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1699337785;
	bh=1DUHo7iF0MscewlRLmsCnEFojb1hLmgMueDa31SA3HI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L/NMHSLsuVo6pPDoLri5kcaBoy85g2/eKu5UTOkbwYpm3i/KD+gH+WauQ+9KVfFpQ
	 iFO3C7yR0oGwnu4yyPmPBiLNXv1UdiG0TrvMMJpwm9jKP5xzAFZqcS0EgCTAUrA/so
	 YRm2fx7FJ3Q4Rx1jIE27S5elCI4svAQUVk1dSYPs=
Date: Tue, 7 Nov 2023 07:16:19 +0100
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
Message-ID: <2023110730-thousand-skyrocket-d6ba@gregkh>
References: <20231025031422.3695-1-jack.zhu@starfivetech.com>
 <15ef0a70-734e-280a-f014-41914a55d8cf@starfivetech.com>
 <a3a2c179-2cbe-5a55-a21e-b45abfb6d494@starfivetech.com>
 <2023110745-tableful-trapezoid-4206@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2023110745-tableful-trapezoid-4206@gregkh>

On Tue, Nov 07, 2023 at 07:15:10AM +0100, Greg Kroah-Hartman wrote:
> On Tue, Nov 07, 2023 at 11:27:27AM +0800, Jack Zhu wrote:
> > 
> > 
> > On 2023/10/31 9:09, Jack Zhu wrote:
> > > 
> > > 
> > > On 2023/10/25 11:14, Jack Zhu wrote:
> > >> Hi,
> > >> 
> > >> This series is the v11 series that attempts to support the Camera Subsystem
> > >> found on StarFive JH7110 SoC.
> > > 
> > > Hi Hans and Laurent,
> > > 
> > > Could you please help review the code?
> > > Thank you for your time!
> > > 
> > 
> > Hi,
> > 
> > Could you please take some time to help review the code? Thank you so much!
> 
> It is the middle of the merge window, no new code can be added to any
> maintainers tree at this point in time, please relax there is no rush or
> deadline at all here.
> 
> While you wait, why not help out and review other patch submissions from
> other developers, which will help your changes get to the top of the
> queue?  That way everyone's load is reduced and you are not just asking
> for others to do work for you with nothing in return.

Also, while you wait, why not just finish off the last 3 items on the
TODO list which would make your code not be required to go into the
staging portion of the tree at all?  You've had a few weeks now, what is
preventing that from happening, and when will that work actually be
done?

thanks,

greg k-h


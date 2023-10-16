Return-Path: <devicetree+bounces-9006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE72D7CB275
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:26:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6894228110A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D03A233999;
	Mon, 16 Oct 2023 18:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Ufl78Ecq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13DC31A70
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 18:26:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA4A4C433C8;
	Mon, 16 Oct 2023 18:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1697480780;
	bh=4QtD0+rLtxMS6U30O6ec7Ox44kseY4kSGF0z7NZ53XI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ufl78Ecqmotfjh5acHuhamZFw9ydHrqbHUmCQT+Z2jsGFLPTD0K7kUUVJm6LIuL7B
	 K61baQNTSCk3h+pxmocjQT21QHEiJp13ByRijMcnrX40jbtEjfF8COrDSWjIdZQJfj
	 fdJcyoPUU37C818FG3xVlgjIqDBME8mOk2t+dVjw=
Date: Mon, 16 Oct 2023 20:26:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ayush Singh <ayushdevel1325@gmail.com>
Cc: greybus-dev@lists.linaro.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, vaishnav@beagleboard.org,
	jkridner@beagleboard.org, nm@ti.com,
	krzysztof.kozlowski+dt@linaro.org, johan@kernel.org,
	elder@kernel.org
Subject: Re: [PATCH v8 2/3] greybus: Add BeaglePlay Linux Driver
Message-ID: <2023101618-concept-rarity-3e0f@gregkh>
References: <20231006041035.652841-1-ayushdevel1325@gmail.com>
 <20231006041035.652841-3-ayushdevel1325@gmail.com>
 <9affdae9-9e95-1f6c-5f18-845d5ffcbd71@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9affdae9-9e95-1f6c-5f18-845d5ffcbd71@gmail.com>

On Fri, Oct 13, 2023 at 05:11:23PM +0530, Ayush Singh wrote:
> Hello everyone, I would like to get some feedback on the driver patch before
> submitting the new version of this patch series.

I don't want to review a version that I know you are going to resubmit,
as that would waste my time when I should be reviewing patches from
others that they think are complete.

So just update and resend the new series please, no need to ask.

thanks,

greg k-h


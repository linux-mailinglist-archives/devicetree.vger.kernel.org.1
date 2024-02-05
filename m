Return-Path: <devicetree+bounces-38833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC50B84A77E
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 22:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1AD821C27270
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 21:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9E6B83CB1;
	Mon,  5 Feb 2024 19:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rrn59OmE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FCC83A16
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 19:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707162792; cv=none; b=FuFQwhNIm2EaD6wln/5gpzAwNQm/m6yLifxyDh4fq3hzxPkfewQCXUS9/9BEG/RekmnYYhz7TsK00LU9TUiu7uOC/cvCOD3Ar3kUIw5HrIzbPNUWj5p6NXiKnblg8JT9Cyic8QLM1EdU5v9TMMfDqOgN/Ntbt/uYGxcrCoSqDNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707162792; c=relaxed/simple;
	bh=PpUPiVnEXdmUsjOzdsBU9UiaqAq6+hnUCBfgsvoCOGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RkpEzGxG/DTjDv31o1w9VgjZ2HdH670NNGOW/a7wsj/DmgUKOiDRbH6S9LdekKFUVwF4UbW+0RYBcGcKuhtHG7HIpiyQucEqHVz/PbBhg3AIQotN4M4G/W2tW+n5TCYHqtXdh02xKXk4GEg1Fe5UsH1Fiz3A6J6wOZ7UmgDljRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rrn59OmE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D49B1C433C7;
	Mon,  5 Feb 2024 19:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707162792;
	bh=PpUPiVnEXdmUsjOzdsBU9UiaqAq6+hnUCBfgsvoCOGY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rrn59OmEpwVr9iu9XAu0qhLBTbtBd+CogR3u+UITYUD5a8j/JsBnmcs4Hs3O10K3C
	 VZ2dlx5AzxIn7v2fB3OaLZ/jtkP+ncwRS0t+B/xFKMqztUcjaR+J3D+n84mpR2BOd5
	 MIubGjZiQsdvwLd2oQNbV0Bp0kvUlNubz4CiypRJ1ZoymSgODxaLIct7+3UutlIwLF
	 0qk3lev7VszAWemK0Az1hbQTztF+4LRZM4r2f8slIwX/ZJeAqkBJjfIJ+sGcfd8P7S
	 2mfZ1KPrG/SSqP74AXMgR1lM871FeOgfQa304eUOh9Hs4+Tvg/wpKMlZ5ZSAf6Twjk
	 +xgkd6IT9g+zA==
Date: Mon, 5 Feb 2024 19:53:08 +0000
From: Rob Herring <robh@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Sakari Ailus <sakari.ailus@iki.fi>, Rob Herring <robh+dt@kernel.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] of: property: use unsigned int return on
 of_graph_get_endpoint_count()
Message-ID: <170716278697.269358.14656767113913578348.robh@kernel.org>
References: <87sf27cw0g.wl-kuninori.morimoto.gx@renesas.com>
 <87plxbcvzb.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87plxbcvzb.wl-kuninori.morimoto.gx@renesas.com>


On Mon, 05 Feb 2024 05:37:28 +0000, Kuninori Morimoto wrote:
> Because of of_graph_get_endpoint_count() doesn't report error,
> just return count of endpoint, the return type should be unsigned.
> Tidyup it.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> ---
>  drivers/of/property.c    | 4 ++--
>  include/linux/of_graph.h | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 

Applied, thanks!



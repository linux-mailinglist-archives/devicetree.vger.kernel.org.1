Return-Path: <devicetree+bounces-11417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A04BF7D5B56
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:18:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D124F1C20B03
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 19:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A24453CCFD;
	Tue, 24 Oct 2023 19:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfL0deDb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85885208AB
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 19:18:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8486C433C7;
	Tue, 24 Oct 2023 19:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698175087;
	bh=02/KBKaqOhmo7sOtLmLAqh48v9xojz8EBNv27xQczDE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jfL0deDbHCTASTwvVJtZBMDhQANaLR5aZwQZSZoUEihfydVA5yplYU+Oo4mx9S994
	 zaLf8hToZCK4JEMlsOZlq23xcoGZqlzHv++c2jpO6KTUvROV9PxK5G9ElS2+wqirEZ
	 i6Ln7xFeGyMgc9gpYAPfojvOaYHb7zdVH8+2j7+NEsjREre0k1nj8MWS5Na9Yk2Lj1
	 PKpiWr/CcqmFmSUaFmvOGwlhDNX+4Xxy/o111+daFm1MtEA9K/8atAEow8Vn8LqfXZ
	 fdoBttptHYI5fBGpHYra/YrYK8hnfWmwP7cEpQpSkccLhdsNYyEWXmRLqdm5EIeyHz
	 iqvQ60J86to5g==
Date: Tue, 24 Oct 2023 21:18:01 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: gregory.clement@bootlin.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] i2c: mv64xxx: add an optional reset-gpios property
Message-ID: <20231024191801.kofb6cbczswp7xxn@zenone.zhora.eu>
References: <20231018210805.1569987-1-chris.packham@alliedtelesis.co.nz>
 <20231018210805.1569987-3-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018210805.1569987-3-chris.packham@alliedtelesis.co.nz>

Hi Chris,

as you are working on the v4...

...

> +	if (drv_data->reset_gpio) {
> +		usleep_range(reset_duration, reset_duration + 10);

I'm not against this, but it's not optimal unless we know more or
less what to expect from reset_duration.

Do we have a rough idea of what reset_duration is? If we don't
then you could consider using a generic "fsleep(reset_duration);"
Would it work?

Rest looks good.

Andi


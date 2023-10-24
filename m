Return-Path: <devicetree+bounces-11481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DFB7D5EAD
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 01:29:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A333A1C20C9D
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E003E4448B;
	Tue, 24 Oct 2023 23:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iy//ya4Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C442D633
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 23:29:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 751F2C433C8;
	Tue, 24 Oct 2023 23:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698190191;
	bh=cFl/SRn0VuzG6mAR05DlnNakEjbBlq4lqOuDCchSphQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Iy//ya4Yq8hzSccQFemdYnz+Sf3GXFbJ4Rc/wq60lzSjcU3k8YYfbPxisw9W75LbD
	 Wq087OAO+Vtboax77r6kGIoulCY+fur+7GoTjPtgXWoNP87nUGtCybXX9ADZihif8V
	 6DO7s6Z541Xx7l1nuPiK2uygyhiQiJY+BC1+MZCU+lYPWuIsfkWbPsEyVS59UMLKrM
	 c14GtQDlQf6dKLICZbZZGpOO4lCamy24nOcRzrRB0OVgoAAb3rqPAZzJOe/WcZO/9J
	 icj+zETRqcjo3ZQU+6ommsNJ/Xql85tp1NjoK5KNHwLm8Xq0veJXRoA1ZfGxyWQkwM
	 uqQ6N2y2AO7UQ==
Date: Wed, 25 Oct 2023 01:29:46 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: gregory.clement@bootlin.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: i2c: mv64xxx: add reset-gpios
 property
Message-ID: <20231024232946.r7bbnf5mnr2si47d@zenone.zhora.eu>
References: <20231024223032.3387487-1-chris.packham@alliedtelesis.co.nz>
 <20231024223032.3387487-2-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024223032.3387487-2-chris.packham@alliedtelesis.co.nz>

Hi Chris,

On Wed, Oct 25, 2023 at 11:30:31AM +1300, Chris Packham wrote:
> Add reset-gpios and reset-duration-us properties to the
> marvell,mv64xxx-i2c binding. These can be used to describe hardware
> where a common reset GPIO is connected to all downstream devices on and
> I2C bus. This reset will be asserted then released before the downstream
> devices on the bus are probed.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi


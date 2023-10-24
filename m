Return-Path: <devicetree+bounces-11482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 990167D5EB1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 01:30:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA92C1C20CB9
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293314448B;
	Tue, 24 Oct 2023 23:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJl5MOKT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4622D633
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 23:30:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2930C433C8;
	Tue, 24 Oct 2023 23:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698190217;
	bh=1O0jyc+9jRwfH+bIBSNC2AC/+zBx3VZH8zI/l7nXoXA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YJl5MOKTV73WhzWjI/s8noNzFiTyaPyRAuduREg0WYPPk8HpQrSx2L8P/a3dDaxGY
	 j7sqmqICC1xn1WvOc+Cp0SJZH337fifCL2PMyl7TAZxQTqJQzh7zuoRIPdYmvzZeLf
	 ZX07Y30lwsF6qmOhaIAuO3+P30QunXCHIu2S3YvFJazL4UYmqqsqg38S2GB8+Wsog8
	 DoDsazOV/Q4Y+qfa2tt3X9Bz+btPJkrhj/LuDZe+5fHLHnhQhvuQKzlcXeoh8AGXVL
	 jgW4krSo5BG/0TnGAEgvQYF/bTk4j0QHVnlS1LNSAz2k8fVLX1TmBPoY+LoeV3JskY
	 50N/qjx5GrmYA==
Date: Wed, 25 Oct 2023 01:30:13 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: gregory.clement@bootlin.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] i2c: mv64xxx: add an optional reset-gpios property
Message-ID: <20231024233013.qtbdmnzek2flxk7a@zenone.zhora.eu>
References: <20231024223032.3387487-1-chris.packham@alliedtelesis.co.nz>
 <20231024223032.3387487-3-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024223032.3387487-3-chris.packham@alliedtelesis.co.nz>

Hi Chris,

On Wed, Oct 25, 2023 at 11:30:32AM +1300, Chris Packham wrote:
> Some hardware designs have a GPIO used to control the reset of all the
> devices on and I2C bus. It's not possible for every child node to
> declare a reset-gpios property as only the first device probed would be
> able to successfully request it (the others will get -EBUSY). Represent
> this kind of hardware design by associating the reset-gpios with the
> parent I2C bus. The reset line will be released prior to the child I2C
> devices being probed.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi


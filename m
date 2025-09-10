Return-Path: <devicetree+bounces-215329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB832B51233
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:12:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BB3B486E18
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 09:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E004B31063B;
	Wed, 10 Sep 2025 09:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="rHZPmXjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404F224169F
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757495562; cv=none; b=A+emphoysQZ2fBoi7zT3YMmV5Q0ssRROJdzJ5kDw7vz3wCsQIVwQ0bFdGlDf4pzTUfTuekQGjcmrbUR9NKrgbE9/LgCSQyIyewMIKZVgIqudfGGYFbE4d/AeUx6U7ug4eVeDxOnRzjNiPfGn4TWE0Ko2l4bXd1HVZZwOjOsfr/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757495562; c=relaxed/simple;
	bh=UxBHSAfWy65sbmfzgW8CBAaia7IXvrENWFh7CU9yYGo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=XZ+G+HZYShLLkkehED4mZ3dhkqOj/iE3+G8v903rJ0d0BXH6doMPDW8m8bKLsmktfwd3iNN+y6w1UuaeSItV2gmMnrRkJorqjzbu/M5XteYHIDm6aEyOJ1qucHIfoE3Ng6d7GNBPsXT9ZAm75qYjcmzXJ/t4Y35PTIdg/MOUEY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=rHZPmXjQ; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 4A58D4E40BB5;
	Wed, 10 Sep 2025 09:12:34 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3698D606DB;
	Wed, 10 Sep 2025 09:12:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3794C102F289F;
	Wed, 10 Sep 2025 11:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757495553; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=x8mYPqMfnQauFzBZDg5ZJTpmwumJ9yjmzmJK4BlUL04=;
	b=rHZPmXjQR5Im+BblKXKIPgicyTX9KsxmyLJkqy0ISbkcoXeKWyHrT0a9Y1eDuvSsgFPt7I
	Muh7Nw3iYL39ATM8fo68JE5tyw6yaZM/4rNUjnC626t/7eWEzyH3bVYCzakiytAEwm2MaB
	ICv2UB5QTT8GoPVJZhaV2Rr9/1T+jX/+6Xp8zSxTk9CCEniu+bvbIWJZgxlQ9uBcrRtyO0
	v3lBAmgFOttu6//b4fgE867ClQOVGCmxYcHE0yu4hnOZlbyD3BDTjcfe2ushq1Jl+sl466
	CR7tTBq10L1/GaQh4cGOVBrhprj4jfvtn+y8tIjkZ5kPnQMnAPZmJTasY9NGPA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Cheng Ming Lin <linchengming884@gmail.com>
Cc: richard@nod.at,  vigneshr@ti.com,  robh@kernel.org,  krzk+dt@kernel.org,
  conor+dt@kernel.org,  tudor.ambarus@linaro.org,
  mmkurbanov@salutedevices.com,  Takahiro.Kuwano@infineon.com,
  pratyush@kernel.org,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  alvinzhou@mxic.com.tw,  Cheng Ming Lin <chengminglin@mxic.com.tw>
Subject: Re: [PATCH v2 3/3] mtd: spi-nand: macronix: Add randomizer support
In-Reply-To: <20250910030301.1368372-4-linchengming884@gmail.com> (Cheng Ming
	Lin's message of "Wed, 10 Sep 2025 11:03:01 +0800")
References: <20250910030301.1368372-1-linchengming884@gmail.com>
	<20250910030301.1368372-4-linchengming884@gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.1
Date: Wed, 10 Sep 2025 11:12:29 +0200
Message-ID: <87qzwed62q.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3


> +static int macronix_set_randomizer(struct spinand_device *spinand)
> +{
> +	struct spi_mem_op exec_op =3D SPINAND_PROG_EXEC_1S_1S_0_OP(0);
> +	struct nand_device *nand =3D spinand_to_nand(spinand);
> +	struct device_node *dn =3D nanddev_get_of_node(nand);
> +	int randopt, ret;
> +	u8 cfg, status;
> +
> +	ret =3D spinand_read_reg_op(spinand, MACRONIX_FEATURE_ADDR_RANDOMIZER, =
&cfg);
> +	if (ret)
> +		return ret;
> +	if (cfg)
> +		return 0;
> +
> +	cfg =3D MACRONIX_CFG_ENPGM | MACRONIX_CFG_RANDEN;
> +	randopt =3D of_property_read_bool(dn, "mxic,randopt");

Isn't that a leftover?

Thanks,
Miqu=C3=A8l


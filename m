Return-Path: <devicetree+bounces-278626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIwSFHnavmnZfgMAu9opvQ
	(envelope-from <devicetree+bounces-278626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 18:50:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CB42E6993
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 18:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 615D7300E382
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 17:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89253318B83;
	Sat, 21 Mar 2026 17:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfBmtXwK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6767A2DE6F1;
	Sat, 21 Mar 2026 17:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774115446; cv=none; b=jaQ0c0VrAVtjOi4mbZI02CSBl2gCdBzCfrdxTp5YjijDmMBMQTIPBiuNOCi293l03t6MDpDsOjUJxJ9IxFUNq17Biqag6UE2E5eGPcHb0oCs5Azt4CV53UVaqwFTrj7b0NdreMFQOElARxr9AtIXqbfgMVP+Daan5D+XNIgbCAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774115446; c=relaxed/simple;
	bh=WlpfjXMa/ChNrQGYBFa320G/kg7Eakf+zjKpza9XjK8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uGAq1Oc+Vr5R0bHr8oE4EgwnQ77PCaBw6BycySNnSam3VRO8C1nW7dCBsyb2bnzbjP550rxFA2nfc4n9YSp1xSNbG6es8V8wobD0uXap7zbEk+F+dLMEv8noBL2RS5RX1Q9lyumb2Z98/AQxyDkB5EYrDUJH93Q0WHOgfmk/JIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfBmtXwK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1203DC19421;
	Sat, 21 Mar 2026 17:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774115446;
	bh=WlpfjXMa/ChNrQGYBFa320G/kg7Eakf+zjKpza9XjK8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=KfBmtXwKANmSjP+03gkIx0drmQPmqoFWSfqh5v2dldKaysB+9Th/3/cIGboh1llZj
	 W7BWswiQdlntgjS2nfzidLAhgN+Z9YY6jzFzCrCoB8DDhWvo3B6R6f8FpV0trVF9Dd
	 w7dOB1T+cJbDbiROqx0fxxlpN2fy04q5bW20pnkoNwwVZksYZFurh8ecib1jA4/tgm
	 zWwCu3hE7VqbCFqcpn2nBPKK1vvnlMg2VpBn+4WK9GB2j8gDE7l8RKS38yByDlLr7O
	 Xb+oGRbrNVlq0EABMNruJ6lDZXz2aqc9i4tRY+4T5a0tz2cOnvYUv75hViMq2aAUlp
	 6xTtKT5G64jQg==
Date: Sat, 21 Mar 2026 17:50:36 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 2/5] iio: imu: inv_icm42600: Add support for using
 alternate registers
Message-ID: <20260321175036.50c6a29f@jic23-huawei>
In-Reply-To: <20260319182956.146976-3-macroalpha82@gmail.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
	<20260319182956.146976-3-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278626-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B6CB42E6993
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 19 Mar 2026 13:29:38 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support to the existing inv_icm42600 to support similar hardware
> with slightly different register layouts. For example the icm42607
> and icm42607p has most of the same functionality and even many of
> the same registers, but the addresses for indiviual registers differ.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

> diff --git a/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c b/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c
> index 11339ddf1da3..32aa2e52df2e 100644
> --- a/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c
> +++ b/drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c

> @@ -775,13 +774,13 @@ struct iio_dev *inv_icm42600_gyro_init(struct inv_icm42600_state *st)
>  	ret = devm_iio_kfifo_buffer_setup(dev, indio_dev,
>  					  &inv_icm42600_buffer_ops);
>  	if (ret)
> -		return ERR_PTR(ret);
> +		return ret;
>  
>  	ret = devm_iio_device_register(dev, indio_dev);

return devm_iio_device_register() now make sense.



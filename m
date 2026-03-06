Return-Path: <devicetree+bounces-271837-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKqdFOR7qmkqSQEAu9opvQ
	(envelope-from <devicetree+bounces-271837-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 08:01:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C5D21C3DC
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 08:01:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26C643037174
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 07:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9222C37269B;
	Fri,  6 Mar 2026 07:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E4T4ajbW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA733346BE
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 07:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772780513; cv=none; b=jxynHRm2CfYeSfrPwnWebB2fAOpQyQTQINI0C9BkwiDornX2Fb9HZnNvmFbZVXuTrRehSxtDVsuR7B+GO/76DX4/OeVbfu6DtIfJ+c9tgbS3ApFs3jZ1HdMW+4UM85Aby0JKUsSlYc7Uw2e3WqO91CvBBruPWQMRD5BcuwIFu/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772780513; c=relaxed/simple;
	bh=U5ovtFZGT6J0/COcDYCmDClaijQmWD3Zbr+hgB175wI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UPn7+TqlAPIILP9k9jgam+zj1eSMVg/WSglGrGu3JQrg2voQc36i9xj4/KbVaxhd167cw5V6Vxt7kYk5+FqDECSV15+7/vnr58W8jvl3dE072OdatZG96QGLUjEXeMieLxz7mW/Uetpk1LE5L9EwCif/nLxmxm6+4vS4W+EA3J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E4T4ajbW; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439af00d33cso5667435f8f.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 23:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772780510; x=1773385310; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=g/Izo1I7P2lYa0tqmXpdAdhxEzYAi9jVGmrjmB9VLPo=;
        b=E4T4ajbWUTWlFMArKhQ6V7XMrb5b2K4Skb3GX6ke3CeDTdq3BOs5CkdvPyOwoUoCYi
         gFltKAZML+LKYgacr9grDe7rklDT2EkfpUgMCfs2m68QlzKJSERfTsdq9vVBnGNQNxnD
         Edxm8qvuUpq43O4yKhsLmzu6OwNIW58mIDXibMJAkBb/im6Kf38EimmUo9oCFtBYdx/r
         ELc/gJQUSG0VB5ONcK2psBkqf1zZuTvi9Si01FLfj4E8da1be8XGIKjINLzoDEdSmbtO
         GeS17bHx32jn/ZFqkIbn8zAua8xJIDoC3YtWageqBL1JbvyKxon49CnwpRq+I3ZwRLvZ
         93vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772780510; x=1773385310;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g/Izo1I7P2lYa0tqmXpdAdhxEzYAi9jVGmrjmB9VLPo=;
        b=USnEb9GyVNcDi0OmAXQuAlbVg5MRhOAtsgCxekejBwLhpoJ/v0fUQA90eolTVZ2+2B
         Rj7mKC/60XealZ0cWOwN93Av0MVc757C2478oFfSd4ZkCNQihsQM4ctSP/ZU1DlBV8mW
         xDqkGo323if5TSI4v6ib3qb0Cor+61tuSwRyuTh/UVV041Ggw2KymlqSXz4ds9hIj+jF
         blOoniUELPoJ8sfhF6VReETAL62EZbyRlf7wt1slIrLQAx/e/948Y4miPuM6ya9jauTo
         mcxGzXlj0HR5mGFJU6pHiPuNswlaW8FQKY99f5f6++z25t+6KDoVjdgEpkr3wR3GERNR
         IUJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWWiCibutvuEczJpPfTgOFUqXlyVQY9pCJBGifgW2TimmlYPq/5VN6tLi3be2x4qKzJFF+Uwq4IY/1@vger.kernel.org
X-Gm-Message-State: AOJu0YwXsj+jymYp+n+525pQclr+EGznvXcHB9JWaHstBAdQWGzGlAn/
	2K5nIPhdibxUSBRMpkpxWBSlQDJ/JB3vaCqmDiIST5X0KiImNqEhVdEHqg2bNbtnKJY=
X-Gm-Gg: ATEYQzySeOa9pnhYkKw97zHhxsr099mjMdFvfNwPqxPnYOU6/wrmeP4JDJYRhG4nNim
	DVDDXxZkEuW8dy34viU1jl/ZaJDETZPYosfTIZX8DDhMoCvXXDZMu33dTb1WLVMWovi4FaJnPeZ
	v+f+lMlTJDK5hEhAzQHsQhUGePfzRCPNYEGDSwM86NIq6+4uGHsSddNU+yp8pFKkE6INdmOx8mi
	kdKhcYKGJorU6P16H+76b3tcwhj+z4r1w6wA9NAcniI1oOHFxCKNA3d9m1fkdCaFCHcUBj+7gYa
	rEf0WS+XosoDSAXpOMRMSTSr8Om7qrfnXpikW9QzKOLu6dZx6W6THbfWJx020qDgKs8jPygI8FQ
	sN7IDJnA/p4RADlowphbsWjFDvsC08NePzkn7xqyksv5Xxy4i46JKmcrnMfcURhQDlZCQz/jxWb
	a/bCqj2EzuYzbxG0CpGkQ4JGELi0u7
X-Received: by 2002:a05:6000:2c03:b0:439:bd70:610f with SMTP id ffacd0b85a97d-439da890077mr1657657f8f.44.1772780509950;
        Thu, 05 Mar 2026 23:01:49 -0800 (PST)
Received: from draszik.lan ([212.129.78.78])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2ba06sm1713784f8f.24.2026.03.05.23.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 23:01:49 -0800 (PST)
Message-ID: <198f569078f4a6e3b4e8ad080a94cd336c1e39bf.camel@linaro.org>
Subject: Re: [PATCH v3 07/13] mfd: sec: set DMA coherent mask
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Kaustabh Chakraborty <kauschluss@disroot.org>, Lee Jones
 <lee@kernel.org>,  Pavel Machek <pavel@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo
 Choi	 <cw00.choi@samsung.com>, Sebastian Reichel <sre@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Jonathan Corbet	 <corbet@lwn.net>, Shuah
 Khan <skhan@linuxfoundation.org>, Nam Tran	 <trannamatk@gmail.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-rtc@vger.kernel.org, 
	linux-doc@vger.kernel.org
Date: Fri, 06 Mar 2026 07:03:10 +0000
In-Reply-To: <20260225-s2mu005-pmic-v3-7-b4afee947603@disroot.org>
References: <20260225-s2mu005-pmic-v3-0-b4afee947603@disroot.org>
	 <20260225-s2mu005-pmic-v3-7-b4afee947603@disroot.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: B4C5D21C3DC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271837-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[disroot.org,kernel.org,samsung.com,bootlin.com,lwn.net,linuxfoundation.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:dkim,linaro.org:mid,disroot.org:email]
X-Rspamd-Action: no action

On Wed, 2026-02-25 at 00:45 +0530, Kaustabh Chakraborty wrote:
> Kernel logs are filled with "DMA mask not set" messages for every
> sub-device. The device does not use DMA for communication, so these
> messages are useless. Disable the coherent DMA mask for the PMIC device,
> which is also propagated to sub-devices.
>=20
> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
> ---
> =C2=A0drivers/mfd/sec-i2c.c | 3 +++
> =C2=A01 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/mfd/sec-i2c.c b/drivers/mfd/sec-i2c.c
> index d8609886fcc80..9fa1449a4f6eb 100644
> --- a/drivers/mfd/sec-i2c.c
> +++ b/drivers/mfd/sec-i2c.c
> @@ -177,6 +177,9 @@ static int sec_pmic_i2c_probe(struct i2c_client *clie=
nt)
> =C2=A0		return dev_err_probe(&client->dev, PTR_ERR(regmap_pmic),
> =C2=A0				=C2=A0=C2=A0=C2=A0=C2=A0 "regmap init failed\n");
> =C2=A0
> +	client->dev.coherent_dma_mask =3D 0;
> +	client->dev.dma_mask =3D &client->dev.coherent_dma_mask;
> +

This should probably move into sec-common.c as it should apply to all
transports.

Cheers,
A.



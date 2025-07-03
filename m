Return-Path: <devicetree+bounces-192509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8BBAF6E48
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 11:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47F5F18880C0
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 09:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D21D2D4B5A;
	Thu,  3 Jul 2025 09:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="eSR7Ta5F"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901412D0C88
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 09:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751534038; cv=none; b=u0+j/0sg2DdZrawwceFUF36suaTtv0V5+bhWJ72Lq2oPMJJ6r9rOrhtrECiOM4EoRjjrgBIFgxYQ/g8tsm42GuqoyQ9faaUbH3wmPVGhxVidHLfaGit3Cd/B10ZsKdh6L7eebdnBtZEkVNRkTAG+20FiwovRPVtZ2/EON7HJgus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751534038; c=relaxed/simple;
	bh=2FJhwqOSUxIoDeCZEeXY6Q3vz2o4+XeHIQYBwmnKTZI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=MTDiYdY5ie4oaHfYTaigIW1iLbgrofCUz7yIchZ3Wgmwc/vDtSRZQlytzdDlyM6Z8WkmWjkwuPYd4zYdW3pMTPBoE1o1I1FXZZzfw8ZUZKxGH+DDlzL6aJs3fDMW1tbXQYknZg4qJWz3uejWckPlB//FJiVVSnGX8w6VdRsxNcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=eSR7Ta5F; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751534035;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OX+ytT49dmTr2vEb7Cm18JPywxCOwr2HkRwXRlWUGbI=;
	b=eSR7Ta5FbJ8RBzVxD+gLE0yyn+BhcKHicUg+CSMYwv80zJpbjt1nubT4iag2Yk+uR/KDI9
	rb2Yp1joZwa9Fq1qEONT8B/C2Xlghgkdp5q+BUu5iKUT/gURStumieOaDx2FiC8JpkHLnm
	kvkvXf/sU8OA/LQEOhRmv0vfJcuadC0=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-153--mDThgGPPxGfd2G-eLGX5w-1; Thu, 03 Jul 2025 05:13:54 -0400
X-MC-Unique: -mDThgGPPxGfd2G-eLGX5w-1
X-Mimecast-MFC-AGG-ID: -mDThgGPPxGfd2G-eLGX5w_1751534033
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3a4eec544c6so3686593f8f.0
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 02:13:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751534033; x=1752138833;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OX+ytT49dmTr2vEb7Cm18JPywxCOwr2HkRwXRlWUGbI=;
        b=D3+TjwDVYT1sJfmMi3T0kMaeqiADz0cIv31hveBLuzAAnmPHm5ePGsgXcS9f5OezhS
         WwejEX/HaAM+Xa01vIUORfocJA63YMHfTkdzKZxMv3ytiPDt1eqhScX4I8016Uo9IV14
         vZl7WnldfsgI8lsHm9jXTohk+yqLbuYD5Fk9r7d/S0OHqjEi2R18fRETPUOzeCuS1bAL
         wXJXh90Lo7gEqgs6NiicYabyQr2P9XPD0we4+Y6LlB9vjnGaPR2VAC9FRwqfhDbjmp0k
         lbWiaSK3AKIrlwH4DAxbUr9vYR919ERdy4C3wv7xvaKvremlucWNPPgZjOyPNES4uQnB
         l6Ww==
X-Forwarded-Encrypted: i=1; AJvYcCWAsNVYV/pJia6v2q6NfVew7Kn5hCBWPRYuSrT2C9BiCrZ/9VjujkeZ5Ax1vM3Vs3mViI+QuQ2Qqgwb@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ/dhAW4rwB9F6bDYW4cF814sZxJ49fAHFacPp14b2RpP+Wwbr
	CXF3muNBc/CRJyIgnyCzV3b3o00WnGJm0vteXqGCdIaYDer93P+JfnkSsjdpJcPW2qsXFz5RF/i
	HExT1ffrBNj5bUQBYm3d3AN7NTrhZWJLX1KEPWJNvrHruIgIpYJ6V01l6LcxqB4k=
X-Gm-Gg: ASbGnctc79+pFC8+s4xb2SzAP8RxSIszUkrbJbaFWT0gj2SvVcZ2G85Qb2szbfbkDHF
	zsm3x1hUO0NBkWNxuh4cP43ofRo220rzaclEDblYo7HJsneGFnhkVKp1tUZxyoO7G0j+00Iklgo
	eiVjE91IJmSduUfecYCQoHUa5qUWhid/ya8wXq4kRm1fSK/UWTzTelyDQDbhZArggYWkf8ih/W5
	NNohWEWRDANlqDp6VK2+dHM8AXJU71uqgmBFQtQUSGSWxCqBKjKS6zX84vbFOjfdXEmLdJkmrE7
	Wnwo3mKjYHTRCHtWfmDb7szXc+0t0ZZUP1iiO23ptLnZcBV49GljsQRmaWur+ePjuc4=
X-Received: by 2002:a05:6000:2387:b0:3a5:42:b17b with SMTP id ffacd0b85a97d-3b1ff9f58e5mr4716213f8f.29.1751534033028;
        Thu, 03 Jul 2025 02:13:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRRb+VUMKb5MUe0c9M+TZj8qdoFSn94nolph8HCnGsExIYZmC8zGq2a+/0WeZeN91ewkS2ow==
X-Received: by 2002:a05:6000:2387:b0:3a5:42:b17b with SMTP id ffacd0b85a97d-3b1ff9f58e5mr4716188f8f.29.1751534032529;
        Thu, 03 Jul 2025 02:13:52 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:270a:b10:5fbf:faa5:ef2b:6314? ([2a0d:3344:270a:b10:5fbf:faa5:ef2b:6314])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e529c5sm18486218f8f.63.2025.07.03.02.13.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 02:13:52 -0700 (PDT)
Message-ID: <0547d8fd-e6ee-4f59-8a7e-93d2d11cdf5e@redhat.com>
Date: Thu, 3 Jul 2025 11:13:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v4 2/2] net: pse-pd: Add Si3474 PSE controller
 driver
To: Piotr Kubik <piotr.kubik@adtran.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 Kory Maincent <kory.maincent@bootlin.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <c0c284b8-6438-4163-a627-bbf5f4bcc624@adtran.com>
 <4e55abda-ba02-4bc9-86e6-97c08e4e4a2d@adtran.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <4e55abda-ba02-4bc9-86e6-97c08e4e4a2d@adtran.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/30/25 4:57 PM, Piotr Kubik wrote:
> +static inline void si3474_get_channels(struct si3474_priv *priv, int id,
> +				       u8 *chan0, u8 *chan1)
> +{

Please don't use 'static inline' in c files. 'static' would do and will
let the compiler do the better choice.

> +	*chan0 = priv->pi[id].chan[0];
> +	*chan1 = priv->pi[id].chan[1];
> +}
> +
> +static inline struct i2c_client *si3474_get_chan_client(struct si3474_priv *priv,
> +							u8 chan)

Same as above.

[...]
> +static int si3474_pi_enable(struct pse_controller_dev *pcdev, int id)
> +{
> +	struct si3474_priv *priv = to_si3474_priv(pcdev);
> +	struct i2c_client *client;
> +	u8 chan0, chan1;
> +	u8 val = 0;
> +	s32 ret;
> +
> +	if (id >= SI3474_MAX_CHANS)
> +		return -ERANGE;
> +
> +	si3474_get_channels(priv, id, &chan0, &chan1);
> +	client = si3474_get_chan_client(priv, chan0);
> +
> +	/* Release PI from shutdown */
> +	ret = i2c_smbus_read_byte_data(client, PORT_MODE_REG);
> +	if (ret < 0)
> +		return ret;
> +
> +	val = (u8)ret;
> +	val |= CHAN_MASK(chan0);
> +	val |= CHAN_MASK(chan1);
> +
> +	ret = i2c_smbus_write_byte_data(client, PORT_MODE_REG, val);
> +	if (ret)
> +		return ret;
> +
> +	/* DETECT_CLASS_ENABLE must be set when using AUTO mode,
> +	 * otherwise PI does not power up - datasheet section 2.10.2
> +	 */
> +	val = (CHAN_BIT(chan0) | CHAN_UPPER_BIT(chan0) |
> +	       CHAN_BIT(chan1) | CHAN_UPPER_BIT(chan1));

Minor nit: brackets not needed above.

> +	ret = i2c_smbus_write_byte_data(client, DETECT_CLASS_ENABLE_REG, val);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int si3474_pi_disable(struct pse_controller_dev *pcdev, int id)
> +{
> +	struct si3474_priv *priv = to_si3474_priv(pcdev);
> +	struct i2c_client *client;
> +	u8 chan0, chan1;
> +	u8 val = 0;
> +	s32 ret;
> +
> +	if (id >= SI3474_MAX_CHANS)
> +		return -ERANGE;
> +
> +	si3474_get_channels(priv, id, &chan0, &chan1);
> +	client = si3474_get_chan_client(priv, chan0);
> +
> +	/* Set PI in shutdown mode */
> +	ret = i2c_smbus_read_byte_data(client, PORT_MODE_REG);
> +	if (ret < 0)
> +		return ret;
> +
> +	val = (u8)ret;
> +	val &= ~(CHAN_MASK(chan0));
> +	val &= ~(CHAN_MASK(chan1));

Brackets not needed here, too and adding them makes the code IMHO less
readable.

> +
> +	ret = i2c_smbus_write_byte_data(client, PORT_MODE_REG, val);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int si3474_pi_get_chan_current(struct si3474_priv *priv, u8 chan)
> +{
> +	struct i2c_client *client;
> +	s32 ret;
> +	u8 reg;
> +	u64 tmp_64;

Please respect the reverse christmass tree order in variable
declaration, here and elsewhere.

/P



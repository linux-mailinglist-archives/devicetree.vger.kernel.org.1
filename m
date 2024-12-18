Return-Path: <devicetree+bounces-132193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E86F9F61DB
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EAFB188C999
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 09:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8B5B1991AA;
	Wed, 18 Dec 2024 09:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M25KlC9U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D677E194A64
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 09:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734514429; cv=none; b=fZWU3vpozNjFu1lpuKshCyMBnw3Nx9Bb4jHWcdIltJGgr99bLJrikGPoVe+5k6GqvYhtQygNoaWRwIHujV4dMs1lNUDA/yB6zOvUTdrndNzWl+DZ609QnE4JjZDa+zfUtGr05p0j5g5aES5fcyMSvzexyvhw7zzMGn3VTXD3WF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734514429; c=relaxed/simple;
	bh=gB1iWqzpAN3tpTJysrExgp4hGOonkKS+rAnj6u4z84A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m6cOgpZY0bWfN9NZnIspMkZ3MLjLjySAVrQCQltGo+LQOTMWowdxy6pt021oBsDMWJqVm+/6VIpV2DySNi0F+BkoMW96HrSDn+B8vIUwYHLYNSvkQp/DJIRZuW45wjYJ6bXjaDfSYMX/v8nfbUp9y3hcG2VaVgNTZ2EsXItXz/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M25KlC9U; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-aab6fa3e20eso911973166b.2
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 01:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734514426; x=1735119226; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7KtEz77JWBQIkMVGJ2sLvEyiEnerzUN26MbJDqnAvd8=;
        b=M25KlC9UwAqU3YVFhrEdYJVnY2vxxrd4kc8G7d9SXkcA9NCUd1WEP2WhSXVoiSDMQQ
         dw9XRM8Jz9AkMTthOzd0LQZ02+2LSCCKynl9tZ0uRyesJPqWyyfttbKlPV8RhVUdDsWQ
         +STVaTNSZPvDobJfBPLNyJM/OKFQ+NaEZv6iuKjyZqvKDljdiaOPJfrCjiHGG5/YqD3+
         Py7qO//NPI4V9XY58br+YhqJugRKogtV5nh81R+ticrynn0b0Z7NQ66Y2lUYXs9kuRWM
         QMBntSXEJ6dxOCmtHBYsl8DOFP2gk/K005WOMapRjhkDlh9p71bCGElo1SlFbQrd5GqW
         nbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734514426; x=1735119226;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KtEz77JWBQIkMVGJ2sLvEyiEnerzUN26MbJDqnAvd8=;
        b=Wc0yqsifYfSxMAt/bfl5iRu0Mhk8PX4+1B9+d1zRC5wFnlmPy9A50ZrWXAkD/u/eG6
         fmX6p95PotuNLJIkI8MnOecK4GUo2vMMixARIdnzolwbsrJE/f6WlE5qNuiDnaBZwERd
         vfI6XBciB7KFv7r27VD3xW3zNnoLajSNk1qBohOFk3ps8BlE0awX/GQ3Hgkp/RX3HZ1A
         WGFDOBlrNchx2b5rv4sh8TaWgf6HfFEm/agxU6szvErnpnmuw5hmzzVBfRV+NWvJ9ZY7
         KL4Cucl0e/rhhXReR1L2AgddKLAGzE9ADQzlwOCuL2U+E3nemevqaNMl7u+pNI4UeLD6
         EOew==
X-Forwarded-Encrypted: i=1; AJvYcCUh2VhlZMC21IneK5yyelP6UnY4so2kJsjYZG6AABvXxhnrT+DNW3II8SYf5YJfCGKB1niIXtlQNU/E@vger.kernel.org
X-Gm-Message-State: AOJu0YwoTU7CmbUgfzwuzOsy9UkauDnhoJGO6FpZhXUSTwZ6IolZFdJi
	pEVGjrpMtfnUEDlVuxqPAQxOvgDxvQj8TPUknzFiNH4XTChpicNQ9LtnDTcYNTU=
X-Gm-Gg: ASbGncup/cl/S9813dpZysxy5HIvAZttH1+zyTTQnyxX1j7LEFxrSqrkHCTOCYtsXvY
	mptb0GL38X7MLFzSuakJWqhZXo/Tn6L4wb4IXLu6sRyFXN2wwrHTnRe0yxf6gFG9cXUocrM35TR
	yFOuxB2jTk/r8zzXS0BPOJRnaxj7JEukBd2PgPhp9lxILtfOzU6utyLALR6miRzqTN0y+kggF7A
	z3+x11X2QeYHmptQyEeeUkmQVZCT1+n2y/srR+VDqAXsmQ6/bM1GaiKxWCvbA==
X-Google-Smtp-Source: AGHT+IHi6uZQ9xDNRIhHpOS6IYYREihc8U3QZtXG5KWhwQ0Q4UtrjFkSEHt7MuPO1TUAsje7nAFxUg==
X-Received: by 2002:a17:906:3bd3:b0:aab:f8e8:53ce with SMTP id a640c23a62f3a-aabf8e857d8mr114230466b.11.1734514426251;
        Wed, 18 Dec 2024 01:33:46 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab9c3eb5e0sm515344766b.44.2024.12.18.01.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 01:33:45 -0800 (PST)
Date: Wed, 18 Dec 2024 12:33:42 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Miao.Zhu" <Miao.Zhu@synopsys.com>
Cc: gregkh@linuxfoundation.org, robh@kernel.org, xu.yang_2@nxp.com,
	andre.draszik@linaro.org, emanuele.ghidoli@toradex.com,
	heikki.krogerus@linux.intel.com, m.felsch@pengutronix.de,
	rdbabiera@google.com, u.kleine-koenig@baylibre.com,
	conor+dt@kernel.org, jun.li@nxp.com, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	Jianheng.Zhang@synopsys.com, James.Li1@synopsys.com,
	Martin.McKenny@synopsys.com
Subject: Re: [PATCH v4 1/2] usb: typec: tcpm: tcpci: Make the driver be
 compatible with the TCPCI spec [Rev 2.0 Ver 1.0, October 2017]
Message-ID: <b5e5cd33-2b59-4e93-8acd-379290917e42@stanley.mountain>
References: <20241218085933.2790127-1-miao@synopsys.com>
 <20241218085933.2790127-2-miao@synopsys.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218085933.2790127-2-miao@synopsys.com>

The subject is too long.  You've sent v2, v3, and v4 today.  Please, wait
for a day between resends.

On Wed, Dec 18, 2024 at 09:59:32AM +0100, Miao.Zhu wrote:
>  static int tcpci_set_pd_rx(struct tcpc_dev *tcpc, bool enable)
> @@ -741,33 +748,86 @@ irqreturn_t tcpci_irq(struct tcpci *tcpci)
>  		struct pd_message msg;
>  		unsigned int cnt, payload_cnt;
>  		u16 header;
> +		unsigned int frame_type;
> +		enum tcpm_transmit_type rx_type;
>  
>  		regmap_read(tcpci->regmap, TCPC_RX_BYTE_CNT, &cnt);
>  		/*
>  		 * 'cnt' corresponds to READABLE_BYTE_COUNT in section 4.4.14
>  		 * of the TCPCI spec [Rev 2.0 Ver 1.0 October 2017] and is
>  		 * defined in table 4-36 as one greater than the number of
> -		 * bytes received. And that number includes the header. So:
> +		 * bytes received. And that number includes the header.
> +		 * In Section 4.4.14 of the TCPCI spec [Rev 2.0 Ver 1.0 October, 2017],
> +		 * the RECEIVE_BUFFER comprises of three sets of registers:
> +		 * READABLE_BYTE_COUNT, RX_BUF_FRAME_TYPE and RX_BUF_BYTE_x.
> +		 * These registers can only be accessed by reading at a common
> +		 * register address 0x30h.
>  		 */
> -		if (cnt > 3)
> -			payload_cnt = cnt - (1 + sizeof(msg.header));
> -		else
> -			payload_cnt = 0;
> +		if (tcpci->data->RX_BUF_BYTE_x_hidden) {
> +			u8 buf[TCPC_RECEIVE_BUFFER_MAX_LEN] = {0,};
> +			u8 pos = 0;
> +
> +			/* Read the count and frame type in RECEIVE_BUFFER */
> +			regmap_raw_read(tcpci->regmap, TCPC_RX_BYTE_CNT, buf, 2);
> +			/* READABLE_BYTE_COUNT */
> +			cnt = buf[0];
> +			/* RX_BUF_FRAME_TYPE */
> +			frame_type = buf[1];
> +
> +			/* Read the content of the USB PD message in RECEIVE_BUFFER */
> +			regmap_raw_read(tcpci->regmap, TCPC_RX_BYTE_CNT, buf, cnt + 1);
                                                                         ^^^
buffer overflow?

> +
> +			pos += 2;
> +			memcpy(&msg.header, &buf[pos], sizeof(msg.header));
> +
> +			if (cnt > 3) {
> +				pos += sizeof(msg.header);
> +				payload_cnt = cnt - (1 + sizeof(msg.header));
> +				if (WARN_ON(payload_cnt > sizeof(msg.payload)))
> +					payload_cnt = sizeof(msg.payload);
> +				memcpy(&msg.payload, &buf[pos], payload_cnt);

There is existing code later which does bounds checking on payload_cnt,
but it's too late.  We would have already overflowed buf[] and
msg.payload here.

> +			}
> +		} else {
> +			regmap_read(tcpci->regmap, TCPC_RX_BYTE_CNT, &cnt);
> +			/*
> +			 * 'cnt' corresponds to READABLE_BYTE_COUNT in section 4.4.14
> +			 * of the TCPCI spec [Rev 2.0 Ver 1.0 October 2017] and is
> +			 * defined in table 4-36 as one greater than the number of
> +			 * bytes received. And that number includes the header. So:
> +			 */
> +			if (cnt > 3)
> +				payload_cnt = cnt - (1 + sizeof(msg.header));
> +			else
> +				payload_cnt = 0;
>  
> -		tcpci_read16(tcpci, TCPC_RX_HDR, &header);
> -		msg.header = cpu_to_le16(header);
> +			regmap_read(tcpci->regmap, TCPC_RX_BUF_FRAME_TYPE, &frame_type);
>  
> -		if (WARN_ON(payload_cnt > sizeof(msg.payload)))
> -			payload_cnt = sizeof(msg.payload);

regards,
dan carpenter



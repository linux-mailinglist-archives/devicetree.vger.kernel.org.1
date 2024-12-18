Return-Path: <devicetree+bounces-132339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 241CD9F6A40
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 16:42:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D38416D433
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 15:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8D01B425A;
	Wed, 18 Dec 2024 15:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s6otvW7a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D69B1B0422
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 15:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734536524; cv=none; b=E3JQK6byCqHEuALu1XveSj/v6r0jit9QVLI0bASu6HzNodm1BcO3uSsndTbroOznAik0hm7pbvGgUqKoPv5CEoiTGWShOadJdEOy9dLEGftD9lmEFGm/a6BOA4Wi1CKvTf4xd15luhb/2aMXiZL73ChkS0x1TNT/it/qu0xM1QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734536524; c=relaxed/simple;
	bh=h+XeExBDgd5gL6dlbTSl87Rvr5eBKUV+3bhND4e9Wto=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LZmxryc66WLtAZ885zg7N5CN7SF8FRkb3Xl5R94VkBGEzGJ4hNsZcuD9iZXLoabG0SxdAqfNq88NX8QSofadSBdfckaSLN0ZjFr6uV7050H+E3HiyegYVqi5lfflEkvGAL0so9R66PcuhGywk/9LazLYegj0cBJcVzKEQjcePS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s6otvW7a; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aa670ffe302so1216613266b.2
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 07:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734536521; x=1735141321; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wuPxDvTX7vw6Ikag7mefG62YIQDwW9qirQPmBJpybBg=;
        b=s6otvW7ajEMZvqOm8Wbm1DtMfm1HmyPqWLKMLh6M6fcjMzB/N8VLp1JVPlwfh7Ku1h
         /vZgvMC3m33EDT1TQ21KqJ3Q68qNcC9C6TNyWsvooGkoysqkCOUgbqBExVBdvuOiPs8y
         bhEbYlsJdeb8iMn50dFUmrVSgf950aOGPQ+nK6mss+9ThhxzCawvonLyYxD/eHrZhh+o
         hwSSoPtTrUSOPAn/5eXt2C6A6j4qHXd+WXKnjV7TMcCwFXi0yMvXRgrmIIdg+OuYWgQj
         Btm3CMjzrUwwN6e35uz6zeLjoPhbkpbefBKydcLqxun7PcIyKrn73S4az2azTMG0SBj6
         7S6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734536521; x=1735141321;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wuPxDvTX7vw6Ikag7mefG62YIQDwW9qirQPmBJpybBg=;
        b=RcIB/XySTnuuhtSShyBpXba1Y8+dBEW+e+4/3jLxtqbPTLGbebie+8+wUdGTLpDEX2
         iC1eYdCF57bSJfsZHpJ7J7WiASQfJWwMo46q5MMVwZKftk8H/Sa83Ucpe+as8mr5eoc2
         71SsWuskYe2VmEf/HLRaxzWTRezy2lD2tdO7i7onp4ZdUXKFGxr5lp4uOCz2rt/Ln3AC
         BhVlTX5CxiAr2We8O/MVgLD3WVj6/al2HWElh1nMFFMd4aySXVqbjztbJmb+J7alKW//
         P/0tXKpqtdN3A6mYN++c5DYlwJOopsJr1DSDLcb2bxWiYcryghwBUwlbrTjBNUtTKfOY
         ax2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXttYwR5ecdHDP/PVFVEmv6XnUAyy6b8/yaKWxbA9NuxPoy0iWHX977084ufnDKDCAoXZZtB5rkXHAR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp6jJMJHBlboYvs5WbQd/dKnfWU9kHBMYinfSDiym/HrUAd3Jc
	6hEMKCif6iVYZ4TfgLKASNgFv5VX9U276c06HNDmELzXSbLBgxtiivhCO/1wjpc=
X-Gm-Gg: ASbGncvrZ8NVbQGu2VIuFA69BUlMRd0dhHE+2rG5yhLWuaaigj5LrtRqUwNvkDMtO9M
	eO3YqexHHB8KVi35IqvBdWGb+Tkfxd7jVcB+4KSoBFfocxuN5n9Z35feyop7TETjukPyuGfDJ98
	+cg6GGvF520jdyWhl4FBpO3/TXkTGXkN/csD5fjkpxdGiIQj+fLHS0UvqnW7pzFkkuHprLMGvDy
	ubj2DQSG8zsF5XRUFwklg60E2xghk7Dr9oq/ViTncgcScNpAj5gg7D3WPJBCw==
X-Google-Smtp-Source: AGHT+IGarXmwMkeMqU2NZRVbUAa61OHGnCxtHAVf/FFcAIMSBvhxQ1z7QNQ2Pk8ItpKNlg/4dPjA1Q==
X-Received: by 2002:a17:907:6e93:b0:aa6:9599:a9af with SMTP id a640c23a62f3a-aabf4907633mr283425566b.53.1734536520682;
        Wed, 18 Dec 2024 07:42:00 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab9635998csm578833166b.108.2024.12.18.07.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 07:42:00 -0800 (PST)
Date: Wed, 18 Dec 2024 18:41:56 +0300
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
Message-ID: <9d3ab6fe-f875-493e-935a-976ff1a9cdf1@stanley.mountain>
References: <20241218085933.2790127-1-miao@synopsys.com>
 <20241218085933.2790127-2-miao@synopsys.com>
 <b5e5cd33-2b59-4e93-8acd-379290917e42@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b5e5cd33-2b59-4e93-8acd-379290917e42@stanley.mountain>

On Wed, Dec 18, 2024 at 12:33:42PM +0300, Dan Carpenter wrote:
> The subject is too long.  You've sent v2, v3, and v4 today.  Please, wait
> for a day between resends.
> 
> On Wed, Dec 18, 2024 at 09:59:32AM +0100, Miao.Zhu wrote:
> >  static int tcpci_set_pd_rx(struct tcpc_dev *tcpc, bool enable)
> > @@ -741,33 +748,86 @@ irqreturn_t tcpci_irq(struct tcpci *tcpci)
> >  		struct pd_message msg;
> >  		unsigned int cnt, payload_cnt;
> >  		u16 header;
> > +		unsigned int frame_type;
> > +		enum tcpm_transmit_type rx_type;
> >  
> >  		regmap_read(tcpci->regmap, TCPC_RX_BYTE_CNT, &cnt);
> >  		/*
> >  		 * 'cnt' corresponds to READABLE_BYTE_COUNT in section 4.4.14
> >  		 * of the TCPCI spec [Rev 2.0 Ver 1.0 October 2017] and is
> >  		 * defined in table 4-36 as one greater than the number of
> > -		 * bytes received. And that number includes the header. So:
> > +		 * bytes received. And that number includes the header.
> > +		 * In Section 4.4.14 of the TCPCI spec [Rev 2.0 Ver 1.0 October, 2017],
> > +		 * the RECEIVE_BUFFER comprises of three sets of registers:
> > +		 * READABLE_BYTE_COUNT, RX_BUF_FRAME_TYPE and RX_BUF_BYTE_x.
> > +		 * These registers can only be accessed by reading at a common
> > +		 * register address 0x30h.
> >  		 */
> > -		if (cnt > 3)
> > -			payload_cnt = cnt - (1 + sizeof(msg.header));
> > -		else
> > -			payload_cnt = 0;
> > +		if (tcpci->data->RX_BUF_BYTE_x_hidden) {
> > +			u8 buf[TCPC_RECEIVE_BUFFER_MAX_LEN] = {0,};
> > +			u8 pos = 0;
> > +
> > +			/* Read the count and frame type in RECEIVE_BUFFER */
> > +			regmap_raw_read(tcpci->regmap, TCPC_RX_BYTE_CNT, buf, 2);
> > +			/* READABLE_BYTE_COUNT */
> > +			cnt = buf[0];
> > +			/* RX_BUF_FRAME_TYPE */
> > +			frame_type = buf[1];
> > +
> > +			/* Read the content of the USB PD message in RECEIVE_BUFFER */
> > +			regmap_raw_read(tcpci->regmap, TCPC_RX_BYTE_CNT, buf, cnt + 1);
>                                                                          ^^^
> buffer overflow?
> 
> > +
> > +			pos += 2;
> > +			memcpy(&msg.header, &buf[pos], sizeof(msg.header));
> > +
> > +			if (cnt > 3) {
> > +				pos += sizeof(msg.header);
> > +				payload_cnt = cnt - (1 + sizeof(msg.header));
> > +				if (WARN_ON(payload_cnt > sizeof(msg.payload)))
> > +					payload_cnt = sizeof(msg.payload);
> > +				memcpy(&msg.payload, &buf[pos], payload_cnt);
> 
> There is existing code later which does bounds checking on payload_cnt,
> but it's too late.  We would have already overflowed buf[] and
> msg.payload here.
> 

This line is obviously fine.  It's only buf[] earlier from regmap_raw_read()
I'm worried about.

regards,
dan carpenter



Return-Path: <devicetree+bounces-264561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJUMIhDOi2mkbQAAu9opvQ
	(envelope-from <devicetree+bounces-264561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 01:32:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B99120536
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 01:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 697AA301907A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 00:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ACCC1F1518;
	Wed, 11 Feb 2026 00:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZaUNgd/2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218F21FF1AE
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770769933; cv=none; b=XFbcgx32d2Kl5A6K8rkSSsn3+pA9x2xTqlK8cZfe0rINVQSmgAX7iytX+HK/g2IdbbsytymwZThzPOHHtU2tlGQIFOUDtU8yKJWPCSk3+jBbKlVWZ75MYLrnG8bQ+L17SlmUwKp5QSHu85IvKAL1+tcwvfasSiyqWMjFpcPileE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770769933; c=relaxed/simple;
	bh=tkBtWBmRCtf/qh20mN8TUxaalq4FpxmNf8yPVKozd54=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XZKK+iHn1EAWiM2cYVw1xkdLl3WRsqtm8R2CEh5OGi28RMoFhnwyjOTH2gdpvdGjBzpHdOAdLR0VZVesiAyaO/f/W4vbqtWD44VJ3sHDfNwAp5RljOqpZcIEmSo8EhwZClvoNdBeimhmfsDdskxaFQ2zQnejByUnmH+FTG5Fu+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZaUNgd/2; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-8947404b367so68740466d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 16:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770769930; x=1771374730; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qdVeF3A381hGG2wVrJ78jF4+b6pK/nI6ZLX2q51KHm4=;
        b=ZaUNgd/2Yy6uvIxZx4Y4FwXXKrA9mLG0UgFBsZUZswVBDZCp2Zqsj4VIKfIAP8DXTW
         mQhmlvy1FIUZJsnESCTq3nWlqH9i+lFZ1nNvjvPGXGetX/7AqsYvKa8NJErTJe7k8Q0k
         PbsROJBEOHv5dqmdbEm8+AaJIn6BtwkGozX2/7WKHUMP4cuosNP+VjQVkfe46ZlvShHp
         Ic0PnZHrScabbMD32PvBmJxeJY7VNHWo1gTAtdG/pMQVX+027lzYuEuLiVb0Ek76OksZ
         Pbn05V3eATqZ/qp5mc4wDwmjv7T8MvDiHV7IL2hGVLajnmAS9fFo5Pt3sKJyd5kmKpcE
         AJJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770769930; x=1771374730;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qdVeF3A381hGG2wVrJ78jF4+b6pK/nI6ZLX2q51KHm4=;
        b=csT+c71hwn9qapp5Uwz9bEKsdLmTvBKlw5g+1pNuGbpgHiMQ32RQBNdeFAOIQ5gbsx
         RxbRiOp0iwwZqMiTNId1M9ICnqOsALTK5ChC25wBokGqHk6M9vqHwgQL/pIx8DBOFYwn
         nAYHJ3qIYfhUWg7MKs1gfmgKvlbAXvGT8x9l9F+Zi1ZkeO6JNCxc3kcfEXmN1MtrHW4g
         7D7l1t71wgQfBahTOd3wNcuJeSs1SX2Ru/SbHBuRfx47U/EW92xI5FXl0Tt0EnO47kOy
         ihxbiaYz7RUj+9s0+wVt23zORTs2xnDJruKG0LyGW3BzuaLEgpNk2Xe7NOi6eYfYGcpF
         My7A==
X-Forwarded-Encrypted: i=1; AJvYcCUJWEeQEpDi5eEtuK4Kjw18UHWDp9a5zUPYvMdE4gTsn2Lxq+Gk7t3XQIOOPjgHZwBhSZBnzPj1oO/n@vger.kernel.org
X-Gm-Message-State: AOJu0YwfhSfgVQsIYepubjS56VaJaxO7WXzpKXvi5/Od0msZMKO3RETr
	RZQTG/02CJuP6sM/1qD6EWioIfiB8CHumZHshYIWf8Xo5S4h+6DJD9nR
X-Gm-Gg: AZuq6aIlJKiKZjoNITOLYLI7/C3RMbfcvCP146/+IcOdNORMivliGhkY1yg1qT9YwCN
	5vD0TFwaIBfjbyukajRrKvOEGjz/mM3Xr6LCKS9A0kdd5hfTPHu81H+9pVaz7TVEGBWr3aIwN5l
	HRhY7oLOcpmu7XLkd2oL1cP3s2znKfaI0007pWgkqlm9aiPwvV37BxzAQtH8TqpvfEvW/OLxX6k
	8+9sqboTd+W137wn6Kfp+Y43HwJ3ZRlj161bhwAskCX2QOZvbD3ty48z2+3eI8inhqWNmnHpcZj
	2zr8aqtK9xWU0Gw79Hw5sE+EqGpXBcRjz7bMCLDHszzAimwpZYrk5zcEccvND1litcftZRjmdt7
	s7a5yK3V4nF4guUfZnoHrVsDW05UvaenyrUczlXPhwOebSdp2Arl3XwGKDcQfXiy7AaNsqjtfKE
	nl1BA9KDOtuSf0phNPfrpo0GuE0w==
X-Received: by 2002:a05:6214:23c7:b0:894:757d:25f6 with SMTP id 6a1803df08f44-8971c402e99mr7069656d6.49.1770769929907;
        Tue, 10 Feb 2026 16:32:09 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2973ac2esm27631885a.43.2026.02.10.16.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 16:32:09 -0800 (PST)
Date: Tue, 10 Feb 2026 19:32:35 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] soc: qcom: llcc: Add configuration data for SDM670
Message-ID: <aYvOI36EN8nT6ung@rdacayan>
References: <20260210021957.13357-1-mailingradian@gmail.com>
 <20260210021957.13357-3-mailingradian@gmail.com>
 <e35d7795-cca2-402d-8179-8214d81ff9d2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e35d7795-cca2-402d-8179-8214d81ff9d2@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264561-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E1B99120536
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 10:29:16AM +0100, Konrad Dybcio wrote:
> On 2/10/26 3:19 AM, Richard Acayan wrote:
> > Add system cache table and configs for the SDM670 SoC.
> > 
> > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > ---
> 
> [...]
> 
> > +static const struct qcom_llcc_config sdm670_cfg[] = {
> > +	{
> > +		.sct_data	= sdm670_data,
> > +		.size		= ARRAY_SIZE(sdm670_data),
> > +		.skip_llcc_cfg	= true,
> > +		.reg_offset	= llcc_v1_reg_offset,
> > +		.edac_reg_offset = &llcc_v1_edac_reg_offset,
> > +		.no_edac	= true,
> 
> Does the EDAC driver crash the device?

Yes, this is needed if the EDAC driver is an available module.


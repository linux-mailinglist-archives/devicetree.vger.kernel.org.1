Return-Path: <devicetree+bounces-218319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F241BB7E00D
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:39:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DC201BC77A9
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 10:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFACB350D7B;
	Wed, 17 Sep 2025 10:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MUhpTyNX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0208B34DCFD
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 10:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758103881; cv=none; b=otas6Y54e3PcSocmWmVaJ/9J3iccGDnxOjSrXfOlbGPJJJ89yI2d2ybBUyCEqGfMsychw+KzOOEZvoQxHGxIhZtEkztijNyv0qo7J27jZkA0gkK8Hs6aTDi5w2hxgFLOtCjW3Td5FxqHLCndRREncjmPweI1VBisXbjwrNGHJy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758103881; c=relaxed/simple;
	bh=4ga+azf3in2hBznJTvkA4X779mL4ML+24lGMfj0nOIA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UHyHU+PDq0lX6sCct8qAkEWH0SSP6YrVJWNg9L1Qhvqw/5by43gHVCYb3BdTnRvPS5Bw66bNZXE4m5zGD7u+LUPclJLCGS83bcE4NqulLtLZ6dCoQtko1Br+bcbALIf68p7PjmTbE8Q5p8Bcqy2XhGg6rHfOEz1F2Xso6kiEW2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MUhpTyNX; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45dec4289f0so3481835e9.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 03:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758103878; x=1758708678; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RFlgCXptLNgS0oUFv7P/jnH+n8Ia5ZxafQyZ/H5sxnA=;
        b=MUhpTyNX/GINaDZeI389tgHDDW8Iot5T8E8vryV5EYWiBHdMXKiKz4ErdSibSbOtv0
         b5nTyXNQfKyGEXzqNiQhyE81tnq+Bf6uoScQZ4si8+8wGtqi5Um9Oji8OlnjqeoBQT/l
         k0HV1W88o8UHmcbXHyEfkyNwD8dS5eucgA2UPWtC1VxxM5r/ezoin+p4NN+KbMQkwt0m
         +H3asFVkENIYAM/fQikTZ8ughU2pumIMXMfA98ROCJvNQNisnhsxa7luxfKcHuZN8p/I
         ItnHtdeRqdbFYAY6dqkZSeHoMsdgKT1APsgH2umX3P2r8ym9wMjZ8dkxKd7pyhIQyPnb
         l9dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758103878; x=1758708678;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RFlgCXptLNgS0oUFv7P/jnH+n8Ia5ZxafQyZ/H5sxnA=;
        b=owL6uErgmzedKVYpMt+qFYFhi9kKM+vtG+gaXSmVROeKFNZcTviURkIZeNUe7kBHVI
         OHNho/wboFOnV3QbTiNY4Zy7uMo/G4SwrKRU8tUCTV8/PrTcpDZUmCa4Yqpy2PEEaxLe
         tbsnRWEHH0kLfnGR3pb2EKmIL2BiAvk0v4ee0nw44Dv/V6/eHntXfL80YI+ZF09yLBgi
         5OXfapb9qfMSfMAdQxSsTXi7LCUKpbMgUS+dlxM3fojDfz8E1DpfIWOjmLRd9UIzG2Xr
         NTcteU0yEpmMZsf3J6y/mSX2bOGZhOkO5/DjKFDhPGCzdHoDVEpNemy2/s77SAGoiAOF
         qfrA==
X-Forwarded-Encrypted: i=1; AJvYcCXcJDdREviLqSzcrceo/OIeg6M2zJRkYmj6culu8Gjnn97pVD5XV6go/LpqDis9CMqJOeQHpxyZ3H+9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1tllSj272z5Ystc1oAtD8qYKDlKIJE8beqJFmb2+F+FejE3UY
	hPsWcIiJpktAOeI5qmn5n6HH1+Vtc3Z/Geslk+rX84S6KqzBFFRXAv4u
X-Gm-Gg: ASbGncsrSMe9H09897lNBC8veXrAFXtFCL+iIB2V4hO6SpTpvbRKQGenlIofEWC8t7I
	ljlgJ02PXAvtJvuj2Hgd2vv4gdKt80/Sx6YTazeq+tnWb1ii+zjg8yIUzPste0kswkcOLmKApft
	jSmP94X0U9/gvKJhhnnFTr7K4tkhHTU9e7v2bXG58lhNbVSE6XGbntX6gxPg5xSMW75hGhU5+ru
	lGQI5XmdfuGG4qJFDekGSO3NVgwBlzuyxVG9oAfiSsm88FJyoh9P8f7r66JTw+tRThw4PCdCBVz
	fxWkBVOOlu1oy1QxxE20CBBP/WsBsTjCD2CeM97/3EgcnpcWFlnn118Ev2Y4QOiAhoqa22QdGiq
	V1n+gSMGwKFHdx0k=
X-Google-Smtp-Source: AGHT+IEGAWHbOGCVA8E1ghCrTfok0wf8HrSSu83uqpK5rtG+yvptJ+uZiWuJFaorxUfrNpWZkT3p1g==
X-Received: by 2002:a05:6000:400e:b0:3e9:e2cf:cda2 with SMTP id ffacd0b85a97d-3ecdfa5ad4fmr599670f8f.8.1758103878166;
        Wed, 17 Sep 2025 03:11:18 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d005:3b00:8bcc:b603:fee7:a273])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ece0fba34dsm1092120f8f.9.2025.09.17.03.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 03:11:15 -0700 (PDT)
Date: Wed, 17 Sep 2025 13:11:12 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>,
	"Chester A. Unal" <chester.a.unal@arinc9.com>,
	Daniel Golle <daniel@makrotopia.org>,
	DENG Qingfang <dqfext@gmail.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [net-next PATCH v18 6/8] mfd: an8855: Add support for Airoha
 AN8855 Switch MFD
Message-ID: <20250917101112.555jzhzlmpkhgmh5@skbuf>
References: <20250915104545.1742-1-ansuelsmth@gmail.com>
 <20250915104545.1742-7-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915104545.1742-7-ansuelsmth@gmail.com>

On Mon, Sep 15, 2025 at 12:45:42PM +0200, Christian Marangi wrote:
> +static int an855_regmap_phy_reset_page(struct an8855_core_priv *priv,
> +				       int phy) __must_hold(&priv->bus->mdio_lock)

s/an855/an8855/ throughout this file.


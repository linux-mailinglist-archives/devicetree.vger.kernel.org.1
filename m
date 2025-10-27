Return-Path: <devicetree+bounces-231806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B6EC11B20
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:29:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2B0A44E41EC
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CDB332C92A;
	Mon, 27 Oct 2025 22:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JnG2PwBE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D00B2DF142
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761604177; cv=none; b=iRcx0k2fe6uYMlEH1MjMWuGQ82LhTIK8dj4ga7VA9Mk0U65Jf4wLvHImXp4UlaxzddyyrBiq5/CcpA+2y3Q1+TPIY+Bj9FeRuTZtH+kENqEFpB1S7WO3Ic/hOUerOMFw5S+jWlzy0wF0YVv6H9tXxoWeqa+AgoLHXfNimMoeTfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761604177; c=relaxed/simple;
	bh=0C1yl0AA49JmE9XLwRyxffj0R5guaYcIk3f9PZ1hd+Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HPKwh80qcaA51UMN6EbYHPGVhroZiKlyq2iaKE794mqPHxPniadmlPEtseJkXHQ+0z7PCGmidnVtY79Ma6v8uoU6BcGjGl2VaPCehPWyzRGSiCn3oqL+e2lwds8/Tmo5E27H6KmqQ9pFd4FjiN+ErPDM4HAh/mr+mNFQ7eNOLmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JnG2PwBE; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b6d8b70197cso51508866b.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761604174; x=1762208974; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RE56wPPSVhzI0oadNjkluabeK5GwNJ3pnD3l3rW33bI=;
        b=JnG2PwBETF8wvT2ZcvOCs4655f3/PEA7WPpHBAfeVkYJCJZ/4zu3OPZr8IM28MqeHB
         XK5M/I+bCzHZ0joMqS6C899uuVIBax7Hll3Poxyw6wKWrw8kynwD8V/S+IzWWTee+/md
         1ocKTwqHoQu9Smf0VFNevIMrhcJJ4LV58QwOICElPEIXxudBBJNYLj3sle2tWsiVUB/7
         wyBCJCzY//hEDnTzy1TcWlRD3H9bzhVdrdIKYc49S+3YeHOqwWwHl3vYFPGXKh2SjHZJ
         wxjpl2849RoxDq3QCN30j5kJuVA4PLsxpTzHOJGUSlH43TMcTv3XS1mh5uYDbRQNVKCy
         rMYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761604174; x=1762208974;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RE56wPPSVhzI0oadNjkluabeK5GwNJ3pnD3l3rW33bI=;
        b=WqNOXKKORtcX9kl5kck4SXfpkcViWMSOfLr5SpXzNMnDGismuZXEX23ZEuUO5pwCsf
         +2j/k1D3JlFmchEH9BJ/P320Iax/SoaPZDEUFX8rc2tLDPMmclNBF49ePmnQXOiDKtS7
         KjyQrzHNCuh+q7nOSIjx+BwPqliONYQlbJLfhOMkPG2746Q5Zg4nVshxPJYiSvNJqL4D
         EegX8ygxfiqILZ92gRJwS5+9BKIzaojMTVgUNwPm9meE1ufeIeAoDngqqgoxzwM9Wii4
         cFLyBRr5A3iS9q38YE7K3eGLZ0aq1iO7rXSppXbvjLgL/jgUB0yb4/CHeC4/T5+6YHM/
         IP/w==
X-Forwarded-Encrypted: i=1; AJvYcCV7bT4ApvF5NqlmWbIWqMDshdsArIG5GsLuRcakhwv31HOdmTIp8N9TSZc61EzX14uZPwxbhersyY3D@vger.kernel.org
X-Gm-Message-State: AOJu0YxdvZPAflanFS45/oNJqCVtv5c1KqlOUV20zDM/8zoMseqyEEnv
	z0L+nwZKVdHx2ZgHzfQFZof16e5Fsv+Y2+0XftMFPE5JkBdDIJvRcDi7
X-Gm-Gg: ASbGnctR21LqKPnTh5UeHiHC4Hr2sn2lRNvn3G2N3qC//yvSOarJWJr647ysXSNqLm4
	QlrcNJDoxa0zlMuepacNN0tHJ/6xnNhdu8ovFqqwsdK6X9hY3FwRkiafg+H8svu94iWrsdjInBh
	ocL05XIzPea4WFfNwNu5gGH7c8LMs67+5HUXxW3agFutIju/q9KSKNeeCXE/UwSfpKlDM9ggvaZ
	o7QgnahwP5GeKV88XToxwLy/taxdhHI9ajeHodPkSb+8NDZyvMLx2KHOfHlYCZ9+CvTinHQmiRw
	HUdTSK0zY8d4u80jx0W2EFxPLyXqTJqnuieN0lPmkEBv5GCPOr6dtIXmVCx5n+95iDnHiWSePUQ
	kCbK1MQROHvsCGwviqtlS97LCxFFZpD2xUB0LzQrtFbMapjxIkoriokKzCydldE85yb7NeBXFH+
	degOg=
X-Google-Smtp-Source: AGHT+IFNb/PYIFtOJ/7JMMnUbjO9bbIUFWO6ORtTCt2r4/hNn2eMPmn5diQOKKm+4iULlasCLfApLg==
X-Received: by 2002:a17:907:d8a:b0:b41:873d:e215 with SMTP id a640c23a62f3a-b6dba45b0a1mr82457466b.1.1761604173725;
        Mon, 27 Oct 2025 15:29:33 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d406:ee00:3eb9:f316:6516:8b90])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8ceeaffasm835503466b.45.2025.10.27.15.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 15:29:33 -0700 (PDT)
Date: Tue, 28 Oct 2025 00:29:29 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Andreas Schirm <andreas.schirm@siemens.com>,
	Lukas Stockmann <lukas.stockmann@siemens.com>,
	Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Peter Christen <peter.christen@siemens.com>,
	Avinash Jayaraman <ajayaraman@maxlinear.com>,
	Bing tao Xu <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
	Juraj Povazanec <jpovazanec@maxlinear.com>,
	"Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
	"Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
	"Livia M. Rosu" <lrosu@maxlinear.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH net-next v3 02/12] net: dsa: lantiq_gswip: support
 enable/disable learning
Message-ID: <20251027222929.7fhlf63e2piwityt@skbuf>
References: <cover.1761521845.git.daniel@makrotopia.org>
 <cover.1761521845.git.daniel@makrotopia.org>
 <816b2e277d22dae9b3e9e3c4828309a17a3fad7b.1761521845.git.daniel@makrotopia.org>
 <816b2e277d22dae9b3e9e3c4828309a17a3fad7b.1761521845.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <816b2e277d22dae9b3e9e3c4828309a17a3fad7b.1761521845.git.daniel@makrotopia.org>
 <816b2e277d22dae9b3e9e3c4828309a17a3fad7b.1761521845.git.daniel@makrotopia.org>

On Sun, Oct 26, 2025 at 11:44:03PM +0000, Daniel Golle wrote:
> Switch API 2.2 or later supports enabling or disabling learning on each
> port. Implement support for BR_LEARNING bridge flag and announce support
> for BR_LEARNING on GSWIP 2.2 or later.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> v2: initialize supported flags with 0

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>


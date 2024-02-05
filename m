Return-Path: <devicetree+bounces-38475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EFC84947B
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 08:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BE021F2668E
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 07:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2A4C2FE;
	Mon,  5 Feb 2024 07:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CqUvF1k2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB42D26D
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 07:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707117949; cv=none; b=Xx8MtH1ACFp1H8ITvHw6e9JZfyHXt+5xhYRx+tLpe+5gsRJ5e9nOMfXxns7PbqQBtoB07dUBATrU/KJuWgjYa9ErWnnAkZfSRV6H5A1YJRE8pwJDGa9LHPLHo0vEw3oeRS/rSO/IZL9Ed0isI9nfAzyJwq43og4jyArVOu8qE/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707117949; c=relaxed/simple;
	bh=zV5pMxqm0rgL1u3K4Vrjp5L4hG224rz06OLpNEs5ZA4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=li3Q1Xey4ETw3nU60Ft/hdlCLP8lpD/Vwhcn0p3CyTEHASuKmE54iDokMMiSPkdlYMJ20ebvAhBff+XGerql/6sttJT94Gsd11i4XhSiyVIjU0PgChlzMDqcZmACvuCXGneveVBxUeSErWN1QHs80WWMnhnCOKCUV/R/uFiQDVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CqUvF1k2; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1d944e8f367so31693495ad.0
        for <devicetree@vger.kernel.org>; Sun, 04 Feb 2024 23:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707117947; x=1707722747; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xpp2tvFEphZ4HUeN00osCoQoRRUmsBUXc6s1+B23Jqc=;
        b=CqUvF1k2bAHr8gT2DaRKz7KvC6Xv6Pc3UbYOmNEnx/Icktn8foHlH8bzyGrUZ94KWn
         DYB0G2x2Wygbtdh1mFuU9Dyb3NDazpL5XnGQlOi+A6GP/tfRFYpRSKppLMdtXMKKT0dd
         C9oU+MGwKEGCk9iLqdCamhl/zGdGahqRw/5kGNU4wW8maq5+M4KoMGB5qfyqJbGKrMAl
         gu75DtPUWOZa4kDzCgg48Rz9MY0Pa5NGitB2JFjDsfJ6SP9hCz2eq0GhDXXNgGzqVYnH
         otUzHiHc2SZreV9VaBB4P9ysCf4H8FIIaePyWxTSOCIIyBuk9mvlUiW9PJnjKIei4aQo
         m9Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707117947; x=1707722747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xpp2tvFEphZ4HUeN00osCoQoRRUmsBUXc6s1+B23Jqc=;
        b=YZA+N7uuYvlcgmhYUE9l+4pWS1COzSXap/WREs3DR1aR5tpi+HBPcb+c/h+KIDfKPl
         NC9I0DmTWuNsmA89l4JUYI7vmOHb/JrbQgeKfv5r94E1qq4tHVBCBcqzkQqf1sZf3z2G
         xA0UDFW2a3hynFczF72NVLM4gh49BpukSdQO0tFo6iDByR7rqdN3iLfAIuzFVfBxtgXp
         qYQv8yeWBcLeJug5rV6DOS08qbN08dUesLf93z5pPQ/HJOB3OGcFt4UaQrhPPmEr/hx/
         v1s7MpYyzMJCUonoj+Cyg1hwv1fA+6lPwveiW4B7ZSOiKUg8k5pQzK+9tOBwFzHaEFZW
         Glxg==
X-Gm-Message-State: AOJu0YwfIyhGO/EwlqZrVhI2J/72IZ204+B9yBffnHyxHIUsl6qDTM2g
	UCRUMKmiuG27SXztr3RLtYbyX90KFtJnYQKlC7Q32ID1pWiloa+U
X-Google-Smtp-Source: AGHT+IFO4V+zuL8EcoD8g5g9K5ytfxfNqllxhpSScc2vdbd7MkOe24Kldywnxq3zoWldCzlHovD98w==
X-Received: by 2002:a17:902:8f85:b0:1d9:4d3f:cbf8 with SMTP id z5-20020a1709028f8500b001d94d3fcbf8mr11057987plo.22.1707117947449;
        Sun, 04 Feb 2024 23:25:47 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVpxflhYeaq4C6DQIcPawyxyKrY0NX9kYOE57ySOTZfox/mT31DC+ZKJH0Xd0CaGKMxV7qyrbHIqY0lC9/HrVf5FmkBedeDUVPYHakSYuctZS231JV23BD3glTTwVz1hPauz2aL4b1jRg+bDNxfk3AEmlFgspyvW9aOobUSSOMY+yZUCotT+DCmA0/ner6ttRtu0WCdLFRDr561i/yLS+fB6eE4xXoAZ/8Ywi3pP3I5Rl2lew8MXqnxLUgmmTg+bgnV5zTsUYLqWOYzaKc+w94xeCR0uaiBex/6njstBp1HNJRPCw9FhNuaX+utoXCNqyjdCIt7CCUsEf+Mg9FmjlVngLHlqzKy+CArbAp92Vh4Wd9Grw==
Received: from t480 (144.34.186.27.16clouds.com. [144.34.186.27])
        by smtp.gmail.com with ESMTPSA id j3-20020a170902f24300b001d714a1530bsm5650320plc.176.2024.02.04.23.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Feb 2024 23:25:46 -0800 (PST)
Date: Mon, 5 Feb 2024 15:25:42 +0800
From: Shawn Guo <shawn.gsc@gmail.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: Add missing #thermal-sensor-cells
 to tempmon
Message-ID: <ZcCNdrQPb10i4rl2@t480>
References: <20240110081059.414156-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110081059.414156-1-alexander.stein@ew.tq-group.com>

On Wed, Jan 10, 2024 at 09:10:59AM +0100, Alexander Stein wrote:
> Fixes the dtbs_check warning:
>   tempmon: '#thermal-sensor-cells' is a required property
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!


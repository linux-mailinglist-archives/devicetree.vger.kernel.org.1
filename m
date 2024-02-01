Return-Path: <devicetree+bounces-37417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0A6844EF7
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 03:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B28E1F22ADC
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 02:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B112CEAE3;
	Thu,  1 Feb 2024 02:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bATzSUA+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BC4EAF5
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 02:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706753016; cv=none; b=WtrZrHBD9qU38WpYrIr2A7X0eiw2o0ArkSmFyN0/OPA07GWLQmZWUT5sTb5ei+n31WcrZ+d02vTVNAnb6r/rooK77PGvSqSkyZh1kmiHXCDH2DXGfZ1fWpnp2MdPE9y2rXSddIOSg9AIY1Nf1iI08nWhJmtuChbjNBLoEAaxIok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706753016; c=relaxed/simple;
	bh=YKGzsfKzgfQSU99rM0vGaDWDRSAQGDegERA5NtShGM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kj/5Yvk7zvv30AoJx87/lp/e6IqKvxuIshI7NhOVoDdBP47hGDpnO+3urTBCuX+jn6RDqJagYaLCnF5hmQqlh1lymvjCLSdos+CZKPENIWmxoAMNo19uDbkdCXNwyS5+ZCdRAr1ZUSVCZr6XQiju212yuSnMlK8Fjh1D8VMKnAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bATzSUA+; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2906855ac5fso293999a91.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 18:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706753014; x=1707357814; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JrTlakI+0ZPEl+J9C4WJ1by40vqv2EddkHHUAndN8SE=;
        b=bATzSUA+0Mltz808eYtS3y6jZqnoJbGuniHNOrR8ajFt0hdr/Nzm+MQCtKQHuEUU78
         KTuDFEHND9BXQyjyJgLrOEZ5wpXzLZqYMKYPgdJtV/LsasF1fIXOvRk+qfowR18muris
         dsSOe8xc6gBzb11Wem68Q4GgYnExbjoL3M31tkBcib05soarmpsf2GzQ3N/LeR2qlOx4
         W3ORHurvyP92MT/2rIKSeZ4d8xIBsKMNv/POz99IycREED346x0tGFmPwIfQb5JWbPe1
         iWU1Rld9JMJnevbiZMGbWMhDKNE4GAgvkXmJzvTyAr6Qw+IEpvx4MiE2K6RP+M8LRSZt
         nPxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706753014; x=1707357814;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JrTlakI+0ZPEl+J9C4WJ1by40vqv2EddkHHUAndN8SE=;
        b=WjK1KusTI42hAB+3p3ldGeZNdpcT8lQUgQYPYgh/VrL4fZ4fnoX/3sn+q6dcKvWs/B
         vnqvjC9INpRtvCxaYPYo3fOlkgta5Gh5ErG9If03wNMl3srNMd89zfWTam25LiaQNQUa
         mNrp6ZNAKfvG3H8VR32RbrSXhijV/Df5xNDCiy+x5yWvxagfGbUnFW7Wl7PpsPrTDOLN
         1sYNPPKX46r15ES9iglz5AtUlaIB/oapYZIPJEc0+++ivL+p5uEq2v5yD5sFqI1IGHU7
         l0ZqQSjKKhtpIHPyXQsLqMrZwC8wlF/6jF55QMv7i8QBN1Ye9XNU50pG7bkVb5GmBIQh
         CxqQ==
X-Gm-Message-State: AOJu0YzmYuQRQluAxRzuYBZckovZOHDVz0BlRRWBaVRrKuOY2mCkFjcx
	vVPdBfeXZe+AVz7aIBg0vvNsUCjCr+iWvnnEoEV2szorRJoIaEzc
X-Google-Smtp-Source: AGHT+IGkpdbluSNcZqAHU/HL5ubAtXGluO/0gASN2eM4PX/TJHdHQiDDsyaoNX3eplG8r18IIRuLuQ==
X-Received: by 2002:a17:90a:bc82:b0:295:f059:5713 with SMTP id x2-20020a17090abc8200b00295f0595713mr2858279pjr.38.1706753014479;
        Wed, 31 Jan 2024 18:03:34 -0800 (PST)
Received: from dragon (173.242.119.193.16clouds.com. [173.242.119.193])
        by smtp.gmail.com with ESMTPSA id ix11-20020a170902f80b00b001d93765f38dsm1494233plb.228.2024.01.31.18.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 18:03:33 -0800 (PST)
Date: Thu, 1 Feb 2024 18:02:26 +0800
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
Subject: Re: [PATCH 0/5] TQMa8Xx (imx8qxp) audio support
Message-ID: <20240201100226.GD463595@dragon>
References: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>

On Thu, Dec 14, 2023 at 04:02:38PM +0100, Alexander Stein wrote:
> Hi,
> 
> this series adds audio support for TQMa8Xx on MBa8Xx.
> The first 4 patches add the necessary nodes for providing clocks and SAI,
> which are used in the last patch. Patch 5 depends on [1], but right now it is
> to show a consumer.
> 
> Best regards,
> Alexander
> 
> [1] https://lore.kernel.org/all/20231214142327.1962914-1-alexander.stein@ew.tq-group.com/
> 
> Alexander Stein (5):
>   arm64: dts: imx8qxp: Add ACM input clock gates
>   arm64: dts: imx8qxp: Add audio clock mux node
>   arm64: dts: imx8qxp: Add audio SAI nodes
>   arm64: dts: imx8qxp: Add mclkout clock gates
>   arm64: dts: imx8qxp: mba8xx: Add analog audio output on MBa8Xx

Applied all, thanks!


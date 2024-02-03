Return-Path: <devicetree+bounces-38276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFDB8486A4
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 15:13:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1FC5285A47
	for <lists+devicetree@lfdr.de>; Sat,  3 Feb 2024 14:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A5EF5D72F;
	Sat,  3 Feb 2024 14:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E5hAbzT3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED97D5D90E
	for <devicetree@vger.kernel.org>; Sat,  3 Feb 2024 14:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706969609; cv=none; b=reyXaGxwOGG2IbtdDBC0jrXpJgjrj+YpnSG05aR4NGYDJ1+mBwKnY7Coa0pwIGJhQzSWfAUuvWJThO7JQ9ye6Qk5HX21CLJP4x4CtO8/Lcfl6o05KsAtYtsLCme59k/TLmBicktCupaFy1hddgL+QpvkhWQBS+ela04I+IOQ8OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706969609; c=relaxed/simple;
	bh=Tj+1yBYW8vqJcOXcyOXy2O0kZLmV7ZC+CsTSk3Xaq1A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MRjL9P29eq2x8DLOWmbfXp0Cun8RoTo5wTLyIHXhB8whvJyT23oUP532FH2+A0rFhve1RA1gz/ktR8TcYpXPFOYvnIrNcSQr803B1YZ8k3TFBWg/SQJayVAEUdlmii8wSvMeApL8O+z1GHXhiWdsVw85VhaMZbNXC0+Qe+Aoq+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E5hAbzT3; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6e141ee9c14so1528500a34.3
        for <devicetree@vger.kernel.org>; Sat, 03 Feb 2024 06:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706969607; x=1707574407; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mREU3Rb75lZQjv9jELjEn4pXCHSQe0l93Q5KUUdwF08=;
        b=E5hAbzT3nng8nPOIZ9SwQzGasuItQa2HBsEbaJCN6LiRrqd+mXoXajNlyojn+31C5M
         PuQTjZtwMbwzWHWuYWEmZ5OzdanfTvsj9vNm6xW0A6r//974zZutSMUDRP34Mds4Qa6A
         +PootBom197Ju+TO5sKxxoFmRa0ngpO1Sc9hG03g1msUYZQZS8+n8zq3eIpaiVDxSPLT
         yHNzzU4RJMGDOwv1N8yO5dC7Z08oPSoMaApi6vwttwn+Z7w1vv5OHDq0EzrDF9FB8ByQ
         EdAZ7lnO1ngMZobcbR2nU2lNav4wj55UplV2m7wMALEcU6HpztxTJWaTNLG0a2ziAMik
         j+Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706969607; x=1707574407;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mREU3Rb75lZQjv9jELjEn4pXCHSQe0l93Q5KUUdwF08=;
        b=jtwkRt8ZVco1rkDlb2yNaruhc9ruRGYMwJpaoprRgIuxGmsxpuFO8CUeU/oQHaf4sw
         6LWhF/VxxH34cgxZMEAymX5mrDZND25M+lgTIG3UKdqvlOXwcD2RGsKPI1Li5YnYPdHT
         OET6JGd5L9yQ1m0j0GY/fKcE7+KiUjd6zBp3ZnFrR7S49TSv8Bb/99Fo6duNQtG7xLff
         DXyDVr+2A2j+1FacbjpNMf8yiBaDjRSmVXbJrgr+NsPyoMnQrBNukPFCgE4o7UOGsHGV
         Oi5wF2ASmYrteBI7uQLu2FnTy1//B/J8B5i0eE1PUNx1JCDUReZ/0pCTQLhVQMiEfd4J
         EJ2w==
X-Gm-Message-State: AOJu0YxhnOJwAenSlZO3m9wH9r1zgiBPn4DU1smrAuFfBjPLsh2GX19X
	SInXZSEX5Tq3O+4YzncCGlqkJerDBfMcqH1YnZv6Hi65iDAImRpV
X-Google-Smtp-Source: AGHT+IGXn6xqNtunU3gy45qLprY4Cj5N/FcTiJWbzwY8u7OYXZSh9k2eT6kHRZxjMUH5Gs5uttAEaA==
X-Received: by 2002:a05:6358:703:b0:178:b0c9:118f with SMTP id e3-20020a056358070300b00178b0c9118fmr12518705rwj.26.1706969606721;
        Sat, 03 Feb 2024 06:13:26 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUoPQeF/A94TlNeNTaQsT9zDWWFnhnm8VBVX/ld1kqt4kpVAha/ndr6K/YQsR44eW2UXOQqBs8R02GiGceAvJapTyCgawTUZvSBXh2SEa66q4Fr23/S2K+/NeoMS1NYSIj1T3P6yM1HRKrlgbPwQLHgFnVxzizzM/4uEXVct2wafMnFC0p1FWbOLtSESyW6aB19UOx/scX4SndmXHMo4lYe5G8L+/lrss0vmEh6cywbr9T1QPml15ryNDuG1/strF7tyu9Bu9u9ef5OjviZa0sCLMM118KpyC6D2YWOzNil9IPgfqg0d5St9SNBI1yYC1duTPhDr3x7SHC7Gqw/qHUtLaSxECslfNAYikJolPz6LktMFYy2dAiSd1GzxL+tsvPSs9Q66S/QVgT0
Received: from dragon (45.78.63.125.16clouds.com. [45.78.63.125])
        by smtp.gmail.com with ESMTPSA id x23-20020a056a00271700b006dddd3e31a8sm3444836pfv.219.2024.02.03.06.13.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 06:13:25 -0800 (PST)
Date: Sat, 3 Feb 2024 22:13:18 +0800
From: Shawn Guo <shawn.gsc@gmail.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 00/23] TQMa7x/MBa7x DT fixes
Message-ID: <20240203044123.GG463595@dragon>
References: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>

On Mon, Dec 18, 2023 at 01:54:36PM +0100, Alexander Stein wrote:
> Hi,
> 
> this series fixes several issues on TQMa7x DT files in various aspects.
> Probably most notabe one is disabling PCIe due to missing support for internal
> PHY refclock.
> 
> Best regards,
> Alexander
> 
> Alexander Stein (23):
>   ARM: dts: imx7-tqma7/mba7: convert fsl,pins to uint32-matrix
>   ARM: dts: imx7[d]-mba7: Move ethernet PHY reset into PHY node
>   ARM: dts: imx7[d]-mba7: disable USB OC on USB host and USB OTG2
>   ARM: dts: imx7[d]-mba7: disable PCIe interface
>   ARM: dts: imx7[d]-mba7: hog Mini PCIe signals
>   ARM: dts: imx7-mba7: Mark gpio-buttons as wakeup-source
>   ARM: dts: imx7-mba7: Enable SNVS power key
>   ARM: dts: imx7-mba7: Add RTC aliases
>   ARM: dts: imx7-mba7: Add SPI1_SS0 as chip select 3
>   ARM: dts: imx7-tqma7: Add i2c bus recovery
>   ARM: dts: imx7-mba7: Add i2c bus recovery
>   ARM: dts: imx7-tqma7: fix EEPROM compatible for SE97BTP
>   ARM: dts: imx7-mba7: Fix iomuxc node names
>   ARM: dts: imx7-tqma7: Fix iomuxc node names
>   ARM: dts: imx7-mba7: restrict usdhc interface modes
>   ARM: dts: imx7-tqma7: restrict usdhc interface modes
>   ARM: dts: imx7-tqma7: remove superfluous status property
>   ARM: dts: imx7-tqma7: mark system data eeprom as read-only
>   ARM: dts: imx7-tqma7: rename node for SE97BTP
>   ARM: dts: imx7d-mba7: Remove USB OTG related properties on USB node
>   ARM: dts: imx7-tqma7: Add missing vcc supply to i2c eeproms
>   ARM: dts: imx7-mba7: Add missing vcc supply to i2c devices
>   ARM: dts: imx7-tqma7: Fix PMIC v33 rail voltage range

Applied all, thanks!


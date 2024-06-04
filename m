Return-Path: <devicetree+bounces-72204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BA38FB207
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:19:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85FD81C22653
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C718814600F;
	Tue,  4 Jun 2024 12:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tOHuRADC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DCE145B3B
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717503577; cv=none; b=MHb75LKgsuPOik3mcheKHpwqaqAyuYQnxdHradgEdx1UTN+TA8bPus73rUAlBbZn2kVNsAjpdayVCqbs88F4q3sTVqiYBCBiYlcFIbsua6QpbT3IODAtC6Yan67FbuOKY5Ckiw6Rb96a7f1cn4yth3j4/Z6UEA6Ixzz+I0d6dlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717503577; c=relaxed/simple;
	bh=5I35mb01Pho5lY9vj7hsFa9nE7Hi8Z2cKCHf8+qyIXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gDfXdaSVP/3sGsdqJYYmGNjnapY3MhL9YJeRxcxoznVKdZKkRveAC2yWWXIDQBp8qkvM1wA1TFG08TDZQgH5k70UOuzUjzy6afXnbmLjqQUe1te7sCHwAaQ7RPas9/OYRbZ4TiyzASxt1BydjXaqme4HGEleR7LAk+Y7+p/brz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tOHuRADC; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a69607c6ccaso81122666b.2
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 05:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717503574; x=1718108374; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5P7GHZtJwM0gmngdgU8CZRB7FdR1U4kDjDmKnnewdNs=;
        b=tOHuRADCkIu0ZwYV3wgDrTVfWhChKeLCD9kbFtoYcw+djYI1rnRstv0wXaqTZ84llq
         Mp5Ps4Bta6YiOodP8xWynT4Or2oOaEqS4+t0tywsYiMFuXGyhnHURw8PEL/hGRr6IhSw
         6DWnjO0l0slqiBGyS/MPD619MVjFIpLYVaJsj2Wu2Mm/Dq24+3X/pIl0MhYCBfN8d8Kz
         elSi5VwHSiXh3fievEthwuN4KOsNCUFtC+wvZk9rDLbiTOrw+OP8hFx0HyyGplUR8Huq
         /66UEfCgbE9DvhTR+jUqjxiZs+WkaSc0nOFhbbwqloqmZABAZEkBHGZ6KOniNey6tckm
         A/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717503574; x=1718108374;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5P7GHZtJwM0gmngdgU8CZRB7FdR1U4kDjDmKnnewdNs=;
        b=t6OgRPi4EUG/8cw/MfrBl/5Mp5iJxha+XMcVwrD5Vl6l38o4gR+MNZPXyASwnRFuBl
         wsC+JOc2ksjLZnhVpAUWGgeTviDVBtpnhrSbGVZUJ1Tc53112MMYyXqgxU2P4f273CIA
         5cEsTLmrR+cyu0UtU6CJg/Ul6F49HpfvrOR8LQDM6ft6fj9nhxsP5goaxBhamUIIWe5T
         IqMz0Sn8ViEpGNBF04qY1CiG0kZd9DX0U2H6JGQlLhj9YdZ/wRSDjteuNiLIKakibe7G
         Eui0FyuBehMdEcPxEba6mRuG9CWqm+R5RhR4N6l+TXPrIoEJ1685zkbGUQbfYdF5wCOB
         mxkg==
X-Forwarded-Encrypted: i=1; AJvYcCVMSkh/TRO3aiPycANAtQjDHBQuE14IXxuD/i9DgV2XB3hkiq1Fy81SBdncrzz/W7vdr6kz+ZcSpWYvrD7pNfaqS9rFibfK/YcO5g==
X-Gm-Message-State: AOJu0YxBliSg0xYRCC8yTocEDBll9Pk56pGdR4XvYT8ci9di4/JyA9tx
	HoNuuSWRtKvPUbEoaQdoLGW+f3+lMANJRt0S576eS6m06pC0dBSfXROrRibkJDY=
X-Google-Smtp-Source: AGHT+IEDnU8aYyTPGuIw7hpLBWkTwVE+/TQ9c+IYEZrWq4iqp25PhHL/PsSsT2nhyGS2E7hIlPZhBA==
X-Received: by 2002:a17:906:f144:b0:a68:c3fe:c8ff with SMTP id a640c23a62f3a-a68c3fecacamr614719966b.17.1717503573605;
        Tue, 04 Jun 2024 05:19:33 -0700 (PDT)
Received: from linaro.org ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68ba90e185sm469759566b.157.2024.06.04.05.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 05:19:33 -0700 (PDT)
Date: Tue, 4 Jun 2024 15:19:31 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
Message-ID: <Zl8GUw7WQKIprA+C@linaro.org>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-1-5c841dae7850@linaro.org>
 <Zl26Y0VklPmiirem@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zl26Y0VklPmiirem@hovoldconsulting.com>

On 24-06-03 14:43:15, Johan Hovold wrote:
> On Fri, May 31, 2024 at 07:06:44PM +0300, Abel Vesa wrote:
> > The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
> 
> nit: s/PCIe 6th/sixth PCIe/
> nit: s/from/on/
> nit: s/both/either/
> 

Thanks for reviewing. Will address them in the next version.

> > 2-lane mode. Document the 4-lane mode as a separate compatible.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> Johan


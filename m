Return-Path: <devicetree+bounces-12037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 651877D79D3
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 02:51:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90D651C209AC
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 00:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC72915B1;
	Thu, 26 Oct 2023 00:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eO4CqouV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FDB7EBE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 00:51:40 +0000 (UTC)
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A57D1133;
	Wed, 25 Oct 2023 17:51:39 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5a7eef0b931so2665637b3.0;
        Wed, 25 Oct 2023 17:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698281499; x=1698886299; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DteBNmpMW9lJ1ihftHYbf3WekU57m/tIhlDZSEIvAuo=;
        b=eO4CqouV2bU2SsuYimWpfMGOnXUQdSk+kvyJlJGdsJOxNMSGPSe85XQYbndsljJz36
         KlICqJWM2KjMCcOUztvE06no31ZEei2x4dM1KyEE7CzGvPO3AqzKUnCsr7h68dVRoLma
         p3PqzN3dqURLdRgDV6Y9UfFxWeUYnCWKRbiXtUnWcaoN1VSStooYayXhW6rQypDc+lEl
         /EygVsrfDp9CcMCUDD2KqXPYfE7Vduyk92MCAOZXTx1lgdgLMNNxJKuAUnrTfxe2VT0i
         8Z7luJwKP+C3Ejc4Bq2M9d/sw3EGq1cgTq3J7C3rqI6PDnfAEiy424vmoiqHxIJNltiH
         Rqsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698281499; x=1698886299;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DteBNmpMW9lJ1ihftHYbf3WekU57m/tIhlDZSEIvAuo=;
        b=kjL8vYadtD7Kxr5NxzqWgnnV4A/DWWs9amdtTYN55c1VORsR8YoCdKcp0ZEtuCffLU
         gAD/6xMxy8xwF2Mck0YGBMNyEGT96imeZcxTpUU8Y0NoiDPy79UyKgdRXoXQ8Som99nz
         MMuQ6A/1ViDdTOgg4xc2+zDfl8KdtBSZG0VzdkQC8R2lJZekXxDi5XYMoiYjRj541HTX
         5OJOvCRtcMH6Ul4mrdY+xGgCfVV0KCBx4Tj8sWdgEa/o463if70J/efyHgLsFYJPuPYZ
         DXralmiD4kehg9/RBElUeD+W8BXLchl+o8FoZ+k7HAcoobDjz6efdjkZJvfQkdf12YFh
         Ogkg==
X-Gm-Message-State: AOJu0YwVHnkGigpnxK2xgexfSbHtioKxv3heZYZpjVQfw5uV1bgpA1+u
	wEmRsyTRkCZ7zkQaVt8HS7I=
X-Google-Smtp-Source: AGHT+IGMFIHkH+6sfpYRyVASZw6tE86e0PkeIEliZHAVWfu4OL1A20s30xpFuNH7f0rLlYgs/aP2EA==
X-Received: by 2002:a0d:d457:0:b0:583:307d:41bc with SMTP id w84-20020a0dd457000000b00583307d41bcmr17973672ywd.27.1698281498808;
        Wed, 25 Oct 2023 17:51:38 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id e185-20020a8169c2000000b0057087e7691bsm5558706ywc.56.2023.10.25.17.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 17:51:38 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 25 Oct 2023 17:51:37 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Saravanan Sekar <saravanan@linumiz.com>
Cc: sravanhome@gmail.com, lgirdwood@gmail.com, broonie@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jdelvare@suse.com,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org
Subject: Re: [PATCH v4 3/4] hwmon: (pmbus/core) Add helper macro to define
 single pmbus regulator
Message-ID: <ccdfbff6-8585-4cde-bc1f-6a39792c859d@roeck-us.net>
References: <20231011164754.449399-1-saravanan@linumiz.com>
 <20231011164754.449399-4-saravanan@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011164754.449399-4-saravanan@linumiz.com>

On Wed, Oct 11, 2023 at 10:17:53PM +0530, Saravanan Sekar wrote:
> The bindings for single instance regulator should be named with no instance
> (e.g., buck not buck0). Introduce a new helper macro to define the single pmbus
> regulator.
> 
> Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>

Applied.

Thanks,
Guenter


Return-Path: <devicetree+bounces-218670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F3DB82FE0
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 07:21:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEE114A3EE4
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 05:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB30E28A3EF;
	Thu, 18 Sep 2025 05:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IUhBsSjK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C19284884
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758172854; cv=none; b=s29L7VZJiCgMaPQaGs/r5poF1pEfnVPfCOJVHQGWY7Hn2VCtfrSWX6fgAOqpAVaQ/RkXwx3wiM/Av4yjfkb97Llx6FC68LxiB+JsRlMgz4V5AnKVKHpkIFFlXQts7RPYRn3Ei33ORKiZdpD7L5BO/qO8+GogPLahc8v3AbW3GWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758172854; c=relaxed/simple;
	bh=mJBu47dNRLOUdwnQdDq7ahHq8KN4rsvXvyAfZf16StA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u96YJIhQhy1cxwo0IEd6bhVtd/LgLWzgFVaYEqevpHeO2IsC8RkoeC9F6wxOMvKhZYQouV8+Rn6tF7AB+4Lij8TrZV/TLz/vf8EBS4fBFcT1MzrZk3LY6tKL+8TZSzWuxifgzIeF44ReTMGNIwBeimyG/J6n18XgpNSvC3W8otY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IUhBsSjK; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2698e4795ebso2388655ad.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 22:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758172852; x=1758777652; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ddz64abQ+Ip+tKkgy/htEThiGlqI2wjDb/I3daGz3hU=;
        b=IUhBsSjK1nIQeiX0wO3vX8Qx1aBkIYTkl7ZjP0CNoLm5taqHJEUT/RPv55SJRQwaZl
         +QJKO/0nYjkYc9BqRZf2YJ9J2ZMAT/gVaKjhKlYqfMCVh0YT6uLpK4bUiq+RJd10HJ35
         S4PFa9BILcngvg8x4ZIKKHVuPtsU168q5Qpe46c584b66NDKr7yquuPJ/HLvBvo17BGP
         /9+3ycNdgCSaywtpYx0n2+MhXhmv9VMnd3ZNoNFszIGjEJyC+WXMoFdZT6srsXchFRGQ
         8hjiiFGwyyhbUVNsqstrUIC54oIWlX+EmSrVX+Rv6XKNhYhwG32S3PMwm1mMONSobPiB
         DqVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758172852; x=1758777652;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ddz64abQ+Ip+tKkgy/htEThiGlqI2wjDb/I3daGz3hU=;
        b=KdbptN4g9L1nt7PYFxlt2lZD1UqOkisrgBX89lfznwHvZPhhff1Pfz+FCHK5N9B4uZ
         i9uZP7zqvB0zs/MWCfbnIMMpKW2Ou2qF1bg1CHCqbC0YmxdKtikphEtqpcgLoNkUJDyY
         SPp2i0oQOOtYhTDIQaX1Uurw++eFiDltAYfac+7AaKZuKsFcdOYBHP/jSOPPGW7Q2i0A
         Wa2SmR1AYh57Ded9gx89CMTr+1E7XkEelfaWjCdP4Fdx1rsUddBJ3MDEJDtn0ybsDDYa
         SMoBnXGUf0k6g+kuT7yo8a/97SYfmh+NUtIASckZCoZBlaXJPyclXWlU2URgNvJxVdDZ
         J9pA==
X-Forwarded-Encrypted: i=1; AJvYcCUDIEG/2AcdVoqCDNdUOV5iH3tk6pkS9qw3UAgNyDLVFXZrrZuSlZLYHE4CFYXzziDr+N67yhscUK1v@vger.kernel.org
X-Gm-Message-State: AOJu0YzEW6BbN2Ir94qLJ4Gn4nNETg3+hSSdZdlcb7dwoeXviTXYi4rE
	AuTndOQoe8Hk/3Kfisi+nYzhiygZ+Ys8v8Ai+R5Alkd8IY+ERORR3jZg
X-Gm-Gg: ASbGncuzjgRPSVIeUueFcic0XWI6Uj+p8HUHfqZIGlTj4UklddkrYlZXfk9vpAn2ESW
	dF2WNoIGvzohiUFoqcnHQ8qRIzdHumHXnOShzYEvrhIWhjRYexIMPecgrgd5DBi+8R1G1QXIL8y
	zBECyyLFoaMqCIJnmGmrtkU1q0e5lkbtcjxT/p+WTDk9p4cw3x4xvU/b6yLnn9fO6x+4OWVdLzT
	uh/W4hXNn9DFaTDshjNQdv/wyxQI9B1eFMMmaygUyPYc7O5L/yKLelZ+bUqHeQP2I4FweRfcWNw
	9kzhGfGEZlI+RxzMMOUhUpefD+N0eVUWv5udcmoQ1NpS9LoaLIvrRzi3fZfWeEJ6KZzZQktrn3e
	jqH5GvlIA3oKXNA+sfdzOmavpHBULsY0Rlo7cFbSRwg==
X-Google-Smtp-Source: AGHT+IG8CuXun9cOc4Miy8FKai+xpcWeH+yfmFB+Hb9vuMbp9yZvwClUBTpkB9qN/yr1gkSb+hoYzA==
X-Received: by 2002:a17:902:d502:b0:246:163b:3bb3 with SMTP id d9443c01a7336-268137f273emr60856295ad.35.1758172852491;
        Wed, 17 Sep 2025 22:20:52 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:194b:8358:5c91:3d3d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016c098sm12567295ad.33.2025.09.17.22.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 22:20:51 -0700 (PDT)
Date: Wed, 17 Sep 2025 22:20:48 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Henrik Rydberg <rydberg@bitmath.org>, Jeff LaBundy <jeff@labundy.com>, 
	Jonathan Albrieux <jonathan.albrieux@gmail.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH v5 2/2] Input: add Himax HX852x(ES) touchscreen driver
Message-ID: <blpydhtx4iqc7izbjaccikwjkeninghdykjndcp4d6d33wbybu@legip3xo2fsr>
References: <20250915-hx852x-v5-0-b938182f1056@linaro.org>
 <20250915-hx852x-v5-2-b938182f1056@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-hx852x-v5-2-b938182f1056@linaro.org>

Hi Stephan,

On Mon, Sep 15, 2025 at 04:19:57PM +0200, Stephan Gerhold wrote:
> +static int hx852x_i2c_read(struct hx852x *hx, u8 cmd, void *data, u16 len)
> +{
> +	struct i2c_client *client = hx->client;
> +	int ret;
> +
> +	struct i2c_msg msg[] = {
> +		{
> +			.addr = client->addr,
> +			.flags = 0,
> +			.len = 1,
> +			.buf = &cmd,
> +		},
> +		{
> +			.addr = client->addr,
> +			.flags = I2C_M_RD,
> +			.len = len,
> +			.buf = data,
> +		},
> +	};
> +
> +	ret = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
> +	if (ret != ARRAY_SIZE(msg)) {

Added
		error = ret < 0 ? ret : -EIO;

because theoretically i2c_transfer() can return 0 as number of messages
transferred.


> +
> +err_test_mode:
> +	error = i2c_smbus_write_byte_data(hx->client, HX852X_REG_SRAM_SWITCH, 0) ? : error;

You want to return the first error that happened, not the last one.
Changed to:

	error2 = i2c_smbus_write_byte_data(...);
	error = error ?: error2;

> +
> +static int hx852x_suspend(struct device *dev)
> +{
> +	struct hx852x *hx = dev_get_drvdata(dev);
> +	int error = 0;
> +
> +	mutex_lock(&hx->input_dev->mutex);

Changed to use

	guard(mutex)(&hx->input_dev->mutex);

style and applied.

Thanks.

-- 
Dmitry


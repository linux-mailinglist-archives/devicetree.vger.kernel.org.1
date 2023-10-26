Return-Path: <devicetree+bounces-12036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A667D79CF
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 02:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3EFF9281E0F
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 00:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA04C17CD;
	Thu, 26 Oct 2023 00:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SMDFkvWU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF2617CB
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 00:50:19 +0000 (UTC)
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F08E0E5;
	Wed, 25 Oct 2023 17:50:18 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5a7fb84f6ceso2621567b3.1;
        Wed, 25 Oct 2023 17:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698281418; x=1698886218; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i0MKcDRTym0ST849xJvq9BmBOJws/USx0F+Iv3A5PXo=;
        b=SMDFkvWUaqmwKfj3HDK3WkSjt84OK7tr+jtQbHsXpI/hODkptqbqAtt4s8JXWQspU1
         gPYN0HTRlf1Eqs3RwZrg+PN4QCwb6Zy/jMYDmf91hlcEmvXurFG/XTZS4RIeaO4lKJPy
         aq2e0UZ4eqDya/molksPkrAhsOxLeE2r7mruDXG4GCtl1+WNSH0UiPdCmDjfaeqhM+or
         REOG0PKaEYtTkWVFHdJlkjTpU3aJjVtsaaUPDGTzeEaOb61n88RY6t1kMTqSWKR+SZK3
         2xQgMYlrRmhjdOvmpntO6xJPfSZDEcGRbdhhi13eZRCDiHRFtk7M89+XVVlt3uKNjRWc
         rkMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698281418; x=1698886218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i0MKcDRTym0ST849xJvq9BmBOJws/USx0F+Iv3A5PXo=;
        b=jFI0cgWbKU1MnfQo96NJlZaE6ff4rXN0JAMl75a46FkGVWjbxUIlgqww4SyO1xirXf
         PeCCN2oZtUHgNuV+D/jfUECneZ03KFMzsSjeV80Ef8edp4adzeSuf2NrOS4hxM3wkTRa
         1V9OSQXDvlE3KsM7/+bxVE58QGLmTsg1Oof8Th/nrwXAABulA3Jhe/OZTo5EiImKR1PI
         jCMhTb341odU8eSImVp9RNbaSu6n0zCn33+Ak1wMag4IlRpmxG5G5BERAjmiH+PuSIZn
         nPdEmJ+z7t7F/tnKsacSz8xmR/EPw+tODTOdeKuDYMS3/ZpWmigBt9/SM6CHXWdsrOp8
         EVKg==
X-Gm-Message-State: AOJu0YwhfBQ0BFBJvOZ0aA0XXxw6IIjPIBV0sbhJpbKHZyPBIv41H0ry
	mYvK0DXz/QZkTs7/qjBfPNo=
X-Google-Smtp-Source: AGHT+IHWx64+MztXaf4IQcIKAHvvYa1LoP4g9Wu3PMvq61PZV5ewTB9xtlYQb6vgaSWF9M7ou8f6CA==
X-Received: by 2002:a05:690c:38b:b0:5a8:1ffe:eb4e with SMTP id bh11-20020a05690c038b00b005a81ffeeb4emr19678323ywb.34.1698281418027;
        Wed, 25 Oct 2023 17:50:18 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id t65-20020a815f44000000b0059ae483b89dsm5556264ywb.50.2023.10.25.17.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 17:50:17 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 25 Oct 2023 17:50:16 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Saravanan Sekar <saravanan@linumiz.com>
Cc: sravanhome@gmail.com, lgirdwood@gmail.com, broonie@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jdelvare@suse.com,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org
Subject: Re: [PATCH v4 2/4] regulator: dt-bindings: Add mps,mpq2286
 power-management IC
Message-ID: <4a25fa2c-4b6e-4a33-b3ce-99a56db0f9ae@roeck-us.net>
References: <20231011164754.449399-1-saravanan@linumiz.com>
 <20231011164754.449399-3-saravanan@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011164754.449399-3-saravanan@linumiz.com>

On Wed, Oct 11, 2023 at 10:17:52PM +0530, Saravanan Sekar wrote:
> Document mpq2286 power-management IC.
> 
> Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>
> Acked-by: Mark Brown <broonie@kernel.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied.

Thanks,
Guenter


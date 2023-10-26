Return-Path: <devicetree+bounces-12040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 627A97D79E4
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 02:59:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92B941C20D27
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 00:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE2C17E2;
	Thu, 26 Oct 2023 00:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E3i/oGkl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B3417D2
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 00:59:09 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D46B0AC;
	Wed, 25 Oct 2023 17:59:07 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5a8ee23f043so2536457b3.3;
        Wed, 25 Oct 2023 17:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698281947; x=1698886747; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BdAmNWZIblXHsje63jq4bChALsXyN+72GiZH3tRHbSc=;
        b=E3i/oGklMVMWvk8o2rrSJOOP6emKfcPPclrDzVXZYoxpL2X6OorxUcMiW9cAwyGfmG
         icHHuxwyXeFSBGSWRthbAJ2VxGO5VQdCOxjXzkySJKB81cGf6Qvy4E0ZGrBNMQK+qhGx
         Wx7hN5VKXVd/Q7tVcp6irb7Jgs8Y6WPt7+mSrMsfDpiYHvO6u6lm9qoj2n08IBaeP3hp
         sRheNus3B7jTGkFbIvh5IGiuTQEOi3Etf2fvsC4SBjXKrkyhuMs7Lf4853iv0lgMxZvD
         1KmXBH9OXAa+rhqObkMogu2HH6YlTVu+wxblLZQsw4/pvnTh8WrHNMwuU3TrDu0eYqkA
         R3Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698281947; x=1698886747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BdAmNWZIblXHsje63jq4bChALsXyN+72GiZH3tRHbSc=;
        b=lYznIdHNW5VzF+rkrskHe+YAlto/bOs7pjzXLitt0hRlzUK/Wq/uKQGJq41BRmv7Qi
         dn49liOu0GL8wzvM/go/gZEtRZWeuFAdYqvYrcPD9E0TUH3N3xCUvp0XpdqkFg2MKoZf
         g858hKQchrQWz3aABOn7hWw3/DsDuOuDGzmx0SVzPmHRSrDFqC8Oe1R0oMqmb7rsxG7N
         H+qbdIIjzK/BAKXgegFPqOk/qeaRkO/Gpxc5H2v5Nx/0Wp8b9ukhGTKupZdPMpUrzlkj
         l7jjFwWMqrN1oK81yCDw02ND35vCm8oSTFJfleCx3MrrCeEnEx2N7/VsZ0DKNEgE5Vgk
         gP2w==
X-Gm-Message-State: AOJu0YxmNtpjFxBieFdUwIZmlNoGQ33KEwdhdq88ik/vPtVib8p0A4vy
	PaO+lYXCI/1HZRjI4YWkj4U=
X-Google-Smtp-Source: AGHT+IGc9muzvV5yXOHdtJqBAdqVro+06IfF1jSwWJeaA0Lo/rftXG6i24lFiBGmEz60C7vI8kkkIg==
X-Received: by 2002:a81:5dd7:0:b0:5a7:af72:ad6a with SMTP id r206-20020a815dd7000000b005a7af72ad6amr15875988ywb.43.1698281947031;
        Wed, 25 Oct 2023 17:59:07 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id j143-20020a819295000000b005a8a7d4f9a5sm5491471ywg.28.2023.10.25.17.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 17:59:06 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 25 Oct 2023 17:59:05 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org, Ninad Malwade <nmalwade@nvidia.com>
Subject: Re: [PATCH V5 2/4] dt-bindings: hwmon: ina3221: Add
 ti,summation-disable
Message-ID: <25b7c720-8676-4c05-a78a-1179096d1339@roeck-us.net>
References: <20230929103650.86074-1-jonathanh@nvidia.com>
 <20230929103650.86074-3-jonathanh@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929103650.86074-3-jonathanh@nvidia.com>

On Fri, Sep 29, 2023 at 11:36:48AM +0100, Jon Hunter wrote:
> The INA3221 has a critical alert pin that can be controlled by the
> summation control function. This function adds the single
> shunt-voltage conversions for the desired channels in order to
> compare the combined sum to the programmed limit. The Shunt-Voltage
> Sum Limit register contains the programmed value that is compared
> to the value in the Shunt-Voltage Sum register in order to
> determine if the total summed limit is exceeded. If the
> shunt-voltage sum limit value is exceeded, the critical alert pin
> pulls low.
> 
> For the summation limit to have a meaningful value, it is necessary
> to use the same shunt-resistor value on all included channels. Add a new
> vendor specific property, 'ti,summation-disable', to allow specific
> channels to be excluded from the summation control function if the shunt
> resistor is different to other channels or the channel should not be
> considered for triggering the critical alert pin.
> 
> Note that the ina3221 has always supported summing the various input
> channels and summation is enabled by default if the shunt-resistor
> values are the same. This change simply provides a way to exclude
> inputs from the summation. If this property is not populated, then the
> functionality of the driver does not change.
> 
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> Signed-off-by: Ninad Malwade <nmalwade@nvidia.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied.

Thanks,
Guenter


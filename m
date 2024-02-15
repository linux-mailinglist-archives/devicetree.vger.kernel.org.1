Return-Path: <devicetree+bounces-41868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB21855BA3
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 08:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7DF7BB27010
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 07:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F38158BE5;
	Thu, 15 Feb 2024 07:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZIFKBHTF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7746F125AB
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 07:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707982017; cv=none; b=rHMQ0XLFSNoAG0zpVbGfkEdhJ8It7fvdgZDC0uH9TSI1hI1giBgGrHzjV9pLL538FxwAWw2WeOZ08o/X50b5+DTTUJSdH31jQtLquq5tsIlnk+ay5iMhYVcJpSpfzvoXIx8CyTgZEeSsTpzfbSXR9H6pk2xbCcFl9l4k6vMFYgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707982017; c=relaxed/simple;
	bh=tX2T39ISUQw/vyvVN+93v3yI3qpazDG1abG04lj82/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gKOMbb+TJU6q9rGlGd9sm6L5JIehD8VpAWxQl7JXopvmpzGORyQoqgS14cxcoTPec6U97sfoOQECV4SC/eRkzZKpWgw2tUoQDRTUDfyApKm1FQAqrPZRYnr4RvN4A9qjYHjHkRYp9wjrutrCG/yGQ7bvFSRM7RUjtiPaoF+Rp+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZIFKBHTF; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-5dc4a487b1eso475004a12.1
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 23:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707982015; x=1708586815; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KX/sZUwUbNDRq9nZTjN2Cfp2iERfwU/mU1fLrQdNbuE=;
        b=ZIFKBHTFDkpMPMKzilZ79dxQz9ZhYWde7zarjgo3za5LaqT709Hb3U2gGRaRHRncYh
         rVkmLRgF6tBExatD/9XYUyYszbfV/fKaXbWNitIT0jmSPe1l+3Rd7M0TEMHtk65Ib8SK
         WFk0BJbxTyTitafzRDKr4W0IA/0l+JCb5SG3a1B9lxwqHuUKd2OyMXVtKZ7Z/+KAVC/j
         82+hjCp+sCM6RhOKkpsre2yiG0Uf2GeqPmALYqvPLzdaszgnFHEhuvX1djNgfQ91Amqk
         BafWYQhDjWv4pUCfgJogy/Jc0lblG3+44HoLpqcH2xgnH6CabiTKW5qmFCXBvcX6uovM
         Umhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707982015; x=1708586815;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KX/sZUwUbNDRq9nZTjN2Cfp2iERfwU/mU1fLrQdNbuE=;
        b=jbKBYzCP5kx/2erugzgn0CHlBS/aXYG00YKl1KO0tm6grmyg9BaaDf3EmmWQmxUSX6
         uq0gSJlLKiynjr/89XjDMbckEgo8CyvN2SLhHCXcoL6mnfoDOGq/fk6Y7AoSdXotJgx7
         3CGpgtJpS6eOm9WiZzV/kfZOfAIAPKO7te+m9+lHgqH0BiJFMOPkxpC3l1Um8LbCpvhM
         F4eRSD3Mw+XPVohPwfDwbdEwFgphvXnSKa4zmWX3FLox7SuVUAnvvu5rFyMEgfiY9/aq
         KH3yWacKjv5DiRj8Kegjgf1Ue8cBGF3FcvVtf9H92omMyd8v3r5+gVtN4dGe2vsgJKKP
         ugGw==
X-Forwarded-Encrypted: i=1; AJvYcCXBiZW3yRgpIriNnX2AJUBUQ2wdXZKKX4/XXy2v1QOd4QZMQ6yMdu+oo5jLQYilL2sBXHV8EoNLDDA64yOWBoYcPOvgqdX6BIXc5g==
X-Gm-Message-State: AOJu0YwF6NjevEopU+3TteT4kLPx8JLU280izgjQ7h4531DRg4wWnX5n
	HTl4bj8WAv/syLPJS9dr5EUY1TJaKx8bJ3+09OgyOvGxndi41/YccZhUyvTF+ik=
X-Google-Smtp-Source: AGHT+IEMuhCruhQcLw2/vPbGIhXlZWSJj7ELpXFDu8cI3Q9ZhIElW1jZUNcWVdenlKArnFRRQBdTqQ==
X-Received: by 2002:a17:90a:f695:b0:298:a3b7:ee65 with SMTP id cl21-20020a17090af69500b00298a3b7ee65mr916303pjb.17.1707982015647;
        Wed, 14 Feb 2024 23:26:55 -0800 (PST)
Received: from localhost ([122.172.83.95])
        by smtp.gmail.com with ESMTPSA id k21-20020a170902f29500b001d8f3c7fb96sm594699plc.166.2024.02.14.23.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 23:26:55 -0800 (PST)
Date: Thu, 15 Feb 2024 12:56:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Markus Schneider-Pargmann <msp@baylibre.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>, Andrew Davis <afd@ti.com>,
	Dhruva Gole <d-gole@ti.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: cpufreq: Add nvmem-cells for chip
 information
Message-ID: <20240215072653.lscrdrmsges3psmc@vireshk-i7>
References: <20240206145721.2418893-1-msp@baylibre.com>
 <20240206145721.2418893-2-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240206145721.2418893-2-msp@baylibre.com>

On 06-02-24, 15:57, Markus Schneider-Pargmann wrote:
> Add nvmem-cells to describe chip information like chipvariant and
> chipspeed. If nvmem-cells are used, the syscon property is not necessary
> anymore.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> Acked-by: Andrew Davis <afd@ti.com>

Rob,

Can you please review / Ack this one ?

-- 
viresh


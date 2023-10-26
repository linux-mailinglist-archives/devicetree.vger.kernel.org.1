Return-Path: <devicetree+bounces-12230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E48D7D87E7
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1891A282059
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 17:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4FC438FB8;
	Thu, 26 Oct 2023 17:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3022E3E9
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 17:58:46 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 233D3194;
	Thu, 26 Oct 2023 10:58:45 -0700 (PDT)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5820299b99cso1159757eaf.1;
        Thu, 26 Oct 2023 10:58:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698343124; x=1698947924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8z1yGiJBBI9AoK8qoFUV3Ia7kjAwo9PR+/1kimU+UtM=;
        b=C01vKXbtdd0pPfC6htRJLm1kFZb8iLmGqvNOBgL7Widekr9iLjRCdMijknux4kI6X2
         WNUfQ6WXRr9qPhx1EyrVE972MeeyLgt5p3Kdw2hh/EwryFXvbUcbFvuF2uacZUOCYMxk
         g7WsVpbv+mZLTpiJRMOufuQMDTBMk7SzF7sdUS0SrgPBXNnd+BAERHTTMgrw1t35UrOb
         KYTxsfuXYkW3KHcyn6RwM2g5arYSegFuhShUaQTPN6rRiRvpob+cojPqe7YQOQTRMLxH
         +kMdtFf4b/oR47eQCkVAlf1T8KWMmjjongvXkMv2o2ErZmLMdOWZInX3nlBzl7/mBTER
         VDag==
X-Gm-Message-State: AOJu0YwuopFpRts1LbjxwYoYe7Bo/MMs6Udy5A6mKWfHerDsmqFurSsn
	SN23qnw5TJvH2jJjJ94ggOYWG/ZaoQ==
X-Google-Smtp-Source: AGHT+IHr9EOYODQ6j0BtriylyMdcCEFd57N1ORR/U0SxrpWPOj4Kh9FB988mGZIYTgeXUar4RzptMg==
X-Received: by 2002:a05:6870:10d4:b0:1e9:eb35:c548 with SMTP id 20-20020a05687010d400b001e9eb35c548mr313657oar.6.1698343124249;
        Thu, 26 Oct 2023 10:58:44 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v24-20020a056830141800b006ce3241a7fasm2740604otp.72.2023.10.26.10.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 10:58:43 -0700 (PDT)
Received: (nullmailer pid 4107072 invoked by uid 1000);
	Thu, 26 Oct 2023 17:58:42 -0000
Date: Thu, 26 Oct 2023 12:58:42 -0500
From: Rob Herring <robh@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, festevam@gmail.com, nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/2] ASoC: dt-bindings: sound-card-common: List sound
 widgets ignoring system suspend
Message-ID: <20231026175842.GA4101469-robh@kernel.org>
References: <20231023020718.1276000-1-chancel.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023020718.1276000-1-chancel.liu@nxp.com>

On Mon, Oct 23, 2023 at 10:07:17AM +0800, Chancel Liu wrote:
> Add a property to list audio sound widgets which are marked ignoring
> system suspend. Paths between these endpoints are still active over
> suspend of the main application processor that the current operating
> system is running.

Perhaps it would be better to define components used for low power 
audio rather than the OS mode that gets used. Isn't LPA just audio 
handling that doesn't require the OS CPU to be involved? So the state of 
the CPU is kind of orthogonal.

Rob


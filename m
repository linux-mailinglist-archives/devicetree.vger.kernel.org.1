Return-Path: <devicetree+bounces-23263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EBC80A8F4
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 17:31:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 560971F2110D
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35921CAB2;
	Fri,  8 Dec 2023 16:31:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86D5110D8;
	Fri,  8 Dec 2023 08:31:31 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6d9e993d94dso536178a34.0;
        Fri, 08 Dec 2023 08:31:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702053091; x=1702657891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L0dh91LsH3FMgzR6j6ESovfFZbs4+hPOeOOy5RhBvXI=;
        b=uifQLQdRIWRj2V2SodGq396PmvjaqsOPuIsdTAIrv3LljJwqMhs3e55Yp179zhePmU
         P8E5DRoB4hgo1DAZ9Odfe/xWs001hAN4ceS9mnPH56UiIp8/o41RaoQR4a68K5KUdcCM
         1jfbcJvOrYU+bnfpIY0CNII2lQFDKn592z420VdP9QYsy2WplCDsdPXu80Fma/wCMU6p
         mhyfpfdEYkzlVZwgj1G4Gjb/nEFUNnZOT68g9+HgGxBhK8KJQozNzIgNRvBZXwTGrGgQ
         Z94n3mmumsbpeJm+YNDlbAX2QxTVBi0AMjOGQdP0gKCO6AVEVj2m8VZGJ1kb1sEWTATA
         /ObQ==
X-Gm-Message-State: AOJu0YzwMOyh/DY7ztPMZcMJOGDF/dmXJ0e/mdTAfMgZKaY77l7z0UcS
	JrK7R0PvDslgIC3WY8I+2w==
X-Google-Smtp-Source: AGHT+IHDm3wqp2WeSg6dUcKIT7qXKxWAFG2zul4H7tfMEgrUVi5XlJJQvhg6VUWNouCkEz0LkhH29A==
X-Received: by 2002:a05:6870:700a:b0:1ea:c913:3494 with SMTP id u10-20020a056870700a00b001eac9133494mr394403oae.6.1702053090816;
        Fri, 08 Dec 2023 08:31:30 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id pv21-20020a0568709d9500b001fb4dcb74ebsm455362oab.54.2023.12.08.08.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 08:31:30 -0800 (PST)
Received: (nullmailer pid 1679055 invoked by uid 1000);
	Fri, 08 Dec 2023 16:31:29 -0000
Date: Fri, 8 Dec 2023 10:31:28 -0600
From: Rob Herring <robh@kernel.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, krzysztof.kozlowski+dt@linaro.org, william.qiu@starfivetech.com, xingyu.wu@starfivetech.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu, palmer@dabbelt.com, p.zabel@pengutronix.de, shengyang.chen@starfivetech.com, jack.zhu@starfivetech.com, changhuang.liang@starfivetech.com, maarten.lankhorst@linux.intel.com, suijingfeng@loongson.cn
Subject: Re: [v3 1/6] dt-bindings: display: Add yamls for JH7110 display
 system
Message-ID: <20231208163128.GA1659919-robh@kernel.org>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
 <20231204123315.28456-2-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231204123315.28456-2-keith.zhao@starfivetech.com>

On Mon, Dec 04, 2023 at 08:33:10PM +0800, Keith Zhao wrote:
> StarFive SoCs JH7110 display system:
> dc controller, hdmi controller,
> encoder, vout syscon.

What are yamls?

I prefer not using 'yaml' as yaml is lots of things that are not DT 
schema.

Rob


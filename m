Return-Path: <devicetree+bounces-16393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 577B47EE789
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 100F928163C
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 19:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B27F53FE5D;
	Thu, 16 Nov 2023 19:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F40F1A8;
	Thu, 16 Nov 2023 11:33:37 -0800 (PST)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1f0f94a08a0so630692fac.2;
        Thu, 16 Nov 2023 11:33:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700163216; x=1700768016;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EkmGaGx6joEa6J0Jj96iNjaP76PYzEK6iIhkmIlAEro=;
        b=fLk/yXsChX/HrZryoIckiAY92ykrFQ9IMeMeH19pJAvl85/uzi5kH9fpwY+B35upub
         QMRQ6W/sutICfDRg/4zvGJmQFQ8iEmWD5l9r6qdYgDUhsZqey9FNpBMBOXiTmQOVOsO/
         KYFae7hsLbS1/tuiqt8Cr+UJ+y5V2hJMGrDKa36ORO7wmxqbhFfYReuiwL4gLzRLdpyx
         2y/mcdEuzcc91Lwfu4LEVow5ujJa8zNNdcdW6vwaa821rUo1tzDA/b763j8ir0WXFw9L
         X2HmnN2JYkV5gpT4L68cAYiELThpy7sL/fShJqyMN/ZUkq26DbZ1gie+RguWQJeYZW/b
         CoNg==
X-Gm-Message-State: AOJu0YysvQq0Bg7O4cCpH6SvpWh9Rocoorsj5QQHsNm41uAWmd9sWHiI
	0e084SHmjtbABrDPdjB7/Q==
X-Google-Smtp-Source: AGHT+IEJ6KtcvmJnzRL/yu37jlc0/FgxicWC9xy4vOrZGNNUDi6XPpcFPtwVzTZTJb9me2KL0xpSjA==
X-Received: by 2002:a05:6870:a40e:b0:1ef:c07e:b54c with SMTP id m14-20020a056870a40e00b001efc07eb54cmr19331127oal.57.1700163216669;
        Thu, 16 Nov 2023 11:33:36 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k13-20020a05687022cd00b001dd5857e243sm3203oaf.14.2023.11.16.11.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 11:33:36 -0800 (PST)
Received: (nullmailer pid 3082890 invoked by uid 1000);
	Thu, 16 Nov 2023 19:33:29 -0000
Date: Thu, 16 Nov 2023 13:33:29 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Davis <afd@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: clock: Convert keystone-gate.txt to
 YAML
Message-ID: <170016320918.3082828.13768134867496352248.robh@kernel.org>
References: <20231114212911.429951-1-afd@ti.com>
 <20231114212911.429951-2-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114212911.429951-2-afd@ti.com>


On Tue, 14 Nov 2023 15:29:09 -0600, Andrew Davis wrote:
> Convert keystone-gate.txt to ti,keystone,psc-clock.yaml.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
> 
> Changes for v2:
>  - Fix dt_binding_check warning
> 
>  .../bindings/clock/keystone-gate.txt          | 29 ---------
>  .../bindings/clock/ti,keystone,psc-clock.yaml | 59 +++++++++++++++++++
>  2 files changed, 59 insertions(+), 29 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/keystone-gate.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/ti,keystone,psc-clock.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>



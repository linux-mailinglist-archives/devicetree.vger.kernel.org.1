Return-Path: <devicetree+bounces-13477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D427DE2F2
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:25:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68C861C209C3
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1210E14263;
	Wed,  1 Nov 2023 15:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE0C7480
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:25:05 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3C5F10C;
	Wed,  1 Nov 2023 08:25:01 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6d2fedd836fso1852238a34.1;
        Wed, 01 Nov 2023 08:25:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698852301; x=1699457101;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bozvejefCHTTSfjvuu0aaoVgbRnxlhlTjic682S1lbI=;
        b=MIPQuRu62hCjhsG83wk3wtUP7yoTaID9+oWct3Itv3KgcovEaJmO+3/syWDHSJNL5Z
         HonQDIPkNgzjArjLd9ER3PDYRRfQjS7n66h8YjmeJiXfwiYURamd0hEUoKvof9phEamJ
         sEQhYlSvzQcMPg1Uw+paJZ4t2VdAQDsGM5BhnkSYh6+oaRnMuCLiL9ORPDPSnM1Kgnf2
         G6rsqXPpTKqfg4fifhUSWFAN29VdPKuqjepR0iWRfp1GNClCfyiYfakYDuU97wVBxVy0
         5UvuDCALROZii+87TnhXyjaMXtqeRXtpLmtRhBDSls5cLZWL8IvrTSKIzdPVihccJmFB
         aD4Q==
X-Gm-Message-State: AOJu0YwGGZG3fnrhOKtKVtN8QrAppE45ORJmGnyCtcA9gVrp0AwWKNd1
	aogr76e6qSzTleUrMyCD319fzxVoaA==
X-Google-Smtp-Source: AGHT+IEYN8x9bXiuUbuf+qfeGYLHvQyPLqgNx1U8v0X75YtJDLybB108jIoN/mEm5DI81Ty8xLs9JA==
X-Received: by 2002:a05:6830:3499:b0:6bd:152f:990e with SMTP id c25-20020a056830349900b006bd152f990emr21769798otu.5.1698852300984;
        Wed, 01 Nov 2023 08:25:00 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id be14-20020a056830350e00b006ce32aac3e4sm230090otb.48.2023.11.01.08.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 08:25:00 -0700 (PDT)
Received: (nullmailer pid 316059 invoked by uid 1000);
	Wed, 01 Nov 2023 15:24:59 -0000
Date: Wed, 1 Nov 2023 10:24:59 -0500
From: Rob Herring <robh@kernel.org>
To: Elliot Berman <quic_eberman@quicinc.com>
Cc: Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, devicetree@vger.kernel.org, Sebastian Reichel <sre@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] dt-bindings: power: reset: $ref reboot-mode in
 nvmem-reboot-mode
Message-ID: <169885229755.315654.10498316199571342193.robh@kernel.org>
References: <20231031-ref-nvmem-reboot-mode-v1-1-c1af9070ce52@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231031-ref-nvmem-reboot-mode-v1-1-c1af9070ce52@quicinc.com>


On Tue, 31 Oct 2023 11:28:22 -0700, Elliot Berman wrote:
> nvmem-reboot-mode.yaml should $ref: reboot-mode.yaml, but instead
> rewrites the properties. Update so it $refs instead.
> 
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
>  .../devicetree/bindings/power/reset/nvmem-reboot-mode.yaml        | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>



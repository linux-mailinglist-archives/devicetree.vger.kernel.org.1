Return-Path: <devicetree+bounces-19355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CD17FA857
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 18:52:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D539281565
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 17:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D44C93BB25;
	Mon, 27 Nov 2023 17:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4590119D;
	Mon, 27 Nov 2023 09:52:17 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6d7f67a99c7so1970255a34.0;
        Mon, 27 Nov 2023 09:52:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701107536; x=1701712336;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z5vq4/MaD1JHsioKPmE21zFRAWDJTMjzCE0jVGTeBpw=;
        b=Ps5LtzX1HJlQsZgHntEcu4kAASo+ta3qpgoXhfWKPrd5IvJhlLC4r5Y5bh3KEd+Bnd
         GbvW9/VCISSm1CzF/Qs0Kb9ZqnOBqVTDuUUcQmzy/dvWl15YBSokXuKyVxKnmym66ZPn
         4pdDfUxxRpsPq+3PrDlNt+HlyG6UEGZFLmMX2g+ojEN87dESGah8O3fDuEU2feysh2S2
         pxNoAxmy2qErFLV8A++0c3OacyXXfN7dckD354r+Kwv/+r1lJUq0ODeWZmEVYhylzTl3
         PZtocprLu4oAR1tTjqtqRl7v+360ALZw+Ah5MK22RVwikJqIoHNkaU57RcHmWCd6qbFp
         anIQ==
X-Gm-Message-State: AOJu0Yytv+noBikl5FqfAZgiy1VMONvG95ptm9lrNcjkGRpv/Tr52Jre
	zReSt0GYZqUBFx0m8HNCrSiXtwDcNg==
X-Google-Smtp-Source: AGHT+IHtht0CxcgrKqlVZ+UcNyjOVxuLCylbip04h8a+kkwFZaGUcSgQBxuFiocJmgsUq1NZ0qj9ug==
X-Received: by 2002:a9d:6047:0:b0:6d8:24a:deb4 with SMTP id v7-20020a9d6047000000b006d8024adeb4mr6790078otj.10.1701107536484;
        Mon, 27 Nov 2023 09:52:16 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w4-20020a4a7644000000b0058d458b5420sm1195054ooe.47.2023.11.27.09.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 09:52:15 -0800 (PST)
Received: (nullmailer pid 1856922 invoked by uid 1000);
	Mon, 27 Nov 2023 17:52:15 -0000
Date: Mon, 27 Nov 2023 11:52:15 -0600
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm/calxeda: drop unneeded quotes
Message-ID: <170110753407.1856696.15594654291355482500.robh@kernel.org>
References: <20231122224432.2809781-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122224432.2809781-1-robh@kernel.org>


On Wed, 22 Nov 2023 15:44:32 -0700, Rob Herring wrote:
> Drop unneeded quotes over simple string values to fix a soon to be
> enabled yamllint warning:
> 
>   [error] string value is redundantly quoted with any quotes (quoted-strings)
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!



Return-Path: <devicetree+bounces-4398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ACD7B25F5
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 21:31:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C5B6E281FC0
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 19:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54ECA38DF2;
	Thu, 28 Sep 2023 19:31:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E60110B
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 19:31:21 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96F5119F
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 12:31:20 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1c4194f769fso100074905ad.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 12:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695929480; x=1696534280; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yiM835Qdr8r3YY1MsttP3YD4WAnIIepGWpUnlhXauk8=;
        b=qrRtX/iHC6Fhouk/Fk5b/cGsYjqc7q9ekjy1zaQAg8icBWDg+Ylf6qq/1fIt1iSMdB
         LHprXqVC1daW8xqjH/FXTPU0pgfSe3h6m0mHUVdDKZ/oVwQoXca4INuLHoCPhhErflxj
         u6Dz8c+yHn+2A3OuyrmyxdjPC+FbgvRAH0bNphzOVgfilEU0nqu6MgrUHbErGE9epNTe
         F/bZ6WBwmGkGD+wr8JSnLz7bQrlL++3PFBKGPNzZhwW/BV0UWEGOBzwr+y3WG1+VuMBp
         G4jkxYu1v7pIx7Ml1XWPCJpAEn/3bqTTXp8p2NsutIdptnkmbjS+gFyEwvJr/k8ugJlY
         iPzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695929480; x=1696534280;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yiM835Qdr8r3YY1MsttP3YD4WAnIIepGWpUnlhXauk8=;
        b=r86pkXb3n57C0VgXw4Sta/J3dY94uqPqutWzkx9ch6VV7o5kKTCZRD6bSD9xPFrPVm
         1GYGPfQRROoZoly9pO7wmyQN4Fi/V8v06aedW1ivGJ3bzwnECYo9deqPIl4LcSe5sFjz
         QkL+GnKG1caCTOq1osKyp/I1YRMXnrdRk3e7sEnRcd3qQ6srHZ4OMpRen5H3vPGiq+u6
         HpGv6I14M6JpdXwFn0JDmW69r1b9Mbwi4rEA3wRXw/xFyGj/qww0hIchIvhgBgkluKPJ
         Ruv0fmY2AuKRL/qeQOZ2RoIt/bZ+VW+UzdGIDsgeWOmEfgEwNhwGi3UVfd3k55YrEcE+
         xAcA==
X-Gm-Message-State: AOJu0YyzKdxcfzfAY7rI1VtoSW7G9a5Sh8YFKVOojwuZjSl/2OAixaoM
	YCAKuDcUIiJaC7Yt+3Okcw3rbA==
X-Google-Smtp-Source: AGHT+IE95MGmqksj4rnPsJlhQcIbTza6nvpDZ3jVQORmb3wxwujuxwIunVo313zxNSIjjCOnvIToSQ==
X-Received: by 2002:a17:902:8649:b0:1c3:1f0c:fb82 with SMTP id y9-20020a170902864900b001c31f0cfb82mr1816980plt.41.1695929480038;
        Thu, 28 Sep 2023 12:31:20 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:46f7:63a8:c7b8:44bb])
        by smtp.gmail.com with ESMTPSA id c4-20020a170902c1c400b001bf8779e051sm7236931plc.289.2023.09.28.12.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 12:31:19 -0700 (PDT)
Date: Thu, 28 Sep 2023 13:31:17 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Tinghan Shen <tinghan.shen@mediatek.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: remoteproc: mtk,scp: Add missing
 additionalProperties on child node schemas
Message-ID: <ZRXUhSqHPt9R5Zd8@p14s>
References: <20230926164513.101958-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926164513.101958-1-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

On Tue, Sep 26, 2023 at 11:45:08AM -0500, Rob Herring wrote:
> Just as unevaluatedProperties or additionalProperties are required at
> the top level of schemas, they should (and will) also be required for
> child node schemas. That ensures only documented properties are
> present for any node.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> index 895415772d1d..24422fd56e83 100644
> --- a/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml
> @@ -91,6 +91,7 @@ allOf:
>  
>  additionalProperties:
>    type: object
> +  additionalProperties: false

Things have changed in the remoteproc tree [1] and this patch doesn't apply.
Please see if it is still needed.

Thanks,
Mathieu

[1]. https://git.kernel.org/pub/scm/linux/kernel/git/remoteproc/linux.git/tree/Documentation/devicetree/bindings/remoteproc/mtk,scp.yaml?h=rproc-next#n80

>    description:
>      Subnodes of the SCP represent rpmsg devices. The names of the devices
>      are not important. The properties of these nodes are defined by the
> -- 
> 2.40.1
> 


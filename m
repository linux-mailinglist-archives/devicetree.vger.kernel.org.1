Return-Path: <devicetree+bounces-15639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F357EB118
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:45:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41CFA2811DE
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 13:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AC0B156E0;
	Tue, 14 Nov 2023 13:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6942C405C2
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 13:44:54 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 476DE1B6;
	Tue, 14 Nov 2023 05:44:53 -0800 (PST)
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3b2f28caab9so3451350b6e.1;
        Tue, 14 Nov 2023 05:44:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699969492; x=1700574292;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PmEgb+EV0Zl7D8C3uAM8E/H1l2y9vB0lqB3Tm7vb8U4=;
        b=SsWvmobV893/MEC6DfXVrfvvKAHbgBO/py1LO7DDHbG4W/yvG9kKuY/j65e0qtn8AU
         Oel8LvI6UN9jP2GIV04BXM4fzBCiILMZOAq9U+tEd640WklRUnSAVY8qlaU8NmL+bvcd
         pupQBrPR43DJchANHl5e/6glRIi0xiq9c29pttucmN9qUwm1YtZ5UVJofHjIco3X2WQb
         MxTyQz41URaW5iXMzbIS/42eSlZA01SHUGIcH2N3FKhKuTvOGDAZgRvfMWz7eQTbShkB
         UbZevPt4RT6rfoM/OEzJTQvJjlcYRUGCycEr/81Ghf/ehxu7d2drFB+tKCtrLcQ5Y/ni
         GgMQ==
X-Gm-Message-State: AOJu0YzK99ozdPqUZzZKRB13EBDaWOTDJI95MttQ/wawpcFEF2lyJhlR
	Cr8G4bXB2INg9JddTPI9Ug==
X-Google-Smtp-Source: AGHT+IEoAU1Lg6SlYx8VqG5eB7OWyqoEYSPcEMHmWoXzIY4/iBbuR3rMHc1ozP3vv2heVSdCnLsY+w==
X-Received: by 2002:a05:6871:7291:b0:1ea:85a:db2e with SMTP id mm17-20020a056871729100b001ea085adb2emr14076992oac.45.1699969492557;
        Tue, 14 Nov 2023 05:44:52 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id wh6-20020a056871a68600b001e12bb81363sm1394830oab.35.2023.11.14.05.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 05:44:51 -0800 (PST)
Received: (nullmailer pid 1652367 invoked by uid 1000);
	Tue, 14 Nov 2023 13:44:51 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, kever.yang@rock-chips.com, chris.obbard@collabora.com, heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, hjc@rock-chips.com
In-Reply-To: <20231114112841.1771312-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112841.1771312-1-andyshrk@163.com>
Message-Id: <169996949102.1652338.14967893657318401842.robh@kernel.org>
Subject: Re: [PATCH 08/11] dt-bindings: display: vop2: Add rk3588 support
Date: Tue, 14 Nov 2023 07:44:51 -0600


On Tue, 14 Nov 2023 19:28:41 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The vop2 on rk3588 is similar to which on rk356x
> but with 4 video outputs and need to reference
> more grf modules.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dtb: vop@fe040000: clocks: [[4294967295, 221], [4294967295, 222], [4294967295, 223], [4294967295, 224], [4294967295, 225]] is too short
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip-vop2.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dtb: vop@fe040000: clock-names: ['aclk', 'hclk', 'dclk_vp0', 'dclk_vp1', 'dclk_vp2'] is too short
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip-vop2.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231114112841.1771312-1-andyshrk@163.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



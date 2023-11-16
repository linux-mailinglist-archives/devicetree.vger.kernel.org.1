Return-Path: <devicetree+bounces-16388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 318FE7EE774
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:26:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3225B20A3B
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 19:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6756831A79;
	Thu, 16 Nov 2023 19:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94FD718B;
	Thu, 16 Nov 2023 11:26:19 -0800 (PST)
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-58a03280aa7so605938eaf.2;
        Thu, 16 Nov 2023 11:26:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700162779; x=1700767579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NcZwCjQ4JrwVYAwfxeJR9lgNCrE0p4rX4/iJLdX3krg=;
        b=cBbHgrjsn2cgwriS1aEZmiLxvQtQ8xe80S4I9Lxt5BX4I+oDMudrXpb4dKd2cSmXIb
         Z1wF20eQE4zYW9tXVR2py9r737ciyWqfOW5DRBKQZTMIrtRcYh5ED5gaq1BFIjP6QpYu
         Z2pM/js86S6vUWalkwdFol9YQbRZKke4Tr88D1zqyPTXFwv9RKTDTOJ7AAsXLFVoXmft
         vBuHQVer0PevGvPwJM2c+SRcilTE63wWz12XwDOFjwKcF/bm27UMW6rDu8ijC2cH7b82
         CBJV5GLlQIWdaBqYQiSh85vIE5Jy0I3nxabeePItJgg5TmNq8hPmJZZ1IrL35Ejpwot8
         cTkQ==
X-Gm-Message-State: AOJu0YzRHzm3BmKWlNnCOdDRfbvoTRB99BPMoUudQ3cYa7iAfNnGgehK
	P7MLc20NnYWu4YDxNFZ14Q==
X-Google-Smtp-Source: AGHT+IGSTth+hP2mmYGFO8yjKtjUWI7ZiE2Wb5+MqaNsG99C+yIPf6hkTRBp8Wbxr+QbyVOYwjXPNQ==
X-Received: by 2002:a4a:9181:0:b0:589:d6c7:8573 with SMTP id d1-20020a4a9181000000b00589d6c78573mr16344725ooh.3.1700162778694;
        Thu, 16 Nov 2023 11:26:18 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a2-20020a4a9882000000b0057b74352e3asm12380ooj.25.2023.11.16.11.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 11:26:18 -0800 (PST)
Received: (nullmailer pid 3049422 invoked by uid 1000);
	Thu, 16 Nov 2023 19:26:16 -0000
Date: Thu, 16 Nov 2023 13:26:16 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: robh+dt@kernel.org, sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>, hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, heiko@sntech.de, chris.obbard@collabora.com, s.hauer@pengutronix.de, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, kever.yang@rock-chips.com
Subject: Re: [PATCH 07/11] dt-bindings: soc: rockchip: add rk3588 vop/vo
 syscon
Message-ID: <170016277633.3049138.9769922490771899888.robh@kernel.org>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112820.1771240-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114112820.1771240-1-andyshrk@163.com>


On Tue, 14 Nov 2023 19:28:20 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add VOP and VO GRF syscon compatibles for RK3588
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>



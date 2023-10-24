Return-Path: <devicetree+bounces-11429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E9E7D5C0E
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B63CE1C20A4E
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB9F03D997;
	Tue, 24 Oct 2023 20:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0B92420F;
	Tue, 24 Oct 2023 20:02:18 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D65510D0;
	Tue, 24 Oct 2023 13:02:17 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3b3f55e1bbbso2857032b6e.2;
        Tue, 24 Oct 2023 13:02:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698177736; x=1698782536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b7LBP+4sNuVtjoSJxOmRVrbomzzhTqa06ogPkpyg6vM=;
        b=oEIErysNNDDqu0YlPHs0gd8BClXWZOXLTkInam2pFTMvUwZ/E8Sqww5GkvwQefZlmL
         qSTzdOqD9pKaladpKeIE3Vq2qf92iE7H2IcdKe3ESxiajXej+mCbyIOHr+w67nPDLZFz
         God20EB0JDHz8TMHQXFqfRGC/rhte7biTsdDDMjL3SsL2H0uj/YXgxQXOYVHQ0GnpZjE
         FjxLOJo97M/AEZl8+ybdqFO15QHKyumwBOyx4VAAuANINAtesyfi99kX+UJQ30pqoCGz
         jIYzUnzFBjnkOQ1iyCthG3NAz7QavUFqCm88p1PN0/0LP8EE38xKFOd3xVUBw1YW6msq
         JJIQ==
X-Gm-Message-State: AOJu0YyOWhiPYa88CHFgaiWG8mltzVP2md/7Ah0A1RgAKXBxYziXkE3U
	ZKZ7kAd+ZlPAoqjTcE7LjmZPHwgOQA==
X-Google-Smtp-Source: AGHT+IH4hYt3JNOvk2IbMB7aYMfLDffQfXMNQ/OGQJ8ue/Mw0Ee4HGPBn95Yvl/2SYp5Y2S4brH6OA==
X-Received: by 2002:a05:6808:2005:b0:3ae:b06:2131 with SMTP id q5-20020a056808200500b003ae0b062131mr16665647oiw.0.1698177736277;
        Tue, 24 Oct 2023 13:02:16 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b2-20020a056808010200b003b2e4754cc2sm2052808oie.26.2023.10.24.13.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 13:02:15 -0700 (PDT)
Received: (nullmailer pid 471601 invoked by uid 1000);
	Tue, 24 Oct 2023 20:02:12 -0000
Date: Tue, 24 Oct 2023 15:02:12 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Vegard Nossum <vegard.nossum@oracle.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH] dt-bindings: usb: rockchip,dwc3: fix reference to
 nonexistent file
Message-ID: <20231024200212.GA465811-robh@kernel.org>
References: <20231022185150.919293-1-vegard.nossum@oracle.com>
 <6ea02e5e-bc95-48b5-d6e3-15338ebd0a4d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6ea02e5e-bc95-48b5-d6e3-15338ebd0a4d@gmail.com>

On Sun, Oct 22, 2023 at 10:44:10PM +0200, Johan Jonker wrote:
> 
> 
> On 10/22/23 20:51, Vegard Nossum wrote:
> > This file was renamed but left a dangling reference. Fix it.
> > 
> > Fixes: 0f48b0ed356d ("dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml")
> 
> > Cc: Johan Jonker <jbx6244@gmail.com>
> 
> [PATCH v1] dt-bindings: usb: rockchip,dwc3: update inno usb2 phy binding name
> https://lore.kernel.org/linux-rockchip/f8747552-d23b-c4cd-cb17-5033fb7f8eb6@gmail.com/
> 
> Already Acked.

I was assuming Greg would pick that up. I've applied the linked patch 
now.

Rob


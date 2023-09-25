Return-Path: <devicetree+bounces-3099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 905337AD572
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:09:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id DB528B20AE7
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9E0814A85;
	Mon, 25 Sep 2023 10:09:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43FD14A81
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:09:40 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A07AC8E;
	Mon, 25 Sep 2023 03:09:38 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50307759b65so9803346e87.0;
        Mon, 25 Sep 2023 03:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695636576; x=1696241376; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pozEomMH28tFX9WItO+DCF/zxH5NXKP3RE/PmQ8nhXc=;
        b=hrEFg7tVmcgH/f+GllUZjmm4fO/v188tWIlcrS93mnlgWn1CF+hUhXpSn6xbf01cOZ
         IlO4yDzCh4Aoz3VKM8J1HvreUAnb556Aad8/hdBEy6XYQ4krxDSjZRFPu2l6qaKeERCN
         Lp7O7qLCtibP0gRvQ924qdpWFmfTUaN6+UW1BKZnrwZJke1Wo4lH4PydJKkoxjEgF2nk
         vl+ZtRUbRJ8SQlrrBjCog4zWRfQXbV9MPSoUApFYpPOvpk2UZYxW0hDmSGdoteUO52uK
         v+e3DkQ5HiQ5Vx/zyectkeMhOanTLANNr9IoDo4i/eKshwynfveRe2I4KnCElKsFwII/
         FZCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695636576; x=1696241376;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pozEomMH28tFX9WItO+DCF/zxH5NXKP3RE/PmQ8nhXc=;
        b=r6OTyCx/c/ganj8bopX2mbKWbXqtvwKCIGopjYZk/ZFYx7OLhxivJQU2vWEqvedQRB
         H7xz7n2bgd91roefXPH1SP1DDz4VPssw7Kd8J3VhHpLuWcGEUqFa7daGcl0XxtLj2pWr
         EwhNYk7oK4mWC5/lS0E0eoS9dbKKIYk5+wgvZP2wBdOyC+Iw3qsmQg7Wes++88Vx2sHt
         AHZl92961lgSgseavb5kAFRQ68b2WxIAvcr3KECneJmTXjERqpN5k9kasLPeZEJMjBvx
         /wPvx6MN3XyevW9CR8CfESYKHDWvZqlCuPXAzNjeYUe6RZyohGU55iNItiCk6FNElTsK
         4egg==
X-Gm-Message-State: AOJu0YxTXhImq0+GNpimhPCNnQ3aTdFCBj34IILNuzyYClPkPobXSdtP
	4EdCGHkf1nrlkyQV9lw/zxo=
X-Google-Smtp-Source: AGHT+IGoXYE862ReHwTKDJLlC92A34VQa3pBvklcL/G2AxTgJ0wM8txLrmkQQEJZwYT0wGGByMNQtg==
X-Received: by 2002:ac2:41c9:0:b0:500:bff5:54ec with SMTP id d9-20020ac241c9000000b00500bff554ecmr3920141lfi.3.1695636576383;
        Mon, 25 Sep 2023 03:09:36 -0700 (PDT)
Received: from mobilestation ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id m1-20020ac24281000000b004ff96c09b47sm1759121lfh.260.2023.09.25.03.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 03:09:35 -0700 (PDT)
Date: Mon, 25 Sep 2023 13:09:33 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, 
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	jingoohan1@gmail.com, gustavo.pimentel@synopsys.com, mani@kernel.org, 
	marek.vasut+renesas@gmail.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v22 12/16] PCI: add T_PVPERL macro
Message-ID: <kx5chxi6qqepmod46etqdgcltqeptb2b6qx336b5obhqrvsfu5@ak22ycz5bl26>
References: <20230925072130.3901087-1-yoshihiro.shimoda.uh@renesas.com>
 <20230925072130.3901087-13-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925072130.3901087-13-yoshihiro.shimoda.uh@renesas.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 04:21:26PM +0900, Yoshihiro Shimoda wrote:
> According to the PCI Express Card Electromechanical Specification,
> Power stable to PERST# inactive interval is 100 ms as minimum.
> So, add the macro to use PCIe controller drivers.
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Reviewed-by: Serge Semin <fancer.lancer@gmail.com>

-Serge(y)

> ---
>  drivers/pci/pci.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index 39a8932dc340..5ecbcf041179 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -13,6 +13,9 @@
>  
>  #define PCIE_LINK_RETRAIN_TIMEOUT_MS	1000
>  
> +/* Power stable to PERST# inactive from PCIe card Electromechanical Spec */
> +#define PCIE_T_PVPERL_MS		100
> +
>  /*
>   * PCIe r6.0, sec 5.3.3.2.1 <PME Synchronization>
>   * Recommends 1ms to 10ms timeout to check L2 ready.
> -- 
> 2.25.1
> 


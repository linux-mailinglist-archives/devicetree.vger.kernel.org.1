Return-Path: <devicetree+bounces-21526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 60313803F22
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 21:16:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AA4B281262
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 20:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BCED3418E;
	Mon,  4 Dec 2023 20:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Mmsc6DZG"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2EBB101
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 12:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1701720978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=scE6uJE/gsl0ExlvPlw1tvZXL0nwbCHoC6Ch9ngDrG8=;
	b=Mmsc6DZGnEyOCtXgD8gf/ugV4LaDb/hHHGdIfx+cg0H/ILH3yDmeHXVhj/qlyfka/6v/a+
	seh2K0IOqJPXiVvzPxlHf4qyNUvRQRWO9fQAoIUHGqEOv44mIqg8mY89xamoWBeo6uLVjN
	hTU7Df1Ud5WXqN2zPPzRvoDgrSyu59o=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-447-QXaYQR4PNyeiAxPhpL46EA-1; Mon, 04 Dec 2023 15:16:15 -0500
X-MC-Unique: QXaYQR4PNyeiAxPhpL46EA-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-67aa944afd6so15884576d6.3
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 12:16:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701720975; x=1702325775;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=scE6uJE/gsl0ExlvPlw1tvZXL0nwbCHoC6Ch9ngDrG8=;
        b=kqT2JfQ005UD1e8xG/r9+pZuj1VWX9ALo05vyTn5aA2GDaOXT+6xOxEq70eMq9q/Zl
         YeQLqTxUGTQAFA6Ugn6rwJtKMJdrl+5KiQcHhkqhxd0C4/3peSxKFA1nha9nE4mSzDUh
         GVkVB54H7nSsauasjn6KyWm9FIqsADSkgnOvBYjWEtzeOKh1MS9QR99/r9RC/TuuXws/
         Nm0OpeC/WNkcOcisEqS2dVe9Waz90mbQ3rQxD0hs6Bj2RgXPPCCjvM/qYZtyGVg78Ov8
         lunxqKxFl7gV9ULpz8RW5Bk0x5G5h02zout/q0nIsNU0k+ck0gyj2JMWkObNNmgK8Kox
         wxWg==
X-Gm-Message-State: AOJu0YwvSnz8cj32f+/p35D+r7tuSPOnN9ToB2X15cOUGgG8aJ0jtm8r
	6KXhsEPqRFGj6ND7i2y93xDM4ql0cxFUCLazgsjorKY+QbZyoohoQq8V3/lfLKVD5VU4QtTSplL
	SXkjLWYjp873ZxRVqnmMjrg==
X-Received: by 2002:ad4:4481:0:b0:67a:a721:ec1a with SMTP id m1-20020ad44481000000b0067aa721ec1amr127143qvt.94.1701720975330;
        Mon, 04 Dec 2023 12:16:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgoVrFG6EC//oL2uzFysj4twtnTf+9h/+HjOZVaxTJrf07QpXYwOj+ja1iSEQZGrynxBr/Ig==
X-Received: by 2002:ad4:4481:0:b0:67a:a721:ec1a with SMTP id m1-20020ad44481000000b0067aa721ec1amr127121qvt.94.1701720975037;
        Mon, 04 Dec 2023 12:16:15 -0800 (PST)
Received: from fedora ([2600:1700:1ff0:d0e0::47])
        by smtp.gmail.com with ESMTPSA id r3-20020a0cb283000000b00677fb735738sm4618230qve.34.2023.12.04.12.16.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 12:16:14 -0800 (PST)
Date: Mon, 4 Dec 2023 14:16:12 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Suraj Jaiswal <quic_jsuraj@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, Prasad Sodagudi <psodagud@quicinc.com>, kernel@quicinc.com
Subject: Re: [PATCH net-next v3 0/3] Ethernet DWMAC5 fault IRQ support
Message-ID: <rw5vfdvre5rt4rwytfsp3qy6sgsdr3dm6oefr4sap2aqbvpw42@c2dxz42tucby>
References: <cover.1701695218.git.quic_jsuraj@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1701695218.git.quic_jsuraj@quicinc.com>

On Mon, Dec 04, 2023 at 06:56:14PM +0530, Suraj Jaiswal wrote:
> Add support to listen Ethernet HW safery IRQ. The safety IRQ will be

s/safery/safety/

> triggered for ECC, DPP, FSM error.
> 
> Changes since v3:

This is listed as v3 in the subject, but it should now be v4 since the
last version was v3.

> - Fix DT_CHECKER warning
> - use name safety for the IRQ.
>  
> 
> Suraj Jaiswal (3):
>   dt-bindings: net: qcom,ethqos: add binding doc for safety IRQ for
>     sa8775p
>   arm64: dts: qcom: sa8775p: enable safety IRQ
>   net: stmmac: Add driver support for DWMAC5 safety IRQ Support
> 
>  .../devicetree/bindings/net/qcom,ethqos.yaml   |  9 ++++++---
>  .../devicetree/bindings/net/snps,dwmac.yaml    |  5 +++--
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi          | 10 ++++++----
>  drivers/net/ethernet/stmicro/stmmac/common.h   |  1 +
>  drivers/net/ethernet/stmicro/stmmac/stmmac.h   |  2 ++
>  .../net/ethernet/stmicro/stmmac/stmmac_main.c  | 18 ++++++++++++++++++
>  .../ethernet/stmicro/stmmac/stmmac_platform.c  |  9 +++++++++
>  7 files changed, 45 insertions(+), 9 deletions(-)
> 
> -- 
> 2.25.1
> 



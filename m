Return-Path: <devicetree+bounces-46520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3061869E86
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 19:02:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE4AD1C23984
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 18:02:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3B411487D5;
	Tue, 27 Feb 2024 18:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KQJB7qCP"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182C91482E2
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 18:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709056946; cv=none; b=fi+YSFF4qNNquYsKV5gXdiyetSNuihCIHBCadrzOeSPEcejEM/wV5OyQgdARlWhxaOFE0AyKp/fR0ekhHp2eo1W2aCbAneHPr3KwaIpljlj1+ITxmq6nukFsgyFpF7ozPkOj0pvO9uIgMqPVBCCRUbHWxN0AXm4aoOGGileba0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709056946; c=relaxed/simple;
	bh=9srZA86tRQ0Lc6f+G5Z/wjNPWsbOftV358BYgV3yd4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rudnttM01Mp3fEK0+WNFz1TEPZIHQJKjmV1W+tO7cKnSNJRtH3k8n6RYCtyKkbCdYBysYJFxwELehW0S1Sg1yjsDlWVPG0G6wIEHtKjXGk++a4h+ELTHPKvN0GR83y93gfMAj1NgdHGD+KVzg0T3U9I1k5bieo3LsRpk0qpTZ/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=KQJB7qCP; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1709056944;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RxNc/aFVnNDKr6nzABJwfQofcGO3o2pWudIkQ0RdBpM=;
	b=KQJB7qCPdgO/nUaozij8iGXpPNk8Z6J61GiIl9IQQPAYOCHjbiqGhtXnovdEUBwkiq8Vyx
	yiCCZTc+l3GmEoOFqclfByJDxsU7T0lxTwxJB4hfXN0+7L6Rq/+jS41fvdD1DCL4/4kvmi
	y4cOznl54ZLnIaa1VWpFXgRoZoFTUJ0=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-408-V5aw6B1oMBKKK64jVIv1pw-1; Tue, 27 Feb 2024 13:02:17 -0500
X-MC-Unique: V5aw6B1oMBKKK64jVIv1pw-1
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-42e7b88bfa5so24836311cf.3
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 10:02:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709056937; x=1709661737;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RxNc/aFVnNDKr6nzABJwfQofcGO3o2pWudIkQ0RdBpM=;
        b=XaKw1mLikl2StGjwMRXSObFn0um0z6qpucpbtNEsFvy8Hq7GHekAnPZ2IGeV8BeoSn
         8n6oETFxK646UuWxj0SkArwuFXWpDq8goryreI0mCiN1UXUN6bKath4XZFodrndpm40o
         qOfWdilO/NEi0lDIMA7kncp97Cp3zTCUtDGGUnTkgHzJXgQOSnI0w1lzX+HqSI86glsc
         LRGsZYCX5omyXRJfdgduD4crfSlu4AyXQBTluFJb1Q3mRHGITHD7c45ZgCLVcutmFLbK
         RtfQc0Ao3twf8ym3vh5YCLSMyZH29oaT8XlPHKK5UeOz7C1AD5usNL81xKcK+uhGssBV
         mJFA==
X-Forwarded-Encrypted: i=1; AJvYcCUUtQasILuIKYzMA2xqnMJC/PrMGr9yq5jRFNp8EcqZjbZhgA99lZiSlwhD20pRcvVJkDXsuMkgHEhxm3dQJ427RZ0FtKhFUE7uAA==
X-Gm-Message-State: AOJu0Yz8NP0ost8AT/fUZs9UWxVVtRiB5DDANAcvanA3ca6KsEH6KWpI
	npxSEQ/kxLu8AHLol41GpGZYKTXN9pXWvZt/CaajvO7o7ukOBsikX3YZelZLF2Is16pVmYm2EcU
	qEcHO01D0v/QW9h2+Htm0bY+N1vBAcoooucqTW+5XOldK2sGonucDee/0/Mo=
X-Received: by 2002:a05:622a:1a97:b0:42e:a717:cbca with SMTP id s23-20020a05622a1a9700b0042ea717cbcamr802355qtc.41.1709056936780;
        Tue, 27 Feb 2024 10:02:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFdFPNupQsoGCNMoyarnVyVV+samDOQcNLB9zEJi7UDBBSyn6KQpoOrEG/VbkkBYeBv36V0Uw==
X-Received: by 2002:a05:622a:1a97:b0:42e:a717:cbca with SMTP id s23-20020a05622a1a9700b0042ea717cbcamr802291qtc.41.1709056936129;
        Tue, 27 Feb 2024 10:02:16 -0800 (PST)
Received: from fedora ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id f12-20020a05622a1a0c00b0042c7b9abef7sm3766020qtb.96.2024.02.27.10.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 10:02:15 -0800 (PST)
Date: Tue, 27 Feb 2024 12:02:13 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Sarosh Hasan <quic_sarohasa@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, Prasad Sodagudi <psodagud@quicinc.com>, 
	Rob Herring <robh@kernel.org>, kernel@quicinc.com, Sneh Shah <quic_snehshah@quicinc.com>, 
	Suraj Jaiswal <quic_jsuraj@quicinc.com>
Subject: Re: [PATCH net-next v2] net: stmmac: dwmac-qcom-ethqos: Update link
 clock rate only for RGMII
Message-ID: <3refwt5x2xplibxkne5sae4ybic7inzmfwna4vkhprpf3nyqom@lwng6mkbe3gc>
References: <20240226094226.14276-1-quic_sarohasa@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240226094226.14276-1-quic_sarohasa@quicinc.com>

On Mon, Feb 26, 2024 at 03:12:26PM +0530, Sarosh Hasan wrote:
> Updating link clock rate for different speeds is only needed when
> using RGMII, as that mode requires changing clock speed when the link
> speed changes. Let's restrict updating the link clock speed in
> ethqos_update_link_clk() to just RGMII. Other modes such as SGMII
> only need to enable the link clock (which is already done in probe).
> 
> Signed-off-by: Sarosh Hasan <quic_sarohasa@quicinc.com>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
Tested-by: Andrew Halaney <ahalaney@redhat.com> # sa8775p-ride

> ---
> v2 changelog:
> - Addressed Konrad Dybcio comment on optimizing the patch
> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 31631e3f89d0..c182294a6515 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -169,6 +169,9 @@ static void rgmii_dump(void *priv)
>  static void
>  ethqos_update_link_clk(struct qcom_ethqos *ethqos, unsigned int speed)
>  {
> +	if (!phy_interface_mode_is_rgmii(ethqos->phy_mode))
> +		return;
> +
>  	switch (speed) {
>  	case SPEED_1000:
>  		ethqos->link_clk_rate =  RGMII_1000_NOM_CLK_FREQ;
> -- 
> 2.17.1
> 



Return-Path: <devicetree+bounces-14163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A75A7E2786
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:48:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 050432811D8
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 14:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A1F128DB0;
	Mon,  6 Nov 2023 14:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9300628DAD
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 14:48:35 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C41AB6;
	Mon,  6 Nov 2023 06:48:34 -0800 (PST)
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6ce2add34c9so2670860a34.1;
        Mon, 06 Nov 2023 06:48:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699282113; x=1699886913;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pXUwQRgKYin84qt/NzMuWPYKQwAgJAzQ8CP9C3QMnWk=;
        b=vvnLp1dgP1f73NpMVittH9GfaRp+k6pV7teZGfkB+9VCSjyhmF7LTLphqMlsP4WIz0
         pIGru6LsYhcmVCxFqctIavqEdc1VbLUrIH2CmlNdYtKiN90JjaBDiJ2lVOnomH54dvGM
         6YB2WiDKOUFnKtv8RYJUy6bVlA4/3TwhLrBPj7FkznUtS4PRCJwEPpeeTMiGtoopADSW
         onTgd+J0l8FI0yV72y6Nz3pc2xhEUS6bZYySM0asJvRBn+kEBmN4ULqn1AKDqyCN/hEE
         QqNVvMai6ZzCSwl46vIKMvHgLPez2Rgrfb5dNscD4M+6VOzkBuOW1XThSiB+zGWvXzUM
         wddQ==
X-Gm-Message-State: AOJu0YyXxMfEdwjf2a3k4pucVLBMtbEurlkBjvlPwic0rCua6f4RXqhY
	O42p+zQ9+5zsNbSdo6Cyiw==
X-Google-Smtp-Source: AGHT+IEUkOSozraK2toTye88mFjUT63PkKYjXw5R8snconc3gVvDkuHgI4cJmHvVc/G6yXILft5QbQ==
X-Received: by 2002:a05:6870:af4a:b0:1ea:7f54:77af with SMTP id uy10-20020a056870af4a00b001ea7f5477afmr31023062oab.10.1699282113677;
        Mon, 06 Nov 2023 06:48:33 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m2-20020a9d7e82000000b006d32010d5a9sm1272976otp.71.2023.11.06.06.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 06:48:33 -0800 (PST)
Received: (nullmailer pid 321808 invoked by uid 1000);
	Mon, 06 Nov 2023 14:48:31 -0000
Date: Mon, 6 Nov 2023 08:48:31 -0600
From: Rob Herring <robh@kernel.org>
To: Ziqi Chen <quic_ziqichen@quicinc.com>
Cc: quic_asutoshd@quicinc.com, quic_cang@quicinc.com, bvanassche@acm.org, mani@kernel.org, beanhuo@micron.com, avri.altman@wdc.com, junwoo80.lee@samsung.com, martin.petersen@oracle.com, quic_nguyenb@quicinc.com, quic_nitirawa@quicinc.com, quic_rampraka@quicinc.com, linux-scsi@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Wolfram Sang <wsa@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Miquel Raynal <miquel.raynal@bootlin.com>, Mark Brown <broonie@kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: ufs: Add msi-parent for UFS MCQ
Message-ID: <20231106144831.GA317907-robh@kernel.org>
References: <1698835699-28550-1-git-send-email-quic_ziqichen@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1698835699-28550-1-git-send-email-quic_ziqichen@quicinc.com>

On Wed, Nov 01, 2023 at 06:48:13PM +0800, Ziqi Chen wrote:
> The Message Signaled Interrupts (MSI) has been introduced
> to UFS driver since the MCQ be enabled.

Not really relevant when a driver supported MSI, but the when the h/w 
did. Has UFS always supported MSI? It was added in some version of the 
spec?

> Hence in UFS DT
> node we need to give the msi-parent property that point
> to the hardware entity which serves as the MSI controller
> for this UFS controller.
> 
> Signed-off-by: Ziqi Chen <quic_ziqichen@quicinc.com>
> ---
>  Documentation/devicetree/bindings/ufs/ufs-common.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> index bbaee4f5..42309bb 100644
> --- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> +++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> @@ -73,6 +73,8 @@ properties:
>      description:
>        Specifies max. load that can be drawn from VCCQ2 supply.
>  
> +  msi-parent: true
> +
>  dependencies:
>    freq-table-hz: [ clocks ]
>  
> -- 
> 2.7.4
> 


Return-Path: <devicetree+bounces-13726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EF67E02F5
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 13:33:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C62EB21362
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 12:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC3552F2F;
	Fri,  3 Nov 2023 12:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qVavNsf6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD5F71A5B2
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 12:33:18 +0000 (UTC)
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 692251B2
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 05:33:12 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so1950837276.1
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 05:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699014791; x=1699619591; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0KSdt9VlChlmft/PeayCtTjiy1+VOgZbmeLdttQHlx4=;
        b=qVavNsf6R5tGiIFh2DHtt2MHsD/PkKUwA5bXN5V+1iF7mYBPlpD+mu55qZycKQ2CbO
         IjZMyr28OX7hQCSjUNcP+aqkqNklnHze54YOOQTYqzF48qYg2Hy/XM7Ky9U/JZgN2nAJ
         OEjnPJ1HHYXJGpxG+gCC7RonbGRWPAx+bLjN6Ao60EYRKtgoBkx3RnmOtt5WZGhlHJX6
         ji2lijccQnPuBjs4Nhmyr4KeFrrWxp8ltxpIGbIqAzsc76PIf/hRXLbM5Gd+dTKmFvfS
         RH+qO17tBxZzCJKq4eN4Ts+E8N0n+cZP8Ugxk1coGOoxUCTyGZ5iDTzpGk7VaLuacCxo
         aqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699014791; x=1699619591;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0KSdt9VlChlmft/PeayCtTjiy1+VOgZbmeLdttQHlx4=;
        b=jfw76gWh+2VkAQr7iZlgda1lhVhUYTnSyD18QIn5MuS7gYsuWw9U0Mh2nJzzR6XAN2
         MgwBrQ2GQYcT4sb1zf1ELfIsmSwmjHuFzOZOkHYUFdwxzvImnQhDcjs2sS2/JbUfBatU
         jtbpwXY9ZfE430P0TtdDhhNTzEfKECgmHNXlYMn4Dbde3cQR2DU6Ot+am409BgaIjkmq
         oyzmr+vehPENDbbhWI+K5ze+Or1oenObZSHgkKJPSeUb1aLGlBPNuwolxoNk1lb7fOIC
         BxjdpA1qqF634oYhl+lJLhyEEU6bcFnwLXk8J4aWW1YhfYPh85A1zujnaQUJRMRxYtl0
         DWow==
X-Gm-Message-State: AOJu0YzEiOZDS6FEaWUp5LZQD/4cpjThG2gAjEKI9bU9YrSHKKFToLz3
	tF2G2I/k12POnlSdZvDbx4nDKPg7ENsZsGlNbwLdNA==
X-Google-Smtp-Source: AGHT+IEXP9Sio/dbsgBAJ9ZHE9EMw/w5GSOc9qOrt8FkvsM79cuDJRSXMr28R4x61MRT2ytqfIU9jf6RzHnPqpMk19A=
X-Received: by 2002:a25:37c6:0:b0:d9c:2b72:4fa5 with SMTP id
 e189-20020a2537c6000000b00d9c2b724fa5mr15696344yba.48.1699014791460; Fri, 03
 Nov 2023 05:33:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231031120307.1600689-1-quic_mdalam@quicinc.com>
 <20231031120307.1600689-2-quic_mdalam@quicinc.com> <b9af01d2-1a86-4b41-9bd6-3bf7a0dde1c0@linaro.org>
 <553c1373-c9a0-b2af-2286-058824e31bad@quicinc.com>
In-Reply-To: <553c1373-c9a0-b2af-2286-058824e31bad@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 3 Nov 2023 14:33:00 +0200
Message-ID: <CAA8EJpp-xsP1x==a5DH8pKpy7XH75UF-L8ewKWmeL8ePtxUq-A@mail.gmail.com>
Subject: Re: [RFC PATCH 1/5] mtd: nand: ecc-qcom: Add support for ECC Engine Driver
To: Md Sadre Alam <quic_mdalam@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, agross@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, robh+dt@kernel.org, conor+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, miquel.raynal@bootlin.com, richard@nod.at, 
	vigneshr@ti.com, broonie@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mtd@lists.infradead.org, linux-spi@vger.kernel.org, 
	quic_srichara@quicinc.com, qpic_varada@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 3 Nov 2023 at 14:25, Md Sadre Alam <quic_mdalam@quicinc.com> wrote:
>
>
>
> On 10/31/2023 10:41 PM, Krzysztof Kozlowski wrote:
> > On 31/10/2023 13:03, Md Sadre Alam wrote:
> >
> > Eh? Empty?
>
> QPIC controller has the ecc pipelined so will keep the ecc support
> inlined in both raw nand and serial nand driver.
>
> Droping this driver since device node was NAK-ed
> https://www.spinics.net/lists/linux-arm-msm/msg177596.html

It seems, we have to repeat the same thing again and again:

It was not the device node that was NAKed. It was the patch that was
NAKed. Please read the emails carefully.

And next time please perform dtbs_check, dt_binding_check and
checkpatch before sending the patch.

It is perfectly fine to ask questions 'like we are getting we are
getting this and that issues with the bindings, please advise'. It is
not fine to skip that step completely.

> >
> >> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
> >> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> >> ---
> >>   drivers/mtd/nand/Kconfig    |   7 ++
> >>   drivers/mtd/nand/Makefile   |   1 +
> >>   drivers/mtd/nand/ecc-qcom.c | 198 ++++++++++++++++++++++++++++++++++++
> >>   3 files changed, 206 insertions(+)
> >>   create mode 100644 drivers/mtd/nand/ecc-qcom.c
> >>
> >
> > ...
> >
> >> +
> >> +    return 0;
> >> +}
> >> +EXPORT_SYMBOL(qcom_ecc_config);
> >> +
> >> +void qcom_ecc_enable(struct qcom_ecc *ecc)
> >> +{
> >> +    ecc->use_ecc = true;
> >> +}
> >> +EXPORT_SYMBOL(qcom_ecc_enable);
> >
> > Drop this and all other exports. Nothing here explains the need for them.
> >
> >> +
> >> +void qcom_ecc_disable(struct qcom_ecc *ecc)
> >> +{
> >> +    ecc->use_ecc = false;
> >> +}
> >> +EXPORT_SYMBOL(qcom_ecc_disable);
> >> +
> >> +static const struct of_device_id qpic_ecc_dt_match[] = {
> >> +    {
> >> +            .compatible = "qcom,ipq9574-ecc",
> >
> > Please run scripts/checkpatch.pl and fix reported warnings. Some
> > warnings can be ignored, but the code here looks like it needs a fix.
> > Feel free to get in touch if the warning is not clear.
> >
> > Checkpatch is preerquisite. Don't send patches which have obvious issues
> > pointed out by checkpatch. It's a waste of reviewers time.
> >
> >> +    },
> >> +    {},
> >> +};
> >> +
> >> +static int qpic_ecc_probe(struct platform_device *pdev)
> >> +{
> >> +    struct device *dev = &pdev->dev;
> >> +    struct qpic_ecc *ecc;
> >> +    u32 max_eccdata_size;
> >> +
> >> +    ecc = devm_kzalloc(dev, sizeof(*ecc), GFP_KERNEL);
> >> +    if (!ecc)
> >> +            return -ENOMEM;
> >> +
> >> +    ecc->caps = of_device_get_match_data(dev);
> >> +
> >> +    ecc->dev = dev;
> >> +    platform_set_drvdata(pdev, ecc);
> >> +    dev_info(dev, "probed\n");
> >
> > No, no such messages.
> >
> >
> >
> > Best regards,
> > Krzysztof
> >



-- 
With best wishes
Dmitry


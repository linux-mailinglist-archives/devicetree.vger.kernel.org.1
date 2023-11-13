Return-Path: <devicetree+bounces-15310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD7C7E99D8
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 11:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D81E1C20329
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 10:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F9EA1C2AF;
	Mon, 13 Nov 2023 10:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nBwH0l6c"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 957B81C28D
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 10:09:22 +0000 (UTC)
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 709B1D75
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 02:09:20 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d9fe0a598d8so4152989276.2
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 02:09:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699870159; x=1700474959; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LTeLgW8CvRb7cxtMxy0EsZxPLzWZ8KwGmGaV7tRJB1M=;
        b=nBwH0l6cIoEUGETfjXk9QTEcpZ5Pui5vVrmnB5K90LfOyk5H4Gs4Lw6UK7fhvPVHR9
         UNa+AE7c2x6gfaNN1Ikhkc/Y1vJMlwPcSbFEOgmmLFHStvRiIzL6TWpFn4TWrJ70rW9y
         JEA6vqDjvy4QVSEPn8Q0qkdoRQhfCA8zz5pYvOW+PL1DQry8ABXhRDXdDHrQPsOge6Ya
         KgpJGv3u88jVts2jhn6lrPm6K3zljp6r1dN/Sjj5j3dCkSEHbO2KRWUNN6EQoiDE6x/M
         L3fRrc0aVpifib/Wt9cy0N9Chxux7xoOAwqQiL+eKpikhqYGdQCr9fFsr+qbSIC7u6/d
         brag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699870159; x=1700474959;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LTeLgW8CvRb7cxtMxy0EsZxPLzWZ8KwGmGaV7tRJB1M=;
        b=s4ObaS+diwQ1eewYX7zk7HqlJX0s6Y6jN7k+SMh+Len4vCUqjR9KBt+hDsI46gBEB+
         Cn1bJG470zeE4eiTMVJClG+UDostzk9BhANDd3y1VUd4GVhJAHlP370OoQfGwg0anKpS
         lTZB7ArhX4GRwyN0bSc/w4ENMMvcUF8gBpR3oK0jH+t6TW4jIJ6LL8aGhIRqt0Lq+2DP
         +K8F9eeG7Z/sIK312jBc9f1NuMhO+q2pnlQsVlwIndQzxZCF7Yaj2mMgF/DOTazZvBlk
         8VfI/gr3WthMM/SSfGbV6siYQc3Z3+x5CSOuyMspAkFOIN8yL29yDczlYIKaC93Tko2T
         V0EQ==
X-Gm-Message-State: AOJu0YwsNnTk33ZHpSTpBN9jO2F9mO5M2W2wAfh9alaliQASzt3gEzSj
	coMQvGsYhDNdJtJToA7PGPXJgwXByEF4MSyyJegWFA==
X-Google-Smtp-Source: AGHT+IHagcgO5SbZ+FDx8rzNuCIFQabokjyG6WQDrmEqHV78EtJqdrNniMpYtKkxfYMdzu3YflD5B+sro9YoieMSUe0=
X-Received: by 2002:a25:414c:0:b0:da0:5775:fd77 with SMTP id
 o73-20020a25414c000000b00da05775fd77mr4661466yba.63.1699870159609; Mon, 13
 Nov 2023 02:09:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231111094645.12520-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231111094645.12520-1-krzysztof.kozlowski@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 13 Nov 2023 12:09:08 +0200
Message-ID: <CAA8EJpoK1N1LBY5ZjL7hb0Sqge7iF4X=rm1n9VZPx-0nOm3bkw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: Revert "arm64: dts: qcom: qrb5165-rb5:
 enable DP altmode"
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 11 Nov 2023 at 11:46, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> This reverts commit b3dea914127e9065df003002ed13a2ef40d19877.
>
> The commit introduced unsupported and undocumented properties:
>
>   qrb5165-rb5.dtb: pmic@2: typec@1500:connector: 'altmodes' does not match any of the regexes: 'pinctrl-[0-9]+'

We need this property to enable DP altmode on RB5. It has been parsed
by the typec subsystem since the commit 7b458a4c5d73 ("usb: typec: Add
typec_port_register_altmodes()"), merged in April 2021.

Rather than landing this commit, let me propose to send the proper
binding instead. If we can not agree on a compatible bindings document
within the sensible timeframe (e.g. 1 month), I'm fine with dropping
of the altmodes from qrb5156-rb5.

>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> index c8cd40a462a3..3bd0c06e7315 100644
> --- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> @@ -1423,13 +1423,6 @@ PDO_FIXED_DUAL_ROLE |
>                                          PDO_FIXED_USB_COMM |
>                                          PDO_FIXED_DATA_SWAP)>;
>
> -               altmodes {
> -                       displayport {
> -                               svid = <0xff01>;
> -                               vdo = <0x00001c46>;
> -                       };
> -               };
> -
>                 ports {
>                         #address-cells = <1>;
>                         #size-cells = <0>;
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry


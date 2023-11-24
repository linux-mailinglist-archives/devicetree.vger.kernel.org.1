Return-Path: <devicetree+bounces-18609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC85B7F74BC
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 14:20:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9659C2810E3
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 13:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E345D28DA1;
	Fri, 24 Nov 2023 13:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LwZ1dc09"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8EE510FF
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 05:20:18 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5c8c8f731aaso19126057b3.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 05:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700832018; x=1701436818; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=duwkvZHrBkTaBuc8LOMphh5Uy/87rU9msacGlhDLoFw=;
        b=LwZ1dc09aQrh9Yf2fNtFfuaYH/YIP9rA4/XT12K0+39JaMepF6sQfaUxllhH7EPRMQ
         U5uXHiM6YqyL0Ze+niVd0R8pfOVeDMhXeUHjhTraSGkFnV7foXhE1042thfu/npo7DAl
         2we+fgEHJXbCOq3zW3rf7VpFLd+WwM+3zMd9ahgf6JKeA14jAxoe2w1yw5DBbfUjWwT7
         3Gdfe6HwA4mfQRp9KwhzglzxzRBDMX6PypfjkIpQ9cH51oh8u4Mw9d4SBACUSahQ8HnC
         qPa1KC/dl7fFOzeEUcez5I/HX2dQRAT6ly1ILu9hvNIuzNi2cz4vxwu8fEVpvKWIQs8t
         yPEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700832018; x=1701436818;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=duwkvZHrBkTaBuc8LOMphh5Uy/87rU9msacGlhDLoFw=;
        b=wSncmoT4PBmI8GVQPhzCec38X7A1tKooOSweOzr9/SbrcwhWozdNdweLtl/hYO1Txu
         oiFTNkUQWq6i27jGl68dEaZrPeZqNLv1N5DjzA0E1RbUj38T4TiFc14UppzLSeLxjaSP
         RK0nQIqGb4b2RhxQ7cvzyBbmOxgh3BJkUAt6CFJ6uDcDGAnsq1yrE3sR5sFHqehuxvAv
         X21yJNiHNRF5C6/fsntBifyTNHs0tjYUuiuhAzgT3N7WNeS7aa+sWhy81Zi+ylsP47r8
         LLu1w5b+3KIQLknJZy0hVFJeYqXBAGq19V71f7YIMPXgE0ftT+DGD2WQX/nxrSgbh3fU
         yMTA==
X-Gm-Message-State: AOJu0YzeOi/uJVrRc6gnZ3qLnCd8QdIY/9lDbbFprSgQR5lvjbOSizf5
	gTs2Fjdys2zQJb7NixFs6fx1z74CFou/Fws5yKU1XQ==
X-Google-Smtp-Source: AGHT+IGTMWDoubenznwguJuKisn/kdH02n6RmrB+3SpiznhGgPENvFvkg5/wCeChRLDXvMftBTinfn7BhYh8JQE6sQE=
X-Received: by 2002:a0d:ead1:0:b0:5cb:464c:ad23 with SMTP id
 t200-20020a0dead1000000b005cb464cad23mr2791623ywe.42.1700832017875; Fri, 24
 Nov 2023 05:20:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231124121305.1954-1-quic_kbajaj@quicinc.com> <20231124121305.1954-4-quic_kbajaj@quicinc.com>
In-Reply-To: <20231124121305.1954-4-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 24 Nov 2023 15:20:07 +0200
Message-ID: <CAA8EJpruXcpLX=c9o27rqHuh3u_ktqp_a+PN=DcCbq8sWW612w@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: qcom: Add base qcs6490-rb3gen2 board dts
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Naina Mehta <quic_nainmeht@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, 24 Nov 2023 at 14:14, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:

[skipped]

> +&wifi {
> +       memory-region = <&wlan_fw_mem>;

qcom,ath11k-calibration-variant = "Thundercomm_RB3gen2"

Also please cc ath11k mailing list on your next submission.

-- 
With best wishes
Dmitry


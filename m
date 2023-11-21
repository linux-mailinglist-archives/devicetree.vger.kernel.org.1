Return-Path: <devicetree+bounces-17675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CBB7F363E
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 19:40:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6C291C20A2D
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 18:40:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB1B15103B;
	Tue, 21 Nov 2023 18:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cXhcUJZT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9011A191
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 10:40:35 -0800 (PST)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5cb4b4889e5so16258567b3.2
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 10:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700592035; x=1701196835; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VJi+hwHIFMEK75b+gn7N3ATHUD4KW+X7YkfL5jpJno0=;
        b=cXhcUJZTKCTD2PUiQqhQpzfipK63CiaFl66vIaX3rmXkFkF2uAF8DZOoyKkBOZLWCH
         FaGQpjN2wu0yT/z2lKDafU93ugCfQAbYwO+qJKiiEKE1oqnfwcu/v4V2w1HhTxI8lj8U
         FpvwyLaBYxPJz5m05OFPuBoE2F+49sD7CDmXLXuTTovldn6cg6/zR9jFTh/QEdIelLYN
         44lelPHSvpQxywhqq19CC1366XQU9uxjw6v2zSRHeTOiGcFs838UJsMq27oFjjy8LPQu
         IPq8Lt8o0lGqWR5JsE2hTqXyNye0ScBoX+A7YSqgS1js9tG+USJGM0W9M2+DKMVuagmg
         Ro7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700592035; x=1701196835;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VJi+hwHIFMEK75b+gn7N3ATHUD4KW+X7YkfL5jpJno0=;
        b=EhhbdwmFA7OsH8e/h+fEpr54MRc3tapJ24MPqrwDaLlCs8T7cPRA1TT/+UaPZDbWPu
         WzJC9j/xWcFLu67+T3Iga2yz2nR2W9D1gx6c/FU6/pCPRPU+XkqUMm50Pnw/zVSXPTSy
         WxClEVzEsRJP4vAL/LzWnB1CRPD2wXCiAffDBp34PE388F4X4D95ttOc9dRDbNsrP15b
         SG5bL04rOIpQRVHtXZdUMhguFQhqDOuomUOiXcWTxhysav1NaqbCACymvWvdZFrw+BP8
         /Lck5/DWpzQRdQa71bj/yt5sDEE0t1l319lPihy5Jy8AUBVVCKK9PSzRwkRUnloDReDP
         iubQ==
X-Gm-Message-State: AOJu0Yxz+7a/5feTcWjyxfWMFG24H3SxJllVWgzvfgLUfItAI9VcKe6X
	qUdAzNTiTlqRkntOEwx/LuPgcH3CmjtbdaqFeDCmMQ==
X-Google-Smtp-Source: AGHT+IGo9pi90+0YW1WgYDu2cpBw4ag/fwWszyzluW/acVk/pI4XfP2FVzn6cSZRSsVDe7lfiSGR4LwIsnI7Xd5IyxA=
X-Received: by 2002:a0d:dc43:0:b0:59b:ec85:54ee with SMTP id
 f64-20020a0ddc43000000b0059bec8554eemr13643015ywe.39.1700592034763; Tue, 21
 Nov 2023 10:40:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1700577493-18538-1-git-send-email-quic_msarkar@quicinc.com> <1700577493-18538-2-git-send-email-quic_msarkar@quicinc.com>
In-Reply-To: <1700577493-18538-2-git-send-email-quic_msarkar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 Nov 2023 20:40:23 +0200
Message-ID: <CAA8EJprOwxFUk_=uE+5788+N5bSKTMa1=t77nRWVu9M7xnjJ3w@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] PCI: qcom: Enable cache coherency for SA8775P RC
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	robh+dt@kernel.org, quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, robh@kernel.org, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	quic_schintav@quicinc.com, quic_shijjose@quicinc.com, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 21 Nov 2023 at 16:38, Mrinmay Sarkar <quic_msarkar@quicinc.com> wro=
te:
>
> In a multiprocessor system cache snooping maintains the consistency
> of caches. Snooping logic is disabled from HW on this platform.
> Cache coherency doesn=E2=80=99t work without enabling this logic.
>
> 8775 has IP version 1.34.0 so intruduce a new cfg(cfg_1_34_0) for this
> platform. Assign no_snoop_override flag into struct qcom_pcie_cfg and
> set it true in cfg_1_34_0 and enable cache snooping if this particular
> flag is true.

Thank you!

>
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



--=20
With best wishes
Dmitry


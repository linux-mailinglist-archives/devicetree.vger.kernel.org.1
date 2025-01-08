Return-Path: <devicetree+bounces-136545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 888A9A058C4
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:54:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F60A1884171
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE6AA1F868E;
	Wed,  8 Jan 2025 10:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rMBh2FSw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B131F8666
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 10:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736333657; cv=none; b=rsODTNUx6v3LuRNXREUG9njoawlthLLCeonKD8S5jyOK1ERsYyOUILe2EkQAY3nlVfYnJHPBaCXVAv0DZwI/ufFGFDNqhY9NqIbfRsS3URMRvEppiKWZQryo2fBVW/5meihLaSh5yoUEgs/NSF4d+RmHjEQG6pcqrkG4PWXW63k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736333657; c=relaxed/simple;
	bh=xfPbO4siHbepFuqT00coFy2gx+RHsJcexQO02LcOy0M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RnSy/duM2xCFm9SNMYhg5XTXLvzHd64KF8Fl47fw1S+VMgQkuC4rtaaDO01ms/gYZWVqQiwDFubRTBA5c4duHvznbcFca8iSADyPwtONCtD1FvQmMnIGA+ko/A8kwhfv5JVBGXHVn8hvCsUi2X9UW65SIaICAK63PfZObJmhWfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rMBh2FSw; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e460717039fso21854741276.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 02:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736333655; x=1736938455; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bLNt/fipL8txqhoiZlT5cpcY9NIeIicmN6z7rLLh9ww=;
        b=rMBh2FSwoFqCPnKV6K0hdeVk8x5W95WML1ArvakgueDpNa6eEhfJlaJSwIopOQX5vh
         zSLtQkmBC7/BS+PkOD0CiD5c6LrAnJlmQwimp5BsxtJG89vWxSE9mG8fcSgnmjDwKzTj
         rFdEcfYH6f4ueWbQU3F18SyIHq6oiAc24+eZpG1ZxBRqilRjOUjqBBOhzsA1XJK5YHBz
         4I2vn+18Z6HGCP/mZx+6ApoiYOsf4JC91wfNjxpzPj8S6SBTPlLcryX+zBvVoEqyai23
         oEdrobiXjFxHb9dZoaEEQuUlC2nS6VJDUZu2jucC+52NJPDxPaLzXkNnXAWqqCLBPjWQ
         FJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736333655; x=1736938455;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bLNt/fipL8txqhoiZlT5cpcY9NIeIicmN6z7rLLh9ww=;
        b=m8qeAr/gwkFLWIilyg11LyxearlJ3VYS1AH16g3MVvtoksLwRBGvv5xb2G2Fy/Ou/z
         OIOsS28eiIXPiYTrnIebd9uHIXjmyAUMpkvKEO43ht1G5RIKCJKDsXd1AyXG1xzdy6WF
         sryyimtC9OGcO29CGFF0CQUskubR0WyfIRZMc43BZbuPwKebQFO8TmpGHV99IgSPZWaO
         +TgoY/0hjP0t935Lh8iK0yRoN+/Ii3oAebH4ur8ozi6GTiG1P9isJCF/At5jRWo3uiF9
         bBEiHGirS4QADIhav6AnGN51jvfD89PtGm1OWFMwu0qcg88OfO7N8dU9XbM9/61i8fbP
         YD8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWg7RN0lBqpqbUdXBvVLl1OpQsv5iNKJbR+82tS62wncWERLBt9zskA6upKuK7WrzLOUu3wE/hDe4By@vger.kernel.org
X-Gm-Message-State: AOJu0YyQj/iNDhyQFjDLZWOJeJjrCLch/AHxgc/KwoZomLPhQl9if/kT
	6Y0xN0NG2C84qVMe10O9khlqSM4OVJlUeogXbRLzcKmMwbzH8vJdn27UETAC62Am9Dl2E8rb7ZZ
	RYsOYBjAuRAlTdOX+OzOmrKHk1QIWi4Jk+nMnVQ==
X-Gm-Gg: ASbGnctC5Fo0NDesM6bLcoCwk8MwpakHZaqzbBUpfke8K+vl/HnniF7rMRgFnHI7O11
	xEfBuz8sy5FtiaKy5ZNl3vOF1+wSMGObVVh5NEo4pMurW35wtU4o9NnX8FQdM5Deb/PKM9A==
X-Google-Smtp-Source: AGHT+IFLLOC7LQVGKj7Xv8yhMwD+/uQH+vteYYlRekt55USR33yr0LXCfhenra8iPQKn5Nehn+wsSVxFmy74JrlwB4U=
X-Received: by 2002:a05:690c:3612:b0:6ef:8451:dd99 with SMTP id
 00721157ae682-6f53124b4dcmr19388017b3.24.1736333655229; Wed, 08 Jan 2025
 02:54:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250107101647.2087358-1-quic_gokulsri@quicinc.com>
 <20250107101647.2087358-3-quic_gokulsri@quicinc.com> <pjm5wrxnfutixopeeqzgb6q75z6cilpgfcd2maigqlu4i34mta@2k6trubvrkp2>
 <3e64b792-bfca-4b07-a13e-6deb966f3d4f@quicinc.com>
In-Reply-To: <3e64b792-bfca-4b07-a13e-6deb966f3d4f@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 8 Jan 2025 12:54:04 +0200
X-Gm-Features: AbW1kva4gmKTCpDvcHQN2ENBM5bwKXSzh8i4nE2so3UExC72BAqV63-em6-eMpc
Message-ID: <CAA8EJprxYeNGvr7zed8eRcxDFczxM_TMdJ51GK+cHshhj4C1-g@mail.gmail.com>
Subject: Re: [PATCH V3 2/8] dt-bindings: remoteproc: qcom: document hexagon
 based WCSS secure PIL
To: Gokul Sriram P <quic_gokulsri@quicinc.com>
Cc: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andersson@kernel.org, mathieu.poirier@linaro.org, 
	konradybcio@kernel.org, quic_mmanikan@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	quic_viswanat@quicinc.com, quic_srichara@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Jan 2025 at 14:52, Gokul Sriram P <quic_gokulsri@quicinc.com> wrote:
>
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +    remoteproc@d100000 {
> +      compatible = "qcom,ipq5332-wcss-sec-pil";
> +      reg = <0xd100000 0x4040>;
> +      firmware-name = "ath12k/IPQ5332/hw1.0/q6_fw0.mdt";
>
> Nit: .mbn
>
> Hi Dmitry,

Please fix your email client to never ever send HTML emails if you are
participating in discussions on the public mailing lists. For example,
quotation level is incorrect.

> Its .mdt format only in our case.

NAK, please work with Kalle to pil-squash the remoteproc firmware.

-- 
With best wishes
Dmitry


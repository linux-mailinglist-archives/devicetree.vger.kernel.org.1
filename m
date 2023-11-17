Return-Path: <devicetree+bounces-16523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 904B27EEEEB
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:41:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1EEE3B209A0
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC96CD300;
	Fri, 17 Nov 2023 09:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y4QPMIGM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24DCF129
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 01:41:48 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-daef74513e1so1708937276.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 01:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700214107; x=1700818907; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+GKbU1pmqk9ezv/pS4QlNqR0Q6EVoRSle9QHrp/jGlg=;
        b=y4QPMIGMqmoYh0hy8jlA0b//M9GBQIKiSqnHJsLS6droKS2jUyxrJ42B55WMtVBkHS
         DTthVKWAAEIbnR9ty+ukquiK8GaRao5NGQ4at7ORe8VKwUDHt2pFqeZ8Zg0lrjjcpWns
         IKMzWCt856UVXZtnO4bJa0C9me/3g0f7D7YapJLG3Yw7C2vPHsrOgTpqOlMbYMqZgNCS
         j95lf4qVNQ2PsLlPLkmi6nib7aE2qKD3gsNIFPLoKPXY/4S3AC6+P31uzlGkQundE/y8
         UCiGdMP+TqkDLmYkSc7SFWH/Qko36CqHw+8X/7hqoJIu76mir0qgtovrcXXUm1ok8FDR
         O1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700214107; x=1700818907;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+GKbU1pmqk9ezv/pS4QlNqR0Q6EVoRSle9QHrp/jGlg=;
        b=B/UJuG/O9CQqcYPqwgAVIPqauivVri1L24MlVxykSLdXN9GumeRNR2TGeDHG45pnSM
         m5VgSO/zb+bUQNMl4bDZM882hZbfKGA2X5BTywRi8HgfIYopEyyUUuTAblY+YOI3G9lc
         d0dAnhvqxkbtGC/+RrEkgSg8ma7Vs8fbsdwixIfdabfSS1j5jRx+MBRjdSy2m+/W9P8P
         zP3X43P+RISjubBREGpUjHXfgyzA8y8R5dZv8B/P1Bs6enrCcNN6bvfarbL4X6c40yQH
         gublhkhxhIZMbbenjsflxFdJwSNVBK4P47deN03zU/COiiSofYqGM6FRJ26uKhzm1qZW
         rPXA==
X-Gm-Message-State: AOJu0YyZBXIKBAr99Wn6Guv6QGnwlwTkkyzpi+tekNwqMxE85qnVoNqT
	Cclb29xFBpWwa49CbtMaTo0+Jl4YwqqLPrafMHDctA==
X-Google-Smtp-Source: AGHT+IGCP9QVnIOT2ZwFVpCIH9TdmzbEkkXBwatcoCkJWkH8/33ArI5X8qfumCKGOVK6mDD9npCZM6y3elKdW9s6bqM=
X-Received: by 2002:a05:6902:1503:b0:d9c:aa29:6180 with SMTP id
 q3-20020a056902150300b00d9caa296180mr21870680ybu.46.1700214107344; Fri, 17
 Nov 2023 01:41:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231117080737.606687-1-quic_rohiagar@quicinc.com> <20231117080737.606687-4-quic_rohiagar@quicinc.com>
In-Reply-To: <20231117080737.606687-4-quic_rohiagar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 17 Nov 2023 11:41:36 +0200
Message-ID: <CAA8EJprO=W-wkwTV3x8HRHtvuDhfKXLfWj5MQJPS4cqKkngJ7g@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: sdx75-idp: Enable USB3 and PHY support
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 17 Nov 2023 at 10:07, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>
> Enable the support for USB3 controller, QMP PHY and HS PHY
> on SDX75 IDP.
>
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>




--
With best wishes
Dmitry


Return-Path: <devicetree+bounces-11953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 046AB7D724B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:32:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87B2CB21000
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D665C30CFA;
	Wed, 25 Oct 2023 17:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zf5ACJgY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922DC1C683
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 17:32:32 +0000 (UTC)
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11B7F11F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:32:31 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3b2b1af09c5so3521157b6e.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698255150; x=1698859950; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2HVv1I+VHPYBmP2qyskHC3BNYGeZwM5VQdpXShNy2UU=;
        b=zf5ACJgYBf0QnYXanrqJVYm+tkFt0XvZ82DuSfzFskWcUAIwsbM26e7W46k/ob7Cr8
         jZ3wHVjD1KQtZj8S8IFhXBmNQMFG3BNwCgA3b7a5IWDASv0rVTFhO9ooqrYmLP/k9Ecf
         kJ8hdMWlMXAq3E8NaGzUAVtGGMUmWqFWpeY1ww7pC6uSBQzCocpDInmLLMFabq7mPxy8
         wCvxhG9G/1ELH86czQTeM7fqQQFMuCw78zXB9gWyIkay0k7XfqSZ3scfoKx14ddjLzJp
         VgglAiuaKrlKogBp2g1BF+v8MIW9mm22zEPvLZoVV5LbRG1WvDqeU0u7vNG0MGPAB/HL
         1WHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698255150; x=1698859950;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2HVv1I+VHPYBmP2qyskHC3BNYGeZwM5VQdpXShNy2UU=;
        b=qxHE5cOxCo9lF3khgQKRB6q4kI9grVfdjKYXjMbzVAQdwXFl7Ik+AvnHPSQEnjx4UI
         L9Xbn/MM8IY8JSOI4CPovGAfVB6n4OJ4YTkg8ScFIU4YYeTAQamJjog9pBWvf9P2famd
         rT9rF2vvmHK+yoE5zh4E7rZ4Gvr430l7wFX+HbMG2lG9/E8iOdHeYWfKUHJtiNeLV0GJ
         eDPIr7cV7wXMxiEh+nI+4m3Yz00QyoP19s2gtS7xiLMlqTaJ4OmNIRmTNnb0dtS2n97p
         kIJ2UwQClNh55QA+6t68cAj69WSPShCCgeRmSDrETRx1rPClujj8q0vIy7aszHJ5xi/i
         3k8w==
X-Gm-Message-State: AOJu0YwoNTCwEKpHoF6/zmaJqLhzb63zJtYfWOUGhqF+U7ZBsUJeMauQ
	vTAugEivj0ZcBwFzY1cnyoystM4BpImRB2FGbdGm7Q==
X-Google-Smtp-Source: AGHT+IHK3QW/LQO8x2wSrRAP38zFqCKcXAPmcxtAPrlTRDXOL59OgKdxwhV3/4We8G2bhIYvPQK38ep1jZnF3JLZbxA=
X-Received: by 2002:a05:6808:bc1:b0:3a9:cfb5:462a with SMTP id
 o1-20020a0568080bc100b003a9cfb5462amr17552310oik.36.1698255150350; Wed, 25
 Oct 2023 10:32:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025135550.13162-1-quic_sibis@quicinc.com> <20231025135550.13162-3-quic_sibis@quicinc.com>
In-Reply-To: <20231025135550.13162-3-quic_sibis@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 20:32:19 +0300
Message-ID: <CAA8EJpoRMW95hGrDCMAjVeC5Q-xvZovEr53A2UpXLppujDTFOQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] regulator: qcom-rpmh: Add regulators support for PMC8380
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, broonie@kernel.org, 
	lgirdwood@gmail.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	agross@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com, 
	abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_tsoni@quicinc.com, neil.armstrong@linaro.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 16:57, Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
>
> Add support from RPMH regulators found in PMC8380 for SC8380XP platform.
>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>  drivers/regulator/qcom-rpmh-regulator.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)

-- 
With best wishes
Dmitry


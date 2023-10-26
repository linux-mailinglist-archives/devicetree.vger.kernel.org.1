Return-Path: <devicetree+bounces-12281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEA97D8A51
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 23:29:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DFCD1F23382
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7CF3D974;
	Thu, 26 Oct 2023 21:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1084426
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 21:29:48 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F13810E;
	Thu, 26 Oct 2023 14:29:47 -0700 (PDT)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-1e9b6f39f9eso925300fac.2;
        Thu, 26 Oct 2023 14:29:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698355786; x=1698960586;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rK6kR+JFUtWtI3QeQ4kPG3tcGBl1t989avbG571EnJE=;
        b=AaepPUWM+h4QNN49mkoOGQdHjvDlQfTSrM4WGYQ092k8fjxuYgoVY7nFMAlsyIWwan
         qqf7ingJQNN/4MR2UnA1jToL8CZP7ck10PhFC9RQrlw4tmTmexZlafX7/sdKg0X1GLEv
         PiipO4YFZ3seEaACxsM8eOp9DUlb5KW5x5CgWFSgWcuxl5A6b3Ommoo256yI8ZhYdk5R
         3yMwf3OYuOTU2yDycjUgZGS34n66f+E6OgzdB7QlxWHTnU+VVS4h4tB2i3Ta4Fq9EotM
         FA6az8aBytIHHZr+gPou3dzXhKpHY5fgJxzu2sgB25cW0iBWl/qO9DVrOtciqbe2IaD7
         ZweA==
X-Gm-Message-State: AOJu0Ywn2mEYv/f1Af7n2IemhEdtEQrAxsl6n9rehK8ZjX+CUdqm/L/V
	Yy3+CVjEHwavVn1sPtaZcy/ZxbU6Ug==
X-Google-Smtp-Source: AGHT+IGZ58q3MhoMlIaVDQRhMep96hB7ZaaYdVXdlh0FnQFUrUEynMudwcY8H20kW/Cp4vlcKqrYcA==
X-Received: by 2002:a05:6870:d692:b0:1ea:6a81:8c8a with SMTP id z18-20020a056870d69200b001ea6a818c8amr988302oap.29.1698355786622;
        Thu, 26 Oct 2023 14:29:46 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c7-20020a9d7847000000b006d2d1dd16aesm22892otm.33.2023.10.26.14.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 14:29:46 -0700 (PDT)
Received: (nullmailer pid 430388 invoked by uid 1000);
	Thu, 26 Oct 2023 21:29:45 -0000
Date: Thu, 26 Oct 2023 16:29:45 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: qcom: pmic-glink: document SM8650
 compatible
Message-ID: <169835578477.430332.8702644260177797030.robh@kernel.org>
References: <20231025-topic-sm8650-upstream-bindings-pmic-glink-v1-1-0c2829a62565@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-pmic-glink-v1-1-0c2829a62565@linaro.org>


On Wed, 25 Oct 2023 09:27:57 +0200, Neil Armstrong wrote:
> Document the PMIC GLINK firmware interface on the SM8650 Platform
> by using the SM8550 bindings as fallback.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
>  .../bindings/soc/qcom/qcom,pmic-glink.yaml         | 22 ++++++++++++++--------
>  1 file changed, 14 insertions(+), 8 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>



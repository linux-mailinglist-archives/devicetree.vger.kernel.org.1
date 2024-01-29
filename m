Return-Path: <devicetree+bounces-36345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 927578409BB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 16:20:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 359D3B251F5
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 15:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B7CF1552E4;
	Mon, 29 Jan 2024 15:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pGfEJkf5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03EF153BDB
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 15:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706541618; cv=none; b=bzlQQUyLjmcDELmYzvVWPYOnxTV0Ppwva0yVIDwW/Mu6HLH4Jat0+BIyCattE0qMC9SF+wwVkiZh5fo2Xnvv+S11uXd7zvH7AXDOyLOjm5iT7YO8c8ERkEdEQ2XnWPlt60QmsErICb9/Olfmkk62fFNpf0BC9NiY0rBhaHFtiTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706541618; c=relaxed/simple;
	bh=mU6e8uETmKPJ2827KqRKhqi6FjqcNSn7r6FAsSfjeWA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S2KtzQwsfeQxM1dUzH5KfF75skt42LqSwsKzEtHFA7bfO4WYshC9P8Ct6uYvzTujLJyxq0v/ALucixwPNZ4H8+JBD0qCPuSj89Of7JjvJFyhu7gyEyZqeJPbXi3jFK958W5nazgSZl2NACibY+fiMXbpBGb9N+O/LYMnUdWMHfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pGfEJkf5; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc608c3718dso2336733276.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 07:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706541615; x=1707146415; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HM4oKJKjaECYklXiQu+oSrVSN78CLNrHNPBMMaAeH+4=;
        b=pGfEJkf5c2ftFG2ZZ0u28kbFvmZnzbn/tBpWlCHDogxAOpzOeZK/hXpCkUffOsfjvI
         FY+SGWkQHGGNFO/TVnm4oNXxgMP1wZmEQ0MRfhj+EbFeU7TpdRc7z+Kx4es2TSPrxzxF
         hhcXoVuI4Kvv1ZFDRsowXtaccnC4stHGIaU+GbeMXArjQhrOMr2NxtupBSBjEb/4wiJj
         +lSfGncVWu+tyX//o9TrR5lMzPGzXkcCOaT0za9KGyZ/NDCR6S/2R0PegWMUX5U/JUhm
         uGTHcWK8yKDWVrO9dVaImKkBqtnCCxM5q4c0YR0FptTjLuaUbfxoq/ctI4GfhxHnKCzX
         mjQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706541615; x=1707146415;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HM4oKJKjaECYklXiQu+oSrVSN78CLNrHNPBMMaAeH+4=;
        b=vByY//paktoQAJOnwIN+HcDTb44xZxWzLnE3ra8MzAJW0ot+i+n4/+OOz3IMeulmvZ
         4TlDZHdPyFw3YMIeZ4SflzGbN8osdOL/ts9BIO77mipnumUBTW3h1vrA0GIpQyk7R6p7
         y+umQzafpAdMnmnFH5gQbr/HRwYDOZyOE2NsvSuic4y9LFQlKhoVWUFdjLnUmHovm6jw
         ilqqkxVyg7+i4DdFl3QxBLU0pIrM77YeMiCjgSN7ZyX7DoZ8tk7So/lLkuh3BE9P6/aN
         vXWgbdV4ptmey4hufGJ7ms0DawR9OXRUoltG5RkGbiEVvavfg8P8IKHmBMax6RQHzx3k
         ZzvQ==
X-Gm-Message-State: AOJu0Yy9c0U1AcQOrUmZtycvqzzE/sMlh1F4LFsYKExINRHEJ8VZ2iaS
	eMkFmYU9zt3DWpw+Kq9DCUohJpDUdNFsvS9L+vC2+5AfZhiQtFbsVgf9VNmY7EvueVUZRnFDJIQ
	kOa9yX5EqujrklFZcBNG66gd5Csy+foRQb06kKQ==
X-Google-Smtp-Source: AGHT+IH/kSP17UuZbT0esTyo8sAM9ro7kxiy0XA20jRmTGGdm4q9oJTvHL7EujRbD/wQpB+sQQrHiodPITjmHdSrDkg=
X-Received: by 2002:a05:6902:2681:b0:dc2:2654:513e with SMTP id
 dx1-20020a056902268100b00dc22654513emr4555425ybb.53.1706541615698; Mon, 29
 Jan 2024 07:20:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240129-x1e80100-remoteproc-v1-0-15d21ef58a4b@linaro.org> <20240129-x1e80100-remoteproc-v1-2-15d21ef58a4b@linaro.org>
In-Reply-To: <20240129-x1e80100-remoteproc-v1-2-15d21ef58a4b@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Jan 2024 17:20:04 +0200
Message-ID: <CAA8EJpo0Bmu-=KHhEiFAJXC7CwxoWpT2FB+Y0aSiskkfz_1EUg@mail.gmail.com>
Subject: Re: [PATCH 2/3] remoteproc: qcom_q6v5_pas: Add support for X1E80100 ADSP/CDSP
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Sibi Sankar <quic_sibis@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 29 Jan 2024 at 15:35, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> From: Sibi Sankar <quic_sibis@quicinc.com>
>
> Add support for PIL loading on ADSP and CDSP on X1E80100 SoCs.
>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c | 41 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


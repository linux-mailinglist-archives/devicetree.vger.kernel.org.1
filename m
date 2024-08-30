Return-Path: <devicetree+bounces-98255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1657965833
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 09:16:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C408286210
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 07:16:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63C9214BFB4;
	Fri, 30 Aug 2024 07:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mDj7rWfF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B436481D1
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 07:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725002202; cv=none; b=VOKx3LffSIZXlXpA0dyFQiZDLL380wU0bQfdcsjlNdLy+LpnB24m5hOvk7apm9UtM5OX2v5dbtK7h+DP7MG1QchH4QCN9jPXIQbXjIMfZOLcx5cU62nOAVQjxrRQ8wQNIfaukFFLupRZ3bRdkNQpch6PvA5qArtjdfcKoqzocac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725002202; c=relaxed/simple;
	bh=txJpQDFGzuaVR7EzXueJegrUO8Uh8gdLfdB7Z0slw2E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PV/n47gXFov1cVNv9I3obiDyrTA8iHu+PnnnYq2JELtvW9fih+QS8gqJhz0Y2+qsTN19vyWU/Tr0b9fA7U8LcmHxuDJmd7mNOUxXL1awXHYbfyzl2eKlWW27plIA0OQg9417JNDx7hxS2DxBi+xDJpnG3F0r3yLFpFYCYHoHka4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mDj7rWfF; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-534366c1aa2so1572918e87.1
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 00:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725002199; x=1725606999; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kziAwqX6oomOr0THu4HsxDdT4LnlMXiy7qYbXugrscQ=;
        b=mDj7rWfF+X6fT4Xqt1LEBnklkw0i+FjzKkWrUx090twft5ah1LAD9qJsVlj8XTNsEx
         jVGityxfbuUbmP1dJzSsqerSEeeTZ1G6cVvYy57LPESo2LnnhwE2R67M6BryXFRyxxXH
         9BuWC77FwqMsAUxiQie51fE5AiCYOZ5P1bh7djaEqZtS2n9qWtR/+4KrWGr1/Hgamlc2
         nX6zMsqlyAYhGMdcZ0QEETGr/jvl8BUvw9FdRv5Zu4PZpwnL7+0hXetv+8cNuL+zVjAX
         d9LbvORsPgeluz2aSfyAbzGHjii7R129i0q00E7IJAj6lJT9AiOH7ujlv72851D/JcI0
         WDug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725002199; x=1725606999;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kziAwqX6oomOr0THu4HsxDdT4LnlMXiy7qYbXugrscQ=;
        b=jTzaAkIjKGhEzv+6fCvvolAToDo3JIMa8mGHPTs9KTgWLcJ8P6C7SKsAcJooTRsZIz
         7C/2/XaWPI2j8BtjCYCx1LBSyY1414pKy8o4TyaIlfYmA0/vLsj4CluZ+hJSGtjaFQ1H
         EYqp0ExI1HTsQxsGe1EeYn918nTJ4RbfmXwz38EIFDFFUxKRscNIdACYXA1jDZpSo9rV
         0TjtIo9Na5MCbSdviyDfKbFQcQKdqNHq8yNo2+r2dZqNRxeFV0q7sxTnhg7aY1kLXWXv
         UfwfWYEAtxegRx9iKuVP2MTvWNVmpAqpozs0ThhXa9JmjCo13aqN0ho8PpJ2HawFlBFI
         kbrw==
X-Forwarded-Encrypted: i=1; AJvYcCXPyFQitWrfOjlCpOSZT1TqAyqB6oQrRa/1MtlkO3WDKH4CtqD6sgxc/NltiXjdNyS6RSY5wN1kyLK0@vger.kernel.org
X-Gm-Message-State: AOJu0YxK9ODo3tptjORgYgLIGx1IfZRfE7Zuhccnjo4GroplEGOaP6VU
	pMnVcExxymqZqJTnVTNVPJPkhsXOOIG4wj7Xwy637EJLLZGGM/B4+BrS0HkkXTc=
X-Google-Smtp-Source: AGHT+IEwYzjR9V9IepwnBGvtvkM2vo7p2dadOGNLod1DwztS7UGKjBfGc9ztWBQhplN2rIsCTxjSPg==
X-Received: by 2002:a05:6512:238b:b0:533:4668:8b86 with SMTP id 2adb3069b0e04-53546b69204mr776497e87.41.1725002197916;
        Fri, 30 Aug 2024 00:16:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-535407ad1dbsm460132e87.71.2024.08.30.00.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 00:16:37 -0700 (PDT)
Date: Fri, 30 Aug 2024 10:16:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sachin Gupta <quic_sachgupt@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com, quic_narepall@quicinc.com, 
	quic_rampraka@quicinc.com, quic_sartgarg@quicinc.com, quic_mapa@quicinc.com, 
	quic_cang@quicinc.com, quic_nguyenb@quicinc.com
Subject: Re: [PATCH V2] arm64: dts: qcom: Add SD Card node for qcm6490-idp
Message-ID: <57ogrxveshadb2lqpiltysqpw55hz4rmhf5gy3xsn6t5umh3b3@rntug537yxvj>
References: <20240829114748.9661-1-quic_sachgupt@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829114748.9661-1-quic_sachgupt@quicinc.com>

On Thu, Aug 29, 2024 at 05:17:48PM GMT, Sachin Gupta wrote:
> Add SD Card node for Qualcomm qcm6490-idp Board.
> 
> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> ---
> 
> Changes from v1:
>  - Define sd_cd node. (Thanks Dmitry)
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 33 ++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


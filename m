Return-Path: <devicetree+bounces-136119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B04A03EFD
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:22:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 99F677A20B6
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B29421E5734;
	Tue,  7 Jan 2025 12:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OUsJZvtk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105B81D9346
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 12:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736252523; cv=none; b=I0gKJW7fZ03Vqhuy7hkSyshZ1HVhd/27nUB54AUe0b34kc3HkxMN+qCh4mI+pTEZV7XXXdyHbRUuCBVWj7DOyHd1BCOSg5J29Zu1ZvHMdEwYzZ+saM4ZVwWBXVKz9lD5vLURyAN8/3IzZtL+MnHJlV8ND6XaRbU3D0gd0bKIBQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736252523; c=relaxed/simple;
	bh=1tXML+DqArbNQcM5iHDtMwJQHGdw0eE0Ilz2jJAf2Pg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Swv1/oCTuigjaKbArqNOkbQovQHCYblVlIF7lSZ4QWbqlFg2fWubPiW2peHhc1Jkzg8Xnw2bLxNpyILfpNe/dPV0B5jDDTJ52IHHoLNCGqmPZ3DOrzkk+jj1Ehkw3EDz0iDInrblJOrGFaa2nUpvRY+v+m2W9vemPHBAVO9YWZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OUsJZvtk; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30167f4c1e3so94249381fa.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 04:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736252517; x=1736857317; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q7WHqrbNCsXH9lx2ZZlw8KhRZ8OlQCctj3WmpLhtiwM=;
        b=OUsJZvtkFAQQKJp6NDlvsztDpw86mas56oPQfG8ixV05G+swtYZEXOEyYWv68E5NXV
         wqIuSC1TBneW0IaW+Pvx+JSM/O8qSOCNJlS/1hIwsVO9QXkkw9W4jIIZ9rcx5UQB4BT+
         VvIIMRfT/dRveuCqRT5DMA84PEnrXzEdjwTNLOZ0C02sQtaCyVkFuym9CbE3NHr7d6H4
         C+unNYyk6g9BgOTXwobNpidv6No5Y5Q2daYf7bLrafqYtS9qYfBvjzFkeWcv2YxbQdxi
         okKICKFRK14QD9nEOnYuCbM3No1TYXkEX3HcZFsBN4FKCqcQoofxZ5MBrmDHy/8KRk/c
         rweQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736252517; x=1736857317;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q7WHqrbNCsXH9lx2ZZlw8KhRZ8OlQCctj3WmpLhtiwM=;
        b=TR2bbEyOojrbaiFAYW5POG6CFKQdCP56VpgWeLsOVcvArC7njD5ZyZzGBUbmWzfwgU
         NA/t74xqZdf24aCLUjKWTGiLvELini4VWemWkyHMDuQz4evVsGNksNuUc/Ra1eqKqdBY
         HGWU/UU1e3u1Pm67vRltj/CVSOruqqys6UHO4xezso83kaJGlZWQ+WY1fH3O4fZLJcUs
         2PJMPSgbolosSq1fS2zuExQb13Go9I+mfY0qm+K8f/f4HXhjAFiQ0u6gcyGuY6kbpLud
         ic2fMlf8DiwtWvLXjy6HRJBVDzc6fBkGSIqm5j+L4Hlym/Y+vgiCUOnW7cjOq2gBl9nU
         Un1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXjWiUla+ynFAvPV7UM7MN4s3WRAgbOBzxUVEQk+iOKB+HQWdTTcia8cr8C98JAk0ayTyPjMvQiG82u@vger.kernel.org
X-Gm-Message-State: AOJu0YwDvmFeVkFFa8CmYOqDIKgGSwicJczo84rxDrmPOTOSZb8lFPr2
	3p6dZFrH8BcyvmID+ld6k8QMF9VGORQPMaMb6bJMfvRjopTgGYQASgcPGtl5CO4=
X-Gm-Gg: ASbGncvs5XiRVKhjV50w3DERsM8yEjogGUmNvN31T9o7PNOXLHapr2sRSIy2ualxolW
	j9QeGh0ajp3GpuW1AHMFzOJk25qtOONep9Lag62dDymAXlsj+MGnGs1estBQDS9HnZmAVUc+YfQ
	FK9ZYTluvaIgZdDV/hAR0kEMOEku94FWlhTYjRIUFhs9YbUn9EHkKJtLZqujQalrflRuz2k5Re6
	E2hrkPpyJxVBjJFzxg3E2weRbh6lXR/D1PL9HjGsL/f8XOGGuuyItroRii14Von90/Y8Njc5+zY
	tesn2W2GCNtgvrpiE66MYKZQKxHMrCqDVS//
X-Google-Smtp-Source: AGHT+IGz2+dh2vxy8nlD1Uzcmc8AaD/p2yo1ruK2qzEoXxjO0xfTBqejpwfhh77FPHjT/ewS7KI7BQ==
X-Received: by 2002:a2e:b888:0:b0:302:4115:190 with SMTP id 38308e7fff4ca-3046850a29amr188778881fa.6.1736252517203;
        Tue, 07 Jan 2025 04:21:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad99d29sm57886811fa.36.2025.01.07.04.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 04:21:55 -0800 (PST)
Date: Tue, 7 Jan 2025 14:21:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Cc: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andersson@kernel.org, mathieu.poirier@linaro.org, 
	konradybcio@kernel.org, quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	quic_viswanat@quicinc.com, quic_srichara@quicinc.com
Subject: Re: [PATCH V3 2/8] dt-bindings: remoteproc: qcom: document hexagon
 based WCSS secure PIL
Message-ID: <pjm5wrxnfutixopeeqzgb6q75z6cilpgfcd2maigqlu4i34mta@2k6trubvrkp2>
References: <20250107101647.2087358-1-quic_gokulsri@quicinc.com>
 <20250107101647.2087358-3-quic_gokulsri@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250107101647.2087358-3-quic_gokulsri@quicinc.com>

On Tue, Jan 07, 2025 at 03:46:41PM +0530, Gokul Sriram Palanisamy wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> Add new binding document for hexagon based WCSS secure PIL remoteproc.
> IPQ5332, IPQ5424 and IPQ9574 follows secure PIL remoteproc.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../remoteproc/qcom,wcss-sec-pil.yaml         | 131 ++++++++++++++++++
>  1 file changed, 131 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,wcss-sec-pil.yaml

> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
> +    remoteproc@d100000 {
> +      compatible = "qcom,ipq5332-wcss-sec-pil";
> +      reg = <0xd100000 0x4040>;
> +      firmware-name = "ath12k/IPQ5332/hw1.0/q6_fw0.mdt";

Nit: .mbn


-- 
With best wishes
Dmitry


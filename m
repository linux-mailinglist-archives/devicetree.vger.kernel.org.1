Return-Path: <devicetree+bounces-141132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2E5A1D84F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 15:27:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DE85161850
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD6C417548;
	Mon, 27 Jan 2025 14:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N/MxKlNW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5DC627468
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 14:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737988035; cv=none; b=PYMljdVtL5+QwRvtqN7kWUVEaCj79ZqPB8PtimJFjphsNVJQnQfko838Jgk+EJ7Eby5EWY8Mv08/IczrTtsH5XoPyFZLk6c/s6pMyi6ZSN66m4ryfkHDrS6eebiJoKD5PvIB4414N9LTPjbOfc/wWLHRmZpUe8sL8ZWB8SdWyZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737988035; c=relaxed/simple;
	bh=v86r3EIlz1+h3GOoj/7Oe+SvuDCoWXauHahA8PSsQ9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oqO0a1kVqOHjPJ58P67nWfFWn4xAsI5VXc/jAOX7nQY/y0dIRumOmEKGpxe77zD3a43iiCgUmb9yfOyjIkYmfI1chPEACXJDt7brUE/CcJjVAcCi87un3oRH5E3psry7/2QiTIgkmFjZ8CfFlvcbueTAcf5Cb2s1BpIvYDReU1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N/MxKlNW; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5401bd6ccadso4769779e87.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 06:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737988031; x=1738592831; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tzvLpRdV8RsEmkfgVe41djDQCfra04Tf73tKiUg1ifQ=;
        b=N/MxKlNWmnaK3MPmZ+WC4ILOhFU3ZNQbxT1HssjhXgIYj0GI1fe8N9HnWvpDdKXJcp
         RQyqjR0RQvjOGLiTGjLD4kfH3cAtXAtKDLaLuwan26G2rP3WIAlXU1haB+QgRPbmGJNq
         sDMNjmi5B26TBfPHRtd95cpthOVsGKBdhLYeWQrYtXLLj7Bndw/RG4ISs2YV2PBTR7uy
         H4OrS9uOQ74sELt5al6DjbXzxu0s+jE/kQUC46w2ZXubIOIlT30aShhTXVDWRiMczVE2
         fLldxi74oQgDIA/+0o16jqCHQKCOP64tVFz6Qv0iJFlome98BlIIyIEqJQkJWh31NFEK
         IOtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737988031; x=1738592831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tzvLpRdV8RsEmkfgVe41djDQCfra04Tf73tKiUg1ifQ=;
        b=Qdyvl7SLXPly+pLKnkhzGOEL8ddR+96E6seWd3SBp5j2f2aF4HeXVbSHJLBPPfORO2
         IX+GfWZEcXtCMcRHgVus/qh9GdtircGXaV+BjcuAPExLKWRCzIGkQJG0B8ZGXMXJRgup
         5Icr9dWN3L7NvbJyW8KeVhq/oaPkNaNzjiN70k5v9r5vmkX1rN2tTq5eyVjQs5GFq806
         s+ozsrN9t4I71xD+c0O9XeoGfilYMdYbRUUQaaUKN9VPtfsYpxjxZCe9JiR42kSyP1ph
         cHJZx4DwV5lWah2S06pKU8iiL6F2Ta7UZkhgP8papxyy7czpV1+YaFYYQM/BUJPtLnkj
         O5Yg==
X-Forwarded-Encrypted: i=1; AJvYcCWjO53SUgQsHTR+rVhZH3fc1dVEc3lsvSk6q8MSxarePZoBbaAJ0ZJ/nPsw1DSzkq6QLOtQbIiascYj@vger.kernel.org
X-Gm-Message-State: AOJu0YzVssM8KFJmhp36jTVSSOm8YcMXVUAsIp+UscAgi9f+/tUGokMW
	cDnn6LDQGJQPl424QFlPtmPcy062EbztZh89Rp0Di1Ar60KMQed0SpWh85pn0L0=
X-Gm-Gg: ASbGnctyFUzsZhi+eTnCXDN398HILcioVHCcbkfWgt6YLZHE6r5W+oPng/N21/hNokg
	fP3RRV0ZXwcLw9OsRK/UBq1lTANIqggu5HYrQsn5rXOnBexaDESSpfM5Cs7OL2vx5YwXMh1ntSS
	IsrTds8TJS7dNKrSiMM9w0NkPR+jEbrg0d+eZFnoPCGRtfxFeI94pGGzi77fBfJmst4NpJ9TMKC
	LFAINQhGO+ybkK1nRL54+FPjjdMOvVx0NJGIdVS/lk1iukqW9L3JyYQcPSUE91ZFADzIP4s5Vco
	DtA7Q324iURGtzwdmPsbc9FbkvbFzsRYL7Y5kAwK5yC0EBHQCH36rjQdTQyr
X-Google-Smtp-Source: AGHT+IE7G8wjtK979b4O6Nuj0hnM9/BLca8MZ6bqkJGxgYjf9X4Ezr5Qy4KlAM4toJWld4WHK+gA0Q==
X-Received: by 2002:a05:6512:b24:b0:540:2a92:7daa with SMTP id 2adb3069b0e04-5439c282032mr13583417e87.42.1737988030790;
        Mon, 27 Jan 2025 06:27:10 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c8368362sm1297614e87.124.2025.01.27.06.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 06:27:09 -0800 (PST)
Date: Mon, 27 Jan 2025 16:27:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Viken Dadhaniya <quic_vdadhani@quicinc.com>, andi.shyti@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.or, andersson@kernel.org, 
	konradybcio@kernel.org, johan+linaro@kernel.org, dianders@chromium.org, 
	agross@kernel.org, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-spi@vger.kernel.org, quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
Subject: Re: [PATCH v2 4/8] dt-bindings: serial: Add support for selecting
 data transfer mode
Message-ID: <dudqd2y42wy6iq2k73aphd5ol4mtq7z4c54zhd27rl745rrw5x@p3oummf2jke7>
References: <20250124105309.295769-1-quic_vdadhani@quicinc.com>
 <20250124105309.295769-5-quic_vdadhani@quicinc.com>
 <10060d39-87a4-4565-a2a6-80c93ac2266a@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10060d39-87a4-4565-a2a6-80c93ac2266a@kernel.org>

On Mon, Jan 27, 2025 at 08:02:12AM +0100, Krzysztof Kozlowski wrote:
> On 24/01/2025 11:53, Viken Dadhaniya wrote:
> > Data transfer mode is fixed by TrustZone (TZ), which currently restricts
> > developers from modifying the transfer mode from the APPS side.
> > 
> > Document the 'qcom,xfer-mode' properties to select the data transfer mode,
> > either GPI DMA (Generic Packet Interface) or non-GPI mode (PIO/CPU DMA).
> > 
> > UART controller can operate in one of two modes based on the
> > 'qcom,xfer-mode' property, and the firmware is loaded accordingly.
> > 
> > Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> > Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> > Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> > ---
> > 
> > v1 -> v2:
> > 
> > - Drop 'qcom,load-firmware' property and add 'firmware-name' property in
> >   qup common driver.
> > - Update commit log.
> > 
> > v1 Link: https://lore.kernel.org/linux-kernel/20241204150326.1470749-4-quic_vdadhani@quicinc.com/
> > ---
> > ---
> >  .../devicetree/bindings/serial/qcom,serial-geni-qcom.yaml | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml b/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
> > index dd33794b3534..383773b32e47 100644
> > --- a/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
> > +++ b/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
> > @@ -56,6 +56,13 @@ properties:
> >    reg:
> >      maxItems: 1
> >  
> > +  qcom,xfer-mode:
> > +    description: Set the value to 1 for non-GPI (FIFO/CPU DMA) mode and 3 for GPI DMA mode.
> > +      The default mode is FIFO.
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [1, 3]
> > +
> > +
> 
> Just one blank line, but anyway, this property should not be in three
> places. Do you really expect that each of serial engines within one
> GeniQUP will be configured differently by TZ?

Yes, each SE is configured separately and it's quite frequent when
different SEs have different DMA configuration.

-- 
With best wishes
Dmitry


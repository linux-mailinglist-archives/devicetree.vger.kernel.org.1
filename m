Return-Path: <devicetree+bounces-108240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02816992177
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 22:56:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04F011C203BB
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 20:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE8D518A94E;
	Sun,  6 Oct 2024 20:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nz/QpsOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF6416EB56
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 20:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728248167; cv=none; b=cbmj6W9G2clOoQdDTJ0ZukzHzBKRZGeg/Nil3clqeNAmYhlvxb/NMXnNsmxSopUVDVjtZq4RucM/hm6GgOikqB1T+OzdkodjtzUL27SqkqFyNx2yg2Dn3XH4qWYJBM6zWbHjNnSo3lGZeistJaSK0ZA0ZeixlQm890bV3fUoPG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728248167; c=relaxed/simple;
	bh=jiFpyTdZ+o1J+cBAXzVZD4nkRrWgrG6mHlLauSbhxd0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GeICfPdZOYZZzqhaPvu/pb9cr9gHSomp8UfqQW+dbo3apXLDc6G5PvLnP9qdP0/Zp1pLvq5CSfdWEMxkjELkCfFsPq6/Tuk0NWLLmlHwu6hHYRmwxggkj6oqL6O7vLvbUxvXkG7HTSAMfAgd9kH2zAH27TFhPSRGTFzzrM/NpCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nz/QpsOE; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2faccada15bso34411251fa.3
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 13:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728248164; x=1728852964; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SM7DgNpNIL7c0svz2U898QeDIrjZkM596M9Pbx8v2ZY=;
        b=Nz/QpsOEExZPDrG2kt1EcZq6n2Pp/PMhNjl5RB+/l+AgdQefCqAIlHQdhSY+9/rTnx
         L+VVLynsfVaH3NeiIRCHcwFPs0Lss7fCBRERdS2npSKEytqoZ3Nrcva0JmyToTTiCBGE
         bLsiOGjpb8Z/JlOb42MGnWYxo2pzyrwior08bDvqE1PlRDmOhMWBKAwBVJrJ93siHkEk
         BME9UCkHncNEk5DH402EtwfCfiDa/6NTiEGPmVGMDRXTtmcGydexsi8gi3T8CSBRQUVi
         WlyzBIIXtczvEs2/TI8I4IxczFC/pnqiFf8A0oow3tdS7OtP6uGAGDjLimrfhn4fOD/M
         FsLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728248164; x=1728852964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SM7DgNpNIL7c0svz2U898QeDIrjZkM596M9Pbx8v2ZY=;
        b=JemN3I7a8ZxeYLY2yJGS3Is/8OzDe69qM3OW8NJ9wlG06xfC66M1gSWIMXcYYy/UOH
         BtqkeHHCdNm0wkteh93CbrEkfkwbvajpWN+dOXDdR/UKSylQNzwfpm4M6iSW10hIOhbV
         eB1b69h0s85lFp5JLI6yiXqQf46w72XNw/D4O45tghOKzuqW0cSXiCal2h53Sym081CK
         Zy6esVFBH6MFpoLL2ykoipFYnPx2c8OCJ2uYPpFsskY+c0+Ddn/7boOVtRW34JJpcrR4
         fpzOWypv7hpSV/hzIqK512iMUDprfsyTDijU0fNOI1GsfII+F9cyNTKPwwsp7BoetFrk
         QWIw==
X-Forwarded-Encrypted: i=1; AJvYcCW/yHw2wOQB5C7wzLuSMXXym3IQqY2190Jop0MnNrfGdc2Iqsfc1fkWap0Vx3beTPO34pNz8Hn7Hlt+@vger.kernel.org
X-Gm-Message-State: AOJu0YwWIwgkSqkK6urRMLQ3Z05sfFnDga8hg9tFYbPBOTPvcqV+RrIi
	knd5/9f4KFX9xlclpzzY0QuhZMBjNDNxYFNeoxpCCgrZ8w0e1DCmDLM1IaEW/X0=
X-Google-Smtp-Source: AGHT+IGzsqnMOSj1/ufudmrnnAIigKHHXKQOr+ikBVGert6uQzR5jB/vVWo0xMp7pxWXV0ud2NhqDg==
X-Received: by 2002:a2e:a58a:0:b0:2fa:cb44:7bd4 with SMTP id 38308e7fff4ca-2faf3c01131mr43192421fa.5.1728248164302;
        Sun, 06 Oct 2024 13:56:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2faf9ab14f7sm6254161fa.17.2024.10.06.13.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 13:56:03 -0700 (PDT)
Date: Sun, 6 Oct 2024 23:56:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_msavaliy@quicinc.com, 
	quic_anupkulk@quicinc.com
Subject: Re: [RESEND PATCH v2] arm64: dts: qcom: sa8775p: Populate additional
 UART DT nodes
Message-ID: <uk3zgyee62vrkcwtujkuw754wacvullmsjnimlqhmmbjit24rm@sqcrmbn7ngsg>
References: <20240930085533.17119-1-quic_vdadhani@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240930085533.17119-1-quic_vdadhani@quicinc.com>

On Mon, Sep 30, 2024 at 02:25:33PM GMT, Viken Dadhaniya wrote:
> Currently, UART configuration is populated for few
> SEs(Serial engine) only in sa8775p DTSI file.
> 
> Populate UART configurations of remaining SEs for sa8775p soc.

I think this is a long standing tradition of adding UART configuration
only to those nodes that actually will be used for UART on one or
another device. Is this the case for all these UART nodes?

> 
> Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> ---
> v1 -> v2:
> 
> - Modifed commit log as requested by Krzysztof.
> - Added co-developed-by tag.
> 
> v1 Link: https://lore.kernel.org/linux-arm-msm/98e7dc28-4413-4247-bad1-98b529f6d62d@kernel.org/T/
> ---
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 231 ++++++++++++++++++++++++++
>  1 file changed, 231 insertions(+)
> 

-- 
With best wishes
Dmitry


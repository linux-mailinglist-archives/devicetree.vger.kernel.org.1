Return-Path: <devicetree+bounces-248065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2749ECCE8A3
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 06:35:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E656B3038980
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 05:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087B12C1581;
	Fri, 19 Dec 2025 05:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bs9p6BI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E59F273D84
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766122524; cv=none; b=jbAs9Ig3FhEl7GmARir9dbKxdl7ocO46S2M8LMVcIpm87LkOofZlNutbHV3ScHTY8v6pdQ0Bb+Eo7ZS4dAdmeKkjm0tUHlwnbSjpr+Diee8cSg9iEB8yFhmOWVlS9bSVG+xrAStZ3nxG5TU1iwlQ1+xSDZlUj5HCW5DUrr0CG20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766122524; c=relaxed/simple;
	bh=ZhvazSte91iU+jx4QdnhFUqokDPmeF886UFAsqdeOG8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OX0rtBhVlp56/ZgNgMX6JhK7fzCdEGFpi8Vj6InA1nwHzvFxRRk8QKDr/HR28Hs56FLee/dEibmxcDTFG8/LPQ8UzoCAHQz3O7jL3t8zynP9rOAVYXiheQ9FMj6TsWZ3NZKqNANDibkGbyf4w7h9gwnD+Fc50h7/zTbWfmBV74g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bs9p6BI7; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-bc17d39ccd2so847524a12.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 21:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766122523; x=1766727323; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rMTTCuooxMDzb9iO4B2W3oktqAuVxYafRzDCiEnReDQ=;
        b=bs9p6BI7bmrcIORWo/ouvVkwMR2MJQw79BRm4iUgC8T1NeTqSeo+SIADqNiNXFRdBy
         xpFumRz9sK7PWNGUEHAGHUx7DUyiU79cCqzGvukkli+WKMq08QlsDDf4E/uoWwMsoibF
         y/OxEkomcR0WUXCfg7uCZ0RiR2knOXmgWWBzqtRaU2AOYYSCHWQT85fZFxbFuu5ICWmo
         GTHlHqXNFPE7lseUwS7pbfyIcSDCu2NQduswrqexxUVDYQ6JrJCxzQc13bW8WIsTbgig
         fSiCHh5BHSWQwvBsZoHuaPDFJxCfEOJxCVSyTZUpR4LN+QGxXyrL7fPpfDqBj64gCmSn
         e9ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766122523; x=1766727323;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rMTTCuooxMDzb9iO4B2W3oktqAuVxYafRzDCiEnReDQ=;
        b=aNAXLpkWPGHoawttJ3Q59IisYrCNbgvl2+1Ma8WKBbmp6JsUfPqPLuWCBs48mEHJDZ
         6CtB8ka4b5FysId7SfmH4caCuWn8lqi2QzJo5fXHxidPg7LZ1Dh5PmmcLyqlpdHqTep1
         FMmyRghaWRVYrSXKfhmw0sZcJ1QDeh9zMORNABAWefVzEiIm8x9xdnlQ0maTdmmUJpJB
         lvlY9HbN6LATXAa9uWI8qknhfqSV/9+zXy5Z+NNt/x3kk46Fp3o/7VC7UBuwraM4Wc70
         J4tF5HZW97vpNcvHW6h/z389a0qrOf+12JFl2UGFxtdHHlNU43MsV8O0zE4J22pzxVlC
         /ogg==
X-Forwarded-Encrypted: i=1; AJvYcCXGm/p52jX0nlH0afBOFBKrt0ciB03/gLau7QxH4m6yKlqO32ymJyWTLEzbroN/DQSKr4RhROUoodf3@vger.kernel.org
X-Gm-Message-State: AOJu0YyTER04IdZLb9iRV4IVVqwkoXGP5ACoj1Wa6sO01a7aowlaptDk
	ZNdXRtqJ/48MU9Kf/+uF2xRakv6qnBZsIVbCrNX9fO8X86oNM6qP5zqm
X-Gm-Gg: AY/fxX6AwoOHO1AxochKoU39O1d4UwiqaFKbAu0dKlPsNeryO0eNMsb2shCs2NkNMHh
	hiPcTPlZCv0TDSIrLYu9kykBZRokYJrrNxgUb3vuuFDixAvFpj+NaC5CLAYobJVubgoOb6Po0qz
	LeAc1Goud67IRHwhyt9rjbvXEQphOrfxdzQbXo8+Ik+ShakO7H15vQrLIvVIDFJiW37ENBacOf2
	LQtIhDdOW3LN21m2ebRQJyfOWWtpl63EY+D1+kcZJrVXrLWNmXsH1Hio8sA1Ynkm2zAmrKaWUTx
	4Nz/+Uvbzo/k3gjPmd+bRCojsXvXNE9tv2X+jAvOmeW8c61NpLS/YU2bV+XR+y8rjf5iJgBrS/7
	IE7oi+QUdyKxvXaQc1zIPCBpuwMRTKqYTuGfciDf8JpxSG4xqSJF/nIuDAJF9PBKiWFikRJateS
	37c8tCyA+aNdoVa3oWRhkuK4l1ldfMuecA97MupxgNQCLjD/y0rk/15OjbbG/9Z4o=
X-Google-Smtp-Source: AGHT+IEckbGoyBwvIpN7+hsyYKZeqS+PjBBpgEAIEIby7FqmlE1JAmvvNFeTVYuKm8/epNSNg9/pVA==
X-Received: by 2002:a05:7023:d03:b0:11b:9e5e:1a40 with SMTP id a92af1059eb24-121722ab330mr2043333c88.15.1766122522555;
        Thu, 18 Dec 2025 21:35:22 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:c932:b7cf:9dde:f662])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217243bbe3sm4998600c88.0.2025.12.18.21.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 21:35:22 -0800 (PST)
Date: Thu, 18 Dec 2025 21:35:19 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: david@ixit.cz
Cc: Jonathan Corbet <corbet@lwn.net>, Jiri Kosina <jikos@kernel.org>, 
	Benjamin Tissoires <bentiss@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Casey Connolly <casey.connolly@linaro.org>, Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>, 
	linux-input@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
	Gergo Koteles <soyer@irl.hu>
Subject: Re: [PATCH v8 1/2] Input: add ABS_SND_PROFILE
Message-ID: <ipazh76ewhshd3rtgjr4oz45zaqqmsqfdstu6nbxo3ctrd2x7k@wpd3tyywk5ay>
References: <20251113-op6-tri-state-v8-0-54073f3874bc@ixit.cz>
 <20251113-op6-tri-state-v8-1-54073f3874bc@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251113-op6-tri-state-v8-1-54073f3874bc@ixit.cz>

On Thu, Nov 13, 2025 at 05:02:58PM +0100, David Heidelberg via B4 Relay wrote:
> From: Gergo Koteles <soyer@irl.hu>
> 
> ABS_SND_PROFILE used to describe the state of a multi-value sound profile
> switch. This will be used for the alert-slider on OnePlus phones or other
> phones.
> 
> Profile values added as SND_PROFLE_(SILENT|VIBRATE|RING) identifiers
> to input-event-codes.h so they can be used from DTS.
> 
> Signed-off-by: Gergo Koteles <soyer@irl.hu>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Tested-by: Guido Günther <agx@sigxcpu.org> # oneplus,fajita & oneplus,enchilada
> Reviewed-by: Guido Günther <agx@sigxcpu.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>

Applied, thank you.

-- 
Dmitry


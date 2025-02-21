Return-Path: <devicetree+bounces-149433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C46A3F7C8
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:54:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B8B83B9B29
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 14:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 079B021019C;
	Fri, 21 Feb 2025 14:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ePu0mX4u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155E820F09A
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 14:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740149523; cv=none; b=RL1CE7gi+UlAt/p3WEcy588ReRUlVcekWraR3wksYLcPGRdCLPqvqEyc6uWeAyVIXdZ/iC2lGyUDc+361Rs+bXq21hSg/zbYPEs3d7KN9euVKAjFIt5ocJQu/2Kf0yFiDoODTGOPa092+YOTwtZhy/S7BzsopxH2/iv1U4X7TKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740149523; c=relaxed/simple;
	bh=Q83QYgMg9BNvYcSvd+0OOQUvMk1vcqMy7DCAkX3vSsA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TLSUi6H/aruqkf+c84UaPbq/m3bEjQqv5VYoO+AG5E2e73eEmXmTArGTCwc8aeHspvha6KbmFpZb8wuOc9VBJp5B6C+XR570Eb4FDghVGOQrDmeGe/VwC0+GU1KbuN+WylFHIe6jRL48amowfXPqyXi5q+YQuFIn3TEdWtfps6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ePu0mX4u; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-546202d633dso2303099e87.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 06:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740149520; x=1740754320; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HErEzyWkwZ0RWbaKsVAHI18mvYGkCDcx4TEVCFIo6Ww=;
        b=ePu0mX4uLCR9UaSHS0mKe82zg3BoMIoOtlqJ0Yo7TDSPa2+uI5PTb8qUsr1GatkaDi
         5O/HQtVHKKTrpfNOew6ZpIezyOZumtkpSVeXJ3V0b47bRQrWZVrUZqTSBbIGwQRdBjzM
         fmOLSt3KXeEkk4+05Pkn+AP4feDw2KNNOjcW9aEX8rOxJbZF3sfVhep7pY8RB84aCkPA
         mIx9xU0Q9373EpvJalD5PMQ6X6QdQTaH6A96vJsiHZKKunHjop9ULflDMjG1LgOSvRdW
         40PutE98+etUI4QLKj/1zR/IH21MDfgpQip4A1Km2jxemkX36pWU0+CaJHXnyUAt3K8O
         VvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740149520; x=1740754320;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HErEzyWkwZ0RWbaKsVAHI18mvYGkCDcx4TEVCFIo6Ww=;
        b=PeDufOk9HIZp2bhXkP/rLpbSNpeP4yMNY/LWhOhbgUCd2xEzp6eNTD/TB5sMcep9D+
         Xj5e7ogR1HlqV4MoJHyMKQo4CwW9R2jAMZccKJxi9zDCx2ZcBRXLkq1UPej8e1gnA2B2
         BgnKrJSTRshuYYzZDFmc5oWdorWl0zPxB3o0l6L1a7XuuV6Pov4DbIjYrk8iUvqsGW7p
         bab9Ef9aicWLCY2zE1KhGd1qLKfDdgmmhNjtbFFswcIzBUBBu/GFzAVvEe4BL3KHb4qd
         ArlyitzyPDRQOX51uHeGM3FXRrpG5RPh7O0xa+smclPP+YBdXeqPRDvh0QC/QN8C2SVW
         qeVg==
X-Forwarded-Encrypted: i=1; AJvYcCXU1vwbcQY3+MYLpFxmCthYs+XWichtjzqbWGKRQ/CZiVWvZMGApS5pIJ5IMKGwJCIaVH5MaveiSvR5@vger.kernel.org
X-Gm-Message-State: AOJu0YwNDOOLRKXmkMdiwFMXdq0TSqKTiKEH9uCRZ48EI9OQkmkN7cNA
	+zjBw9p7sv7CBjE5N4GSe01IfeEKR8XpmmQtyTTz73ddUir6f+aA2kyeZaINWAtWh9YohJR+xyj
	N
X-Gm-Gg: ASbGnctsC0I22sxxpSQZSCLuJI6CKf1vPqO3Xl+nkzXETDJmpMxlRKd20inwyje2ISA
	rBaicMZaMRSZecJeup5ufbSUtq24h7IO0bZdfbuXhVJe5lj7TGLThZfnE/Y8YIV0j3A8hiZJhFN
	rtKuglGgTdTrYRyB1A18atShsYEs+I5EWmwo9AQWsT4PpRTwh7Pgb23upF32ziUdcBW4vgs9DQ2
	rGuUKbz/uUIsLyWq6LxO1vXwHvbpOr2TAOuRwT/Fj5uZBQL4nSFRWQ+OiLSKv8Sw4iEfmwYwarZ
	pvGzflv+eVkcxIk0RbuPTC+dNW7XGl8qPNcQs5BsazE1wZghr++PCWltWPLjYswnShA+wS4/61T
	UXTEYVA==
X-Google-Smtp-Source: AGHT+IFNLcfJ7gKB3ypJv7fmqVunoNkPKowHqZRPbtqkqs0FOKNliqghvaJdULQs4XtpGOsuoHAisA==
X-Received: by 2002:a05:6512:3e1b:b0:545:1d13:c063 with SMTP id 2adb3069b0e04-54838ef088fmr1338727e87.14.1740149520104;
        Fri, 21 Feb 2025 06:52:00 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545317a7525sm2043942e87.13.2025.02.21.06.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 06:51:58 -0800 (PST)
Date: Fri, 21 Feb 2025 16:51:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: amitk@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, quic_srichara@quicinc.com, 
	robh@kernel.org, thara.gopinath@gmail.com
Subject: Re: [PATCH v4 4/5] thermal: qcom: tsens: Add support for IPQ5018
 tsens
Message-ID: <5quz7ulnxvhsafmjxw2ktwfrkqjcnzeao2msfwdhltoz6im3c2@dh2dbczl2qkn>
References: <hmhagxzvumlmzvnbw533ebzilbvknexarsnxjfwi4djq3eabkc@efferfxbxkt3>
 <DS7PR19MB88835F4120912ED00626709B9DC72@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB88835F4120912ED00626709B9DC72@DS7PR19MB8883.namprd19.prod.outlook.com>

On Fri, Feb 21, 2025 at 06:41:44PM +0400, George Moussalem wrote:
> I've just checked the downstream dts and driver, it contains 5 sensors,
> but only 4 are used. So I propose we leave the number of sensors to 5 and
> adjust the commit message. Thoughts?

SGTM

-- 
With best wishes
Dmitry


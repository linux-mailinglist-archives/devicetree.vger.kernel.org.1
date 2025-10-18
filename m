Return-Path: <devicetree+bounces-228347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E59EBBEC719
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 06:22:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B91E1AA2684
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 04:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16249286405;
	Sat, 18 Oct 2025 04:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f5mWOdgv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8450026AA91
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 04:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760761368; cv=none; b=OLXWzupW3epwG8pzZlMj2ALEjuEtk2Bc9TgcKjuHHf2031Sp4pM6onnIGwBogY5oGEzH8qL943K68YVXRk49Fu4+HTuRITU8xOLDBSGSPO0Euk6Ouf3SCxEXHaTCx8JkPGzSj0U07tMfw/KTV8lQUQaD+Y7Vwf0+/NL8qC23AVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760761368; c=relaxed/simple;
	bh=exZpVuWOIBxlqb5BFOJUqBQoP1y1IaWov30sQCj+Y2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ptsta2KVEWVKGyMpwo5X7BMLYsEbvbLvJy76FTtIkCkrs86OfWV0G19ufQTeCUjIVW+oTElwotOgSKJUQBQ0BTRI7BtgovfL4kNtlpNXK3lKaO1fho2B2C+lFZ3An4gveSaiB5gZmf1NG1bxh4XSVVHfhNRRW03Ozr3OpYYNgPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f5mWOdgv; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b6329b6e3b0so2649052a12.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 21:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760761366; x=1761366166; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uZFnDDXwZoBpjbUJskJ8yzMDCPN1YwW/10NX6AdoJr4=;
        b=f5mWOdgvO1R5dFNH81x31/A1rT99kQwDD1Wd+GefQHRxFLnPrgmVJ3DKxxQSt7R9pe
         cqpnzNaksnKfIjDqOHf0fiN72RDRmO6MidnM1tDnqkbHYkGLZl+tvMr4sNvqFLt496ot
         3vDROh+fEjUOlNro8uq0HnFzLTl1ND64yzWiYM5DqOlPmut9jCGO2zhv3GAtUPW9af0D
         pCRnAmqTKumZcwCIZVgRvagbeUuvCT/GXXcr94UMXX0Tf2ubovkXi6689cDFcOyI9xA1
         u9XJY8uvF+1bb2Uuf3PoqzAHbh6HCNm00i7/cge1fyaO0Wgr55IR416yJCUNnK1kXqcE
         Szdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760761366; x=1761366166;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uZFnDDXwZoBpjbUJskJ8yzMDCPN1YwW/10NX6AdoJr4=;
        b=AT1ZLHG1c1fYBLiaCNcCNwlhwXBEUevTYN3/Syu9yBcl7FXR1PZHxmhCdAG6gH6ciW
         7GbFa201XbA+Wz+l1sIHSlvIuf4+KYAYjY5CE4jjY4OYKFp0EPxj0I0J9smnVYcb+H23
         bK2ANRB4U5RNXPZcDOnkLD0+RJeDcX8tfASmVUtXjsusfEqUKH8tP5roZJNWDI/idWFY
         DEcTYmPezzHEdKBRXsAfx7/IDhgagshYjPpHlzTESQ9TqAB9xaLwI1sT3lBmUZlEoi/r
         vGFBT6aE18O654QbmHCnFb6ggnvdwCp1erR6bmakQ0ljV06LSHJ4fvGjR6HWZPgdaUc6
         0+3w==
X-Forwarded-Encrypted: i=1; AJvYcCV54K9nsxqIamlVngmL9SP9Znaet5Sf1NXG2PxJ/HiR6/JRAZfXesrhds8ClLgMpme6y1wlVIRH7fIr@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd8Hekqu832yNDtRsr4KIo64rcK0P2CwefbJ1vtEwJoMSpcEwB
	hTdK+lebaMNmSNozxFMgGNa8oesXXybN+H9uBMn5FiJqj7175FkEiPZZ
X-Gm-Gg: ASbGncs9a7vuCCye9/s/KlozcF29IjNBxSzouoHO1VNyS3wZsQzwLJlEJjyiG3c7V9t
	qkpOn+WbTeJS474CerrDfu35TsAlOFORcFsXMBbjlHBG3DeQrIxbu0/A5nfTR16ip9WQ+uGqdH7
	B/m3vfUUdnVmxDD/O+m8FFRGn4mVmA4j8Aardxxrf4+QlAPqvQP9Yvi5LPR8WO9iRZ+NToy0eJM
	QJ/PQq1Yle+QXEveQLw3zKiz8WBozZ8F2/a7+iG/2YjM3UUVxjHWviQROtk6kllQh1OvGIBQj6P
	+4FWMXnA75FMRMlwLJsZI1JjGSHoye942x/81ou9OwB8ZkX3REiaZeBgjxYblWCGvaNnH3RGuOn
	U/eaoj00PMIdl3X5r2Fdi1qTV5+75DEVTc7BVU42M5xtoY/gi7trJQQUfx8Fbp0mz1FVmnAp7Qn
	LEyq5hHctvglMph3f0a+Z/dN3862adPTeV1D+CS0T2
X-Google-Smtp-Source: AGHT+IE2+OLcWPAcD+e3Cof7+/cYK6cBgEAdvfBAMWtRu6sBlIeGSM3216zL5aw1nuX6hNOb13kO2g==
X-Received: by 2002:a17:903:234d:b0:267:44e6:11d6 with SMTP id d9443c01a7336-290c66d9d55mr75380665ad.6.1760761365765;
        Fri, 17 Oct 2025 21:22:45 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:5e2d:c6df:afce:809b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292471d5c0bsm11885895ad.69.2025.10.17.21.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 21:22:45 -0700 (PDT)
Date: Fri, 17 Oct 2025 21:22:42 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)..." <linux-input@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/2] dt-bindings: touchscreen: rename
 maxim,max11801.yaml to trivial-touch.yaml
Message-ID: <syo4wuohnpfcinq2pxxif5yig45k6pszdhmu4fgxrkg6q4xn7g@dyfy7k3wfhg7>
References: <20250926184720.391335-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250926184720.391335-1-Frank.Li@nxp.com>

On Fri, Sep 26, 2025 at 02:47:11PM -0400, Frank Li wrote:
> Rename maxim,max11801.yaml to trivial-touch.yaml for simple i2c touch
> controller with one interrupt and common touch properties.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied, thank you.

-- 
Dmitry


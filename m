Return-Path: <devicetree+bounces-91539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DBB949C2A
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 01:14:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C130028614F
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 23:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A1E1175D56;
	Tue,  6 Aug 2024 23:12:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BECE176AA5
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 23:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722985933; cv=none; b=t2auDseGAkS0BS44dEmHOkl3zzVn8oVadv9h6/TyaX80MYOS1/fyO7wzjkNCYaTnu7Id08MkuWWn7WUstQAzVaNe/YEPxm29mSGsse9CNZNhF0Lqafr7/fZf46+BtdxJk6XHylIsV1JjyZclmVjkBvp3JITDO498dWVz+Qosn4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722985933; c=relaxed/simple;
	bh=DMq2kJlkEc3xJteWGg2lfmyP+Xvv7Nd115bgNW7YIno=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=su4hnG+a4CqnX5eebT/R6RWpmSfLoDwE2uS8Jf+f8mDB/lmthgTkcjk67Gxo3JC+96bUqX1BSNE3dcGZoTvOV0+f6Q7ZlAx85ka1dcoz/H/uy7LFq6JLWhQjZiVxlpzjymcElz7iTmH5NQH1m3IQqBnY3ch8E0a1Ppbhfxpjb4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1fc49c0aaffso10410585ad.3
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 16:12:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722985931; x=1723590731;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eHvOUHVF484pqpTWXJ5WHdMzkUytQAD/PfLI3ruJQWY=;
        b=NJrHTtbYkAsu5mlmCZG/ZcrwmnaRSOpWONGc69kUM1+3JZt2/+U5a3OuGAUJPV7qr1
         fgoyal2HybttqnHFYTJWN0D5SlKmA7bD6cdRnkCQ6JmuMy4M8JFXcyfR3nKrqxzr0LYu
         MFO+3HLXIfgXBC5Vwm0TCGDQTXA0o72pqoq+IJ7iQEpNKQ99rQmCxOo2mm5M/MhSrDBw
         HUyk38GRt7ExQfC/q74/c+CcIGcYeDGI+S/r/3Byzt9fQxhvHc4dyxzS9hpgWGmd2vY4
         lN0VuNDUvF5w6ZTCnbTTaHm44RZvJRkzMgVwZB/StKByyZ3M4PLRvj8+WQs1pfkcGhcO
         GTsw==
X-Forwarded-Encrypted: i=1; AJvYcCWHgoXxSiHKijL4HlcMqyWQ++ZXUWqWhXFtvZcVatyNzOeA3pUIu6lGeVlIcC+H0o4VKySLuQA95dk+63Th1XZSnunKgp3tEK54GQ==
X-Gm-Message-State: AOJu0YwRW2ipv0c0YTvTZz6QXYCgs+/lECDByLKUoVUTkf52RNLFsF2/
	48mhaB0NFb/k4DR85I/ZSI7XmbNRqws1SNJfwHSjJfNzJbxlGqXoEyvPrS4pI20=
X-Google-Smtp-Source: AGHT+IF2XISxsT4sWuNj0HiPdnmOuYV/EBGKNkRQQ9vxykYCJEvdbZRwIein/pB/lPLA/oDfnX4Bdw==
X-Received: by 2002:a17:903:2442:b0:1fd:78dd:8578 with SMTP id d9443c01a7336-1ff574e27femr154538155ad.55.1722985931220;
        Tue, 06 Aug 2024 16:12:11 -0700 (PDT)
Received: from localhost ([71.212.170.185])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff59058512sm92713685ad.135.2024.08.06.16.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 16:12:10 -0700 (PDT)
From: Kevin Hilman <khilman@kernel.org>
To: =?utf-8?Q?Th=C3=A9o?= Lebrun <theo.lebrun@bootlin.com>, Roger Quadros
 <rogerq@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob
 Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter
 Chen <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>, Mathias
 Nyman <mathias.nyman@intel.com>, Nishanth
 Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo
 <kristo@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?Q?Gr=C3=A9gory?= Clement <gregory.clement@bootlin.com>, Thomas
 Petazzoni
 <thomas.petazzoni@bootlin.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v5 00/12] Fix USB suspend on TI J7200 (cdns3-ti, cdns3,
 xhci)
In-Reply-To: <D37UREKS0WIL.194M8MD5LEN2T@bootlin.com>
References: <20240726-s2r-cdns-v5-0-8664bfb032ac@bootlin.com>
 <37760e53-4e0d-4275-8497-1b51dcf72d5a@kernel.org>
 <D37UREKS0WIL.194M8MD5LEN2T@bootlin.com>
Date: Tue, 06 Aug 2024 16:12:09 -0700
Message-ID: <7h7cctw8ja.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Th=C3=A9o Lebrun <theo.lebrun@bootlin.com> writes:

[...]

> Some TI platforms cannot tell, before going to suspend, if their USB
> controller will reset. Suspend behavior is defined by (at least) two
> features:
>
>  - Power domains. See arch/arm64/boot/dts/ti/k3-j7200-main.dtsi:
>
>    usbss0: cdns-usb@4104000 {
>       compatible =3D "ti,j7200-usb", "ti,j721e-usb";
>       // ...
>       power-domains =3D <&k3_pds 288 TI_SCI_PD_EXCLUSIVE>;
>       // ...
>    };
>
>    This `power-domains` property implies that even s2idle will reset
>    the controller.

minor but important clarification: not *will* reset, but *might* reset the =
controller.

Kevin


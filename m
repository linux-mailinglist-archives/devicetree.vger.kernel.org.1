Return-Path: <devicetree+bounces-255955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A1DD2EC7B
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:32:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C1593035A9A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:31:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E07B356A3F;
	Fri, 16 Jan 2026 09:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bHrPETeu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C89356A18
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768555882; cv=none; b=Kr/vqp/rZVHCBZJMmuhHidmMTzbJWjI+Hrs3Fxe7LB1X9YvY8dBMZjPxh/S5eLlq+ZTFbOoYoT6xNl5Z4J4sTzWnV4o3L5pt2KCkhYQjPfmHmQZxBVxooo5S9ak7IqRdlVIyIkPwodHJya6cvheBDg1xHZEWix/irt630dgXF14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768555882; c=relaxed/simple;
	bh=vDwziWtkQVPoVaREHacSSM1aN/WzACohKb157keq24s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ivh1Y0zuNR/rYmo82yvd0YxCJOTXx2ZEh7V/hcSiNHSRj/7Evmgqzm876z6MPWHGKzGiQx0OfJyRe0r6s5wpc2xprha0GMAJxG2VPdCQ/lVo4O/VzZFablWMYhjcJKqBMndjiiCmnZ9lTBVSiIfOub7SMikMAJbMoaJxvZJ6eHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bHrPETeu; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2ac3d5ab81bso2057801eec.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768555880; x=1769160680; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kE97FQFptYMK9vhs3k1ZWJYJHvuV6FL1bLt8wQQXeXk=;
        b=bHrPETeuveKIMlrM0Aq9drli6Ownj/9vcZFTQAbJq2D2NsXk0GP+oCIkaR/93GnUiw
         DgoJnEa0OxPSCVy1C5+8QfzBJkLTVCInI/vomZYo2ex1kGIe0qfdH+M6lDgrBPu/UyJu
         Y+vFPxsv/y0iaY7wPJQ8QCmi6hyCtRxgcrkBq9uPTY8Kr0OIFTjRzFZffk2L8jU2hbo6
         wA6knTzv3AYZR54qU6pYkXYSbfL7Z6XRRgne2hdVpRTDUlVdrRycCSyUq2H8wlTyk0hO
         ONiKFFZQxjRo9AZcugdjI/Y13cRqAMzG53v//k21nIyAqEDzaM6P1FAxMSo9gUCvjEme
         c9GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768555880; x=1769160680;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kE97FQFptYMK9vhs3k1ZWJYJHvuV6FL1bLt8wQQXeXk=;
        b=ABuFI28Q3kgwyKgl3Y7KgR7D4c3pkaBwdJkBXNw5SVFC/vTlNCxVqLd/0dUTTu3jos
         SFHyMK+iCbQGJROF4Om9CDsbGQjUTgMHv3fvipU1JSZHEjDZq8QVQOjubxqYOoq8mrrk
         lr4iQXZEc7bqIbjB/5vNa4BIw9G+G2Krn1jTMWS+MzxYoZch50euGBaiHvA9qr4+DYIE
         HmZTeZppEONIf/71KrorcOqljSwXdHGYiXXJbCRUK1nWLXGgIRHbnRNNArTfwosUDmtq
         pyT8M/U8daXDAujRPoX1IwKhYr39WaJbGTU8N3/6Zv4yfUSHN76lUdnL1V8QL2zLrh5M
         nPuw==
X-Forwarded-Encrypted: i=1; AJvYcCVRE41z85F4lS4VHbgkeiUoR/DtaafOZiuVr9E/UqVMY9wDDZ2uCwLiFEiSiwIav2oYVHL8M6oy0ord@vger.kernel.org
X-Gm-Message-State: AOJu0YxSRmZHKKBQ6SXdlwNCJW582mwTzceCCZlrdOwxoO9WA6EqBBul
	ewBJvM93Hle60FbcZACnEf+umFJRW9r1DHo2f9MumUxS1GnwtMXu0SJLMF5J/RoNWJH+lA5KeDa
	VGUy4zKTM0U/wl2uyu8mYEJffQOwJ/yM=
X-Gm-Gg: AY/fxX5Xg8QrKP+Pm4LBHMG0RpeI+JV3Ql9xSZY6s0xRnPBWKkDYqUgV3XrZJ371eKr
	+HeV78vKGTcxuqGSJLyKlJ+ptki49t966w8Mn+4fwSU+rjwwpOYYHU4mr9d/+zT7V9Nc/qHJRBP
	yRqOAuPpk0BVKq/svFKn8P4gVMiQtu/yMS67hu6JxhpH43ddr9wsCYz/aI5sLU0BnWGUF6QvQtB
	zPOEikLwfA391zt8K4eccJoxfOExEcmVtPwJepa+SWN3RaBLxt0stF1xmeDuzJRLCIb0NlCFOXU
	FT3BEZiU95dNpw2/xLDXFDbVcPe+oTBmPfcE5/iZGHkmwn8jKJoOWwJxlP//ic1g7heIFGbmahP
	YN6y0xrQjgoEo8HmqQ+nx
X-Received: by 2002:a05:7022:1e01:b0:11b:d6f2:a6d6 with SMTP id
 a92af1059eb24-1244b36efefmr2110118c88.34.1768555879884; Fri, 16 Jan 2026
 01:31:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116-imx91s-frdm-v3-0-98671de64925@nxp.com> <20260116-imx91s-frdm-v3-2-98671de64925@nxp.com>
In-Reply-To: <20260116-imx91s-frdm-v3-2-98671de64925@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 16 Jan 2026 11:33:59 +0200
X-Gm-Features: AZwV_QjLNUqqgYctbRDffJUiJuH_tW04Q23rVvRNxKu0gJcAkwrTYmAk7h08eJ8
Message-ID: <CAEnQRZDtE+0gDxAnu9vWGhj3rYEv6CmMNjQLWnKu=ud9Yo9XcQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: freescale: add NXP FRDM-IMX91S board support
To: Yanan Yang <yanan.yang@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, qijian.guo@nxp.com, 
	justin.jiang@nxp.com, Lei Xu <lei.xu@nxp.com>, Xiaofeng Wei <xiaofeng.wei@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 5:45=E2=80=AFAM Yanan Yang <yanan.yang@nxp.com> wro=
te:
>
> Add DeviceTree support for the NXP FRDM-IMX91S development board based
> on the i.MX91 SoC. FRDM-IMX91S is a cost-optimized variant of FRDM-IMX91
> and differs in memory, storage, Ethernet, and PMIC configuration:
>
> - 512MB LPDDR4 (FRDM-IMX91 uses 1GB)
> - 256MB FlexSPI-NAND (FRDM-IMX91 uses 8GB eMMC)
> - Single GbE port (FRDM-IMX91 has dual GbE)
> - PMIC PF9453 (FRDM-IMX91 uses PCA9451A)
>

<snip>


> +       sound-mqs {
> +               compatible =3D "fsl,imx6sx-sdb-mqs", "fsl,imx-audio-mqs";

There is little sense to have compatible =3D ""fsl,imx6sx-sdb-mqs". Just
use

compatible =3D "fsl,imx-audio-mqs";

Move model property after compatible as per already existing code practice.


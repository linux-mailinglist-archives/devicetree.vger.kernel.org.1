Return-Path: <devicetree+bounces-76927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E72190C915
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:22:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C527D1C22AD3
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 11:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339031E863;
	Tue, 18 Jun 2024 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v3Gw0NZX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EBE973460
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 10:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718705573; cv=none; b=PVo3Ry6zLLlUjc4DcIpRjKZet42weW152eWkfTDdduTQouLoHYgpCcvu654oK0sKxYZ7W/NS7ydfsO7agUbWW5ZyPJ/cjmXqQmRtQnCB03YA/DjhiUcoiBl5XLkpc1DGi73BnvgWlP9Izw0dpvPr9sZT64yLxDIPDeejpuM8Hyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718705573; c=relaxed/simple;
	bh=6mJGdO91RXcGUUmpTMS5iulnchhEDhRErBL2SBn7y1Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mcfV25UDwbjoBbvupX+GwqjqKwr2q+jHSLSZn8B77G8J7VvNuRSN3pbehjNw62xHtxYKqlAHUoIDsgEBiEUQsoHeF1R/cE8YRclhx6ycjs50hXA0wrWfetQEOE3C+zsHkOportH2IMde7KpvOXXgKFHzCtvVDu2aIW91WGftK7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v3Gw0NZX; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52cc14815c3so1107383e87.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 03:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718705569; x=1719310369; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6mJGdO91RXcGUUmpTMS5iulnchhEDhRErBL2SBn7y1Y=;
        b=v3Gw0NZXO1jsVwmU74+EYrvst9h0EqYrhmWX5XckwBNSX8bEpBKScxgslTCZj7dG0v
         u1dHJZmM54Jk0gqL14R5aibdDgOj+Sq1dVwI/3DtNB3LgbqoAJnUM8YoHR57FkhrIgAV
         3aeuzBrTav4PW02t7xL9LqU71plj1zZ8kaxnUL0JIbgvckbK7WBWkwmDaH+mD+1Q5rSf
         xAiIIraUqzUuqbp6CutiWzQVHkZgC0WARo3r011HZMsjkduFGO9pVCwE3B74mCedffKH
         pMLq06RiKXPkW7h+Gr6LbY/KKxfMfLW++jhbL/aIv2QyAVyPVxRxeXD7dCz2ABC29Cwu
         ZCtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718705569; x=1719310369;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6mJGdO91RXcGUUmpTMS5iulnchhEDhRErBL2SBn7y1Y=;
        b=TKn5gKMsCl7X+d2C33jCryYvjfwa79IDkbVqa3jECu1Z0c5blwMP1zSY5aE3QR68qb
         j0A3fk3r3DFHPKK4d6497APKABRPVrj0ntovmgKTlpTtB8elWe1uVjrV3qaYDGt9IOev
         hQh/s1fjMomh3wUb2Pqk3/Nd8VFjdMcCw2zwQaSjPCkIQejhvZ2Dhij4g4LrfEU1hXi3
         zYGX0vKSSxtBkUIRAUz7T94cXle7w6Az0axDzmWPZ7U3oZdHKNTahG1dCbJ10kZL9rhC
         az1uTAtMPEnwIfd7f+7/NZDr681DL0fpyv+0BZ54tKU1ghxMWcEvOqoAoUFUln1Uc0DJ
         hyUQ==
X-Forwarded-Encrypted: i=1; AJvYcCViIIsL8F7F8ltUpwlQ1cV/rPgHZmfcenjtpsfNb7SNey6t/Za1oM1uunsLqnHVLuOlb7WykH9BRv3y4ZL67mAhPAQE0sbrb9daSQ==
X-Gm-Message-State: AOJu0YxkGINZSGmIv/SlDpd+r0b8NavV9upo2ZYGqnccWOxqed5SdX4z
	vF9RwZb0YrM7zM9XhGfZu+dYkh5n8SQ/YLzi7OZuYrgBE5W9aWiEW/AVAqIUFZB3QdCz/vAQmTC
	SSrXY4ZVvn9uPHUb88y23usntoByZ7T2uCWNhtw==
X-Google-Smtp-Source: AGHT+IEKxSYIL7tUGgByZhiLAFjBAQVY6s4nNE+5nGraekK5gKASUp0MAAKFzLc/2g9E9O4NH5x6/Qwg+Tbi7p1WJE4=
X-Received: by 2002:a05:6512:ad2:b0:52c:9468:c991 with SMTP id
 2adb3069b0e04-52ca6e55dfbmr8037884e87.14.1718705569563; Tue, 18 Jun 2024
 03:12:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240521-pinctrl-scmi-imx95-v1-0-9a1175d735fd@nxp.com>
 <CACRpkdbpL=HUXj0hFAo+JNki_RA9aix2sW1cg13g9=89d93PZw@mail.gmail.com> <AM6PR04MB5941328E3343E5263C87528D88C12@AM6PR04MB5941.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB5941328E3343E5263C87528D88C12@AM6PR04MB5941.eurprd04.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 18 Jun 2024 12:12:37 +0200
Message-ID: <CACRpkdYprmc2vm8fVHBSYD+LtJavZ1tj7uQyTeVGkSv88RYF=Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] pinctrl: scmi: support i.MX95 OEM extensions with
 fsl,pins property
To: Peng Fan <peng.fan@nxp.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Cristian Marussi <cristian.marussi@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 13, 2024 at 8:30=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:

> Just checked your repo in git.kernel.org, not see the patches.
> No big deal, just wonder if they got forgotten.

I had to figure out some bureaucracy around the git branches, it should
be there now.

Yours,
Linus Walleij


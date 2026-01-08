Return-Path: <devicetree+bounces-252688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D23D0201F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:05:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 532FA30D2D1A
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2FA04218B6;
	Thu,  8 Jan 2026 09:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kAujPoXa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AAA39447E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767863882; cv=none; b=vBmgmcJggc5F8llN72NXwl5e3NAiL9VOv2Nnl9EwiuFlsRME6Ay1sIf9GNhhCplWQEc/f4Y43y3BMQMUaGBUmIE7cKlSUQ4SQLP6Ar4Z+DmfU5FY7hpZSB5xIZ6EF1W6eKABqbzNe+9SCZamP/Y6pR02Jc/DHwG2EyBmKNYOZDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767863882; c=relaxed/simple;
	bh=rJKlSCF9OU05jcuov22wvWuBsucLoLxar7+T5KXFJ4A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HSWEzZoAUNud2jqmemktdcXdoGHyEHhGvF0kB3lbf7UVjys3vms+8CGn42WbnkVlJOqdYVavZs8AAlcLIHWvkDDM5zQ+YG1Jk8N2Ut7q3mj/8AFX3xw3qp0301BoEHEFbPhDpVK6RhKHtG4UfKfUMW5ju+v8iHzW7K6Zp1P17No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kAujPoXa; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2b04fb5c7a7so2458567eec.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767863869; x=1768468669; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eis8NHZnE9ri0RzqLaxUqcXpiZJ26AU6MwmGkm8dkog=;
        b=kAujPoXapPgEDlqfiuC4dX0e2G8neTDWMNSNpvesLx8K3SFFkGzRc5Z5XHXpWFu+bx
         TDGDRtZfPHuF3MdWfTSOE0kbFqd6pjL+sziQvZrvug00fk6uNm5yzdfuDQfb7JJYAEHC
         poZfSkEJzM54BUOq1TwXWbRApEPizxSLfwT8eBrGb3ObKE/3/r0G+kvcpjsMb7op8kja
         wdg4CbMxNe5S40aFployZSk9XbYBTDDhdRFjmQ4M2117dbPnJlHGB/KRHE9EaNm+nCiU
         4mXPC23ChbinPENU0cm7iJEBkNWClqDRwgdgaCxa5c5wPkb65dNl6apOzUhu5/dT30CX
         wIfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767863869; x=1768468669;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eis8NHZnE9ri0RzqLaxUqcXpiZJ26AU6MwmGkm8dkog=;
        b=YbtVoFUSrOAOrPnn2zrM4k0BsFysqGol/IpdmK7SFUz2tmb/ghU1bi7aVPLY4IGbmS
         BDW8SzTg9aqMwg8n4QGRtOdl2NoR23mM4d/vfx75AvQpcpc2WiC7VhB3nWSP4WiVeHbI
         77R9cft0HsiBb4bMOjdw2GWfQMaPLkzDhzq0OefEjlEsZzAMMBYDcEiqQriV9qdpfQwd
         4CcYGBX8exqMxPjTsow3e4u+KXBjV8tLaAboLAHJozfm+v7eudRcAkZyg1oAP2rs82Ju
         Eabm4yHnUGaK1wZGHnlEHWf6gpMNf1P69HiEK0MrXVl2nuYmv5Ohco4orqzE5n3FcoCi
         nnzA==
X-Forwarded-Encrypted: i=1; AJvYcCU+sF1GozhP/4609oymCsgpZcspEhde56HLgYNRJ0B+9PgPzfmteXosxeb2roBT50OMDBodU8v+4i3/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2PocEEYs0Dhub1z4ALHTBpjPOA19vX+3gSrjygoYh8RmWAw6u
	t8y25I6jeapzXiS1IHVFE0/E0ydX5FkJ0YRHh/OSgJmq7qgtplRyi/WjM4HA0HOJPO5pHY5hdha
	QVNvZtTemBwN+evCxXVolE1RDmnKkJhs=
X-Gm-Gg: AY/fxX4eLeaGQr8bVIaGwKVTHNpvveQ5KJugKsB34xZvzrNT2Ld/8+spYTIHkqs/Olw
	MXkW5dZBUh42gc7JBm5VKpQ2dl+z62dKul/1TMdZ1J3Pbd2rixVVKy7zQp5GjgImoVQ7edsRlnv
	ZVv9RsheW3kWo2McoCow2fiEU4hp04LB4zGkXA2WSYvFZWnQJmP+4SSB90g1Ryi5W/BiEH94ay3
	ApCuCVLK3L3Y3LILAITjpvayQrbNod1LkBpUwCHlj0UzjUtVoSOBDHBwMZg0IwMKeugJXT+
X-Google-Smtp-Source: AGHT+IH6nPwC7iVGr8ZWD/P8maW1+qN5Wt5sp4QkGF3llNXAnUY+tgYrWnq/Xe4GoBfHf58pSc+2xzLcbL1nuE4LGLU=
X-Received: by 2002:a05:7300:c99:b0:2b0:5342:e00a with SMTP id
 5a478bee46e88-2b17d251c0bmr4723716eec.15.1767863868438; Thu, 08 Jan 2026
 01:17:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107144507.46491-1-Ashish.Yadav@infineon.com>
 <20260107144507.46491-2-Ashish.Yadav@infineon.com> <20260108-unbiased-kind-wasp-d8b61b@quoll>
In-Reply-To: <20260108-unbiased-kind-wasp-d8b61b@quoll>
From: ashish yadav <ashishyadav78@gmail.com>
Date: Thu, 8 Jan 2026 14:47:37 +0530
X-Gm-Features: AQt7F2q8VU-mhh9OIuBTA7LAs723KM2jw3_egypa_L2dUHh1z-sfScapuExH8iU
Message-ID: <CAJKbuCagGJcjokdhejOiEsqyQ5Kc-uuqoCoFBikPF4UjiiFR=Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: hwmon/pmbus: Add Infineon TDA38740A
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ASHISH YADAV <Ashish.Yadav@infineon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

Thanks for reviewing the patch and providing the valuable feedback.
I will generate the next set of patches (v3) with the review comments addre=
ss.

I try to address the review comments with current patch which were received=
 in :
https://lore.kernel.org/all/2ee75453-0869-4348-ad92-f7ff71aca75d@kernel.org=
/

The Driver code also submitted with this patch:
https://lore.kernel.org/all/20260107144507.46491-1-Ashish.Yadav@infineon.co=
m/

With Best Regards
   Ashish Yadav

On Thu, Jan 8, 2026 at 2:24=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Wed, Jan 07, 2026 at 08:15:07PM +0530, ASHISH YADAV wrote:
> > Document the TDA38740A/25A device tree binding.
> >
> > Signed-off-by: ASHISH YADAV <Ashish.Yadav@infineon.com>
>
> Also, fails checkpatch on SoB difference.
>
> Please organize the patch documenting the compatible (DT bindings)
> before the patch using that compatible.
> See also: https://elixir.bootlin.com/linux/v6.14-rc6/source/Documentation=
/devicetree/bindings/submitting-patches.rst#L46
>
> Best regards,
> Krzysztof
>


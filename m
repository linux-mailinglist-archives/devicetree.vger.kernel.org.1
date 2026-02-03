Return-Path: <devicetree+bounces-262098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOShBjS0gWnNIwMAu9opvQ
	(envelope-from <devicetree+bounces-262098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:39:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B74D4D64C4
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:39:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5CE030AEEEB
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 08:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF313939BC;
	Tue,  3 Feb 2026 08:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZDzRI3+G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C572DA750
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 08:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770107617; cv=pass; b=X5lML1frUxP4a6iJjZvUdkL7En4hd91/f5gWaw/jmxKYhu7bmbckewUG6lTxV80vstk7kcq5uCCyeyVKNgeUYpxfs4BuoRUOBSGsRLapd80sL6McMcI1TpEyLoScpyGaI+W3V12B+EUauEj79faUdviUsMQ/LW+N4O+VLAB7gz8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770107617; c=relaxed/simple;
	bh=emyZuy7uXV7Ze/RJbFb/MJbjgAkf0STJ6afujsD5fLM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q4/Q3pCc+ZwNOAyp5sfeI/MFfyra2f8dddmtVW2CVV9PXo2DfPhgNC9Pn+KIYPwLlUpsvms2JzmXUTjZl3eeo1iYqiWUIWKwVHVFgfDrK/ie66uYKuM8LxXLdi1Q6YC4lgrd0WFliKEk5K+fJht74rv9qiIdG0It+vqoQAIyq+A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZDzRI3+G; arc=pass smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-1249b9f5703so7099262c88.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 00:33:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770107615; cv=none;
        d=google.com; s=arc-20240605;
        b=ir/UT149UaRD8BlW9UD2nKX9MyClw311GzGtM77NoUTtMxULgUDZcZ0M6nndwav1eh
         E15OP9+nmrXkLVmt8MOs6aIUknNrsqsi4bzwGfGAEdSsxhAfL2TuKddQcYDzbSv9YwN3
         5RE5lZswVpCUac2RlQVn/pjJsZGcpppm1aZIg03EAwUU6hD76Ym5t+bIXRWvv/9Od74T
         J3/C734mA2VP5yS9Uw9RAwrBTgC4RXBba+wnzZ2IOKrP0ICFmfMEzBTbR6zGZnU95A/0
         3hl/4tFm8rje9UksvLHdoGcYPpg8DYudSXh+iCcNO5I5VIMV2cvZBYrxWk+GrLBXL3gW
         +Rhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=emyZuy7uXV7Ze/RJbFb/MJbjgAkf0STJ6afujsD5fLM=;
        fh=vdkLCBZ+wxfQei7c2FCNBpIoEKGyoSwqDgAtT6TslgE=;
        b=WTloSeOjA7yaoXZB/UeerMdkzU4NgDzvD0QB/if1l9RFhwo/2ITZ/mL7e/ZCc0P+gj
         +aWo024+R6cjw9c74YmTN4Xwsi6EgFo5aLNPW0jMSKFjiGbELr5jghsXJrvxYTUqDAFj
         lMk+x2zh8JF4XLD/h9bsLblu11kpyh21rDY+cUmzKtLcIo2g+yML/pKpZQgxXkGdRvYb
         Xdeoo1au0gybywCQXKjYUCvnO0ZacrQu3TbZjOT7Uh6O8hdWOCj79Y2T7u3HKLoJgqZB
         vvzBm7I9+DakG0kGNtRQTUokCylQd5oXHEEUXNYkys1P73RJk5kc0fu0KMsbaYWOvvit
         Lq6A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770107615; x=1770712415; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=emyZuy7uXV7Ze/RJbFb/MJbjgAkf0STJ6afujsD5fLM=;
        b=ZDzRI3+GFhKfkcAOUp7EYmFzpnXchUuI1kY/wd5BNwFounq0jM0WuEEV3oy9ZQ+vJd
         oweeekU1CxUgM8ueWVK4NV5wINyP2QUGjAFK0i5a7GOF/xxTMwFnM68B9kkkStEir6Ss
         lV4hB1fyVdJt56xRRBktY7oxqrFrgfqM4aPZ5mL4URW6pOZ0teEdB4D1fYDAGepvkl1r
         3LYYuQdxrAQZ2RH8Yhh9dpXbEznQKUlaoY4Hne7QsGR4pLkLONABkOiDVkPCEYDATnEj
         nrGqTnJuE6dVbI3+H/D5D1rpJLbJ1YKuNGVkrIdPChOJptIJxiO8F7R8Zj8tNMPcD6T2
         KrHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770107615; x=1770712415;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=emyZuy7uXV7Ze/RJbFb/MJbjgAkf0STJ6afujsD5fLM=;
        b=Oau+pyOtl0x1gD1y2r9a0Jd/Dt+HxgY5FIRVRqHVF/9BQhCyL8iBdLly5R/wWko84C
         uf4kIpRxMcnETrGQl2J7Ana4n27+yCKpwpCV1bIdOTHO/zA0R+CApZX80OW+JqxRYFvr
         C4N87kkm9l4JIwWkznI2uRGfWbJ/WYxPogEM+1uZ5mede0cnW8HIkPLionuPEq7d9tlb
         /02Cy0r53uxpRQZlVVpIYdasaAO6CFNyQsQfHV2ebhzwFOW0UO4tfNrrgQBUGSfO57fY
         5OrK6fjEmWzIX2+yITln8QGxHRnr2tkchfG291NWWaDA7IwqonKBbR8zWoUJ01Kqq7SR
         kfgw==
X-Forwarded-Encrypted: i=1; AJvYcCV1LHHWII/787ZUxM3bF5azYgUwfZFhgbNO55rk3vN5B+g4sRpTTiVNW0EsD2oCHNcUMJ6VHs3hQRs1@vger.kernel.org
X-Gm-Message-State: AOJu0YzAVVKbsE0gVHoMhW3sg56s0XH2/xNz7hTCEu7CF5aKGwVJ0/xh
	JBtT+Y1XXY3gJ/gLmVYtaQ+ke4kqfXnbb6Inm/7tAQSq20rGHRcD1tagi7JfJ7CgjRVL8+cWHzt
	6lkGiw+UWOxsB91rEvQqfWPN9on9pOR4=
X-Gm-Gg: AZuq6aJ4DvJTRhSdosrTjKf2brOUcE4gVj4vB6StnZWXic3qnualCOBexiYE/AHp5FV
	AAITY7XtQOXKhCOZxJvpqV7fbpnSOJn6oNJOjJk4kvIynVgklnWUTEdHhE4vDH2cAGAJUcQfZnb
	pM+vJ/oB05QRAhaUlbe+CZQekq9PA4DoVvUqEO+Bv1MsLt7Iei/u5Kq2eZt0yzJcc1WICvJJ7Ku
	9E23wU3BFPAQToAkHY/hAZSCKDSjcnY60ASYXwRjlVnnVSox5oItrh9/9GbVdXTK0nJlECt4aCX
	9/Dt5OQtsr1abbECGHMBmiUMpNuGIW69IstCETsU5HnKjSIhR4Ua5VQKphjGctrRbBkg8qKCTgu
	O4kQO9puaFg==
X-Received: by 2002:a05:7022:403:b0:119:fac9:ce12 with SMTP id
 a92af1059eb24-125c0f9d262mr7374498c88.13.1770107614645; Tue, 03 Feb 2026
 00:33:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203031345.3850533-1-shengjiu.wang@nxp.com> <20260203031345.3850533-4-shengjiu.wang@nxp.com>
In-Reply-To: <20260203031345.3850533-4-shengjiu.wang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 3 Feb 2026 10:36:16 +0200
X-Gm-Features: AZwV_QiN7aElCqGBVfp3lxdbVrrkTZK84USf8JhpYodb0geCaRz0C4JnQWtK0dQ
Message-ID: <CAEnQRZBkKG61b8ytdGKsRqRsfHZ33Q3y+fK0Pkx1hUnw8bWkUQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] ASoC: fsl_asrc: Add support for i.MX952 platform
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, nicoleotsuka@gmail.com, 
	perex@perex.cz, tiwai@suse.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262098-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,perex.cz,suse.com,lists.ozlabs.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B74D4D64C4
X-Rspamd-Action: no action

On Tue, Feb 3, 2026 at 5:13=E2=80=AFAM Shengjiu Wang <shengjiu.wang@nxp.com=
> wrote:
>
> Add a compatible string, clock mapping table and enable the option
> 'start_before_dma' to support ASRC on the i.MX952 platform.
>
> The clock mapping table is to map the clock sources on i.MX952 to the
> clock ids in the driver, the clock ids are for all the clock sources on
> all supported platforms.
>
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>


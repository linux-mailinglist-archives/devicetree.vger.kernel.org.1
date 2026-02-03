Return-Path: <devicetree+bounces-262097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOR4Bh+0gWnNIwMAu9opvQ
	(envelope-from <devicetree+bounces-262097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:38:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B01D64B0
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 09:38:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 765C830A6E1C
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 08:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8C26394461;
	Tue,  3 Feb 2026 08:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QAS8aLVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D233090E4
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 08:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770107572; cv=pass; b=lKiKwWF+XhJ7YmBJQiHimiWCuCQ6kAOWP5uNZdeWTn4VBT7zfGHRi7ccbyuJu55XF48EYjuiyB79Jj/CXBZzvqZvwn96SvGjxZfCu/25kCqxv9L0HHxoO1BhucdlL0Q2wh2U104kOanVwJNygy9gYdGW8fgySec0pJ1nF3BQRuo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770107572; c=relaxed/simple;
	bh=ry0FHVTHq/pJe0PrqW5meMtNFTvAS6/0OqoEfkOx9WI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=boFRMk3fJSd+dYyjuIBr6FNcpct45rSLu/VO0Uu232IMBLApGzzKXxegDD5Ivj1DrYJ0GIq5CD3GWP4nkXw6mlpSZKVU56tfcXLiwQaunelKTUm2tj36FVrC5kDpv+2YSziYeh/E+7tsnqhlMQjdPTwSUaun8/lZExfD45lxTv0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QAS8aLVz; arc=pass smtp.client-ip=74.125.82.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-1249b9f5703so7098411c88.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 00:32:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770107566; cv=none;
        d=google.com; s=arc-20240605;
        b=BCHde+OSZsQloDIKTRwpghJw9LCbXohVBL91j8e7N2KDVz9CdkZ7DmhYDfKYJeeUW3
         C6O0rFFJ9/Z8ZXVig7fwxlBG35H+NUdVvHQ0dJVcysjjm0BxKn5UNy2gSfRMpXeoebC6
         +OU3e8c7b6iSjEBQqwK23mqE2ChSEh7cSNfYsfVP+uppZvabE2ybuBN5UIE2U8NqYGhi
         cDCyJhPa14Wp8otEw4/DBcj/fWgB+FFJkxCsbbT6Hx8ZErNkmvh37YICv9BFO3T2ocAN
         bxGezFq54bVrLk858rLtBptcpr7sNxobpNQIenfZXTFfr/8yzjIA+oMcbqRgZ69RQQI9
         iF1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ry0FHVTHq/pJe0PrqW5meMtNFTvAS6/0OqoEfkOx9WI=;
        fh=NeWHBgmdp8ndHWDvbiHs32gggGZwTj0tPlVntcI3mXY=;
        b=LBJIBmu0pGY31L+cdL6Yggt8MPCaQC1dT6Q7I4j46jcA1Ppq93G9UsAslKviXHxl6M
         Rp8nPUA9FCJDVgzaSWr5FYsv7x8GD+tdS0RxKhO0RmoP7p06/eltI60EMGQlT6xPizWu
         7YviciGk3d/4rsWQ6y4+r+VwAslouetY8lj7B0mbVYf+fKVBD/1I5yArRlCFKzd1kemT
         l7G7Y+2QXhaa3TmBJx/vyHG1O7lGrUV0x68f4+lchNMazaoM5GkFZh9VYN2eQXb0BdKk
         1M/lfQau0FTwFLWpbotMwnPjevix9MEaCum92QaJFt+JXQLM69ujBG1s6yjh1UoVQlnY
         Ewjw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770107566; x=1770712366; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ry0FHVTHq/pJe0PrqW5meMtNFTvAS6/0OqoEfkOx9WI=;
        b=QAS8aLVzVm3AUOdwB2ARjevFqRe5gxYz3z5yblgPSZm7OdDUuEzfHzPYxYr8WAYzXW
         t1/kPsv8ntpg/qoEVRZ2lsoq9G8G0453yy6qMOdLZ7dE/izQ3+AG8jGvCYFSmJIHUt2b
         KB7cNe7Qzzb54a2PfI8n1zfFJbVX5jz24AKjyxI0Sm74LbJPX9ebnSAK31G17JmstJXv
         HUMPW30P8zAySB/VRwbT0qUHVz9S1yHnheeijOYp39RZ15EivDNH9xZZM78vTkXXWrBw
         +mPr1MM6qwx8UnQq9x7/eaz+Tdbgu5fsAxFdT3X/9id5gALh92KDIxstq5gR9i5eQlUZ
         KOvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770107566; x=1770712366;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ry0FHVTHq/pJe0PrqW5meMtNFTvAS6/0OqoEfkOx9WI=;
        b=uiCB/1ffn4pL7a2KGZ35UAybt3O5FfZW/H6NoztN/o+n6ivoYi4NOd/Fmx1DVxqILh
         xbu/XVWrYPnOTV4smozKGIZ7aYKT/wFPfxGSutWs5qAVNQh5x+pwwuYriqOAoONPoGqC
         vF+6NAEuXY/lBODXqlyOeKJw334GquXvy9E8aXH8Prwp0/InVc0HBWPoQS2bIZD7iDj0
         RsaAkLgvVDK9xFb/cZKV6ofd3cAz8E73YhiFvcXtzW9tGqjV9eHW1wenbXMxyNhEVm3K
         TaaL/d1v+AItzX6SzDft3fQBjFxxj7r8TLVGRxkbaPe1buOcJE+4AAWtjYwZRJI/btEK
         Nvvw==
X-Forwarded-Encrypted: i=1; AJvYcCVkBm8aukz1gVyULtt1Ky+gKgRBojImdj5HGsXofOLIRTRGcF5buTXLjdR6szGWGeGJBKrcTnl5gahA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp+GQIkazayaQt+avSZROhpYMQn0JPDhrQZ0JMJqbL+1jo/NJ6
	9cNq/bYqWhMZ1dULp0gFlrCJPooPAc2dGAHKegPTW+2/1evVmnprzT+WeiYrx79ukpxUlFSSA8+
	m3dLzM5j7vhT27AFtu9XHv3vtWRwNp1w=
X-Gm-Gg: AZuq6aIdAGH7Ks0ba2ChbQ58yDqIFK/BVrVxlBBG2Fp9AXKEnLFZHcsDaLEcWlk/S7w
	WW7FhADaPUwhzZ3AIMUrBGvEewB2GYq+Xr4vm0TxGbgbmEdJ18PHb6zzf0QeOahHXdYCmJu6kZQ
	zIp8t/NXHdXVSRPj6+iVoZtQ0GC3TFKVRxiDFGLJ7Fy1GEcrsYUS3ymtgasteoItL57e0QapdwG
	Tp5ezWwfqaF2L9gN1XM/qjwQnlaIdXAMbv50i+ueQsRidKM93ChcP05spjeHuRMkxXC1ZFZekUc
	eMBl+JGyV8MY/DY0COpEy30yHhcyCxGfBVAGXyIaEzm5iIXt8jSjlrmqF7Vq5YC5Fmj0/RAX0Hz
	yX2M/W2CR7w==
X-Received: by 2002:a05:7022:160b:b0:119:e569:f60d with SMTP id
 a92af1059eb24-125c0f8c302mr7264388c88.6.1770107566507; Tue, 03 Feb 2026
 00:32:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203031345.3850533-1-shengjiu.wang@nxp.com> <20260203031345.3850533-3-shengjiu.wang@nxp.com>
In-Reply-To: <20260203031345.3850533-3-shengjiu.wang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 3 Feb 2026 10:35:27 +0200
X-Gm-Features: AZwV_Qgw24M2z0kseZy1hei1NjvsOXkgK0vaXVyKxBbNrRS-X0jSjdoVh3qv9-s
Message-ID: <CAEnQRZAgjyKYZEJ9FVqRsCfzLOqwbRZXahqMMNdJpP54NAQ1PQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] ASoC: fsl_asrc_m2m: Add option to start ASRC
 before DMA device for M2M
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262097-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 92B01D64B0
X-Rspamd-Action: no action

On Tue, Feb 3, 2026 at 5:13=E2=80=AFAM Shengjiu Wang <shengjiu.wang@nxp.com=
> wrote:
>
> There is a limitation on i.MX952 that dma request is not cleared at the
> end of conversion with dma slave mode. Which causes sample is dropped
> from the input fifo on the second time if dma is triggered before the
> client device and EDMA may copy wrong data from output fifo as the output
> fifo is not ready in the beginning.
>
> The solution is to trigger asrc before dma on i.MX952, and add delay to
> wait output data is generated then start the EDMA for output, otherwise
> the m2m function has noise issues.
>
> So add an option to start ASRC first for M2M before ASRC is enabled on
> i.MX952.
>
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>


Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>


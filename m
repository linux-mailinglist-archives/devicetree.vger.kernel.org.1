Return-Path: <devicetree+bounces-264953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKJaGIqajWnU5AAAu9opvQ
	(envelope-from <devicetree+bounces-264953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:16:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0951712BCC3
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:16:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 659C1300CA05
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F0042C0281;
	Thu, 12 Feb 2026 09:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xut2dEHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0C214A91
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770887816; cv=pass; b=BotpTFtLsg7JV6d+i98EI9vg2YAsiR6jqgn9s+gDCsI3IEJQdbYviG3mXVhdoqBu3t+2q+eEzLZzn+aTIsSO66Ue3ehedfHZwmjNaknPHW7dNbCraC7Wb48bLZ54fbKhPct/FopHppPFQJbvhhQN3d4E/B0N/JpVz2aanimag+4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770887816; c=relaxed/simple;
	bh=zS4kDFqVFAYV6avPugBwBxUezU0hGe/pgYjawUzsRSk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HPsy3mMYLsvZeCnrjfv1HUMOScN5TuxArGZ9oXmcP6J2siuCD3VKUREMxoQka6Dn6QRnhEsmF+vjEWjJG+LZhO/fdjErd6jH2RJFp+BOVg5O8nKxZaXQtsPhe35VuCuwq17G/gI+7WYwzJIIOYwCC+Y81K7u3f9+wklQilHkLaI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xut2dEHz; arc=pass smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-1271195d2a7so7583245c88.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 01:16:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770887814; cv=none;
        d=google.com; s=arc-20240605;
        b=V0cvN5d5inJw7pxoHU3ZULJma0EPUlrbSONvb2eZs3r1OnuDG4BqwHIvXU/oFTTRP0
         3YbMJlfpVgsYGv3fHqj77FLbvBrVvwVoZz4lLyspRMg3LKuWcBRKUOeylJzvZ/ADzaep
         Oi/qhQ2cd1w96+H23oLy/V+NBquB6uBpbeiRYbkKZdZdJLmaydjE2WJ7Mm0JxzRJ6ZDN
         88nKbUOLfh3wFVpR5IMymqF08vGctYsLVXaGIz+VyuEKA3gIplR61F8vc3st+5GK5dZC
         FcuK3xMXnLn2BO+wXh/KttbRYMVzfo2Y75fJ6wGgmioNOZkeeVA54EMCxUwudgNcSp0a
         QFqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zS4kDFqVFAYV6avPugBwBxUezU0hGe/pgYjawUzsRSk=;
        fh=h/tg8/lHLWXLyD4+BR0XxLkeItNMJpTKaPkEB0/XJbw=;
        b=W1oXeZv0StkNVjw4JHAROTtBu2+O2QeSJLON0yUMMOBo09mED2AqbltbzB36HNqabS
         dLIW1Z7iWU0mgN+yfxveFRaTQG/HxmFn1ASMdKc50A6/rqTRlgK9CCqVnnMe2dYLaQC4
         pUnAWb3+ZUL7jxCYomdCs0mSp0dVimTLooxTBIWqAgb05iWeYVwy8PhXoUO+SJ06I++P
         r2Iqvnmsm4Crz1mY+ryfB89TdnGXXyVXfNO54uAbUarri6RX1sEV4Ga5E5I1fHXbmH42
         ZYN5dDlwd2hdlfTHLlI9jYaRNQI51DpVH5WUVYEYmoQ5//pi5Ly/injHYXsAqdQFx9Q6
         X/gQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770887814; x=1771492614; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zS4kDFqVFAYV6avPugBwBxUezU0hGe/pgYjawUzsRSk=;
        b=Xut2dEHz1lwuqD0ZRM09nkw1wSaGBj0pLeYmP3OiA17owow2412xchYjATocnpVChq
         TMMyG8oNIJvu+NuEwRW37DU6Z1m5aQP8ryXVHYQlkDsB97shgJSffyMVGsv8KDrrkM7s
         QvHtKokAOR2w2KJMerBaGhI+OUyw8GAMF6/GYROIJxlOjmml8onf4vi6vxLx8s+oOque
         dw74G9cBX1lBRWqUfH9Oon5u/0rLDndFbPvIlEhX7rJWaotO+DSYOuTM78FZP2no5Jwg
         cfXZVuFKc6hfENkRG20+B0m0aWynP4sv1/YVmq5ySG9CphsUKxR3wv1Bg9cgppicQouw
         gTOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770887814; x=1771492614;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zS4kDFqVFAYV6avPugBwBxUezU0hGe/pgYjawUzsRSk=;
        b=wMgivpoGnXAkULCKRZgk0ThxeRmmpH6Vvq2HdmB1hexG3HMSbUbiey8MF7dv17Zzs6
         gDC3OyPy2PUD/Ku86nUXZTDsyFlZSYH00ExgKf0ulxwGZHLiBImCX1kFELJyv4AWtsud
         CZWtITMtTNx7beNhml9wFdQTYH6CaWawpB81Bir1rmTb/R9mA018TsxFkIT8TGz4qufI
         OYuGHukxk8hQy9VN7FHr5uifbw3Fff1GRtqli19kPOXof4Ps93Ea5J5EJ6xEOHuO+IOJ
         3O95E5u1SnFm/10vmUCvCaKEJbaquXFILQtcxbEHlZpLHjA9qTZV7FoHzgzttS45jC06
         4LLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIBJh5Ry9ZBC+dzOudIyrH6eCwk3iRzKqyLvTYmF36ODo5PxGKdn/wE8UlY5RX7b0Py8R19BWq34ML@vger.kernel.org
X-Gm-Message-State: AOJu0YzSmofBijBb0YQzL/TXVksxZb+EoQgn13ZbkAGQNNnaX6Lt99M2
	k+bV2CRwet5DZeA+wHjAN9R1BeHiBl7IL319vVjmVHfgfeJmDh9gXvle1tkZP5Hjsv5BV1ZFcIm
	hYsRSEDNWWKaXzd4lOLiJi7yGKjkfjAY=
X-Gm-Gg: AZuq6aL4d/7kG4Eo8hE4HLXdTWSMM+F6dLH1CBuUWIMPBp9sGcNhqz0NPymuRmdTnk1
	NrU3pG8ni76dF4wJjLz5jsi+vh0hkI+MsUrkB9t2Q9DnD8UhxORkcye6A0YTIjtTc3o8xJquaSo
	CT66LPA3FIaRaHJObtcUsNgQOk6RoQPs7nMIzRja1q0OuZM6kDvkTCnZitdPv6uXet5yTSpJtew
	EKQOrcblbdnimZKjNf01a7fPcuA6CE3nHa909hXcFBG13hP6XzVujweLfX/kfF6+nwxJUtNA5fd
	hJTCyz3VpURXt+8ws6jU0gdyevON3mQSbuaGXJ5387upz9Pw5Ht6edsLvKYl/azoylUmIk8y+Ff
	7rIMUn6oHsSQGBaYUzTShlcZ1oI68Rxht
X-Received: by 2002:a05:7022:78d:b0:123:3bba:fc4c with SMTP id
 a92af1059eb24-1272f78ad4cmr962785c88.38.1770887814104; Thu, 12 Feb 2026
 01:16:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211221529.3745404-1-Frank.Li@nxp.com>
In-Reply-To: <20260211221529.3745404-1-Frank.Li@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 12 Feb 2026 11:19:36 +0200
X-Gm-Features: AZwV_QhNdMRVd7V9qLZDvSol0fqxji4If6Iws3_V_J6-ZGNkbg2vcJ-9A6hq2Wg
Message-ID: <CAEnQRZBXrrhn0ZnuyGZ5sQYUCmkS0e_AU19L_edKxjqqBgvy6Q@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: fsl: add compatible string fsl,imx25-aips
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-264953-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: 0951712BCC3
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 12:15=E2=80=AFAM Frank Li <Frank.Li@nxp.com> wrote:
>
> Add compatible string fsl,imx25-aips to fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx25-eukrea-mbimxsd25-baseboard-cmo-qvga.dtb: =
/soc/bus@43f00000/bridge@43f00000: failed to match any schema with compatib=
le: ['fsl,imx25-aips']
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>


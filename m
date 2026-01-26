Return-Path: <devicetree+bounces-259563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIOPH1+Od2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:55:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B29C8A5B9
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:55:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4D26C30067A9
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEAF3340DB2;
	Mon, 26 Jan 2026 15:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YIQhsNZg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72619341079
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769442909; cv=pass; b=hyVynb5EXZ9jT229sY4h5CEV13T0iHEimd8jBKMST5yxoZKlTLGWUypOqkzej640oq9CoAbszbFeq3MDEP1JJ0tWhqOuA0u3KaBg7TcKAee5KpvEFccwOdD9zYJdOIr0MaltHioUvwb+8HCuvOtJBD6gJcbPTomjQIAD8q6PnDc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769442909; c=relaxed/simple;
	bh=/Hesy3WNA157TAdMBzarWweQcPLGwH1r5vKjc9cMaj8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=atV+JVx2apzoaMUORgY6uacbjmQhk3vOMmC5dbFiEXz/JJdXlC1CfqcV3CB/weeIBVmSOSJKXEw6AB7xbBmYAVtqBM9f998sc3Vv23ia/h9uGvtds0NJXyYOCbUjV9Og8Rc8gZvcT0AVDjSjIXJKy4wAwpSG6a0rfEQLGt0issA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YIQhsNZg; arc=pass smtp.client-ip=74.125.82.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-1249b9f5703so281075c88.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:55:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769442907; cv=none;
        d=google.com; s=arc-20240605;
        b=PE/Qgx3I5hKL5E/HJyr4ktxC2bdw0MopnIsSTOMIYnvZTqtXjC7Y0D1lWI5Zib5pGR
         qjd7p+xSp9yvIT78xeKKTn3yASRIskVaXDGu4/eD2zkoupfd5JkAcYdF2C6HQ154432t
         TpedRZzL4KUDpxzIHU2Zh+IVZuxR0Q6JPGbbQoTAmKfAlbz1xcmiUUCiiNqQdzyT48bZ
         DYJjm2g255/VTjDM3ceJG8/ijYUF15Ta4bVXXtHYnMtUQve4rJQz9HANjdgMLlYl4FnQ
         cXSTmx2FzI1KqVovzgTKYEFS2IQdTzsF5TPAOj5WaJ2rwlhIM0g53jrZUD4wZBTEHYzb
         ihmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/Hesy3WNA157TAdMBzarWweQcPLGwH1r5vKjc9cMaj8=;
        fh=79M/5ltkPTsZk/1E6z1MrLwnvT32b0iDEmk3J3hx16w=;
        b=Mssj1E+qif5wSKqW5WcBDFGuOb1A8HXW0x0nRA32OQ5EgkOBcFsO8jJQJ8v4tZ28sn
         GuUzSS/JNUAkrPuh1fUfbIFessbY7lj1XhY9KqwZ+o2l2u7i6CEZAMTMDFp/ZIkpyyV3
         bT2X2f1mc87cnsl6uAb2Knjl05s5gUPvX5fJGer7wH2j33zWnjbzng7mCJ/BMpHXaMjf
         rLAV7d+XYILCfWIdlmNKSCPExdXUrIM8CgdyRH7fEySdWNPPEWdosoDsRMsth3FJVqj0
         DV41a7lQ13aH/MkQ62Qt/Acxg3O3EN9OhkUi+3PAFkT86jdtroay+ne3XEAmNs6C2Z7o
         xUgQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769442907; x=1770047707; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Hesy3WNA157TAdMBzarWweQcPLGwH1r5vKjc9cMaj8=;
        b=YIQhsNZgKYUrfy8ThLi1XDgSXD/sPVR9CKYFP48OjMu+uZ2+3jibeFPD6kCVytkbRi
         naeLa0MCbTv87hQaiyGduFnz0NJQZNTMAg14+/9cdEDB3QYDlTcqLt7fcQZ7dGIuGhv7
         ad5rIae0G0nda8B/s2uiH5BOcOPCZCwnlLRT1WCBLRD5Q01FQ9oluIy1caLqUMNQX6g8
         AQLGJc5kEkgMJKP9lEkBCE6D052AzjCqgnJloa4NWqZRRei5WMsg2Jy3Js/oTvgkUwSs
         PC2pAwBgKb/KbEO8bvB1x/k24WD72aiTVxygsyOZwaJf0E1+fBrzsgtIs4rJh5JNnPKI
         l9UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769442907; x=1770047707;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/Hesy3WNA157TAdMBzarWweQcPLGwH1r5vKjc9cMaj8=;
        b=GZ12kgPMGk75TX7iq17klm1rsQbg5GRvFxFp5hXINFTiGwRNo6cJPQZ8GAUQ7Ofkzo
         KwmGTeIZUL68X7k+0PzsGSmxYu6pJAMvxIohK3wUctvp9Eh+YydRDPsNVMDttM4GniCt
         Htrh0gQgir3xvC3y1fRYwEhLbwAJx2Pzvf3f73Nc28bYTQeJFIaWEBmcyemnjU8yOvvE
         K1GUPpCRSXzvncEuJgqyXTesSGzNOeRE47rxE1AAvgaDNi9m/DdoXyZihH6eT7u+anCP
         MgjKB/hrmhDWCeDxn4+fcAJwSIYT5YsxKL7cF8zp98B3kSmn+65BNdpBlF6Lc5r0Hpf2
         TkBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUYHJNn+rx7bASrjSVEqyWOPbq0tNcYKhoJvli3iN8MBfn3O9MdhUwLDGGqBqGjdyG/BLaj9SN16w2@vger.kernel.org
X-Gm-Message-State: AOJu0YzcF71n1F4WWTP7WauJTsX/8LXBs6NKs9v5i++MvHhHwh79xAkI
	LZUFyqOBI26H4IG/8qW+Skw+rOsHL9H9GSET/4q+8xhWXjoBA9rm+HUv6l+4Zv71ta93CtbmbEP
	4AkiXBizb/C4ojyqHx+iSTYcA/ZlP7WQ=
X-Gm-Gg: AZuq6aKt1BC/6SRN6f7dLdfSGa9r4DLJBMQzNmxKFO9zAqOpSOgaHXrUiByyuMvugIK
	6KFBDzqvyawy47W4hp1JPHi2dcruWZjMy1wto32cyTG/SkpY6jfgbi+WEFoYx3wyWcA7jaYeniK
	LWT5UeyX+gfPoSvkoAtnvbK1xR1Xa77sT9XRq3XcrS4pNl+ZFbNan2ad1zZks9+XrpRZlvisfBU
	00oMoefejBLrn7/H7pBCy6npkYJd02ngndtEJAQJLrMThcAQCwMmGcuLO6DbADy5HBGyAuQ9x4V
	Z3V+4CygVREdTy3UULtHqGoK8f4AkOiuU+CK3Osv3WeojxdjpmoPmTpGVexviIOeOGbBAlgpvW5
	WDrT+gB/74ZFD9Q==
X-Received: by 2002:a05:7022:6083:b0:119:e569:f610 with SMTP id
 a92af1059eb24-1248ebf0a49mr1954211c88.9.1769442907480; Mon, 26 Jan 2026
 07:55:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126145537.2301-1-laurentiumihalcea111@gmail.com> <20260126145537.2301-3-laurentiumihalcea111@gmail.com>
In-Reply-To: <20260126145537.2301-3-laurentiumihalcea111@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 26 Jan 2026 17:57:52 +0200
X-Gm-Features: AZwV_QhA7W5Q3bPcFDKVTkQAu_DrVk_1nocQQ4dhm96_V9DFsolG5j1PxG9BQFE
Message-ID: <CAEnQRZAsiciJDQTAOjwQRZqxMW7sNifRf5rGBNq_sS0s0kJKcQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: imx95-15x15-frdm: support AONMIX MQS
To: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Shengjiu Wang <shengjiu.wang@nxp.com>, 
	Chancel Liu <chancel.liu@nxp.com>, Frank Li <Frank.Li@nxp.com>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, 
	Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259563-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 1B29C8A5B9
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 4:57=E2=80=AFPM Laurentiu Mihalcea
<laurentiumihalcea111@gmail.com> wrote:
>
> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>
> Add support for AONMIX MQS (i.e. MQS1).
>
> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>


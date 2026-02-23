Return-Path: <devicetree+bounces-267655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mI87GkPRnGllKQQAu9opvQ
	(envelope-from <devicetree+bounces-267655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 23:14:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B009F17E17A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 23:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DFD130FD5FA
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 22:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9F2637B3EB;
	Mon, 23 Feb 2026 22:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QvHbEZ/z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832B037AA92
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 22:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771884103; cv=none; b=J6ff4YFyvDX0mQdhDsPxHw+Eta/NDkYnfK9gU9c6SCehb5wiRM7YoH9pneU8iymV7WEUUdOe+iM6iVfKc1+I1wpAW+T4GprdZmb+6un8hxkH16bNlne3m9I8gAMXmCC8wn8OFJ/vNxEMoiJ4r4dJidNFfgHismiTbrtek3ZsJsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771884103; c=relaxed/simple;
	bh=KUvMCXecxl1oTGRP8RuaVCGSIIYXm2h5FZ/R4PUy4Tg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JCHxLFTH7Tw+dajtP3g+FOqWJTORmh8zgFVpkpfD9VEP+SwUZ9rMRLe5EGGHnPHix0aEc79a37eGmsOwkK1SjcfRCwpJFUOrEQ5wMSwJL3I7/YO81FTpd7SXhruKvboMkIg51gSD3DgN/xb6/f3gQzfll3j6e4r1H0xS+FcByFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QvHbEZ/z; arc=none smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-12758ce1e8dso707824c88.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771884102; x=1772488902; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vwmeVddzSBrk6onBg3XthXPBezPsVZCBdsI2Jvj2LQw=;
        b=QvHbEZ/zBwB13I1oFN0JKZF4+aL98Vk/gQFKF2IlM4SA3XRYV0AFs1Kjojh0PeVMu4
         cz3CIcmfZOVs+gbbDlmSlM7WZRTj4E5hSSZidqpghyMyxel5WXw53ZzEFMv+56k2lz5J
         rrUM1BkggQOdS+UyyHscjQbejOR1PwXA/fDUO4BS+W6cpUT+JIWTiRi+IOx/a24mJJUs
         bMWG64y8UL6YeleC+WO3CwWUH1JhQlPVe6d/MknRQAzelYq3ltUPGHp8bgo+dYKO31Jq
         lWtJv+bUdT7g/CMcCmRoFolI705er4sebiEpIoMFHcNnBeq6Qjqjv0lDlNw/E3KywWSZ
         COuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771884102; x=1772488902;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vwmeVddzSBrk6onBg3XthXPBezPsVZCBdsI2Jvj2LQw=;
        b=B8PNViudugTAuSbLWzEp1Vzo2cNhw8Z0p9ABJmYumdz9LjdH0p5uLrTd3Yzyl2ora2
         KV6jf4TcBJ5Y0j6/CIh4M3wRS8kpL4TeuA78iZv04JmjKhSm641m0XWqCdRQ8xjVopgz
         xO/y0LPRYD2wEHbd5ppzT/xPgWNeq0ly8C0wIrYCElpjekaCdwLBNIfgmd/Kgr/nMjXN
         +vOe/d0ZSwgmDtzn47w7Q9MpMszywJO8OuCZx2JNy3MvDr0jdG61uqPSo1pufCk6zZ0T
         AP1QRwn4jQQrEOImuHTgOAmUVE+OJhP42YZrGc+/jtmXUvWMcHQEpNbArjtsGZn1okBJ
         KWAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUG6yLQr8emrQu8nbKcSwjg7xvR7OOdE4fAMNbXclw5FWp0cgx6VuEcAYoGqjQWdrzKApEztEldJfx@vger.kernel.org
X-Gm-Message-State: AOJu0YyO1sStglsgQ2x7L4VmqTXK4uXC3SvdanikiIE8ayZmQGoqIoQv
	c+//amtFktL/idSfX9rOkxx0y1Tcm5XV/U87xFTSFkWlScSXEUXOMK1x
X-Gm-Gg: AZuq6aIe+PVItM3f++rob7zfeutYujtM3JFRLQdXpgR7wEPgpPAZVFJeoXSNKFrT4Fx
	GrFEW+63A4/YI+fYWPgB9pVIbj6JpaC5SOiSPbErY69I/85zN1TqWxlSrOnq9jeC2vchXT7ShJC
	7c+W0svP5e1v4PpasRZN3U7n7ruE8Q3BAyBaR1G1Uz94UOQ+1sAs19GtRIk9qU7PUGYFa9i0Kze
	tCkdicCLKxjVbXntrnn9mrRWrV3QVjqMhz+7KGYNZDkvVA8B7pWYkV0eMfO4jfTYu99EoYEQpoK
	SwbAwZu/Azb1kf1iOhukeSeMBSZZbPx6I9aGSDaPtSSxlKpxzyoQ132ojklzY6w+RP+OQwjFgSU
	+hF7WjKWrh1iMXGhyv/zyfakWz5TlcGza/+ErJsAZeOn4CvEZkst94xKHPHv+2wbg/e6EKJVPeu
	Hl5zXn1uEhGntAbr12kwNZpQ0zvursSKLMkrcaZ5DnqtqelAoaoDFKgGwjutbVuvlm
X-Received: by 2002:a05:7022:2521:b0:11b:9386:a3c8 with SMTP id a92af1059eb24-1276ad8bb87mr4839876c88.41.1771884101638;
        Mon, 23 Feb 2026 14:01:41 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:1b48:5d6e:ab6e:5287])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af2edd7sm9460001c88.8.2026.02.23.14.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:01:41 -0800 (PST)
Date: Mon, 23 Feb 2026 14:01:37 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, Fabien Parent <parent.f@gmail.com>, 
	Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
	Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Eddie Huang <eddie.huang@mediatek.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Julien Massot <julien.massot@collabora.com>, 
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, Gary Bisson <bisson.gary@gmail.com>, 
	Chen Zhong <chen.zhong@mediatek.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rtc@vger.kernel.org
Subject: Re: [PATCH 3/9] dt-bindings: input: mtk-pmic-keys: add MT6392
 binding definition
Message-ID: <aZzOHVh10zr9hiWs@google.com>
References: <cover.1771865014.git.l.scorcia@gmail.com>
 <056cbc09fcbb4a2845cece69209a2a564d993ac5.1771865015.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <056cbc09fcbb4a2845cece69209a2a564d993ac5.1771865015.git.l.scorcia@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267655-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com,packett.cool,kernel.org,mediatek.com,collabora.com,bootlin.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,packett.cool:email]
X-Rspamd-Queue-Id: B009F17E17A
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 05:12:42PM +0000, Luca Leonardo Scorcia wrote:
> From: Fabien Parent <parent.f@gmail.com>
> 
> Add the binding documentation of the mtk-pmic-keys for the MT6392 PMICs.
> 
> Signed-off-by: Fabien Parent <parent.f@gmail.com>
> Signed-off-by: Val Packett <val@packett.cool>
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Please merge with the rest of the series.

> ---
>  Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml b/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml
> index b95435bd6a9b..2d3c4161a7f8 100644
> --- a/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml
> +++ b/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml
> @@ -30,6 +30,7 @@ properties:
>        - mediatek,mt6357-keys
>        - mediatek,mt6358-keys
>        - mediatek,mt6359-keys
> +      - mediatek,mt6392-keys
>        - mediatek,mt6397-keys
>  
>    power-off-time-sec: true

Thanks.

-- 
Dmitry


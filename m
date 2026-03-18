Return-Path: <devicetree+bounces-277361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GhtOzXmumkpdAIAu9opvQ
	(envelope-from <devicetree+bounces-277361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:51:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 053692C0AB6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 18:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6D8A0303F8A6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B82433031F;
	Wed, 18 Mar 2026 16:32:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045A230FC1E
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 16:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773851569; cv=none; b=lHRF+rbO+BRT4p5kX3/ydUVJ+wam6LvVAdTAPsuNeFECUZeDDoEZJUZL8BD+oLsOneBVTI9mhaasjl3h6KbEtu2vutSOB3ROsBtuXPiaBU6VM0woE5t2FmIfRONQ6BW+JKM+aTObymOkuIMuhhF0XVPzX6NTmKjY03dcTo5aXXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773851569; c=relaxed/simple;
	bh=J9AoQJqhss2LsfIv36b73QdQdOLW9HvVXjRl/JvP07g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qez0cPcGIR2Pw3kil+o5qvIBCefapEHJELj/MYZl4A9A3IlP7WWNMrPTxB09gg5J2x5pPuiJN95Js2E2kyqJeK/gvP6PyPGfQE+o8QBgm0/j7sTia1LRGTmKWjJgvS+ujkoN7fYqh2XhHw3R+tEsjbVkCpOasT6t4MWRDZWmYiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c70bfef17a4so19565a12.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:32:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773851567; x=1774456367;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oyAgld3HIOm1wYub494sLGOg4YlSEABoZlx1Bb+ypLQ=;
        b=tUyKain32btZDnxUNhVX61k9WGliC+22UPQtPpyO11iBP421o9BmOw/Vf63EeR9E7n
         oQ/vQxYUC3PpGH5WH07i4oZtgVBFClQKSxn1PHtwk2TZPayPL91yq2fVDKOuf4INh98n
         yyvmnGddxQ+1h3Yjjkgp4mOcMuSD/s2EA1LMAvQDyMV++SE127onIb8xEg+9exKYU0TY
         P2olBY4vpKCEPlHX7UsE1W4QOfrH1TGZ+QtvPDi5inVoP5c1xxpwrkyrW1rLcQeb6z5Y
         cuD2v1dtGLyUC4rir0qpRbuoN1RimCMsKyGxp+QevQaWCuyHCdJrakDAu79ik+YDeK4+
         qxQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUgit5x2HMhabIco0PvU+kmR384nC8Rr/mGShKNCZS9o/2ipnmwiDNdQtyKMZqtQWURifICNDz2zMG@vger.kernel.org
X-Gm-Message-State: AOJu0Ywuv4qxpYmqezVNPVHf6i2t9E4CNVZYKV9Fcbyp6ecEuhG6L9yS
	js2lipEw60oFTijtNAkgXDeSnxOrU9/kIrTAQSXrwHjI9C3zPW7wLOEbvWD0D92U7/U=
X-Gm-Gg: ATEYQzy4fTJBoGULAWEHRIUzEWyxXoe4qTbNTvfj5V8yTn4lCL7oqMS6FX958NW2FMp
	6ivRV2BBP8PYvrjMWtJl1qe2V2Q1IfrzErgK06BAi4cUgO52Q8AgD0UvO3g61yD8Oa6tCCoGX4O
	4B5SarC4XEMPxAgEwaqeYT5to24ddphCmOnfHRZPD1fcReTwfyPNBBKMugcCKVtPSQqS9v40+/o
	bzTGkTIX6WLNAeXnSSrdXClhBQdGx+SxA/Pro0bEojMwyFtfOldQix+rkEP6Ub19IGIRvon/i1l
	rnbp3Q/LCHLg6B6943D9C9cG8qqFwpbm1TbAwKd/3MgOZv77g45qP2+vg4pOuWdbEqYvHVokGEA
	KdzxCrTcdrxjz+wlnYmmjtR/Cm4GMsn1LF3HhRrx13QnJqyU2pypjH3XD7Sk06JacjPo2VqJCcp
	IgY+0aMHK2oMG44txfRIg1fkoBHveMQ4DY6U7ZblnQKKnuTLTlAY/MKMXH3bxu
X-Received: by 2002:a17:902:da85:b0:2ae:ce35:2686 with SMTP id d9443c01a7336-2b06e30f235mr41811115ad.5.1773851567250;
        Wed, 18 Mar 2026 09:32:47 -0700 (PDT)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com. [209.85.216.47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e6315dcsm41408685ad.80.2026.03.18.09.32.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 09:32:47 -0700 (PDT)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-35ba2ae4df3so69724a91.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:32:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVjWpFac97ZBOsDw4s1mBBNlSxRA1Kum9EaHxS15ARKfnUii/4+5HCyS8axBoYXhRJcKvn6t7cjfFiD@vger.kernel.org
X-Received: by 2002:a05:6102:374a:b0:5f5:4055:4558 with SMTP id
 ada2fe7eead31-6027d0b9ec5mr1976763137.2.1773851098056; Wed, 18 Mar 2026
 09:24:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771344527.git.tommaso.merciai.xr@bp.renesas.com> <f6b43f0dc64e13b1c9942c164dea30002d4c4466.1771344527.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <f6b43f0dc64e13b1c9942c164dea30002d4c4466.1771344527.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 17:24:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW+d8_SCBtRH3St2SBWKND1Q=vtcK48C6i9PyQZbjs9Zg@mail.gmail.com>
X-Gm-Features: AaiRm50_PfHsI_l0RjZzNnYxExZrNf0xwI7nlPt_QmbbgWorEasSrObC0tCBcTk
Message-ID: <CAMuHMdW+d8_SCBtRH3St2SBWKND1Q=vtcK48C6i9PyQZbjs9Zg@mail.gmail.com>
Subject: Re: [PATCH 3/5] spi: dt-bindings: renesas,rzv2h-rspi: Document RZ/G3E
 SoC support
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277361-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,bp.renesas.com,renesas.com,kernel.org,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.388];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,mail.gmail.com:mid,linux-m68k.org:email,glider.be:email]
X-Rspamd-Queue-Id: 053692C0AB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 17 Feb 2026 at 17:25, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Document the RSPI controller on the Renesas RZ/G3E SoC. The block is
> compatible with the RSPI implementation found on the RZ/V2H(P) family.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> ---
>  - This patch depend up on [0]
>  - [0] https://lore.kernel.org/all/20260128215132.1353381-2-cosmin-gabriel.tanislav.xa@renesas.com/

The dependency is now in spi/for-next.
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


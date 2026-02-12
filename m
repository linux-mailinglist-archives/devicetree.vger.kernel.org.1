Return-Path: <devicetree+bounces-264923-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDEkONyIjWnq3wAAu9opvQ
	(envelope-from <devicetree+bounces-264923-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:01:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D44812B13A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:01:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C97533028672
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:01:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67FC929DB65;
	Thu, 12 Feb 2026 08:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g+/pTbVp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1EB1FF1B5
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770883289; cv=pass; b=WjppQ9YaM98lNGC2dsUUH5i5lYeIh4GFzEcs9JX0cx1Gi8asBafFdXbOL0nmBwzKXyBrtisJ/v7uH4DyIM116i24UXk6XNQqtAgrCOXdFnXKjTRBlJwye7EIp0FTB9BDJeUsONi/3o/fq5F8lceVMxccoOzLIwUuVs9J1rwdInA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770883289; c=relaxed/simple;
	bh=H9bpzueC/xhpRkv/uZFRBE7y70A6whmaWNJoFzb0zsI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wd7/iEtcmUOCCYQs14FK5KTCd4n3TmVey6iA+Lv+0NmQvJoal3Y9xtKDsOdVYRgqjYYzxBDuBIXCVxbyOdYGF9WB/t8248JvtmsDb/HMaaOP06AYYKWoEXApzqyhsML+xw/fQHKgvLbMyS6LeS+WJBNZK5awDIQ/DwA2bODjuC8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g+/pTbVp; arc=pass smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b883787268fso946438166b.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 00:01:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770883286; cv=none;
        d=google.com; s=arc-20240605;
        b=CuoAZeh7IVYh5u1B5mRsc9gy2kaG33dX5Q9hDtaJLzkTYalee8D++35TFQ6EwMoapT
         saqbFsJjUpkilbLxniaab3W8JgdcnYNq56iqyeH3Hqz7ByJlHNVrvkBed7AiBcc4EbAB
         C1VU1FsGFLf1oCbEVcZN/6nyoHl/4ngfjU4pb2NmQz7yjYg+YzZJVWWSEVarGgc4ZWWm
         wHH54BBdbk856tNPaV86G8tI0oNXpTLT9zpCgAQ9mUh3mce8Pe0zogwE/uhzzgMnuXJx
         PqRcpTHzvobIaXgPHf/5v8+tQcv7FdeRH0DvvqtJDEkq5/PPqXrjQE7vvyAmAupVw3yn
         y9CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/bjVwokrZxKsldJsperXEzSS9XKywY388N/cfuXNnbI=;
        fh=xy2VWwrwREWYrWa37xS7vPiCPSTM4z0OJvOcA0lcTRY=;
        b=lJLm00h2iT5m2x8qnpkCnNFpc0LvPPQ+JK2YgnfGMLzTHXdKl97q+CdiLTkSCBlBEH
         +jJuEwj8rsLI9A1GdSuRzcS4sR7kg9rFgDNDAwg6oetCmspHEpDcGMNPae34PEYeGI86
         cbX6QLnZxUwsauvO8fBBJvfbsisozYq+fUxKblG4OKkosmQk5cTSZtxnyt9F8hN9+EJ2
         0zIGI2WTC43KBYwGvi9cGxvRDoYmISKSEF//pWu+1FbQQNT3qqmnqCSowZq7/X+lygmd
         mP/hzfJMQCURMkOjsNKv836QGDP3tBNa7ye4zwuDRsqgjVwn/UNsC6yVURBqCaIcAIc9
         Rc+A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770883286; x=1771488086; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/bjVwokrZxKsldJsperXEzSS9XKywY388N/cfuXNnbI=;
        b=g+/pTbVpif5JcKamZpmwhvh6iuq/j4a2tFAmvzt9qIGoQTuulgPsZdRG0/ccl8BhD5
         sAWqr951gEfTssA1Xgdq3fz56TZUIlnA/GLHtCyXG2XqUX05MbGApVSC5/VdPq2NVLQV
         UO7ynLTVR9lOvcvWVqxBBx/NTVgVk/UwZwlYEoz/xI9UWPT13nt5AN9JbQocdTsy06jH
         USP6R/DvAILTnIYioJSHKlOjM5Dseb2Knu7Q95VN6qcJlsKeUl491Ud2FPqgSNToyOWb
         jQTAPy/pJ0S08hm94x799OrMd3auX18R3RvNZkOZLDd2zfsfjXXuAZ7u8beBmPMaM9SR
         T6eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770883286; x=1771488086;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/bjVwokrZxKsldJsperXEzSS9XKywY388N/cfuXNnbI=;
        b=p5Updr5JW5lLPZgc9vQYz5uI2HAibPEDvg/fpPrduDP1C7ziZZgqyrm/AuLQTzNVLd
         GkWD4rZO5nW4wG7EpVBz0thCyf/1RAeosRvqth3c1P0HmjcSAHosCDtNgby9AmK78LL+
         6pbJ++aTemylQiS2ijMUMWYagzaW8rX1t7+YPJC8cLMUNdzBjuYTRDazNpmX4y9aJv0U
         FxKyimOmliZeZdRhgZC5ap0V7VXqKCQR19Q1aNIagR0/oZ8VXR1OjUcc8IvKAkzwyqC9
         bUPgww6IQJ5DB81M0OUBQV/4QCtawWZE8i2SpBz3xIFAMMTBXt2QmGTASZMUfEQ7kksJ
         5YxA==
X-Forwarded-Encrypted: i=1; AJvYcCVvq9MNIvLjjOFh7QoU++h82AjC7zkbt+GiSoxDfQbf19d+3yBoC6zssEG9sctkU5AxURNG1jFYqh84@vger.kernel.org
X-Gm-Message-State: AOJu0YwKs4uAHk0b99po8o4a4g249IKb77fRNTqv2/33W52MdCYGstlx
	U3CTVsSGc+Lb0WiBGU/nRHYRoIH9Au47WqKS1AYs2ChV9NsDWuQQr2aFidTqvenPX8RV2H/FsU1
	WERwvbykIU7Rd2esN6CiF8WuOGDMzT9Y=
X-Gm-Gg: AZuq6aIlcXfDkWegnh2bvqwFjm4f5uxkvMZVOdg8PL2kYpFRoLOZHf3iGdZws2iz3Gs
	3IhTscMP+0R0tffDc0jozq/u+51/Zpa3LwCDh77+QWqEvE7xB67jxn7GNNpDxQETJZysppty2Zi
	IQcrXhVB1kQ4UFTGRZyo2H0NBFa60myXun2RiSU3fKiKD1HBn3geuDpE1qJpJCP2kjFHNVoPr6c
	v5kbFaqs2AZZf0lbuDo/w1Kza4mchkMh4J3IIapEPHTGrJq8mXL8gSv4jr60Aqm2jXm2rgNHZys
	VQyfkQj9Sb4MkRaa
X-Received: by 2002:a17:907:5c6:b0:b87:728a:81ac with SMTP id
 a640c23a62f3a-b8f8f229912mr118971966b.12.1770883286087; Thu, 12 Feb 2026
 00:01:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1770836189.git.l.scorcia@gmail.com> <72dcec7fe8bfd8ee7e8ef58708690268f3c07d42.1770836190.git.l.scorcia@gmail.com>
In-Reply-To: <72dcec7fe8bfd8ee7e8ef58708690268f3c07d42.1770836190.git.l.scorcia@gmail.com>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Thu, 12 Feb 2026 09:01:14 +0100
X-Gm-Features: AZwV_Qh-kArDFbixo6RuZvbk22282A_FJyXPAiI4Zij2df0ii1VxnMVAlbiH_j4
Message-ID: <CAORyz2LRkVcOss3vFS3Y3FtZfn_s-Um8G9JLgedXEeySorr0=w@mail.gmail.com>
Subject: Re: [PATCH 6/7] arm64: dts: mt8167: Add the mmsys reset bit to reset dsi
To: linux-mediatek@lists.infradead.org
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264923-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[linux-watchdog.org,roeck-us.net,kernel.org,gmail.com,collabora.com,pengutronix.de,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.213.159.128:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.213.206.96:email,0.213.225.232:email]
X-Rspamd-Queue-Id: 5D44812B13A
X-Rspamd-Action: no action

I apologize for the mistake, I did not notice that the dsi node is not
present upstream yet, so this specific patch won't apply. Any comments
are appreciated though!
I will send a separate patch to add the display nodes to the dts and
the required compatibles to the bindings.

Il giorno mer 11 feb 2026 alle ore 20:06 Luca Leonardo Scorcia
<l.scorcia@gmail.com> ha scritto:
>
> DSI hardware reset is needed to prevent different settings between
> the bootloader and the kernel.
>
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8167.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
> index caf51f203dd3..ee2792d53b2c 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/clock/mt8167-clk.h>
>  #include <dt-bindings/memory/mt8167-larb-port.h>
>  #include <dt-bindings/power/mt8167-power.h>
> +#include <dt-bindings/reset/mt8167-resets.h>
>
>  #include "mt8167-pinfunc.h"
>
> @@ -189,6 +190,7 @@ dsi: dsi@14012000 {
>                                  <&mmsys CLK_MM_DSI_DIGITAL>,
>                                  <&mipi_tx>;
>                         clock-names = "engine", "digital", "hs";
> +                       resets = <&mmsys MT8167_MMSYS_SW0_RST_B_DISP_DSI0>;
>                         phys = <&mipi_tx>;
>                         phy-names = "dphy";
>                         status = "disabled";
> @@ -295,6 +297,7 @@ mmsys: syscon@14000000 {
>                         compatible = "mediatek,mt8167-mmsys", "syscon";
>                         reg = <0 0x14000000 0 0x1000>;
>                         #clock-cells = <1>;
> +                       #reset-cells = <1>;
>                 };
>
>                 smi_common: smi@14017000 {
> --
> 2.43.0
>


-- 
Luca Leonardo Scorcia
l.scorcia@gmail.com


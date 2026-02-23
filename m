Return-Path: <devicetree+bounces-267454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PVNgD+xgnGkoFgQAu9opvQ
	(envelope-from <devicetree+bounces-267454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:15:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5E6177DF9
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:15:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D69B308C2D7
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD51B283C87;
	Mon, 23 Feb 2026 14:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t+g6Zznb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54160281503
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771856014; cv=pass; b=HNzbHwpHok3BdaSDbI57DV+T4hXeALoi3fW0t2l09LOun7QF/tvyVGso15dTGti1ObrVRo6nGIcVBAMQONujuwbGUSqfsC5/nA8wW10UkV+giY8jGU0uuazUO2IMYQkXXmXPIDyYeLQm0xtJfgPT+dNlLiszASs8YWPM6iqSr3M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771856014; c=relaxed/simple;
	bh=76oCx/ttrzREgYvfMWN9RbVec2xG7i0o/OAeFdl2DbQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uggXz3jiv7uax4o0toY/BG6PNOFDXYtudhsItE4dcdTMExMAnfw3MgJvEftPOqJKrr0aBFaSdmYibjXAQRkPxmyY+d6OTj1wXCjLUS0DcNqmIjldxIRLvxr7L9imdNZX14G4fJDTbnSIVOCM4K1m9GtKD7MRp3Qa3r87PwI4KWk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t+g6Zznb; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59dd54b1073so4229341e87.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:13:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771856011; cv=none;
        d=google.com; s=arc-20240605;
        b=gOpznkcdOu9dYGQwScM2UUwcEnApJPfhmCJLql+x5posEpkBVM/E1Mbwgz8psvn7iD
         GLcI3/S2wzpvZ8c6TssvA4UEq6+rKkF+aSnaFZXnr+h2ZUY/SRLr1wTTwo4RybxBePF2
         FRhfrPgvbrpFEnERHGDQS35P5KCHI0BmSmn1vSg8G30VB3Y3cCXXaD1B0tCkfV47ZPfp
         d0TiToMisytqk/gyhi9j4+ZRmdzqPZGpXq4C1Wdk/GGHtlrSzkouTzdKIBICQZTzZUSU
         VhfoX88nU5Q1h33YYoltkERVLMjeLIx2Mc2OCYf63nMVxgjtTJjbBWzFgTwbEiL0prhM
         bhVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=597mQmEUNbkIDS8qk+5/zMm26WxivzZ2OThkmt6poH8=;
        fh=sZ5Rg6tpdrRBklrpltB24JFlvuWZrjWumdJe+R08CB8=;
        b=Z2KHpnVfF+2Q/hoFXnMIf8zRIR/hy1hxLhEQRPbX9roRdTb4aV3tPVa6HRwQVQuAhF
         kzFx5UamxXuU1ctliO7FdzT+psZ8ETFl0fvPFtHNkcljCHI3vH5Q8tMP/MfbcBSlijeX
         8MmiNBSnpch5Qz5Zt1lv5ibVkcUKGxukfXPtiqgc4kbp/fDE5umjOdNyO5ubSSpk/R7d
         oJmUeE2TwyRFLRxhQzq90kgURSk7mBkGVKHbLw1YT62Gkpok7LkkxI90Rad8Fjx548QY
         wtYxNi/51LB2MuUiqf61U6d4ZaDPuAg+oMrykN+eg9O/UlUc/lIDf8EHXrkNuY/508Q6
         IMyA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771856011; x=1772460811; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=597mQmEUNbkIDS8qk+5/zMm26WxivzZ2OThkmt6poH8=;
        b=t+g6Zznbffu9mWS8rFtNQBxx2nzF5u3GxqFW/f4cWpN4RJAi6WFfRbOeSZi47trmjl
         CSPqBIZq9SN3mBk+rG+VbtmyIvfts1X1C2g8FmVX/bTL8p2b6XXQmbETBzc9GleACd+x
         7lmKwJ9noNAWJx3vJei4Bmkszncf5yqzEQJEpUXkZr4nWxz+IlZ/+dKPHK9u7C/fU9B+
         vdKphR9GVSeW2BdT9Egi6ZjQRHC8r+m8xy4MrQOWAmq4CoIGAhiSPN54HU8GxTeX3sS0
         RBuE0VFiGYMuxoAJeYY0i+qNjkQ2exfjDnTTOQiG0MpV6DHesJRCtLg9yYuEI9i3/VmK
         bKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771856011; x=1772460811;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=597mQmEUNbkIDS8qk+5/zMm26WxivzZ2OThkmt6poH8=;
        b=HF3mfEKWwzLJsrxGWlPdeP2rWwT/MxHPCF+1j1+J5m1reLBDdEwfNmfuSxKKFrsw+q
         L1R7IbAuHqwbf/PGVCs0xSHG6N6S7XGimApdKmtJlsfY4Vp6x8LG98DvLZ8cN4iH7Js+
         QizELEmmdxcQPVIYQ7lMIl1VkZJoivIdXlekEGE4kfMH8gqw5sW+AfaYTuFymryXKonZ
         kgdiuDqNKZ/oAZL4y6/7IZVyRJPiJ27tf69k0RsF3qCKkHOmuG+Xsy2D4Boa5Wb1EuPX
         EXRKhNmtwZDB3lcNwL2R7zmo1PNyazxAabkwvWOq0AHCp/pMmsCVHw7fhbcPtoI2y5IZ
         wttQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8Woptg1Aq4GmJsffGYq+Kvie0etSdg0B1Ht1UN++CuvvryIB5XzE5zrp73Tl2ej7CpZOOiS6koEW9@vger.kernel.org
X-Gm-Message-State: AOJu0YzKmXWlyO/V5VDWGbiKuuXsWknWdjg3AjGOSxYsZ+MlBkIlbS68
	KXemu8giBEJGXzQEwxWcSHlBtVqcxtn/LnQ2oJ5gBTXD901jTmegPy/HS0Rl3aU4P9v6Lb6SvWq
	P9Mtd4ab+wxp/gU4wO1Sy1Orou87kR5mexKZrL5RtTA==
X-Gm-Gg: AZuq6aLsOXGHeMBJ0LGFuXtXP7LSXQPUgX39p1PlM5ms9LeDhfXB0y0h6CRsebq9p2v
	lK7hfIkIgPtj0vQ7Rc1l6wF3RSaBzz+PA2TWnvXVcEJxKYGskOawbUOf0qq9XIMaCOqTYtRFOwN
	LIknnQhTD0O4GE7olUkUZWNPraZ4joqnozB0q64UTWSF4sV8SW6eq+s66Bnyn8J6kQT+r7y4nwQ
	EWJGMni7ObZ7hL0AykwyUb4pfyyuyR3kfZhyOTllCp5qsivw8x55x0JEandHBA+YiN/wWSD3YR4
	ea5DXyz8
X-Received: by 2002:a05:6512:64c1:b0:5a0:ee0b:c263 with SMTP id
 2adb3069b0e04-5a0ee0bc30emr1881073e87.3.1771856011225; Mon, 23 Feb 2026
 06:13:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260207131041.2833840-1-festevam@gmail.com>
In-Reply-To: <20260207131041.2833840-1-festevam@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 23 Feb 2026 15:12:55 +0100
X-Gm-Features: AaiRm51IoOEGcQThAZL7Wz9Wjj3_Ac4tq7Xg58f_oxy_-Jx4aKch58W-NfM592A
Message-ID: <CAPDyKFqmO0DEnmYO4uZEYjDErk+sjH1D8S-djvc83KCETf+ooA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B compatible
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267454-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,nabladev.com:email]
X-Rspamd-Queue-Id: 8F5E6177DF9
X-Rspamd-Action: no action

On Sat, 7 Feb 2026 at 14:10, Fabio Estevam <festevam@gmail.com> wrote:
>
> From: Fabio Estevam <festevam@nabladev.com>
>
> The RV1103B uses the DesignWare MSHC controller compatible with the
> existing Rockchip RK3288 variant. Add the rockchip,rv1103b-dw-mshc
> compatible string.
>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Changes since v1:
> - Make commit log more concise.
>
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index acb9fb9a92cd..a75209bd2710 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -43,6 +43,7 @@ properties:
>                - rockchip,rk3562-dw-mshc
>                - rockchip,rk3568-dw-mshc
>                - rockchip,rk3588-dw-mshc
> +              - rockchip,rv1103b-dw-mshc
>                - rockchip,rv1108-dw-mshc
>                - rockchip,rv1126-dw-mshc
>            - const: rockchip,rk3288-dw-mshc
> --
> 2.34.1
>


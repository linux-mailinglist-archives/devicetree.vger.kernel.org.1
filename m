Return-Path: <devicetree+bounces-25588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E25813C97
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 22:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5207C281983
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 21:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C97B06A001;
	Thu, 14 Dec 2023 21:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jJpWaGbK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3BB6DD1B
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 21:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a1ca24776c3so218559666b.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 13:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702589244; x=1703194044; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tQLR3TCzDnjOcoUY0UAy1UbsLgGNkBs2xj+zMAJuyhY=;
        b=jJpWaGbKVozhyjYxq8KJu+7nXgHGSv9x1vlGOU8VUR/Xamg161RcGaTqYoxy+RztDI
         GV8wH0jO4rpSAM7RImVLNtR0HPNYkMnJHARwSP+tQwHIwUEQDYWAgtmkZqXsgK2N2OsX
         UbSg6v6BmhVghMN5Ygh+t40hTFEG9m9VtpYUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702589244; x=1703194044;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tQLR3TCzDnjOcoUY0UAy1UbsLgGNkBs2xj+zMAJuyhY=;
        b=ZD7AE6N9/c+U4rR9eTnuCasEEKlM1oMC3fxSyrA9oORc582t6nw7YvDBzsqvib6s7/
         AqhvHBZlUU4FlEKP0ECe4hOfDzcPXa8gPUIPDi5I75cR0aUyc62xXX+2fb9kXzh0Hqg1
         FudZd1VF7pCvdjKKSnJ0hIhlwbXXLKoi1CRV0pjU1KZPORH/gp7Ih7H605ZVsh6kall6
         cbQBHnSuP54k/Vuh4t65J5KOj98qsUwg+X6EXO06YyC6T6R1q9gWJ7IzBZ1GkAPedvKb
         zTh7hmvWFVW7pEmlEoK+Ibiz1kPE+f7mYXGI8GQjzOoJpYHDcaUg3iF0ye8sJyXR8O8p
         JEHg==
X-Gm-Message-State: AOJu0YwqZHeqIkyYEWK5HZjO629IWNY1dTeZYCzPkr7hU9lvmWInA56T
	vr6hTmLaCZxHrRuiPutMBuCPWvnK6auYYdUL8FJnDg==
X-Google-Smtp-Source: AGHT+IE7OYOAzIzBqNAvCTayftZvK3DtzN2NEMkheGR79bvEI3MFe4Unl3+AfpaA2BHcjVdb51pzpP/lBxzBQ/Ebrqw=
X-Received: by 2002:a17:906:782:b0:a1d:2f59:81a4 with SMTP id
 l2-20020a170906078200b00a1d2f5981a4mr10882943ejc.62.1702589243759; Thu, 14
 Dec 2023 13:27:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231214153620.23998-1-zajec5@gmail.com>
In-Reply-To: <20231214153620.23998-1-zajec5@gmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Thu, 14 Dec 2023 14:27:12 -0700
Message-ID: <CAPnjgZ31AAauR876W1RmU4JPzKUD8XAMCZrJDumE+Dr4miqABQ@mail.gmail.com>
Subject: Re: [PATCH RFC] dt-bindings: nvmem: u-boot, env: add any-name MAC
 cells compatible
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, u-boot@lists.denx.de, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rafa=C5=82,

On Thu, 14 Dec 2023 at 08:36, Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> wr=
ote:
>
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> So far we had a property for "ethaddr" NVMEM cell containing base
> Ethernet MAC address. The problem is vendors often pick non-standard
> names for storing MAC(s) (other than "ethaddr"). A few names were
> noticed over years:
> 1. "wanaddr" (Edimax, ELECOM, EnGenius, I-O DATA, Sitecom)
> 2. "et1macaddr" (ASUS)
> 3. "eth1addr" (Buffalo)
> 4. "athaddr" (EnGenius)
> 5. "baseMAC" (Netgear)
> 6. "mac" (Netgear)
> 7. "mac_addr" (Moxa)
> and more ("HW_LAN_MAC", "HW_WAN_MAC", "INIC_MAC_ADDR", "LAN_MAC_ADDR",
> "RADIOADDR0", "RADIOADDR1", "WAN_MAC_ADDR", "lan1_mac_addr", "wanmac",
> "wmac1", "wmac2").
>
> It doesn't make sense to add property for every possible MAC cell name.
> Instead allow specifying cells with "mac" compatible.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
> List of devices and their U-Boot MAC variables:
> alphanetworks,asl56026) wanmac
> asus,rt-ac65p) et1macaddr
> asus,rt-ac85p) et1macaddr
> belkin,f9k1109v1) HW_WAN_MAC + HW_LAN_MAC
> buffalo,ls220de) eth1addr
> buffalo,ls421de) eth1addr
> checkpoint,l-50) lan1_mac_addr
> dovado,tiny-ac) INIC_MAC_ADDR
> dovado,tiny-ac) LAN_MAC_ADDR + WAN_MAC_ADDR
> edimax,ra21s) wanaddr
> edimax,rg21s) wanaddr
> elecom,wrc-2533ghbk-i) wanaddr
> elecom,wrc-2533ghbk2-t) wanaddr
> engenius,ecb1200) athaddr
> engenius,ecb1750) athaddr
> engenius,epg5000) wanaddr
> engenius,epg600) wanaddr
> engenius,esr1200) wanaddr
> engenius,esr1750) wanaddr
> engenius,esr600) wanaddr
> engenius,esr600h) wanaddr
> engenius,esr900) wanaddr
> enterasys,ws-ap3705i) RADIOADDR0 + RADIOADDR1
> iodata,wn-ac1167dgr) wanaddr
> iodata,wn-ac1167gr) wanaddr
> iodata,wn-ac1600dgr) wanaddr
> iodata,wn-ac1600dgr2) wanaddr
> iodata,wn-ac733gr3) wanaddr
> iodata,wn-ag300dgr) wanaddr
> iodata,wnpr2600g) wanaddr
> moxa,awk-1137c) mac_addr
> netgear,wax220) mac
> netgear,wndap620) baseMAC
> netgear,wndap660) baseMAC
> ocedo,panda) wmac1 + wmac2
> sitecom,wlr-7100) wanaddr
> sitecom,wlr-8100) wanaddr
>
>  .../devicetree/bindings/nvmem/u-boot,env.yaml | 33 +++++++++++++++++++
>  1 file changed, 33 insertions(+)
>

Are these upstream U-Boots, or just vendor forks?

Regards,
Simon


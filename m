Return-Path: <devicetree+bounces-81661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7F491CFA2
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 01:07:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CE302820DA
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 23:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B3A3B1AC;
	Sat, 29 Jun 2024 23:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b="dMIcZFO6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4512381C6
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 23:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719702423; cv=none; b=Ileut9N6aA9vfql4tQ7MD19/n6YdBhaf/YTuITbztNdWBThb4pRTnReQC0EdVdNJAJMdDbHFY1xisBP5z8rc+s0B1U0wxpe9HCbOXTYHP/yh/Ow/8L2Ayw2tvOph6ailZYs011Ma1gvD1NTb+5/fn8ksK0ghM227bcOayKjvEqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719702423; c=relaxed/simple;
	bh=XysCJedg6DXH/wRoLCjarBb7/kOAKIEykmdZaWglv/A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oJAvC2TKoDk8Uz6rX4cjVc7YcQRf5F/DpNUkdnbYJkazotZHXYEa5mlZtE+v/PugzJQI/vc2xI/ct7W0Xo9OXxKoOClU7faLSsVihb8z/dGcwexRaGwaBd0aNTMydXgBeC/Va4QwneDWjd/7eREEFTw6FdJBIsOkI8iGOgi8XhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz; spf=pass smtp.mailfrom=leithalweapon.geek.nz; dkim=pass (2048-bit key) header.d=bade.nz header.i=@bade.nz header.b=dMIcZFO6; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bade.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=leithalweapon.geek.nz
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-25d75ead52fso1574103fac.1
        for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 16:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bade.nz; s=google; t=1719702418; x=1720307218; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8IcJ/ZbhYzpVFbCD1VrAgxR/tGx2PdhO5WUBCb6gApE=;
        b=dMIcZFO6/tSbhBqu3vwhTyjtFX0Vt3IPENEHYMTXYzNbDBBUoUtfCl/XbUPG2StqQg
         BKykOm1nE9ZOTcrwBbU+3woj+SZ760maJQa42BcnyXIoj2ztHcGwlX5A6RZDXoa1tGgR
         kzUBSdJSq77b1PsmN468RZUEY/ADN8UfJ/bSzGrfXIqqs5bIlHii2aL/8Go8x1sXjhRu
         Ye4GFRrrNqixx3HQFqPBQO0lfRCZvPCGkjkB/ApmFW0DTZl5fgnz0947sMc3BeGhRuW6
         rttSg0D+KglOICrVmg9fmR2V4oM7quhUQt92vHwdjyfZuPPICoz6cn0GWzcuPP41BwRV
         NyFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719702418; x=1720307218;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8IcJ/ZbhYzpVFbCD1VrAgxR/tGx2PdhO5WUBCb6gApE=;
        b=CtiVZc4rkW7q/OJJ6dnlMxCHZdhGf3KeU/01iT1fgafRvNnXxMxx+CNmishcvcxbH2
         N7DAz658jTut5eLu2W8mnr0tTSxw+dsC2n+Xn2fT1rbgSIiAQnQ6wY3Vjridxv4D35qW
         NPZtfMAAZEexDgNIbpKsDulDCzPAnRenTWlWDS0eHY9UsxTCGR+7+CqryWMLITwzNQyh
         ZYT4U51kHimAVz/jtheE9lmCvEsBwnFewyux10mlY+P4PjoQbhSMzXJtgxwDevQqQus+
         cHAPItPUl2GAV0vbbH1AFIRHzWjlZbtWEu6FBM4lYADxrkRri84BtliuTguwlPAFfGl3
         mH6g==
X-Forwarded-Encrypted: i=1; AJvYcCWUMxCORH+eYhwq0GdT0PxW4skdsc/1nlNTmm7653R9cx91MusfAyGQNvMlMEzJMk6SZPnrxOIXMSEhSt+ssxHA6JTClBXG+oNeOQ==
X-Gm-Message-State: AOJu0Yxnofk4L8ezDvPexoB1L+/1mKz+vk22th80V5p1Fdo2+8M9ujRi
	7c18bXbqCkvpZO1aCInZg8TN8vL1+XgCG9p4y8VdKFd/MLf4MsdbeCbdqEyTj98BOwZE3ebAiJ9
	cqt+iCaJm5GcDmMzdIBcvUUGhaZx98w1NdjuA
X-Google-Smtp-Source: AGHT+IG5uVtbAqL4k4yZuunPbE2NhqQtoe2pY4HKYNXClF/dthcc9ZEbX2cFqK5Cy/836ZpeEmFbGujWbqsPtUhx5oc=
X-Received: by 2002:a05:6871:89:b0:255:43c:dd22 with SMTP id
 586e51a60fabf-25db266ce39mr919143fac.21.1719702418007; Sat, 29 Jun 2024
 16:06:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240627075856.2314804-1-leith@bade.nz> <171949936716.3312392.7734746271986363667.robh@kernel.org>
In-Reply-To: <171949936716.3312392.7734746271986363667.robh@kernel.org>
From: Leith Bade <leith@bade.nz>
Date: Sun, 30 Jun 2024 09:06:47 +1000
Message-ID: <CAPDEroV=4hW58u0+R3OxgPdeEqUoQkc24jUvsh5uE4sht9FXhg@mail.gmail.com>
Subject: Re: [PATCH 0/4] fix up pin definitions for BPI-R3 board
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: frank-w@public-files.de, linux-mediatek@lists.infradead.org, 
	matthias.bgg@gmail.com, krzk+dt@kernel.org, didi.debian@cknow.org, 
	devicetree@vger.kernel.org, angelogioacchino.delregno@collabora.com, 
	linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 28 Jun 2024 at 00:48, Rob Herring (Arm) <robh@kernel.org> wrote:
> New warnings running 'make CHECK_DTBS=y mediatek/mt7986a-bananapi-bpi-r3.dtb' for 20240627075856.2314804-1-leith@bade.nz:
>
> arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: pinctrl@1001f000: 'boot-mode-hog' does not match any of the regexes: '-pins$', 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7986-pinctrl.yaml#

I saw this warning as well when I ran the DT schema check.

However I think this is a false warning as the gpio-hog schema
requires "*-hog" in the name, but the MT7986 pinctrl schema doesn't
allow for this.

Looking at other examples of gpio-hog I can see in
arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi some hogs that are
very similar to my new one with "*-hog" in the name under a node with
"gpio-controller". Another example is
arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts which has a
hog ("asm_sel") under "pio" which is the same location as my new hog,
but this one seems to violate the requirement for "hog" to be in the
name.


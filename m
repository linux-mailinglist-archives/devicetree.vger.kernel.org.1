Return-Path: <devicetree+bounces-268609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPSpKVfkn2nCegQAu9opvQ
	(envelope-from <devicetree+bounces-268609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:12:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F301A13FE
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE4C1306776E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D861C38B7BA;
	Thu, 26 Feb 2026 06:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="oA63JqoS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB2C21FF23
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772086354; cv=pass; b=LLoEerYIqffDMvaFkp34YlQbgTQEohKh42TzZm7R2tUJKCQc0+3qbZephNF6Fmu8ROS4ubJoG+UmVDDmbiB2+Wz5ofghXZfCM3k68jrP9xnEBV41y9s/8mg02u4tvOHXXWDZa6Lxx/9N27/8UrKN4tUDd0SzlXJKW33WpYeXwtE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772086354; c=relaxed/simple;
	bh=B3h3A+ILv8Ce7qs+OmsKL4MvbpGMHVNKe5cTLkyB8Gc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TiAbkp7jJVuyEk/VzE4lPr6Rj2l2UTrY3HZWoU1VxkkH7t/1XdKdwajCDmuet3SWGPMjnqv9Uhnr9bS/bl73PXc5PH5IevKoL1WKfucWLlQjipoWkCZm4kl7somAdQTh+ZIX/yugLsC1+9zV0qpr7Q0uO9hXRntyRCQibjmCKfo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=oA63JqoS; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59e60925251so604655e87.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 22:12:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772086351; cv=none;
        d=google.com; s=arc-20240605;
        b=TNr10xpZuYbOo5s/yZmoCXdmWGDJiAXTDIFS1KHZlp/k4VGSOwADPWQGpWUf+Toed3
         l1PbijpNz8i9WoaLUjZz5wGbSsjsLOX8SS223zFdD79rlaHxG0ir3BZXTLEjkRz9QI9J
         lg0cjhmCSs218RtQSl69rTvWDiNChZUuEf7wBYr1cD87KDkSoNc0JM7FohlRz7uCCoK/
         CzheAbZnEwcx3Y9hPsT/N/pWTWsLHfRjNsy9yVNsKNJZKXZZzgmyrIyHsLPhdkZoX4z0
         sSNBcXXjSSdT2eK+0MFZk1seSdBg5D86TDHFRx9TCDiiXjyETDnQQz4DBLY7iSe+DDMN
         orLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SZr1Ou6tY3TudV/DCBYFuPdgoLpFgmS9h0sv4mAVKrk=;
        fh=BlnDzesMktqF3+3BU9AX9R2ieuWzRi7SFxv2QE0Hzzc=;
        b=Y6ROn0FaKeHX/NVQXkh/QFWlq+QdbJGpJTWOgIgh3ZMZDVdn1u5KoJnE0EtOQUpm2i
         z6Bbf20ew18+SjS+0eTGJ+eklZn3Dl3ftqf+STySx4Qpno3oO/P7K1HqRh33qJ/T+yux
         SnwPsriEbZkaM10sVvu6gJ6GoVq6wIeX7KuqMZ9ofrS7ykz5Cv2vOHuBf5bBZmGsxLRd
         fw7tAd3VPG7jSOmDSyBLQZXaQ4JfONvWZZZ6laxZwsJeZ7CtEl2ZpEwh6t88Wxbppiu5
         X9FPMwGGY67D6/vLb5Y/rJWQW5OFTtFH8sJOS+dCvNUK3ar/vUwnyMcdMjwm/EvAU/QG
         IoHg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772086351; x=1772691151; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SZr1Ou6tY3TudV/DCBYFuPdgoLpFgmS9h0sv4mAVKrk=;
        b=oA63JqoSM3piPkS10rncpoPF2Zv8Vq/Gpw/w41Vox/9JNckfQkufXpnx+8nKH3z25S
         9IPkgbzvd+Q36OIrdOxgcjGXV8BFWdZMpC/f3WKbiXSPlC24nhrQSXO+XEU2H9ZRjn1Y
         eBOwSmqKpejs4SP1NxSAxeGKDuASSfiz15KXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772086351; x=1772691151;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SZr1Ou6tY3TudV/DCBYFuPdgoLpFgmS9h0sv4mAVKrk=;
        b=jEFtw/Y6mmD26mjA1VwX6J6INt5czaM7IVjAA6Tshnw7Spu+hVpVm/m4JOSkbKfwa8
         m7qRvN/Pq/xTdxcOz74DVqLWdktz2KZ9BgWpx/3o8P9kqtNKumSBApggEbIK1jsg+TTS
         52L8X+NoEmfdAOC26J7iPwJDkkwqF0JVnJkLddo6mfKytepKYtju8iVv+2P5AsdYJge+
         4cT4xFRva8w2mmSV0XQkC9UbGdf2GxAAJTg3pu4VzY/sff+nJVP/6/m7aE6sZ1QIZz0L
         eoDTjUAf9exKGf1WROxas5pZdozmDCJWCkCEEYaqvniXAZViHHNZK3YxbYaLYq7uZPuF
         +DRA==
X-Forwarded-Encrypted: i=1; AJvYcCVJQ161lJYwxZrhAEQA023iWAZ7bGXXi/ljQGzOu93F82s3YovutUPVdxpZ0V8y5OCq+ygk8JfTgHvy@vger.kernel.org
X-Gm-Message-State: AOJu0Ywfv++MWSGUJkulAF6saOD0z5268AbsOwIIc65KHFtRVal1lCp2
	gt9Alv3iWHiAgLWCdrFI/NbhNVJwp8tN+MoYmYCcw/JZcZhHNSaw0zC80J8iTHfjsHeh3clq5ep
	eUVwYR7WahYuLFz9v2tv0XyL32E9HChQya32sApT4
X-Gm-Gg: ATEYQzzH+1ezYfMMwSez+VOAvRkdXlm1ewVnhLzYMlbDJpt4p7ONTgejGUa0RHDE5J5
	ViCVmiRWdWEC8dYKtdh86RkVA28YWKqC5Krd7es5UXpGm58WZbNkY/wX9IgHdtck2q6PcmYtA22
	A5+dukDXqBl2F/EEKvDbGinPTRpRTV8DeL/+9B6Dfnmv1MLs/o/oR+l3wsM56xVjpGD7uYrDAAW
	yq+RLqMxDJKt6is+rfxfocSUmrw9ZPtiCbrR39+70ja885mzP/G+swZWwIrQc7ifWSJ1rMVTTfX
	1FmTpU2afmSwJAJd1ha95q6VbtaQq2L49CmBCw==
X-Received: by 2002:a05:6512:3c9f:b0:59e:1a32:376f with SMTP id
 2adb3069b0e04-5a0ed88c5a1mr6027586e87.22.1772086350568; Wed, 25 Feb 2026
 22:12:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225072225.3345307-1-wenst@chromium.org> <knddbvl6qti4pyaphudrmhbx7jm245tsmpa37snk4frtphcuz2@am6aatvc6hbr>
In-Reply-To: <knddbvl6qti4pyaphudrmhbx7jm245tsmpa37snk4frtphcuz2@am6aatvc6hbr>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 26 Feb 2026 14:12:19 +0800
X-Gm-Features: AaiRm51hju21fa_yFDX4K_BlO1UHUo4C27fJmxo88iheU3vUI_evoR4nfNhfQUA
Message-ID: <CAGXv+5FXZPviNSVmrM7-CEkwCQOsYy9PkguBgnzzTrk4wwCqnw@mail.gmail.com>
Subject: Re: [PATCH 0/7] PCI: mediatek-gen3: add power control support
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Ryder Lee <ryder.lee@mediatek.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Bartosz Golaszewski <brgl@bgdev.pl>, 
	linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268609-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,collabora.com,mediatek.com,kernel.org,google.com,vger.kernel.org,lists.infradead.org,bgdev.pl];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_HAM(-0.00)[-0.990];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 25F301A13FE
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 9:25=E2=80=AFPM Manivannan Sadhasivam <mani@kernel.=
org> wrote:
>
> On Wed, Feb 25, 2026 at 03:22:17PM +0800, Chen-Yu Tsai wrote:
> > Hi folks,
> >
> > This series adds power control support to the MediaTek PCIe gen3
> > controller driver. This allows proper modeling of WiFi and NVMe
> > adapters in the device tree and control over their power supplies.
> >
> > Patch 1 through 4 are cleanups and minor improvements to the driver.
> >
> > Patch 5 adds power control support using the new pwrctrl API to the
> > PCIe controller driver.
> >
> > Patch 6 adds the WiFi and BT power supplies for the MT8195 Cherry desig=
n.
> > This is actually a M.2 E-key slot, but support for that is still WIP [1=
].
> > And even with it merged, support for the USB side still needs to be
> > figured out.
> >
> > We can either merge this as is for now, and do another conversion later=
,
> > or just keep this one out. However this is still an improvement over
> > the current device tree, in which the power for the slot is always on
> > using a pinctrl setting.
> >
> > Patch 7 adds the M.2 M-key NVMe slot found on MT8195 Dojo Chromebooks.
> > This change actually makes use of the M.2 pwrseq driver.
> >
>
> Thanks a lot for doing this! I'll also try to get the Key E support for v=
7.1.

Ack. I'll try to look into how to hook up USB for Key E.

> For the whole series,
>
> Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
>
> - Mani
>
> >
> > Please have a look.
> >
> >
> > Thanks
> > ChenYu
> >
> > [1] https://lore.kernel.org/linux-pci/20260224-pci-m2-e-v5-0-dd9b9501d3=
3c@oss.qualcomm.com/
> >
> > Chen-Yu Tsai (7):
> >   PCI: mediatek-gen3: Clean up mtk_pcie_parse_port() with
> >     dev_err_probe()
> >   PCI: mediatek-gen3: Add error path for probe and resume driver
> >     callbacks
> >   PCI: mediatek-gen3: Split out device power helpers
> >   PCI: mediatek-gen3: Disable device if further setup fails
> >   PCI: mediatek-gen3: Integrate new pwrctrl API
> >   arm64: dts: mediatek: mt8195-cherry: add WiFi PCIe and BT USB power
> >     supplies
> >   arm64: dts: mediatek: mt8195-cherry-dojo: Describe M.2 M-key NVMe slo=
t
> >
> >  .../dts/mediatek/mt8195-cherry-dojo-r1.dts    |  38 ++++
> >  .../boot/dts/mediatek/mt8195-cherry.dtsi      |  47 +++--
> >  drivers/pci/controller/pcie-mediatek-gen3.c   | 185 +++++++++++-------
> >  3 files changed, 183 insertions(+), 87 deletions(-)
> >
> > --
> > 2.53.0.414.gf7e9f6c205-goog
> >
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D


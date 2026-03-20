Return-Path: <devicetree+bounces-278096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJVBBFn3vGlW5AIAu9opvQ
	(envelope-from <devicetree+bounces-278096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:29:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 649F72D69FC
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:29:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28164301DAE9
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A21A835BDBC;
	Fri, 20 Mar 2026 07:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EnUZExwO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF24317171
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773991716; cv=pass; b=Opv8roHHyCmeBZ/jYGkJ5KppTLVudoUvca9m0DS3hbCjwYCrEqjaD0Uz6d/IGzd0UJ1FlCkjG2T4X+02hJhD07iI/BYhnkn+H/J6TNFEEP+NV8qJ8zCO6OZXYmtLL/fstR5WukPBnTJ88/4CE0XoJY3fiUTnX33MdWHsI9janZU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773991716; c=relaxed/simple;
	bh=z91rWE85IGGWRqrCh/YzY22Z+pArpcwSKQL1FY2PeCs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Puh6yXdtlGi7TP2HBSnnReVUucIT0KU8t4ZlLDQCVMc3htzxcc6rqcltwAMm/xT+8hnnSuoYX0jqyC7qX50TgrgUyTGuMuC7Yvmyoke84+/vj5Hlmf59XMEdhVFXDnt0/V+2IRcjwi4/n3yrqlaJUjr9JUUf1ONonZ71/41P/Ak=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EnUZExwO; arc=pass smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5a13f6bcbf4so2583606e87.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 00:28:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773991713; cv=none;
        d=google.com; s=arc-20240605;
        b=Eh4XAwi8eaB7IVnbZCWoPcu7ZSNsWIGDL4RC0EBBPyoHwSkCVmXN8sCSu6g537cL6F
         qdStHs076MHwAevf/Ry1O20mjoiy/f1vuUmp8rvf+Zt2NQelJVUzvAcn2TnHbC7Hopfv
         aGI6RaZiAisPjfTO5shtZWtCtFiMy1CLD6lXMmaZ0YDVgpMjxdDHguhl5cF52pLjiy0c
         6Bb8itXaKV/DHKDezo1fo0cFx9fHmc2B24BRyqbdvkM4my6taMPeUg/X1s9KuSkb0ohW
         58z5CPDwqOAiL9wKPv5AGi3f118EKCQZZrI6jg9vziizzkodOMcwp9ALagizcwXc8dNt
         lfSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zaBkkyt6S6mdY3qvoboPKm6e0z2T7buXyCziS8cID2M=;
        fh=ANfk8ZktQX4Bh7E1eKNqJl9kq3P7IdaUd9I7VZRhe1w=;
        b=ZrE/mIo4069EW74NdwnV7hdt2mUSS6nQE0VtGDtzh8IZMMnSQDPMw8d3EWqRbGfjCx
         wvcMudJoraplyM+A2V1u7U39ugKGlTOzw+1MscazZ33WbeUpzRhFY18twALq9IUjbYQ6
         +pYJAQjHUluqxAPfWcQx8R8a+/147SDCDP7IxCjp9ER+byyYToekW0xrcBXskcihw5wd
         oSe15ZbopetaAeb9a83qygnhxUAnmN556zbO8xXSPpQ45H1tnAuNrc/hAvfQKDmV/qTk
         U1dzkStrJcNpW4aanEsRr0Ye/C6TxoIpPd3YYvJ+R34fh/j6PURd0XqpNMoDQeqkBYp1
         a4oQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773991713; x=1774596513; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zaBkkyt6S6mdY3qvoboPKm6e0z2T7buXyCziS8cID2M=;
        b=EnUZExwO4L5QYeoNFtzkpbSMRumWuHM6gNbz0sBHV1YPMDVVj6CGCLDPFukUJvgT1c
         /MPvygbu5w+jsCHcDA642hfH1SGDOizerF6kO5z3TzT7Y5sy5yyiZHyz0WYwX3tmrqfQ
         uOaDVyNPTB9IUAkOEo9tCNe3FvdTCtkrWs/Mw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773991713; x=1774596513;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zaBkkyt6S6mdY3qvoboPKm6e0z2T7buXyCziS8cID2M=;
        b=kqx3d1BQsMRg1g1hzVFKFJwyIAJ8vTjkBswKh5lp3bTbXo+GYfhr0Y/syzxzFqZ76I
         GmfFBBSwCKdMdSlQoMwXM13vV/5SZ2d6OHijJ+xbjTPr8vPovFwNcwzJIzp5TbhH/Jks
         X/dOE2RG+6aMWcVs0Ds8Oz+NSiuK4gT4XiPc8+73SkgxocU6n6b5y3dP/6aI/1GTr0UD
         R1gZ/twqF6Wrhh8e8n7ZN7IokrRvrYlfnT5RZjBcU1Ti2myuzRvO0LNwkMhuOuE0LPoq
         Ql81i1jZkDJid4ux31OKE6PP8KrL8kPGEif6FuXzfmOBWnF9sM9PbrZg9VejS1TqHGH4
         dhjg==
X-Forwarded-Encrypted: i=1; AJvYcCW4SQf+UttQYZcJB/O82KIa67IAfLrAqnKg4tO94J84SA7s0sZo9/2o6u/YTOrQWZtgsixupWbOo1N0@vger.kernel.org
X-Gm-Message-State: AOJu0YwIRSshWISj6ZxLaEi9iqHeFVJBRKzUQdR6m0bgrgI3NLXhh1NI
	0a90Gx+6cmg4yIvgFaUmBqNrVTjpPDoE0ykjNDcqeX/SlXWYHGVRv6MWSVM+Zy/L9QxL4a+iiY+
	DMbNw4eAD5YqQKFNqVLewFe98XXAGXYpaVhDeyLKY
X-Gm-Gg: ATEYQzzZufFZ8H2VeiA7x/Za4v+4z2v5BJ20QSTZN6FgOJN1/Z13N19ym8eclNSofkO
	+LBz/Xd0UXbMlm5t7TgHUd6V2hDEahW/1VXh9XgXhuc3qBZn06K24b4Kr0ryPDTzWSe16WrjuZB
	9szNyDfLVLjl5GaG8Z0/gREEfefI+x7d43tUEkoYyHZzuAM6KKXA3NJ+zOgEEGHMjuIdcgBJsQL
	OLgjxgSvl99UPbbSCGhMd3rRcJsEHX6EN7zGN8OUUz2yC/OJtaJ0FZNvK/fS6J25wuCTZ8xML1v
	FQmNVNeTUvgd730R7QTm/XsXCvxaIQmgu2evJQ==
X-Received: by 2002:a05:6512:39d3:b0:5a2:7a48:f4a2 with SMTP id
 2adb3069b0e04-5a285ae4b05mr626516e87.2.1773991713064; Fri, 20 Mar 2026
 00:28:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260320072302.2402489-1-wenst@chromium.org>
In-Reply-To: <20260320072302.2402489-1-wenst@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 20 Mar 2026 15:28:21 +0800
X-Gm-Features: AaiRm53muhcbEfiawzjnCME41hVR08oCHNfuwP3luCiL15l5M764Em_8Z9arEds
Message-ID: <CAGXv+5HwK9hvHeMWS+vjOtwd6TOk3upMmDx3bZWH+KQzi7oRww@mail.gmail.com>
Subject: Re: [PATCH 0/2] regulator: mt6359: cleanup and add supplies
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278096-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.917];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chromium.org:dkim,chromium.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 649F72D69FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Oops.

The subject was supposed to say "regulator: mt6315: cleanup and add supplie=
s".

On Fri, Mar 20, 2026 at 3:23=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> Hi,
>
> This series is part of a broader collection of regulator related
> cleanups for MediaTek Chromebooks. This one covers the MT6315 PMIC.
>
> Patch 1 adds the names of the power supply inputs to the binding.
>
> Patch 2 adds the supply names from the DT binding change in patch 1
> to the regulator descriptions in the driver. This patch has a
> checkpatch.pl warnings, but I wonder if it's because the context size
> for checking complex macros is not large enough.
>
> Device tree changes will be sent separately. The goal is to get the
> regulator tree as complete as possible. This includes adding supply
> names to other regulator DT bindings, and adding all the supply links
> to the existing DTs.
>
> Please have a look.
>
>
> Thanks
> ChenYu
>
> Chen-Yu Tsai (2):
>   regulator: dt-bindings: mt6315: Add regulator supplies
>   regulator: mt6315: Add regulator supplies
>
>  .../bindings/regulator/mt6315-regulator.yaml        | 13 +++++++++++++
>  drivers/regulator/mt6315-regulator.c                | 11 ++++++-----
>  2 files changed, 19 insertions(+), 5 deletions(-)
>
> --
> 2.53.0.959.g497ff81fa9-goog
>


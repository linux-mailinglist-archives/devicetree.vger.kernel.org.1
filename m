Return-Path: <devicetree+bounces-276025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eC8NN77Ht2l4VQEAu9opvQ
	(envelope-from <devicetree+bounces-276025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:05:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 60482296A8C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:05:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B8F06301C138
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D12B9382F19;
	Mon, 16 Mar 2026 09:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dnQfWcIU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E02E383C77
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773651890; cv=pass; b=goSg+rTzfgd59abwt0YaR7Y1D5tauXt/X7bKD21k+p5PejYrf4lbfsqbzgQf5GMfxqgf/f73vrvvpsxTg2EfkjDrpSsz4aTMisnUGqKAfYlnOlsVdFhSLNemunYMDdNj3/eLKpc9ruXdiBcTXnBoQJ3QIRqhfqcC5uourLVSTIg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773651890; c=relaxed/simple;
	bh=dPguBCLfR9MFLQEUrZGSOp0t96KCwA/gBYgCFDRG9dk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zfsu+U+P91luiwCXgRlDzHbCFsNMcjhum+Kdw/bUqgAZ0b+GOoVnbX1pCQW2ZoagruQBojNwv73MRNwDnMVngRDnv1eu5W9Z6cNR4+f2zpzS9fcDYNRApv+HQreOUOvJVaVm9QvSkWpwDyxNtPgaPeUPgqTNihn0cOOB6k1tdko=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dnQfWcIU; arc=pass smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-797ab169454so42465057b3.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:04:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773651888; cv=none;
        d=google.com; s=arc-20240605;
        b=bk2lFvnLx3B0abDvQDNbFTQvARndKNDyAnwlBFoUGYIl2sYhqLDRa7YI3eiuUhwIZh
         g1NTC+xs4qM+e40MMa9GQ1qVqjuX+tv4BPg55FqrDIIVxTld3sCg3DId0usKuMWn9BKP
         rooZiBPxcv1LJIpkmDaT1cj/243T26aFv8Ejv5FgJUmSwYapukib5ZQ2+podUC+r1MUB
         7ntC0HB+SnlhkS/HxmkGdmBypxzTLTptieFamjwmkQ+mFnsOCHR5onMzL5JY5C5d/UIx
         aeiayuZUFdJxcFrM/mklPrLsSMvFTJQiCWmy5RZXYgNUKY18ToOyIwM7p1rRMFS/ekdn
         uSBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3eAjnnl6SnN5G12YdBWuTcivnsr1WNsEqrmyCn5/LX4=;
        fh=dnhm2aVr6QGRfSLFUJjxfiMayj+TYDdcaEiP41ac4Ag=;
        b=MY3KoWi+AjtFTTh2Bxx97ZDhbps5Oai62qGrsOxm63psQ6jMHA7caR/y0k3CsIit9G
         sZp/Pfqa/tArmZcg7f8g6Wb5LJA5s7vZFDNPzxHFKbLl2Ie5VRjqYTIIswOWnHVVzVFL
         PP7vWBITh7mn+WvcOYXWatBeCLgD1GnrWu9JmpAyhKYtlY0+5t1wN0G+LNCiQUcslLOA
         XTlotrCFa6OsO7dFvrcPh7Rg/NCCb1EdS87RH6f22NTpWgc0/Ts4rnuWpotJWuw7DqW9
         z38tcI2XToZ7frV4M5J2NM0Q+eRj7gscLFp6YX2qFinnNCrH1PAMniKNz3awH/zGrhPA
         hKPQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773651888; x=1774256688; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3eAjnnl6SnN5G12YdBWuTcivnsr1WNsEqrmyCn5/LX4=;
        b=dnQfWcIUXQHAQusGEfGVLFAAdtgePkgI/qHhZMP+3wbvQ0RNIYfUXiINdWIqvnvMfo
         dOiild1zFToG9WM44oQHvIO3ivwjXZLx2vsZgebTSZ8kCy/aZcawSR8X1VCMPMBDsiP/
         IJtubp+HE1/ohqXZtknhFykJ+qEnGFMw2ilmpUfBaNyLdTwyuuS/QotA97Lf50KwLxIM
         26gUR3Kj9XBTpAbfbzF28q2PoWrvmme60hQxR+e8/z9iYnJVahdpMPp9O4TSl8pNc5O4
         7NVLuzpEvMCSOykKsueTIrZsC9RmEMKgIM0Og5pCZErdvhOi+s1uPjes8KjX+NBAl7a8
         EhMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773651888; x=1774256688;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3eAjnnl6SnN5G12YdBWuTcivnsr1WNsEqrmyCn5/LX4=;
        b=E1F2g5+OhVS53rbsRLWAnngUqbdE39eeS+nklUNt3KbSEzHeQ/HIY/FUm8XYU8JTjl
         +Ak3ifdF5PB0eNK2+FngS/5xZ1RDlVIkOkBXnTQWxyhVpOq3I8kZbjRlYkdSzfsP0YXj
         bREm3sHMIQydRG2v4Trd1cyL2RnhAgEx2INtwN5bPIO2p7ASSh+z8NAiS+sBK2kEHInJ
         yZumPpSd/u7Yyfzc2jmgQ3ggbmBuQCwpt2tQ6/P6QVsKujgpjh+XnlVI0pLdo06MJIOQ
         i8N/qb75ZTjotpHawbN+vWbfU4kANN2C0H9WWEC59kejukKPNldAaTdbxysRmVgXXxzN
         ce2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVekhYCe4LyX50mQWS9JnltcJ9JzuRWw7ihE84geSCDrdscE/KlZc7bJ2Z2PnubQe51TE2Vp0Qpjikj@vger.kernel.org
X-Gm-Message-State: AOJu0YzlEfX3gmR8nJ4oKbHaY+fWCSsAdBcGQquc6ZM3gff1d3J5WPkZ
	VfhJX0Xs7ePfcYZsRw4BESbG70StGoHSBBp6Avwmft1xN1phVjrywxqWGF4aAEyK9oUQspvlCm7
	BBr9SraPi0m1H5QGUvUFIbAVYvbALP08=
X-Gm-Gg: ATEYQzzCVc9caqX+jWr6Ln+ors0giHc7xVN0m7wMMxzjJu+Wd7AErr48/+8bPIHZyAB
	Pd+Sb6CSsuzSEfWJ0iNVs3ZX4wSYGEQ2hvkRaq7P9lVA8pNy+L9k0Aum5AQ4BZceqJ315NUpopJ
	kCYxTdlET9wauYGTWA7hiiU1QCJSlDfK/sUIV1FYrT06QYue0yZ+F56vkOaintZiY7fEO+vUkYT
	YeZX/SNkzBvnvej4TmQK0OfSsjYZQ9onQbm9vWtTrq7BDm+IwKfk+3U+s0U6JGw7a6ybfGa2+Bq
	4WKcM5I=
X-Received: by 2002:a05:690c:6d0f:b0:79a:3655:9dfa with SMTP id
 00721157ae682-79a3655a11amr66434377b3.16.1773651888381; Mon, 16 Mar 2026
 02:04:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
 <20260309-orangepi-sd-card-uhs-v2-1-5bb2b574df5d@gmail.com> <a416dc43-58fd-4462-9ec5-b3dadbbacf8b@intel.com>
In-Reply-To: <a416dc43-58fd-4462-9ec5-b3dadbbacf8b@intel.com>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 16 Mar 2026 10:04:37 +0100
X-Gm-Features: AaiRm50b9bQG2sxK_4vk8EljAgLA7HxFRVGyEcc1jQLOb023E3q4ta5OL-EXqAs
Message-ID: <CABdCQ=PeB5hhkk3eO3Mu89bb7m=4ccZrwouuZScGOTHwN5owQw@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] mmc: sdhci-of-k1: enable essential clock
 infrastructure for SD operation
To: Adrian Hunter <adrian.hunter@intel.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
	Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276025-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 60482296A8C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

El vie, 13 mar 2026 a las 14:04, Adrian Hunter
(<adrian.hunter@intel.com>) escribi=C3=B3:
>
> On 09/03/2026 13:40, Iker Pedrosa wrote:
> > Ensure SD card pins receive clock signals by enabling pad clock
> > generation and overriding automatic clock gating. Required for all SD
> > operation modes.
>
> Need to say why update to "SPACEMIT_SDHC_LEGACY_CTRL_REG" is Ok for
> non-SD

After analyzing the reference driver implementation[1], the
SDHC_LEGACY_CTRL_REG setting is applied to both eMMC and SD
controllers.

The reference driver sets GEN_PAD_CLK_ON for any controller with
MMC_CAP2_NO_SDIO set (SDIO disabled). Since both our eMMC and SD
controllers have no-sdio; in their device tree configurations, both
should receive this setting.

[1] https://github.com/orangepi-xunlong/linux-orangepi/blob/orange-pi-6.6-k=
y/drivers/mmc/host/sdhci-of-x1.c#L482

>
> >
> > Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> > ---
> >  drivers/mmc/host/sdhci-of-k1.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of=
-k1.c
> > index 0cc97e23a2f9c7b2f9376318a8a7ebb860571504..585c7eca6ebf253aac466dd=
37cef029deb63f692 100644
> > --- a/drivers/mmc/host/sdhci-of-k1.c
> > +++ b/drivers/mmc/host/sdhci-of-k1.c
> > @@ -20,6 +20,13 @@
> >  #include "sdhci.h"
> >  #include "sdhci-pltfm.h"
> >
> > +#define SPACEMIT_SDHC_OP_EXT_REG     0x108
> > +#define  SDHC_OVRRD_CLK_OEN          BIT(11)
> > +#define  SDHC_FORCE_CLK_ON           BIT(12)
> > +
> > +#define SPACEMIT_SDHC_LEGACY_CTRL_REG        0x10C
> > +#define  SDHC_GEN_PAD_CLK_ON         BIT(6)
> > +
> >  #define SPACEMIT_SDHC_MMC_CTRL_REG   0x114
> >  #define  SDHC_MISC_INT_EN            BIT(1)
> >  #define  SDHC_MISC_INT                       BIT(2)
> > @@ -100,6 +107,12 @@ static void spacemit_sdhci_reset(struct sdhci_host=
 *host, u8 mask)
> >
> >       if (!(host->mmc->caps2 & MMC_CAP2_NO_MMC))
> >               spacemit_sdhci_setbits(host, SDHC_MMC_CARD_MODE, SPACEMIT=
_SDHC_MMC_CTRL_REG);
> > +
> > +     spacemit_sdhci_setbits(host, SDHC_GEN_PAD_CLK_ON, SPACEMIT_SDHC_L=
EGACY_CTRL_REG);
> > +
> > +     if (host->mmc->caps2 & MMC_CAP2_NO_MMC)
> > +             spacemit_sdhci_setbits(host, SDHC_OVRRD_CLK_OEN | SDHC_FO=
RCE_CLK_ON,
> > +                                    SPACEMIT_SDHC_OP_EXT_REG);
> >  }
> >
> >  static void spacemit_sdhci_set_uhs_signaling(struct sdhci_host *host, =
unsigned int timing)
> >
>


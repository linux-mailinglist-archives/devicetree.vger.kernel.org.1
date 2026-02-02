Return-Path: <devicetree+bounces-261743-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHYWLk+AgGka9gIAu9opvQ
	(envelope-from <devicetree+bounces-261743-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:45:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BC3CB2A0
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:45:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3DA630860D1
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8C9C35C1AB;
	Mon,  2 Feb 2026 10:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cokpgzLR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E799135B64C
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770028656; cv=pass; b=jP9ovVS7X7YOUF2v8gcCCIai6SU6bbHVDQ6ydToR5brMpqmQHsZmeZ1OVNS7kdJjBxvBhUkX9zaCAX5FfLTPDm0k0F2Y0pBB85YOVHMWcu1Ks/jSoCzqDOtfMXwIXNXezW0DgszB0gdeXHcBXZC3tzVIkPv088ULrMa2+Al3C4w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770028656; c=relaxed/simple;
	bh=P7BrR8QvBj73TBqsrF6OihXrgbB+M4oc79DNzrwO8BA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dbovVgvB/KocWW/ctGoJ9SQCY+SsxmPdPOKu6s97LjqrER4OH+nZb1wK8FCw+DMAqNxwoS1QZkW8DNM12ICr+Qt35b7FlKOCwvEMDGpIUXRLQZ55/EEIHwwrNCF1oZDpBq5eU1rQDYFPpSR4qEfhD8Ci2LWEjViObfkrPHmc47w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cokpgzLR; arc=pass smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b885e8c6727so821777266b.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:37:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770028652; cv=none;
        d=google.com; s=arc-20240605;
        b=KZXAshb0Y5snZTEnAMSUTlv4SPQgazmPD0J6z1QLzNusZibMq4XQMF0OyUVFvLF0NA
         391NWFNJ3IO1IZ65PAvZC7rVZIAPy59BWf+83LOO0tHNCCBXPSke5BsykdDIvnZuYxG4
         LvDZtvF8i/oUm+ocoPkdI9WkVq7v62rr2Ssnbiya+f38H6R0DuhS9Orl5aCjKrtUXws9
         ttkCqBhvkA/d3OjfsSDO+NzdPq/JQl2nCbBTUii1kt+8jGCL9xNqMb0UIIJeWrQgzh9K
         EtrN1s50/QiMn2I9X92FYE4rZDXQAYgq0QBkbjuyoXHJ2KKsrqtgB4smLzFeqkZJynhm
         JyzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=osHQLxXgB0+OWVrxqsLMgDWtZoVUS3LxuKc/2PLIVd4=;
        fh=R3rmo1GVr0rrK4ALFychQn2d1Wv2rAkA7PT0bJZ9uJk=;
        b=NIJMzfpM9XQLDKaRCn9CSjBUK3fD1uWLkaYSaL/DgZ9x2yhBrVgMz0kcFkYSJY8oH8
         aPub777OZC1cudxBAZpdzuRP4ARJHntPHFJ41AfwT42tnrLLYIRAHGCfS2NPbbTPXnB/
         16voD3V7FEDB9ZompUNSPwaIRDOGCXA5immuVsYPe/cmGTeyoPDQDQpEsHaKRPDFVmmy
         4VMuEdi7zpTZQEaLwkm2w3PvvSd6CvBLH1pjIueXA9OHWfauhktoCImz4ZsG5OR0bHun
         FYjTD3YVoeG0Dqjdh3YvRSIdY6DI+4pRyxLmaFk5QegY767uGGJ27lBoEFizZTj0Rwss
         1xlw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770028652; x=1770633452; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=osHQLxXgB0+OWVrxqsLMgDWtZoVUS3LxuKc/2PLIVd4=;
        b=cokpgzLRaUg1hFkww5OdV3eUx/XkrPcRA02cd3ttmu3nZvhh8Wekhde5qONvZxgu+g
         Ob28B8aEAZ2QMavjzvt8Shifw+Ks0aKmXnat68zKG8oraffacKYmdkCZxMUQ64ozZ2YF
         8dnRvXn1BteokgbZZeEl4djePK9GEhYFgkNtl5noNFSSfsZguUUwCWzPjnInhgwtmrPp
         gHANB+GnH8mhT/aQGrl2JAfjHujibsU5l6SKR0rP9zC1GXvUtUODpgz1Nb2dIGTLDv5X
         Jn7ejTwnUN75G8MIz0jyBqpEm6iJ82/W/sCTHb343HgAn94mde3USzfyiYAl5b4WIS8B
         U1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770028652; x=1770633452;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=osHQLxXgB0+OWVrxqsLMgDWtZoVUS3LxuKc/2PLIVd4=;
        b=Ofi/9R9+XssHiOWJVNOj18tF0zWAGbjQHXUWYcxCDhRbXqQgJ9S+K44v1TH6IqtV/6
         9BdIRJh/Ba4vycnSIQVi25X486vVkPS2UqZjICSyWc2iOtjjoq5DE0ZH5teS1D1xT1aX
         1bHqdf0c+PNWqSd7NSoayAjYOvGeEJzRbeBHHNnVgSO7p/9BX26TxP0j9Km0zB5u0Muu
         go/yrP+FxrGlxEG5c4YQBONvVjKmbRjgKMKXi2MPw7brFWZ+dafUGsOs+BqOz037Yfvb
         o1IDd5Wo03VWRxrM+FdpwnN2tT72MxGPPMp4xTuw0MHNwcxDz6yAJv6fpS7SUHYLxC76
         h6rA==
X-Forwarded-Encrypted: i=1; AJvYcCUw++jC3LaX2oFfXtx8Aoi3z96Gqn9wUz4WYfaJe87BvSLAt9cCTSg+U+4JyAC5ivv6rOW7QjqPhOHl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2aJWzFqS+5f4YxvOprBb179abAIou3wLt0G8qb3Una7YvglGQ
	ITESbAqEclUGvTZdinwI104r7XcuBb7kbbu1OEL77YaSiMoj097ZD18GJt6cSJ3kfPbkiO1hKMB
	TKoIKsX/rdGCD2t+O3bEBXv+JFCChLwo=
X-Gm-Gg: AZuq6aJ06Jr/mvNQOSJT1+/NP6AcJIocuOm5TNm8OkvvZK7NkAvkaqcr40UhCZnwCl/
	bIJ9XU//3uwHeWjLPweJXRsJuv7JSS6b9UKYaBXvvPHkNdcj+WbevJDi4xPcJMIRGdwgrbblMu2
	BQvPtDueHojzNNGUPkArXvd5lX/DS78qcsCs6ioyl1Orf1uY5M2H9NBQwTtyCMJo7rOiPeZwtSA
	P6skp7YFTotEwndc9cnPrCvNKetZWvp732TusEj+RSW4C7zT7q0hGlLFl56nlIuE7AJ/BWHGVlR
	UM9hC2tmqDiQK56N5BQJyvQRXDo=
X-Received: by 2002:a17:906:9f8a:b0:b87:1ffc:bfc0 with SMTP id
 a640c23a62f3a-b8dff430c2bmr675859166b.20.1770028651996; Mon, 02 Feb 2026
 02:37:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119184708.566461-1-iansdannapel@gmail.com>
 <20251119184708.566461-4-iansdannapel@gmail.com> <aTv1s6ui1/JmBis0@yilunxu-OptiPlex-7050>
In-Reply-To: <aTv1s6ui1/JmBis0@yilunxu-OptiPlex-7050>
From: Ian Dannapel <iansdannapel@gmail.com>
Date: Mon, 2 Feb 2026 11:37:21 +0100
X-Gm-Features: AZwV_QhfHFH2QK9_GDCT9HKbl2SXGCpE-BCgTCvibfpml-PbjYBSjsiIIVJPNws
Message-ID: <CAKrir7jj7h+gO0GPtPbdb4oT5jUmATW1CFwU6YHeuvx4VS1gBA@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] fpga-mgr: Add Efinix SPI programming driver
To: Xu Yilun <yilun.xu@linux.intel.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-fpga@vger.kernel.org, mdf@kernel.org, yilun.xu@intel.com, 
	trix@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, neil.armstrong@linaro.org, mani@kernel.org, 
	kever.yang@rock-chips.com, dev@kael-k.io
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261743-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[iansdannapel@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 20BC3CB2A0
X-Rspamd-Action: no action

Hey Yilun,
thank you very much for your review

On Fri, Dec 12, 2025 at 12:16=E2=80=AFPM Xu Yilun <yilun.xu@linux.intel.com=
> wrote:

> >
> > +config FPGA_MGR_EFINIX_SPI
> > +     tristate "Efinix FPGA configuration over SPI"
> > +     depends on SPI
> > +     help
> > +       FPGA manager driver support for Efinix FPGAs configuration over=
 SPI
> > +       (passive mode only).
> > +
>
> Any reason insert it here? If no add it at tail.
No reason at all, will move to the back.
>

> >  obj-$(CONFIG_FPGA_MGR_XILINX_SELECTMAP)      +=3D xilinx-selectmap.o
> >  obj-$(CONFIG_FPGA_MGR_XILINX_SPI)    +=3D xilinx-spi.o
> > +obj-$(CONFIG_FPGA_MGR_EFINIX_SPI)    +=3D efinix-spi.o
>
> Ditto, maybe add it at tail of "FPGA Manager Drivers"?
of course
> > +#include <linux/spi/spi.h>
> > +
> > +/* 13 dummy bytes =E2=86=92 104 SPI clock cycles (8 bits each)
>
> Wrong format for multi-line comments, please see:
>
>   Documentation/process/coding-style.rst
okay, will fix all comments styling
>
> > + * Used to meet the requirement for >100 clock cycles idle sequence.
> > + */
> > +#define EFINIX_SPI_IDLE_CYCLES_BYTES 13
> > +
> > +/* tDMIN: Minimum time between deassertion of CRESET_N to first
>
> ditto, please go through the entire patch for this.
>
> > + * valid configuration data. (32 =C2=B5s)
> > + */
> > +#define EFINIX_TDMIN_US_MIN    35
> > +#define EFINIX_TDMIN_US_MAX    40
> > +
> > +/* tCRESET_N: Minimum CRESET_N low pulse width required to
> > + * trigger re-configuration. (320 ns)
> > + */
> > +#define EFINIX_TCRESETN_DELAY_MIN_US  1
> > +#define EFINIX_TCRESETN_DELAY_MAX_US  2
> > +
> > +/* tUSER: Minimum configuration duration after CDONE goes high
> > + * before entering user mode. (25 =C2=B5s)
> > + */
> > +#define EFINIX_TUSER_US_MIN    30
> > +#define EFINIX_TUSER_US_MAX    35
> > +
> > +struct efinix_spi_conf {
> > +     struct spi_device *spi;
> > +     struct gpio_desc *cdone;
> > +     struct gpio_desc *reset;
> > +     bool bus_locked;
> > +};
> > +
> > +static void efinix_spi_reset(struct efinix_spi_conf *conf)
> > +{
> > +     gpiod_set_value(conf->reset, 1);
> > +     usleep_range(EFINIX_TCRESETN_DELAY_MIN_US, EFINIX_TCRESETN_DELAY_=
MAX_US);
> > +     gpiod_set_value(conf->reset, 0);
> > +     usleep_range(EFINIX_TDMIN_US_MIN, EFINIX_TDMIN_US_MAX);
> > +}
> > +
> > +static enum fpga_mgr_states efinix_spi_state(struct fpga_manager *mgr)
> > +{
> > +     struct efinix_spi_conf *conf =3D mgr->priv;
> > +
> > +     if (conf->cdone && gpiod_get_value(conf->cdone) =3D=3D 1)
> > +             return FPGA_MGR_STATE_OPERATING;
> > +
> > +     return FPGA_MGR_STATE_UNKNOWN;
> > +}
> > +
> > +static int efinix_spi_write_init(struct fpga_manager *mgr,
> > +                              struct fpga_image_info *info,
> > +                              const char *buf, size_t count)
> > +{
> > +     struct efinix_spi_conf *conf =3D mgr->priv;
> > +     struct spi_transfer assert_cs =3D {
> > +             .cs_change =3D 1,
>
> You've addressed an important concern, please briefly describe in this
> function & changelog: what's the HW requirement, how to solve it by
> cs_change & spi_bus_lock().
OK. changelog means description in the commit message?
>
> > +     };
> > +     struct spi_message message;
> > +     int ret;
> > +
> > +     if (info->flags & FPGA_MGR_PARTIAL_RECONFIG) {
> > +             dev_err(&mgr->dev, "Partial reconfiguration not supported=
\n");
> > +             return -EOPNOTSUPP;
> > +     }
> > +
> > +     spi_bus_lock(conf->spi->controller);
> > +     conf->bus_locked =3D true;
> > +     spi_message_init_with_transfers(&message, &assert_cs, 1);
> > +     ret =3D spi_sync_locked(conf->spi, &message);
> > +     if (ret) {
> > +             spi_bus_unlock(conf->spi->controller);
> > +             conf->bus_locked =3D false;
> > +             return ret;
> > +     }
> > +
> > +     /* Reset with CS asserted */
> > +     efinix_spi_reset(conf);
> > +
> > +     return 0;
> > +}
> > +
> > +static int efinix_spi_write(struct fpga_manager *mgr, const char *buf,
> > +                         size_t count)
> > +{
> > +     struct spi_transfer write_xfer =3D {
> > +             .tx_buf =3D buf,
> > +             .len =3D count,
> > +             .cs_change =3D 1, /* Keep CS asserted */
> > +     };
> > +     struct efinix_spi_conf *conf =3D mgr->priv;
> > +     struct spi_message message;
> > +     int ret;
> > +
> > +     spi_message_init_with_transfers(&message, &write_xfer, 1);
> > +     ret =3D spi_sync_locked(conf->spi, &message);
> > +     if (ret) {
> > +             dev_err(&mgr->dev, "SPI error in firmware write: %d\n", r=
et);
> > +             if (conf->bus_locked) {
>
> Do we really need this flag? If we failed to lock bus on write_init(),
> we can't get here, is it?
Its actually not needed, it's just extra protection in case the API is
misused, eg write_complete() is executed even if write() failed.
But since this is not the case, I will remove it.
>
> > +                     spi_bus_unlock(conf->spi->controller);
> > +                     conf->bus_locked =3D false;
> > +             }
> > +     }
> > +     return ret;
> > +}
> > +
> > +static int efinix_spi_write_complete(struct fpga_manager *mgr,
> > +                                  struct fpga_image_info *info)
> > +{
> > +     unsigned long timeout =3D
> > +             jiffies + usecs_to_jiffies(info->config_complete_timeout_=
us);
> > +     struct spi_transfer clk_cycles =3D {
> > +             .len =3D EFINIX_SPI_IDLE_CYCLES_BYTES,
>
> Here we also release the cs, is it? Please add comments here.
Exactly, I think I should also add .cs_change state to explicitly release i=
t.
>
> > +     };
> > +     struct efinix_spi_conf *conf =3D mgr->priv;
> > +     struct spi_message message;
> > +     int ret =3D -1, done =3D 0;
>
> Why initialize these 2 variables, IIUC they are all re-assigned before
> any usage.
will fix
>
> > +     bool expired =3D false;
> > +     u8 *dummy_buf;
> > +
> > +     dummy_buf =3D kzalloc(EFINIX_SPI_IDLE_CYCLES_BYTES, GFP_KERNEL);
> > +     if (!dummy_buf) {
> > +             ret =3D -ENOMEM;
> > +             goto unlock_spi;
> > +     }
> > +
> > +     clk_cycles.tx_buf =3D dummy_buf;
> > +     spi_message_init_with_transfers(&message, &clk_cycles, 1);
> > +     ret =3D spi_sync_locked(conf->spi, &message);
> > +     if (ret) {
> > +             dev_err(&mgr->dev, "SPI error in write complete: %d\n", r=
et);
> > +             goto free_buf;
> > +     }
> > +
> > +     if (conf->cdone) {
> > +             while (!expired) {
> > +                     done =3D gpiod_get_value(conf->cdone);
> > +                     if (done < 0) {
> > +                             ret =3D done;
> > +                             goto free_buf;
> > +                     }
> > +                     if (done)
> > +                             break;
> > +
> > +                     usleep_range(10, 20);
> > +                     expired =3D time_after(jiffies, timeout);
> > +             }
> > +
> > +             if (expired) {
> > +                     dev_err(&mgr->dev, "Timeout waiting for CDONE\n")=
;
> > +                     ret =3D -ETIMEDOUT;
> > +                     goto free_buf;
> > +             }
> > +     }
> > +
> > +     usleep_range(EFINIX_TUSER_US_MIN, EFINIX_TUSER_US_MAX);
> > +
> > +free_buf:
> > +     kfree(dummy_buf);
> > +unlock_spi:
> > +     if (conf->bus_locked) {
> > +             spi_bus_unlock(conf->spi->controller);
> > +             conf->bus_locked =3D false;
> > +     }
> > +     return ret;
> > +}
> > +
> > +static const struct fpga_manager_ops efinix_spi_ops =3D {
> > +     .state =3D efinix_spi_state,
> > +     .write_init =3D efinix_spi_write_init,
> > +     .write =3D efinix_spi_write,
> > +     .write_complete =3D efinix_spi_write_complete,
> > +};
> > +
> > +static int efinix_spi_probe(struct spi_device *spi)
> > +{
> > +     struct efinix_spi_conf *conf;
> > +     struct fpga_manager *mgr;
> > +
> > +     conf =3D devm_kzalloc(&spi->dev, sizeof(*conf), GFP_KERNEL);
> > +     if (!conf)
> > +             return -ENOMEM;
> > +
> > +     conf->spi =3D spi;
> > +
> > +     conf->reset =3D devm_gpiod_get(&spi->dev, "reset", GPIOD_OUT_HIGH=
);
> > +     if (IS_ERR(conf->reset))
> > +             return dev_err_probe(&spi->dev, PTR_ERR(conf->reset),
> > +                                  "Failed to get RESET gpio\n");
> > +
> > +     if (!(spi->mode & SPI_CPHA) || !(spi->mode & SPI_CPOL))
> > +             return dev_err_probe(&spi->dev, -EINVAL,
> > +                                  "Unsupported SPI mode, set CPHA and =
CPOL\n");
> > +
> > +     conf->cdone =3D devm_gpiod_get_optional(&spi->dev, "cdone", GPIOD=
_IN);
> > +     if (IS_ERR(conf->cdone))
> > +             return dev_err_probe(&spi->dev, PTR_ERR(conf->cdone),
> > +                                  "Failed to get CDONE gpio\n");
> > +
> > +     mgr =3D devm_fpga_mgr_register(&spi->dev,
> > +                                  "Efinix FPGA Manager",
> > +                                  &efinix_spi_ops, conf);
>
> The initialization sequence is quite random...
>
> 1. if (!(spi->mode & SPI_CPHA) || !(spi->mode & SPI_CPOL))
> 2. conf =3D devm_kzalloc(&spi->dev, sizeof(*conf), GFP_KERNEL);
> 3. conf->reset =3D devm_gpiod_get(&spi->dev, "reset", GPIOD_OUT_HIGH);
> 4. conf->cdone =3D devm_gpiod_get_optional(&spi->dev, "cdone", GPIOD_IN);
> 5. Initialize other fields in conf.
> 6. mgr =3D devm_fpga_mgr_register()
> 7. return PTR_ERR_OR_ZERO(mgr);
>
> Is it better?

I agree, I will reorder the initialization!

Regards,
Ian


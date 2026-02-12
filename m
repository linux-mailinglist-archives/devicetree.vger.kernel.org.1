Return-Path: <devicetree+bounces-265149-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULWuFGIEjmlf+gAAu9opvQ
	(envelope-from <devicetree+bounces-265149-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:48:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D1612F9A1
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:48:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A25A53024CAB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1E6540855;
	Thu, 12 Feb 2026 16:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gy2dXe7o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95BC7353ED8
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.175
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770914711; cv=pass; b=V4WhhVjMm2ViCYwMwVFpxkckSoAim1Lj108VsshuLk+3txTu9VDR9hL7ISoF3GlA2n/kjcAHNxHR09LXY31kC/9Dp1TrybAzL+MbQr/ISxugYLusvmIgnm9MOWPsZkIpoV+eYxScX94JeYR8a5PqvN9KanYUJtn/KvO4Xx4UZeM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770914711; c=relaxed/simple;
	bh=mVz8IS+qtYRUFdoEXlWVKM1ynn8gALHxW9se9wNJTwo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ahqSryzxwXY2ldYVyPcglw3ILxiV7MyI9wmfmlMX61Et8px6Ox3z6wv4bKZvmTsnU9JZa+NrZ5HDXwwiN/kXTJoYFRJ5bpCwRjVTelqtuYI+O1lg/nnfpkBtMcICjAKDpJ/ep+nnmUzWlcmCbg4pr7uI/lpGtSYAulPtiqG23yE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gy2dXe7o; arc=pass smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-5032e59c8d3so31301cf.2
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:45:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770914709; cv=none;
        d=google.com; s=arc-20240605;
        b=ZGDsi3yOjlWRSoE7hPNA3TSXIXA+6OEmhdsmc8HupyTyDlp9Fxk8TbjnZKnvxPaXf4
         shN3R0ONZJNzsu9bbFhUC+aW7fuVpeEJ3/Mz8lDGRmkGKMTqHRdkSnLvitji3phtTv0D
         q6L0SBtoby0FfYMQOOAwZbDO512Pr4YkPjtIBQ7P1I8nz5mC6jp+1DqQsaFFUC1G66y/
         ZwzO7axJL9oVEKIeBmQvGnn+O0oFg1CiTOVxOw/X74yDpAbvpJDoEEKFEYjyt6cO8UQ7
         n2tc+yBrfmYyof2c5zJp/hcQwLIzgNTdh2mhPRfkBt7GTy3W0f/q+82uM7j7ojELzMOt
         ZK4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gj7ggEui4cc7j68lFz5SKmVnl+iFUxBpJ//HV9UMauA=;
        fh=VUIx1eEhWT4lYZyiszZuEqut2UxvjumUAZHDtmviEaE=;
        b=E0SgrnD4kZgFjpy8RgMlHFkXy7uSYQo0NWA35a1j1oiGFyIid3VoVK3MS9Luy9CSGI
         W1vwkqT/jVQCdPnFMPxdcHVnwkVrk44e5t0VaQVGNXPCvRFD5KDnC5ezzuP1YD0Zgp7v
         gDDv7WQNHJ3UOKeVdnTHB4lncD/SoEgTdRv1Ju7c8bfbcMj77aXxopxmA1F2GuQfDof+
         hIh1HONHQZ/VEmVoq0rfZdYa1tuGeReav9eWci/ZTe3Z+T6J6qVKKX7XjhWmnkmsT5pB
         xl7eahJIzh8HFcDwCJt27E6AzlILZkdJbUQ7IWbw9NZkGvLGhdKpfKmqBco1FllfQRfw
         qmnQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770914709; x=1771519509; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gj7ggEui4cc7j68lFz5SKmVnl+iFUxBpJ//HV9UMauA=;
        b=Gy2dXe7omhQnhlwBIDoj7YVO9fGjUCwXELoYSXvdiaI+CeiJc6D4GwEoOOyQeer66K
         1M03IVbQuwy/cGHMvLDvQdaMPS9v2rEsIcerAgtGr4Qce0CPqdFmUXYBe1wHbfP5toKn
         xWqCfesxHMJcR6lDjI9LLOlGWmLjEAPqAEFtg52tF0Ir3v6cPZoWeLBknHe3UfN2QXWG
         6MqotJThXzwgxoGQ+qI2TTNU2WGpNKf+L2zTgV0mZlX4MZwnHQhhI2lQcHrvonAhfqOO
         qN2073ytyHS//3p5Vr5HDsLI5QnQMfFDkWMHFKiSxl6idHl2nc6YAhnzXTwRyHl5tNaz
         3+/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770914709; x=1771519509;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gj7ggEui4cc7j68lFz5SKmVnl+iFUxBpJ//HV9UMauA=;
        b=MlLexXb0KNBUxccgok2B2ZD6MIrCCiXCplV+be3DPAymT0WwN2P2bUruak6G28V5jG
         5HK2N1XY0kN4lJEqhHIPm8hKlrUtlLKBQCZh/fZ5K/oq6TQD7MlZvw1s2QR0FWfns5g8
         zczNWtPVNDDedcMQUNdpj70v26yW5tmZTqVtmanM6dZEOVi7M2iDPeApnA58W3j5nWCN
         bGg7TPHqfyRtrrvNgmJdaRUlenfyYTRstJbJtopQgKLaCgKnoFgG9dAJi0Ny/yo4jqif
         TkSnsGYSSYbCi9pUR6U3AWEX3UlimNpnJr/KpfZD9dJAuxyF1zIXf0VWg9rCpvzMJdTH
         xdhA==
X-Forwarded-Encrypted: i=1; AJvYcCXIGD1CpYsX1R2VShgDJzBtX1OpcAuwvEzuClSNeoBvj0eBva5F5jBKj7469K66zM0OEUSPAkrgOwpJ@vger.kernel.org
X-Gm-Message-State: AOJu0YypB/wr8FT97GHAxHZWeHfGmqf8uXtdQN1M7m4y2uOkWEoRriCO
	23daSH4IvEBxMxLvCQUZ+d4uCt9Ab84/Ezk9AFqOdJd09A1+aVqHzsD2fCTgSWgr7aN2Nvfhz5c
	L7XebyWJ9pfS7mRsOPerzoQWuybecvbM=
X-Gm-Gg: AZuq6aLFwyKjRZPaX18fabkAx4gV+eWWSG7SApiwvOP5QK8nHoWZt8YTXeaUm4JxGCe
	kSX0gDQGNLvB9AeODDIzsmKcXTYdKdbqV+jObFt0RfnNEH+IjZfJS0IOgeqd11YI8xnQB+l9I5W
	h0P6KRkHOOFUFQwRo2am5KYqsINdcia5OKAajvE4iSGPbwrxiVe9TuL3Q2OXIP6orlVT5CmDoXR
	yF5foE7m8n/QMqjY31VPbevxM7mpj1hl2o29mAAlutfBx1KWwo/FwRTvboLLVLYl+KdWx0elmCl
	H8Q5pPcZqYVcbHGtm3Th+pbqK2vsLNeTi8jA+WdVgVqSR0KNphElYBYowUXCikBxfHJJACNeh8T
	ea6wU4yw=
X-Received: by 2002:ac8:5f53:0:b0:4f1:dffa:7834 with SMTP id
 d75a77b69052e-506a3daf0cbmr1576121cf.7.1770914709532; Thu, 12 Feb 2026
 08:45:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
 <20260212-upstream-20260219-v2-2-2b28fce5d09e@gmail.com> <aY2xveYRXEKIBV92@smile.fi.intel.com>
In-Reply-To: <aY2xveYRXEKIBV92@smile.fi.intel.com>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Fri, 13 Feb 2026 00:44:57 +0800
X-Gm-Features: AZwV_QjHOnmm6-5h1DYEbnqx6tXX_BYSSafMUuswi91q9J0VBXGSzjrV23N4ftY
Message-ID: <CA+NOmzLMzWqnS0B9B96qJUU2EoYppDKO6_Rdu52_dPqWTSS+ig@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] iio: proximity: hx9023s: Protect against division
 by zero in set_samp_freq
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265149-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: C3D1612F9A1
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 6:56=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Thu, Feb 12, 2026 at 02:26:53PM +0800, Yasin Lee wrote:
> > Avoid division by zero when sampling frequency is unspecified by
> > falling back to a default 100ms sampling period.
>
> ...
>
> > -     period_ms =3D div_u64(NANO, (val * MEGA + val2));
> > +     if (val || val2)
> > +             period_ms =3D div_u64(NANO, (val * MEGA + val2));
>
> While at it, drop unneeded parentheses.
>
> > +     else
> > +             /* Fallback to a safe default sampling period */
> > +             period_ms =3D 100;
>
> Not sure about this. Perhaps we should rather do
>
>         if (!val || !val2)
>                 return -EINVAL;
>
> ?
>

Agreed. I will update this in v3 as below .
...
if (!val && !val2)
    return -EINVAL;

period_ms =3D div_u64(NANO, val * MEGA + val2);
...

> --
> With Best Regards,
> Andy Shevchenko
>
>


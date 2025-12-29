Return-Path: <devicetree+bounces-250254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 04666CE7A5F
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 17:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23CEE3169103
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 16:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB19A331212;
	Mon, 29 Dec 2025 16:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AkVa7Vwb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC36330666
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 16:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767025742; cv=none; b=GfXCSvld9uL4OOKjjYlY7CUa40jjV/YTjaFf8py2iuz34yWU7DwBA4JwddVDonta/vMuKez8xONHmfgoAgvb/Y9fZm2b9t8liapghZjE63a81kkgCV2cREOt8UHOY+/gzlvX2AEbhLHCKkgPhLBwYb5102QP3LrKtR5OnZ/SmxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767025742; c=relaxed/simple;
	bh=b6RQ1NU9EN8+aXaewi+ayTN9noNZWpegcHiTxkGkE0M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U5enIJHUOEov3aprOGbXY8a1MjlL4XTkvUBzC10o8EBHE7TqfDBsEwgSK2Vmhxw6g4ITjl7Dsc5iUF0Wg3VZxzpgJjgjE0e3ZYQ59r45BNOaSXGs4E3l2ArCPl42zhUOVMf7VJglRsCs0Evd5yAkW+8lXblT6yLnIvsOAjVLNew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AkVa7Vwb; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47d1d8a49f5so44062155e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 08:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767025736; x=1767630536; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/igAIS0exjkZCSnq4MvZu4y+vS5w9AmRp2TM3hljglc=;
        b=AkVa7Vwb0H41574gfBMQD0c1TGUpryUE2cGicvRPTYbN19eJTpH+XlKfyIqytXkLR4
         jAYPkBksjmtxu59QfMkR904LixpEUr+GtWbTAsWuqkI2ylHgUu2OIy8gzzsmO+hMXgQA
         W12+0n4XPZ04h+P07GOjvHPBqM0nIkIsUD0h4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767025736; x=1767630536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/igAIS0exjkZCSnq4MvZu4y+vS5w9AmRp2TM3hljglc=;
        b=v+zi3549QVSZzDsEzMpjpsziKfSyeyhB3qJkyTlrQkhXBJKmiQrkee9ITN8kwX5KcL
         JgYtl5z/k1e5xTQuFPz8Gy1KoGkpupU9S6xRpg1eIyz+hlKVLEwW95BagYRMSyiZ0hOr
         AOa1VhcGLSP0YlK/xyF3mX62PUqIFlPGyCSprJ3haizXFUFGEzx30HZEQEdwO8QYa2yI
         Tycu3RtASM+Etx0ZW+5+aT98cjNLQB+Dglo51wUwSnxgaL1fJDyNgtgb0pBBnrCYXKiV
         FCW1HtdQtrkFHEV40pgU/fnJOZVEkgyqRyjSbmVX8spbxiZXCnB7CF08FwHEFhhCV1xL
         /Byg==
X-Forwarded-Encrypted: i=1; AJvYcCUuaXbQ7c2czeaJw5rf2qYjsIm6juV7ACuAbMsrxsVnX1r7dVwYT2pFV2KQYiVsZsM/VYOvoro2n9t7@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1Zumte1EoqncLG2H0GNTbTFCbu9pCkWKkZ7r1PFeleCEL4w/i
	Ye+xTQy8Bmp7U7pG+mli+VSvorMzJqZcxhEINW7LCPIu5HaolY9pt/JvAOoXFF/cbMa3JLobPEE
	9a5E=
X-Gm-Gg: AY/fxX6eVrG/u9ikoMcY7/jABNQ2nAyfcgC5GM50NeuoHV0qh4YTiP9gJxmcMtantyz
	M5d72TTpYD6TZBe1ZYRQ+scQ7Sak+FJLwQPqLMx6GmOuiThklvkhOYRjETagwsNfYvnsYUWhvnc
	csg4a/AVn777X4iVdNRcmDTM0vlEUbagdrlogYclUmwc8sLhYXqs7qoXW+PJ8xsjTPFyGQ0R04g
	SSKuV17j0du6b0js6JqAZtHsSIvcPcwyvfRFPB2f+ZAWe1lDe9iefxhcmlS4LQ/dv9rNpn+yyxN
	Wd/MCvggM/4y6sZyP0x8cSc7krbhW5p8qpmhIqL06BVpaHGTObTZaIzGUZ6KAvoxPAhctOBbvf+
	k/3lIcrXjGrLxYiWKWqKJmvqI+6gUxWK/Z+GM2vzWDDfr8hyB32P4YvQcSagkmp7mkiLqATLJD0
	3y2ojHfqlEGLr+Daroii6g9k1bsq+P
X-Google-Smtp-Source: AGHT+IE5z77kWrdvT7wPaMpp9A6RiyApVG0i4Gj+RnPn+57arRtLwhAvau2xJ42Pp4CWwsHrv5arXw==
X-Received: by 2002:a05:600c:b99:b0:479:3a86:dc1c with SMTP id 5b1f17b1804b1-47d195a6369mr342294615e9.36.1767025736112;
        Mon, 29 Dec 2025 08:28:56 -0800 (PST)
Received: from google.com ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3a6c6ebsm248468505e9.4.2025.12.29.08.28.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 08:28:55 -0800 (PST)
Date: Mon, 29 Dec 2025 16:28:53 +0000
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Simon Glass <sjg@chromium.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] Input: cros_ec_keyb - add function key support
Message-ID: <aVKsRbHP9WqCfWAN@google.com>
References: <20251224152238.485415-1-fabiobaltieri@chromium.org>
 <20251224152238.485415-2-fabiobaltieri@chromium.org>
 <CAFLszThHmN-eGMwwgUhSFbWcbuOYYs-eFh6d6ZVTXekRGv6Hdg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFLszThHmN-eGMwwgUhSFbWcbuOYYs-eFh6d6ZVTXekRGv6Hdg@mail.gmail.com>

On Sat, Dec 27, 2025 at 07:24:33AM -0700, Simon Glass wrote:
> Hi Fabio,
> 
> On Wed, 24 Dec 2025 at 08:22, Fabio Baltieri <fabiobaltieri@chromium.org> wrote:
> >
> > Add support for handling an Fn button and sending separate keycodes for
> > a subset of keys in the matrix defined in the upper half of the keymap.
> >
> > Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
> > ---
> >  drivers/input/keyboard/cros_ec_keyb.c | 120 ++++++++++++++++++++++----
> >  1 file changed, 104 insertions(+), 16 deletions(-)
> >
> 
> Reviewed-by: Simon Glass <sjg@chromium.org>
> 
> I suggest a function comment for the two new functions you add.

Sure, will do.

> > +               if (code == KEY_FN)
> > +                       return cros_ec_keyb_process_fn_key(ckdev, row, col, state);
> > +
> > +               if (!state) {
> > +                       if (ckdev->fn_key_status[col] & BIT(row)) {
> > +                               pos = MATRIX_SCAN_CODE(row + ckdev->rows, col, ckdev->row_shift);
> > +                               code = keycodes[pos];
> 
> You might want a helper to do this as it is repeated below

Sounds good, adding one for v3

Thanks for the review,
Fabio


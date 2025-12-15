Return-Path: <devicetree+bounces-246583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82960CBDF6A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 14:15:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 205FE305935A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C22E52D2488;
	Mon, 15 Dec 2025 13:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kUuHb2Ii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31252D77F5
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765804170; cv=none; b=PCZBSzS16bxDz7MB1I8AhxSgIJLaKkotibMLB7HR+NPCApd5VmBlvmHgvLPGCf2owFw4F4xmayNdT2RtbU5hlfyQMc866uF7QRc0Q+NggPoGf/oKS7oFcuXrKECHFRHLx3ulZTu1YOb+BvDZuXPI/YynSfm+13t9VlqY3cpj8ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765804170; c=relaxed/simple;
	bh=htT2w6l3gT1BhEWxPoOuIIkxt113epopi+xlKxAqEYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PWj9Yu8pS6r9Zn9DiOpcu0/s6TC/Pa/PiGvHTgCDrHMgSDfx+LwYGnBnKo1gQxbTrBrorNy/BAmRMTgByilsXpQTblZky665OtfjDrPaXAP8snka2zrItOSqGlCleWqWCHLLm2Zay2d0hviU8Ir24P3hNFHY0VXW5Py/bR3KDi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kUuHb2Ii; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42fb2314f52so1519328f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 05:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765804167; x=1766408967; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M4qyctUX7vU1W8pSxvEcJ1tR+43BtQPWPVTKPDH9E2M=;
        b=kUuHb2Iii/+nvVsTgYfmnyUmr8L+uuctEyISmztwpQ0FOxzrWqVLobOwWGV51mdAo6
         sXqc63B5fpkVJsG21fGHDOCDVepbkd3p25FCB6+XrMrSejdRMKD4I8ebCt8CQqi5uM9M
         i9csx2BVWoSGdri3pK1n/FXdiMukBplAVCf10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765804167; x=1766408967;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M4qyctUX7vU1W8pSxvEcJ1tR+43BtQPWPVTKPDH9E2M=;
        b=kFSjSAIPGMVPZZ2qPgU73HAKsBtboSFca+WkqmsL+p/d9GtxQwQkDrmE0oAAbx9Tdj
         xIudWLkM2SbN3Lr9Gf+4d1aARwOa7hcjc+GDqkyo6jObt4xMlrSP8ryYGRW7fx8HS0Wx
         u4GmJfaCFlKEwgY5h4rW8s6oLE2EF6jj+U8viUwJJUX9IIU9heImfhq0M6JCGzJLmKT+
         QrtR7/YGpuxIdrDW2SD5ufqS+qBWx5TSJ1AOVBUvnUZ61SyFanw4Cr+vejOX+byBj0+P
         lWs+3SbBt99GALv/FSp8GTCfICiXmB9uFEy8M4bG/5AU48YLXQIo2FJnUsJPJtiHmh9/
         iHSw==
X-Forwarded-Encrypted: i=1; AJvYcCXbQaCK/YbkO7zCvMMUC0Qv4Q1o9VrLvHN2ibyXQDFcUeNs9OGCufC5/wEkyUAkyupjz9xHyVcm/5lW@vger.kernel.org
X-Gm-Message-State: AOJu0YyRoy/Rqs3AsCIY8l1xWAB/3MtTQoIuXatinxpa2E/tC4vqQAMr
	YNXa6cz2ZBzbSaGWEwbkphYtlf3e7NNTuAKLhA8dV37pIJfGQoaRu1dPoQfIxhB07A==
X-Gm-Gg: AY/fxX6UO9iUdmMNi8akurrTw6WZA5BYip2Fn6dFI8naRhvR7booZAk7vNPPKW6C7sR
	Z/EP7V5Jig7vsB3rYSBw9pWIQeZQ0kAhalzVWZDxhwcTiak1aZ5QORvtMnanRhNhEqF/4hHkfkO
	NrB7rQD+qPIsU4OZTnGznfF9OBFKiUoduJjcPrvgsgjDj4EzC3k8rDHNmgbA3KFAYijB/RWta36
	rTC5PeYOc+FQtb+Dp3PzSnG5PIN0RBDFbc66ds+rXXm7lsZBleXQApppRLGqjcDetQwy6xhpl5p
	6+mxbEh7owDzl9efTMgfK8Ia5w2VqZfvrKEYBuJn1p3vG62c5TMtV/XJHbLs5uTC+2330Umlq09
	DYPtb3VCgRTk9L7Kt6y/e2OYhpwcsXGph0pVe1sLTQ3QhAcwcC5UfUrR1E0Kw+yBwt+yaJIVbrU
	zOai7mgodlGTRfKVu/Nw==
X-Google-Smtp-Source: AGHT+IHxUjIM6pOJsp7j/o99Vq4T5LCbQu9SoxxJURH/po4ld/NsNTEpHIlESpdoGRU4OR27kBc92g==
X-Received: by 2002:a05:6000:4383:b0:430:f182:788f with SMTP id ffacd0b85a97d-430f1827ae9mr8904843f8f.21.1765804167048;
        Mon, 15 Dec 2025 05:09:27 -0800 (PST)
Received: from google.com ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f6e78a7csm11582854f8f.34.2025.12.15.05.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 05:09:26 -0800 (PST)
Date: Mon, 15 Dec 2025 13:09:24 +0000
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
Subject: Re: [PATCH v1 2/3] Input: cros_ec_keyb: add function key support
Message-ID: <aUAIhNMTPQVl3b4W@google.com>
References: <20251209154706.529784-1-fabiobaltieri@chromium.org>
 <20251209154706.529784-3-fabiobaltieri@chromium.org>
 <CAFLszThUU4hfb4vY4mmGHQadRKThG3e=9cAKRy_ampKwA_XNcA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFLszThUU4hfb4vY4mmGHQadRKThG3e=9cAKRy_ampKwA_XNcA@mail.gmail.com>

Hey Simon,

On Thu, Dec 11, 2025 at 06:29:01AM -0700, Simon Glass wrote:
> > @@ -44,6 +52,13 @@
> >   * @bs_idev: The input device for non-matrix buttons and switches (or NULL).
> >   * @notifier: interrupt event notifier for transport devices
> >   * @vdata: vivaldi function row data
> > + * @fn_key: coordinate of the function key
> > + * @fn_keymap: array of coordinate and codes for the function keys
> > + * @fn_keymap_len: number of entries in the fn_keymap array
> > + * @fn_key_status: active function keys bitmap
> > + * @normal_key_status: active normal keys bitmap
> > + * @fn_key_pressed: tracks the function key status
> > + * @fn_key_triggered: tracks where any function key fired
> >   */
> >  struct cros_ec_keyb {
> >         unsigned int rows;
> > @@ -61,6 +76,14 @@ struct cros_ec_keyb {
> >         struct notifier_block notifier;
> >
> >         struct vivaldi_data vdata;
> > +
> > +       uint32_t fn_key;
> 
> Normally we use u32/u8 these days

Okay, I did notice the file was a bit of a mix, I'll change them in v2.

> 
> > +       uint32_t *fn_keymap;
> > +       int fn_keymap_len;
> > +       uint32_t fn_key_status;
> > +       uint8_t normal_key_status[CROS_EC_KEYBOARD_COLS_MAX];
> > +       bool fn_key_pressed;
> > +       bool fn_key_triggered;
> >  };
> >
> >  /**
> > @@ -166,16 +189,108 @@ static bool cros_ec_keyb_has_ghosting(struct cros_ec_keyb *ckdev, uint8_t *buf)
> >         return false;
> >  }
> >
> > +static bool cros_ec_key_is(int row, int col, uint32_t key)
> > +{
> > +       if (row == KEY_ROW(key) && col == KEY_COL(key))
> > +               return true;
> > +
> > +       return false;
> > +}
> > +
> > +static void cros_ec_keyb_process_one(struct cros_ec_keyb *ckdev,
> > +                                    int row, int col, bool state)
> > +{
> > +       struct input_dev *idev = ckdev->idev;
> > +       const unsigned short *keycodes = idev->keycode;
> > +       int pos = MATRIX_SCAN_CODE(row, col, ckdev->row_shift);
> > +       unsigned int code = keycodes[pos];
> > +
> > +       dev_dbg(ckdev->dev, "changed: [r%d c%d]: byte %02x\n", row, col, state);
> > +
> > +       if (ckdev->fn_keymap) {
> > +               if (cros_ec_key_is(row, col, ckdev->fn_key)) {
> > +                       ckdev->fn_key_pressed = state;
> > +
> > +                       if (state) {
> > +                               ckdev->fn_key_triggered = false;
> > +                       } else if (!ckdev->fn_key_triggered) {
> > +                               /*
> > +                                * Send the original code if nothing else has
> > +                                * been pressed together with Fn.
> > +                                */
> > +                               input_event(idev, EV_MSC, MSC_SCAN, pos);
> > +                               input_report_key(idev, code, true);
> > +                               input_sync(ckdev->idev);
> 
> What is this function? I might be missing a patch?

input_sync? it sends an EV_SYN, been there from the start, though I
noticed I miss one two lines below, was relying on the rest of the
function to send it but I changed the logic at some point and broke that
path, will fix that.

> 
> > +
> > +                               input_event(idev, EV_MSC, MSC_SCAN, pos);
> > +                               input_report_key(idev, code, false);
> > +                       }
> > +
> > +                       return;
> > +               }
> > +
> > +               if (!state) {
> > +                       /* Key release, may need to release the Fn code */
> > +                       for (int i = 0; i < ckdev->fn_keymap_len; i++) {
> > +                               if (!cros_ec_key_is(row, col,
> > +                                                   ckdev->fn_keymap[i]))
> > +                                       continue;
> > +
> > +                               if ((ckdev->fn_key_status & BIT(i)) == 0)
> > +                                       continue;
> > +
> > +                               code = KEY_VAL(ckdev->fn_keymap[i]);
> > +                               ckdev->fn_key_status &= ~BIT(i);
> > +
> > +                               input_event(idev, EV_MSC, MSC_SCAN, pos);
> > +                               input_report_key(idev, code, state);
> > +
> > +                               return;
> > +                       }
> > +
> > +                       if ((ckdev->normal_key_status[col] & BIT(row)) == 0)
> > +                               /* Discard, key press code was not sent */
> > +                               return;
> > +               } else if (ckdev->fn_key_pressed) {
> > +                       /* Key press while holding Fn */
> > +                       ckdev->fn_key_triggered = true;
> > +
> > +                       for (int i = 0; i < ckdev->fn_keymap_len; i++) {
> > +                               if (!cros_ec_key_is(row, col,
> > +                                                   ckdev->fn_keymap[i]))
> > +                                       continue;
> > +
> > +                               code = KEY_VAL(ckdev->fn_keymap[i]);
> > +                               ckdev->fn_key_status |= BIT(i);
> > +
> > +                               input_event(idev, EV_MSC, MSC_SCAN, pos);
> > +                               input_report_key(idev, code, state);
> > +
> > +                               return;
> > +                       }
> > +
> > +                       /* Do not emit a code if the key is not mapped */
> > +                       return;
> > +               }
> > +       }
> 
> I think this function could do with splitting a bit

Yeah, I don't love it either but there's a lot of logic intertwined in
there, tried to split it myself and ended up breaking stuff, the logic
for the fn key itsel though can go that's a good 16 lines, I'll start
with that, send a v2 and then go from there.

> Can the sandbox driver support this too?

Not sure what you are referring to, can you give me a pointer?

Hey thanks for the review, good to hear from you. :-)

Cheers,
Fabio

-- 
Fabio Baltieri


Return-Path: <devicetree+bounces-236363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 546F5C435BB
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 23:53:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AFD53B2C3B
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 22:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 554A8231842;
	Sat,  8 Nov 2025 22:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="cwH3ec3I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 954721D799D
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 22:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762642401; cv=none; b=TKF8t6ayKExKNHIIUaznxnWcuWg+FzPEYJ/DpF0RqOAr0fu4Eeg8IrOcvT1TdclJ+Rnjqr31KabdXzfALtX2hEK4Di7SuLkxOPn5ifiuYa0uarQEyyI5HKImGL/CaRTy+2sjmTzhG5nNEOlovktqW6LbwBn1zmsKSV6fyIq4V3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762642401; c=relaxed/simple;
	bh=cYjb2iVHarMvaoPkzkdkwuhVCkis7i+WP7D2iZOrHFY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iNbTYYv9gsnUGx7Ih023JcDZYs94DwgnzypJstgl5epY+bJjr2u3wcyH7j3q+Qv/Wvz1wRNH4rCUF6PjrkB6QAElrO+6wl/kUAU2VVCjKPcnAp/RM+RB7bVljAMf8XwLZd5/eMqR8ztBKg5KYxVW/kHqQveQ/rJEe/9GOfNLGFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=cwH3ec3I; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b6329b6e3b0so1068100a12.1
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 14:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1762642399; x=1763247199; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=woeNf9SnFDKMh9COMO6hWAKnDrWNbFGLLR+aeDPR/i8=;
        b=cwH3ec3I0DPWU4NpsN1WhhhEzCAzZwVZoG84W9Pyh8rXCv99O4Xk86QrgIsLEW86M0
         m8vZELuDNL7NdRSBwsXL1JF6aL1gZdie4RuP0Oau0X524f0XiwgLs5unPxJnablDy4y5
         zygSOR+PVRgAKcgb4plaFRZ7MVqhf2Qxt8JDDF2s534Ijg6TnzrZKuchzhMh8HfPz1Ji
         zMTWzBUabExVjEMs0t7ai/34oQNcCVaDit2gbjEEccbCfj0d8uDka7hD2UVdFKkJYSTD
         Hk/eq30EJceks1zueLS7eNK+/pXXVE+0BNP3WjrbI9tCk6OHKEhwLK11HzgFejzXHwwU
         TUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762642399; x=1763247199;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=woeNf9SnFDKMh9COMO6hWAKnDrWNbFGLLR+aeDPR/i8=;
        b=VtaAXiIESBhGP7S3v2Og7YHSwgJhrbBMpaSOmEOmdrOGBfe1TmV89XEBlRDa6/Hitw
         HfWPFtKHP+CtsHK77n6u1O3pTu6qpbBNPmySnmfCwEqOGRC+3aaGImWPe/8VwrF9BGOF
         MgD87zM0YwnDEoFfZ3iM551rYJQiEzQBeFbYgoueHMijY91daYlBf26RbZ9vnSJ5ZIhM
         LQAOAwiGOfHQa0IhTJWaEgxAeg9mCKcmKI7TE6Jlv/a3YGR0Wkm6VmrFbClIzjDsBWxG
         UO9RDn888b4bkalq0vTSfWciTkgnwBxs/GjpEtt/+Nndch4ozy/Pz1TuAyhTrOEGwd5+
         Ns6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVHqnV2UVkW7d+RKS/mr4Q+P6gi5t+qc6J+rr5TEuMvMMsgtfBiw+TW3F/VoYj9YhNM9JcCUirKgaw9@vger.kernel.org
X-Gm-Message-State: AOJu0YwvwDQxZf+wVADoO7eXuHy7EtGHqTbqo1zGOWgYwM50ePSTYBv4
	G1dtIRBvp5IMeJDxNBex8k7G1eCbNDZbzPebTGm5vjgptXKIe0lQxCX/QxFXz0SQEXK2Gd+qKQ5
	LvYgSfWaUgfaMESuIb6umpFTBguEsXOs=
X-Gm-Gg: ASbGncue3lWWEZVzRuu08jIyTdWCTDqjgu7XKjyRG8WXcL/FlslyEuEOqESdf2CQkH5
	SSvtKqhTzCiihvyiJfx86Jkocs4kmhM/FS5JQCfDtDXXlhDY0inaHFMOLihsU58hT0A7s8H6nYQ
	O8v57sXNenIgJP3vIb6bUCTNnAFIaU27J57wtfwHL6hwxsoAW3w76YhBZNNc1bT3xgTU2nefWM8
	/ccR4PCXOXRJxwMOLFok+upGbh1uvoCg/EjF1Gfu7dX84+3ZO1zOXBm15f74P7nkXdjxKNkmEsf
	ZmEOZhFq+PXG5/gELvqM0vAPK5t6
X-Google-Smtp-Source: AGHT+IG+/PJGnDmxUNMI7+aZcN60vo2SoWlora4RSCXqNkbJIUjbFrzUdNRAqKB5MSZuajIzoZgImhzbTKgTAYjlkVM=
X-Received: by 2002:a17:903:37cf:b0:295:134:9ae5 with SMTP id
 d9443c01a7336-297e1e61caamr46129275ad.24.1762642398835; Sat, 08 Nov 2025
 14:53:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027-b4-s4-vdec-upstream-v1-0-620401813b5d@amlogic.com> <20251027-b4-s4-vdec-upstream-v1-3-620401813b5d@amlogic.com>
In-Reply-To: <20251027-b4-s4-vdec-upstream-v1-3-620401813b5d@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 8 Nov 2025 23:53:07 +0100
X-Gm-Features: AWmQ_bni7l89RyP8uXpthsz3XoYRD2BT1Es7uRWB0DG1y_IRoUhPm173lpNSDGc
Message-ID: <CAFBinCBy7vPq0oX0PQ=yC5E3Mx3sv6qdVHsMh-NQQzAkbDuvRQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] decoder: Add V4L2 stateless H.264 decoder driver
To: zhentao.guo@amlogic.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

thank you for your work on this!

On Mon, Oct 27, 2025 at 6:42=E2=80=AFAM Zhentao Guo via B4 Relay
<devnull+zhentao.guo.amlogic.com@kernel.org> wrote:
[...]
+/**
+ * enum aml_power_type_e - Type of decoder power.
+ */
+enum aml_power_type_e {
+       AML_PM_PD =3D 0,
+};
Are there any other power types that you are already aware of - or is
this added "just in case" an additional type is needed in future?

> +/**
> + * struct gate_switch_node - clock node definition
> + * @clk: Pointer to clk instance.
> + * @name: Clock name used.
> + * @mutex: Mutex lock for multi decoder instance.
> + * @ref_count: Curr clk instance ref count.
> + */
> +struct gate_switch_node {
> +       struct clk *clk;
> +       const char *name;
> +       struct mutex mutex;
> +       int ref_count;
> +};
Generally I'm not sure if the whole struct is needed as I think the
common clock framework has everything we need.
There's struct clk_bulk_data which allows mapping clocks from
device-tree to an array in the code.

drivers/staging/media/starfive/camss/stf-camss.h for defines an enum
(stf_clk) to access each of the clocks by it's index in the array.
You even seem to have an enum (clk_type_e) which you could use to
simplify the code.

My understanding is that one can call clk_prepare_enable() and
clk_disable_unprepare() as often as you'd like and these functions
will do the ref-counting internally.
So I think the ref_count is not explicitly needed, as that's managed
by the common clock framework.


Best regards,
Martin


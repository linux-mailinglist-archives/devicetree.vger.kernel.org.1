Return-Path: <devicetree+bounces-249588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADCECDD116
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 22:07:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 281463018976
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 21:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 877B62D46D9;
	Wed, 24 Dec 2025 21:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IJ2kk+mp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE0013D521
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 21:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766610477; cv=none; b=fxjoL6PRZchCCj+TIkgRlolFm8oYUFxUy6RtCiIiNFNhpX7WCqbiy01M2agbJlXrE5AOD7KR9gi3dVGvI2nTdMGTHyKgM8kLYBHZrZ2YtsVSYYSJ4D6FtoDpofE3V0JvHhAFWWxDtzCLpvuz/4ReBOjNLOZllq2+I9CgECM2kfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766610477; c=relaxed/simple;
	bh=iK8yrwDzmNEFEqyLINVb5/IH+5Y1ENvQzdFPFUIzpQE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m4tK01WCq1j7Q9ZQKwTltMEN1GcVZi3gwTEEurKslo6LlgiMi6ocZ9nv/qbHmWnbYzBYJg5lqqt/WxuU9BqcSRqX68nZvpyJEertYYWwtO4zTxsj4YQ+ppE6JyPbjAx0tQseLDZEkvtYNwRBlY4H3V/OShkLcWVL2jIgUmBA+nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IJ2kk+mp; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-55b24eedd37so4369686e0c.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 13:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766610475; x=1767215275; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cCTlQAT+iHxugCwpM8vllJhIqqbWFrkNPusExq9MD84=;
        b=IJ2kk+mpGb1xmonrLTpgIczMLR1GDmQ+rOTEoS+EMgC7IN00J/xr3rJsJYXBv2LUUM
         On6W6E2q1bGFrL6ppaLvkhZdF/DHB+LyrMnlpX3T+cjKqocG7lKPdLuGGIdVCFzdfDXC
         DW+NjvrqyLVLZDKCGUNUafZkFleZKdLtFmaflm4lr8Czqoo0Ta82uxO5ecX1EJd71/1w
         qMIZgL3k0PaQLAPNpPRjKeLlQ+s8dFt9h5wPM3Y9FXP5yg7L197dOtv3nRbKcKSsw6mW
         MXsE1Sln5IpYPR1MRL8slqI5eqmTTWhgoiJiT4gzp7ejzhHB+pzsWEQd0ot2cjPvTtwZ
         ZbWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766610475; x=1767215275;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cCTlQAT+iHxugCwpM8vllJhIqqbWFrkNPusExq9MD84=;
        b=ZezCT+ENu9f0aJAdI13SM3mBoqpBBldrc826kUGqdlU5nR44tOnezfE1hBzLQEI30c
         DzYEG2lFME4aCm3dP0wcJGCJGrQ50kJybWK2md5TQviQkvMb+JmL9NAtOTrhFLUmtBw+
         psXtorN3GybggBTMsSGYoczEgYj+fWCVqxFZ7mLmHJldK5zMCRH0uro1QBEre59QWYCW
         iRqMperDyb1/moSbDd6RxolTARb+vxYbWb7iKCVtzxwLOIm6yluuRpIf9wRNJsOdm5A+
         hUvsJOkSaGGzHyuwVrXfJAsff96iBuPyl05Gn8Rvaj+Cahr7jcXIB+ria9Ev3ZhMJ5sd
         lLnA==
X-Forwarded-Encrypted: i=1; AJvYcCW/yclGm8QP//mvlerZfEIQQvnj9xwyMx0GMyB5QcwrtZgRRBKTPWW4wohVM2cmGwaWQz3P6yElqoRy@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3soXUNEtfLCpbvOWws0y3rQCyOIupOFTBoMg05ZMBvX8mPJxy
	ArO6SWwYOjeg8Jp5WNnE1N2RPC42kSFQfOTqykErTzpjBpbCTgbUtPpq/xSS+5qIHh0gIlNsems
	aR6fWDvKp9dS3t4ei5PVH4dA6TxQADMyNrnmfzdk=
X-Gm-Gg: AY/fxX55ConTnIQRGQqp/4WGBGxpgUQMWyRSoHtq/U2QpQfVIDX7lTeN055ezSij4pV
	rgwOSZxxiCvHM2w80zKksRvq780r5PkrNVSZdw103En964fRR2DAz28K82+XHa03Zt/Mpjt+2mx
	Eg+G/Yu3QsvjjuGTvUeyc3N3Cf77RDA6eoiDAnaAEZUAjEOlmg4UnKhVUnU1bWf5Uk4kUAZf3ez
	AnVCHYZR+3P0ab8h9tLM9kliMKbhoEZDhgn/1aCwzNHIvwGk9JuDNhpvbwzEG6w0HKa9FXk
X-Google-Smtp-Source: AGHT+IH7XGdepg4Z/orwm+2GhryRt9V7S6meYAVUOfpXJTMnfPvQsB1UQ1hzQqkl2cujqzwTv1BXxMsNVDFCF1LJO7Y=
X-Received: by 2002:a05:6122:2a42:b0:55b:305b:4e35 with SMTP id
 71dfb90a1353d-5615beb20f0mr6131823e0c.21.1766610474927; Wed, 24 Dec 2025
 13:07:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1766123192.git.alex.t.tran@gmail.com> <6f34ec79ac21d5ab9ad3fafe34a0bf6aca49a10d.1766123192.git.alex.t.tran@gmail.com>
 <20251221-platinum-mongoose-of-might-feec86@quoll>
In-Reply-To: <20251221-platinum-mongoose-of-might-feec86@quoll>
From: Alex Tran <alex.t.tran@gmail.com>
Date: Wed, 24 Dec 2025 13:07:44 -0800
X-Gm-Features: AQt7F2rZCAW0yhAERGrWnfIke5IXQve9uiOJmP7X9t0yJpOUiJVNJR7wsyfvKGM
Message-ID: <CA+hkOd4B425PRzirxLW-J2L+mDGusfRDJ5y1nKLwG9a-dd4M8A@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] media: dt-bindings: i2c: toshiba,et8ek8: Convert
 to DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, pavel@kernel.org, sakari.ailus@linux.intel.com, 
	mehdi.djait@linux.intel.com, laurent.pinchart@ideasonboard.com, 
	hverkuil+cisco@kernel.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    description:
> > +      XSHUTDOWN GPIO. The XSHUTDOWN signal is active low. The sensor
> > +      is in hardware standby mode when the signal is in the low state.
> > +    maxItems: 1
> > +
> > +  flash-leds:
> > +    $ref: /schemas/media/video-interfaces.yaml#
>
> This and...
>
> > +
> > +  lens-focus:
> > +    $ref: /schemas/media/video-interfaces.yaml#
>
> ... this are weird. LEDs are not video interfaces, for sure. lens focus
> shouldn't be video interface, either.
>
> You also miss unevaluatedProps there.
>
> This needs careful fixing/rewriting, with explanation in commit msg.
>

My mistake. The correct schema reference for these 2 should be video
interface devices.

-- 
Yours,
Alex Tran


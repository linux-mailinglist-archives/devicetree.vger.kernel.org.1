Return-Path: <devicetree+bounces-222820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB39BAD3B6
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 16:45:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BB0F3B439F
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CA332F5305;
	Tue, 30 Sep 2025 14:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5lYBlj4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583602032D
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759243545; cv=none; b=noUdl3g9tS+oOGWu7ywbj6lYCCgUH6WhzQW0zIsqMnWjR9IkZdhT8NwfcNK788aYc8r8VJ0wNDf2/p+uUHPhKxthTbDtrl5tnzBnjPDLedOkC/54/o1J9ifpc0TqvcZ4+JTUEJxgDervD5qMAeLauDgKON/fhHLb9OXTNXIb42E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759243545; c=relaxed/simple;
	bh=8gLdJL8Qtf+NqHZmB2i0AIoRu72Vt1AiMXEqjKqzjxg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wvl64ZnkWf8Bx/CsAqtgVl+PzBlUKr55UXOdyCHu4h9dncpaJhsg8QjD4Mj4rQP+0CeP7EsW5T8PWiu7ks/0yVJXHtIj0yY1i6CCLnL/QW76rTvjh/ZX4cbWZ34P0WQChqJm0/S0g6tHvFo/LW4GD0wADZJG9Cg6b//pMvAq97A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5lYBlj4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06F22C116B1
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759243545;
	bh=8gLdJL8Qtf+NqHZmB2i0AIoRu72Vt1AiMXEqjKqzjxg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=G5lYBlj4YMFnlVxk30Ejo+DoqzFVxg9q+NMUcMTCl+Pm9XcalENXRdNjKpl+2ccxK
	 z8aKsfImY2vMAUzZTcUptFpnbb5L5RpND5g58E1isiLk/mxc/aNA1owXLDvqZ1fhY4
	 AjipbfbObT3kt9K1G9ZkDMYuHDm0Q31mbQxYvWTt9oSjDUh8/IH5ltnOO4xMhDwdlu
	 u+2uPor9nfOGOzsbKJG9Ips6R8YG1Oxg8ljxKhxSVPofQ8Gptn3iKRJv3MMQIWRMht
	 IfFaSeKVrRSyc2bT/d4Ogh+4B69+3LFXXLzUpF4pU2UWYpQTom8RkQvpldgwTif+vk
	 LDZXZnBjP1x7A==
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b456d2dc440so106673966b.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:45:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUYy7/vaNxTiyUdf77a3awNDlqpEOEtIpAIc0FQ+OJkiVWiahRIWd+df2oi4/uE6fmwnPK1rMBxrEDb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzqxl4mrpxE1/619ofkAj66mjgVC4kZ+ua2V+jVKW2MmIDII9+
	qD6GtFwpYqn3dsy62cJnbGaR9Rj/gsuVP6xiBHuIjr+gnv8BZYyc5V5K0eCNfwwuVk4kpCw/4PO
	SWGMIxkYJ23+/iE4nwsTD1UG9P4sacw==
X-Google-Smtp-Source: AGHT+IGFKuwWTxqgZFN1sKn8z44c3DsN+/zWVoH5x3IdU6B9+r5DMFiLRR9CeEZiSco4imjsr8Fjmm054z8AwbnQu8I=
X-Received: by 2002:a17:907:94cb:b0:b3f:b7ca:26b5 with SMTP id
 a640c23a62f3a-b3fb7ca30ecmr712122566b.23.1759243543581; Tue, 30 Sep 2025
 07:45:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250930134547.1096686-1-weibu@redadmin.org>
In-Reply-To: <20250930134547.1096686-1-weibu@redadmin.org>
From: Rob Herring <robh@kernel.org>
Date: Tue, 30 Sep 2025 09:45:30 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL3z7P8YJuqa1tNMYSBRbxWTKfzaDE87FD2+Oe5Thoiog@mail.gmail.com>
X-Gm-Features: AS18NWCD2uaYyjFBVGOY5TASNbgoqor92iEQrjs455o4MLprWpEFrzc6cn-wWew
Message-ID: <CAL_JsqL3z7P8YJuqa1tNMYSBRbxWTKfzaDE87FD2+Oe5Thoiog@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: Correct typo "upto" to "up to"
To: Akiyoshi Kurita <weibu@redadmin.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 30, 2025 at 8:46=E2=80=AFAM Akiyoshi Kurita <weibu@redadmin.org=
> wrote:
>
> The word "upto" is a typo for "up to". Correct this typo in the
> mmc-controller-common binding documentation.

You just sent this yesterday. Why are you sending another version today?

What changed?


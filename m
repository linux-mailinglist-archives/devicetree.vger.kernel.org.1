Return-Path: <devicetree+bounces-14623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C917E5BC2
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 17:55:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D13DB20C66
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 16:55:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80EC018B16;
	Wed,  8 Nov 2023 16:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IOO81/BO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F36F179BE;
	Wed,  8 Nov 2023 16:55:18 +0000 (UTC)
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com [IPv6:2607:f8b0:4864:20::a33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4618D1FD5;
	Wed,  8 Nov 2023 08:55:18 -0800 (PST)
Received: by mail-vk1-xa33.google.com with SMTP id 71dfb90a1353d-4ac10aacd27so2056791e0c.0;
        Wed, 08 Nov 2023 08:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699462517; x=1700067317; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UBPNIHzctJ5VyvVEDbR23ellQErdbcNvpRDxmI1DH+8=;
        b=IOO81/BOiGtxL9FTEEnm172Dx/xfz6n1Ik9FvHxS5IVdws2uFJz4mLxdzvCR8unBhc
         0G/LV+KG3nNAUvWe1tCbw8pCbu01OEKtbRKkKPOxff+BRQ3H+REh58D81s+YUw8XRI1j
         JS+ZT82HEPAR2JPYAdlrQtKQO2sjBfUyG2qQjSgAABo32HLjMK8YU84TApOrt6rQX+Ar
         wPdU6JasPffG0AxJY/iz7dh12XBPrzM34ei8DHiANL+TdieuZCnnp1D0A/w72hPhj2M2
         J7HHFWKcm3uSfPLPSTnriU+xTblKF4p1XvAY2rqE5Cd3JWlgP9/D9CYzr0YXifoggqDk
         IxPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699462517; x=1700067317;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UBPNIHzctJ5VyvVEDbR23ellQErdbcNvpRDxmI1DH+8=;
        b=wKK3VobtGa4zJVKmv5yrv6ap1h2T4GuTKeigbQtAMYmUaBqVtaN20c56hnV0ZoQGKq
         SeRxdlB8sdPToN/r53qvE+lbbVt5I5L3ZvhfPFcavzaZqQOuHnZjxaP5vLZ3ru9oLwu5
         R36wOzLyaLdBFx8lhtXZn3GvEli5CCgMELNJPKqqugtB6zJYUmpPEQtFsmRmyJcU7Akk
         hm65x1GH6L87T/9CVUcOM5f3mnnkLQ9EUt9fjPM+cgSLLJ04BzkSwu30eadF8Bo0pYAW
         vI1X3Ox2KPQ6SRgqp9yWPbW5HVSklkoQ+PZOP2EhtdM2XbdvEnQeWlwOH+UX3pTxzI70
         wliw==
X-Gm-Message-State: AOJu0YwWgN4PPwyGbsWy109WBCyq6706box1svI7iHIIZ9tCD52egzcu
	fIBHXznG2Z/TZF3pfgOZ4+JtbYA8FL6XiwLfNbgzFT84uv8=
X-Google-Smtp-Source: AGHT+IFGlxbatls+dJ9UND+WtA6kB9hpacgRjcHyqqVij+RDXjr/gBwATg6CaFmACF/FgasZzZsas4/C0weNmEN4BWQ=
X-Received: by 2002:a1f:244e:0:b0:4ac:7098:4992 with SMTP id
 k75-20020a1f244e000000b004ac70984992mr2333929vkk.14.1699462517333; Wed, 08
 Nov 2023 08:55:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230913151606.69494-1-romain.perier@gmail.com>
 <20230913151606.69494-3-romain.perier@gmail.com> <20230913-depress-bootlace-6b88bfd83966@spud>
 <CABgxDoK2T3xkKYDVeqRuDXMHfVEJcRkkBOBBkMJ5=XUv9Y5MsQ@mail.gmail.com>
 <20230914-coagulant-unbroken-2461d32274a1@wendy> <CABgxDoJhfKQesDtV3WJ=C-DPB8P+0LDmzbY9Zy909yr3v1FQKQ@mail.gmail.com>
 <20231108-emergency-poker-8be712fdbf8e@spud>
In-Reply-To: <20231108-emergency-poker-8be712fdbf8e@spud>
From: Romain Perier <romain.perier@gmail.com>
Date: Wed, 8 Nov 2023 17:55:06 +0100
Message-ID: <CABgxDoL3_-RzqSMQgWzvUa=tdjsrSVCPUt0ZtE=YtNDHBPsy5w@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: rtc: Add Mstar SSD202D RTC
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Alessandro Zummo <a.zummo@towertech.it>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Daniel Palmer <daniel@0x0f.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mer. 8 nov. 2023 =C3=A0 16:44, Conor Dooley <conor@kernel.org> a =C3=A9c=
rit :
>
> On Wed, Nov 08, 2023 at 02:27:37PM +0100, Romain Perier wrote:
> > Hi,
> >
> > Alexandre seems to be okay with the current (merged) dt-binding, what
> > do I do ? I can send a v3 for trivial-rtc.yaml that's not a problem
> > for me but both of you seem to disagree :)
>
> Meh, I wouldn't waste your time moving it.

Ok, so I will just send a v3 with an update of the MAINTAINERS file
for the driver (I have completely forgot, my bad)

Regards,
Romain

